---
navigation:
  parent: lua-api/index.md
  title: "Импортер"
  icon: minecraft:hopper
categories:
  - api_types
  - api_preset
description: "перемещать товары из А в Б, используя стратегию распределения"
---

# <a name="importer" />Импортер

Глобальный `importer` создает движители, которые извлекают предметы из одного или нескольких источников и помещают их в одну или несколько целей. Каждый импортер представляет собой запланированную задачу, поэтому он продолжает работать с заданным интервалом до тех пор, пока сценарий не остановится или пока вы не вызовете `:stop()` в дескрипторе.

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

<LuaCode>
```lua
ImporterBuilder:filter(pattern: string): ImporterBuilder
```
</LuaCode>

Сужает средство перемещения до предметов (или жидкостей), соответствующих фильтру. **Необязательно.** Значение по умолчанию — `*`, которое перемещает каждый элемент. Используйте синтаксис фильтра из [Сеть:найти](network.md#find), включая `$item:id`, `$fluid:id`, `#tag`, `modname:*` и регулярное выражение.

<LuaCode>
```lua
-- Move only cobblestone
importer:from(network)
  :filter("$item:minecraft:cobblestone")
  :to("io_*")
  :start()

-- Move all c:ores items
importer:from("mobFarm"):filter("#c:ores"):to("storage"):start()
```
</LuaCode>

## <a name="distribution" />Распространение

У импортера есть два способа разделения товаров по целям. По умолчанию используется заполнение, вы явно включаете циклический перебор.

### <a name="fill-(default)" />Заполнить (по умолчанию)

Сначала заполняет первую цель. Как только он заполнится, переполнение переходит к следующей цели и так далее. Хорошо, когда у вас есть приоритетный заказ и вы хотите, чтобы один сундук оставался пополненным до того, как лишние сундуки попадут в другое место.

<LuaCode>
```lua
importer:from("furnaceOutput")
  :filter("$item:iron_ingot")
  :to("mainChest", "overflow")
  :start()
```
</LuaCode>

### <a name="roundrobin" />круговой перебор

<LuaCode>
```lua
ImporterBuilder:roundrobin(step: number?): ImporterBuilder
```
</LuaCode>

Распределяется равномерно по каждой цели на каждом тике. `step` — максимальное количество предметов, доставляемых каждой цели за такт (по умолчанию 1). При шаге = 1 три элемента в источнике попадают по одному в каждую из трех целей за один такт. Для массового потока увеличьте шаг или увеличьте скорость тика с помощью `:every(1)`.

<LuaCode>
```lua
importer:from("bufferChest")
  :to("furnace1", "furnace2", "furnace3")
  :roundrobin()
  :every(10)
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

Руда подается по круговому принципу в три печи, а продукция собирается в центральный сундук.

<LuaCode>
```lua
-- Feed ore evenly to three furnaces
importer:from("oreBuffer")
  :filter("$item:iron_ore")
  :to("furnace1", "furnace2", "furnace3")
  :roundrobin()
  :every(10)
  :start()

-- Collect ingots from all three into the output chest
importer:from("furnace1", "furnace2", "furnace3")
  :filter("$item:iron_ingot")
  :to("outputChest")
  :start()
```
</LuaCode>

## <a name="see-also" />См. также

* [Общие предустановленные методы](presets.md#shared-methods) (`:every`, `:start`, `:stop`, `:isRunning`).
* [Стокер](stocker.md) для шаблона «поддерживать уровень».
* [Сеть:найти](network.md#find) для получения подробной информации о синтаксисе фильтра.
