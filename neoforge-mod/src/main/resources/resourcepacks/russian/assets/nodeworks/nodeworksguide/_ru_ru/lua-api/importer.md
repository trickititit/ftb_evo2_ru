---
navigation:
  parent: lua-api/index.md
  title: "Импортер"
  icon: minecraft:hopper
categories:
  - api_types
  - api_preset
description: "перемещайте предметы и жидкости из А в Б, используя стратегию распределения"
---

# <a name="importer" />Импортер

Глобальный `importer` создает двигатели, которые извлекают предметы и жидкости из одного или нескольких источников и помещают их в одну или несколько целей. Каждый импортер представляет собой запланированную задачу, поэтому он продолжает работать с заданным интервалом до тех пор, пока сценарий не остановится или пока вы не вызовете `:stop()` в дескрипторе.

## <a name="from" />из

<LuaCode>
```lua
Importer:from(...sources: string | CardHandle | network): ImporterBuilder
```
</LuaCode>

Запускает цепочку импортеров. Источниками могут быть любые псевдонимы карт, объекты CardHandle или глобальный объект `network` (то есть весь пул сетевых хранилищ). Требуется хотя бы один источник.

<LuaCode>
```lua
importer:from("farmChest")                        -- one named source
importer:from(network)                            -- network pool as source
importer:from("chestA", network, network:get("chestB"))  -- mixed
```
</LuaCode>

## <a name="to" />чтобы

<LuaCode>
```lua
ImporterBuilder:to(...targets: string | CardHandle | network): ImporterBuilder
```
</LuaCode>

Устанавливает пункты назначения. Тот же полиморфизм, что и `:from`: псевдонимы карт, объекты CardHandle или `network` для пула. Требуется хотя бы одна цель.

Цель Storage Card придерживается своих собственных правил. В него перемещаются только элементы, которые разрешены списком правил, возможностью стекирования и фильтрами данных, так же, как и `network:insert`, поэтому карта, предназначенная только для брони, остается только для брони, что бы ни говорил `:filter` импортера.

<LuaCode>
```lua
importer:from("farm"):to("storage1", "storage2"):start()
importer:from("mobFarm"):to(network):start()  -- deposit into the pool
```
</LuaCode>

## <a name="filter" />фильтр

Что переместить. Все, что соответствует одному из правил, перемещается. Оставьте его, чтобы переместить все. Синтаксис фильтра такой же, как и у [Сеть:найти](network.md#find).

Вы можете использовать `:filter()` несколько раз, чтобы применить несколько фильтров, или вызвать его без параметра, чтобы сбросить фильтр.

<LuaCode>
```lua
importer
  :from(network)
  :filter("$item:minecraft:cobblestone")
  :filter("$item:minecraft:stone")
  :to("io_*")
  :start()

local puller = importer
  :from("quarry")
  :filter("#c:ores")
  :to(network)

puller:filter() -- resets the filters
puller:start() -- starts the importer
```
</LuaCode>

## <a name="except" />кроме

Позволяет вам указать любые элементы, которые вы явно **не** хотите перемещать.

<LuaCode>
```lua
-- All ores, except one the furnaces can't smelt
importer
  :from(network)
  :to("furnace_*")
  :filter("#c:ores")
  :except("mod:uranium")
  :roundrobin()
  :start()

-- Empty a machine, but leave its slag in it
importer:from("crusher"):to(network):except("mod:slag"):start()
```
</LuaCode>

## <a name="fluids" />Жидкости

Импортеры также перевозят жидкости. Любое правило может дать имя жидкости, а `$fluid:` выбирает жидкость, если элемент имеет такое же имя. Суммы указаны в миллибакетах, ведро — `1000`. Цель без резервуара просто пропускается для жидкостей.

<LuaCode>
```lua
importer
  :from(network)
  :to("boiler")
  :filter("$fluid:minecraft:water")
  :start()
```
</LuaCode>

## <a name="distribution" />Распространение

У импортера есть два способа разделения того, что он перемещает, по целям. По умолчанию используется заполнение, вы явно включаете циклический перебор.

### <a name="fill-(default)" />Заполнить (по умолчанию)

Сначала заполняет первую цель. Как только он заполнится, переполнение переходит к следующей цели и так далее. Хорошо, когда у вас есть приоритетный заказ и вы хотите, чтобы один сундук оставался пополненным до того, как лишние сундуки попадут в другое место.

<LuaCode>
```lua
importer
  :from("furnaceOutput")
  :filter("$item:iron_ingot")
  :to("mainChest", "overflow")
  :start()
```
</LuaCode>

### <a name="roundrobin" />круговой перебор

Распределяется равномерно по каждой цели. Укажите число, чтобы указать, сколько каждая цель получает за ход, по умолчанию 1. Для предметов, которые являются предметами, для жидкостей — милливедеры, поэтому задайте импортеру жидкости шаг, например 1000, для ведра за ход.

<LuaCode>
```lua
importer
  :from("bufferChest")
  :to("furnace1", "furnace2", "furnace3")
  :roundrobin()
  :start()

importer
  :from(network)
  :to("boiler_*")
  :filter("$fluid:minecraft:water")
  :roundrobin(1000)
  :start()
```
</LuaCode>

Курсор циклического перебора поворачивается на одну позицию за такт, поэтому справедливость сохраняется, даже если источник исчерпан и только некоторые цели получают элементы, которые тикают.

## <a name="wildcards-in-card-aliases" />Подстановочные знаки в псевдонимах карт

И `:from`, и `:to` допускают подстановочные знаки `*` в именах карт. Одиночный символ `"io_*"` расширяется до каждой карты, псевдоним которой соответствует шаблону в момент, когда импортер разрешает ее снимок, и повторно расширяется при каждом изменении топологии сети.

<LuaCode>
```lua
-- Fan out from one chest to every card named io_...
importer:from("input"):to("io_*"):roundrobin():start()

-- Pull from a whole group of source chests into a single output
importer:from("farm_*"):to("storage"):start()
```
</LuaCode>

## <a name="example:-two-stage-smelter-array" />Пример: двухступенчатая установка плавильни.

Руда и сырье подаются по круговому принципу в каждую печь, готовые слитки собираются обратно в сеть.

<LuaCode>
```lua
local furnaces = network:cards("furnace_*")

-- Feed the furnaces evenly
importer:from(network)
  :to(furnaces:face("top"))
  :filter("#c:ores", "#c:raw_materials")
  :except("mod:uranium")
  :roundrobin()
  :every(10)
  :start()

-- Collect whatever comes out
importer:from(furnaces:face("bottom"))
  :to(network)
  :start()
```
</LuaCode>

## <a name="see-also" />См. также

* [Общие предустановленные методы](presets.md#shared-methods) (`:every`, `:start`, `:stop`, `:isRunning`).
* [Стокер](stocker.md) для шаблона «поддерживать уровень».
* [Сеть:найти](network.md#find) для получения подробной информации о синтаксисе фильтра.
