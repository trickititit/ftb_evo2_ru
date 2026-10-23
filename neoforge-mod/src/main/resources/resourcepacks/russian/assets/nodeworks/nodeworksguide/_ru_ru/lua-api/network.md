---
navigation:
  parent: lua-api/index.md
  title: "Сеть"
  icon: node
categories:
  - api_builtin
description: "хранилище запросов, элементы маршрута, открытые крафтовые задания, обработчики регистров"
---

# <a name="network" />Сеть

Модуль `network` является точкой входа в действующую сеть Nodeworks, к которой подключен <ItemLink id="terminal" />. Он запрашивает хранилище, маршрутизирует элементы между дескрипторами и регистрирует обратные вызовы.

## <a name="get" />получить

Возвращает ссылку на что-либо в сети, адресованное по имени, любому
<ItemLink id="storage_card" />, <ItemLink id="io_card" />, <ItemLink id="redstone_card" />,
<ItemLink id="observer_card" /> или <ItemLink id="variable" />, обычно используется в
верхняя часть сценария. Карты имеют приоритет при столкновении имени с переменной.

Вы также можете нажать на боковую панель терминала сценариев, чтобы получить их автоматически.

![собираюсь щелкнуть элемент](../assets/images/click-to-add-card-01.png) ![после нажатия на элемент](../assets/images/click-to-add-card-02.png)

<GameScene zoom="5" interactive={true} paddingLeft="50" paddingRight="60">
  <ImportStructure src="../assets/assemblies/chest_furnace_terminal.snbt" />
  <BoxAnnotation min="1 1.1 0.1" max="1.25 1.9 0.9" color="#AA83E0">
    Переименован в **"сундук"**<ItemImage id="nodeworks:storage_card" />.
  </BoxAnnotation>
  <BoxAnnotation min="1 0.1 0.1" max="1.25 0.9 0.9" color="#83E086">
    Переименовано в **"печь"**<ItemImage id="nodeworks:io_card" />.
  </BoxAnnotation>
</GameScene>

<LuaCode>
```lua
local chest = network:get("chest")        -- gets the Storage Card
local furnace = network:get("furnace")    -- gets the IO Card
local count = network:get("count")        -- gets a Variable named "count"
```
</LuaCode>

---

## <a name="getall" />получить все

Возвращает [Список дескрипторов](handle-list.md) каждой карты или переменной, соответствующей заданному типу. HandleList транслирует методы записи (`:set`, `:onChange`, …) каждому члену, поэтому переключение множества поршней или регистрация обработчика для многих наблюдателей занимает одну строку. Чтобы выполнить итерацию для каждого члена, вызовите `:list()`.

<GameScene zoom="5" interactive={true} paddingLeft="50" paddingRight="60">
  <ImportStructure src="../assets/assemblies/chest_connected_storage_card.snbt" />
  <BoxAnnotation min="2.25 1.1 0.1" max="2 1.9 0.9" color="#AA83E0">
    <ItemImage id="nodeworks:storage_card" />
  </BoxAnnotation>
  <BoxAnnotation min="2.25 0.1 0.1" max="2 0.9 0.9" color="#AA83E0">
    <ItemImage id="nodeworks:storage_card" />
  </BoxAnnotation>
</GameScene>

<LuaCode>
```lua
-- Broadcast: turn every redstone card on at once
network:getAll("redstone"):set(true)
-- Iterate per-member when you need the value of a read method
local storages = network:getAll("storage")
for _, storage in storages:list() do
    print(storage.name)
end
-- "storage_0"
-- "storage_1"
```
</LuaCode>

---

## <a name="cards" />карты

Возвращает [Список дескрипторов](handle-list.md) соответствующих имен карточек. Полезно, когда вы хотите одновременно взаимодействовать с несколькими карточками с одинаковым соглашением об именах.

<LuaCode>
```lua
local allPistonCards = network:cards("piston_*")
allPistonCards:set(true) -- turn on all pistons
```
</LuaCode>

---

## <a name="channel" />канал

Ограничивает поиск одним каналом цвета красителя. Возвращает дескриптор [`Channel`](./channel.md), чьи `:get`, `:getAll` и `:getFirst` видят только карты, переменные и устройства, которым присвоен этот цвет, применяется тот же фильтр каналов. Ошибки в названиях неизвестных цветов.

<LuaCode>
```lua
local red = network:channel("red")
red:getAll("redstone"):set(true) -- only the red-channel pistons
local count = red:get("counter") -- variable on the red channel
```
</LuaCode>

---

## <a name="channels" />каналы

Возвращает список всех каналов цвета красителя, используемых в настоящее время в сети, любого цвета, которому назначена хотя бы одна карта, переменная, прерыватель или россыпь. Порядок осуществляется по возрастанию идентификатора `DyeColor`, поэтому итерация стабильна. Полезно для обнаружения каналов во время выполнения вместо жесткого кодирования списка.

> **Примечание.** `white` — это канал по умолчанию для новых участников, поэтому он отображается > здесь практически в любой непустой сети.

<LuaCode>
```lua
for _, color in network:channels() do
  print(color, "is in use")
end
-- "white" is in use
-- "red" is in use
-- "blue" is in use
```
</LuaCode>

Распространенная схема: управлять одним и тем же обработчиком по каждому активному каналу, не заботясь о том, какие цвета выбрал игрок.

<LuaCode>
```lua
for _, color in network:channels() do
  network:channel(color):getAll("redstone"):set(false)
end
```
</LuaCode>

---

## <a name="find" />найти

Сканирует все [Сетевое хранилище](../nodeworks-mechanics/network-storage.md) на наличие предметов/жидкостей, соответствующих фильтру. Возвращает агрегированный дескриптор *(счет суммируется по хранилищу)* или `nil`, если ничего не совпадает.

<LuaCode>
```lua
local all = network:find("*") -- gets all items and fluids if any
local allItems = network:find("$item:*") -- only items
local allFluids = network:find("$fluid:*") -- only fluids
local allCoal = network:find("minecraft:coal") -- item id
local allLogs = network:find("#minecraft:logs") -- tags
local allRaw = network:find("/^Raw.*/") -- regular expressions
```
</LuaCode>

При использовании предметов из `:find` вам следует сначала проверить, есть ли они у вас.

<LuaCode>
```lua
local allCoal = network:find("minecraft:coal")
if allCoal then
  print("we have coal")
end
```
</LuaCode>

---

## <a name="findeach" />найтиКаждый

Как и [найти](./network.md#find), сканируйте все [Сетевое хранилище](../nodeworks-mechanics/network-storage.md) на наличие предметов/жидкостей, соответствующих фильтру. Но вместо этого возвращает список [ПредметыРучка](./items-handle.md). Каждая запись уникальна своим идентификатором элемента и содержит ли она данные NBT.

<LuaCode>
```lua
for _, items in network:findEach("$item:*") do
  print(items.id, items.count, items.kind)
end
```
</LuaCode>

Если бы в вашей сети был алмазный меч, некоторые с чарами, а некоторые без них были бы разделены на разные записи.

<LuaCode>
```lua
for _, items in network:findEach("minecraft:diamond_sword") do
  print(items.id, items.hasData)
end
-- "minecraft:diamond_sword" true
-- "minecraft:diamond_sword" false
```
</LuaCode>

---

## <a name="count" />считать

Возвращает общее количество в [Сетевое хранилище](../nodeworks-mechanics/network-storage.md), соответствующее фильтру. (Жидкости учитываются в mB)

Фильтрация имеет тот же синтаксис, что и [найти](network.md#find).

<LuaCode>
```lua
print("swords:", network:count("minecraft:diamond_sword"))
print("cobblestone:", network:count("minecraft:cobblestone"))
print("all:", network:count("*"))
-- "swords:" 3
-- "cobblestone:" 256
-- "all:" 259
```
</LuaCode>

---

## <a name="insert" />вставить

Вставляет [ПредметыРучка](items-handle.md) в [Сетевое хранилище](../nodeworks-mechanics/network-storage.md), используя стандартный
<ItemLink id="storage_card" /> правила приоритета. В противном случае каждая вещь должна подходить друг другу.
ни один не перемещается, и функция возвращает `false`. Если вам нужна вставка с максимальной эффективностью, используйте [попробоватьВставить](./network.md#tryinsert)

<LuaCode>
```lua
local ok = network:insert(items)
if ok then
  print("all items were moved")
else
  print("no items were moved, not enough space")
end
```
</LuaCode>

---

## <a name="tryinsert" />попробоватьВставить

Как [`insert`](network.md#insert), но перемещает все, что подходит, а не «все или ничего». Возвращает количество фактически приземлившихся (от 0 до запрошенной суммы). Все, что не подошло, остается в исходнике. Используйте это, когда частичное перемещение подходит.

<LuaCode>
```lua
local moved = network:tryInsert(items)
print(moved .. " items were moved") -- can be 0 to items.count
```
</LuaCode>

---

## <a name="craft" />ремесло

(также см. [Автокрафт](../nodeworks-mechanics/autocrafting.md))

Ставит в очередь поделку для данного предмета. Возвращает [РемеслоСтроитель](./craft-builder.md). По умолчанию готовые предметы автоматически сохраняются в [Сетевое хранилище](../nodeworks-mechanics/network-storage.md) после завершения поделки, цепочка не требуется:

<LuaCode>
```lua
-- fire-and-forget: bread lands in storage when ready
network:craft("minecraft:bread", 4)
```
</LuaCode>

Цепочка `:connect(fn)`, чтобы получить результат самостоятельно. Обратный вызов получает [ItemHandle?](items-handle.md), ненулевое значение в случае успеха, `nil` в случае сбоя (план не выполнен, асинхронный тайм-аут, нет процессора). Вызов `:connect` отменяет автоматическое сохранение.

<LuaCode>
```lua
local furnace = network:get("furnace")
network:craft("minecraft:charcoal"):connect(function(item: ItemsHandle?)
  if item then
    furnace:insert(item)
  end
end)
```
</LuaCode>

---

## <a name="shapeless" />бесформенный

Мгновенно создает бесформенный рецепт из ингредиентов из [Сетевое хранилище](../nodeworks-mechanics/network-storage.md). Если рецепт недействителен или ингредиенты отсутствуют, то ничего не создается и функция возвращает `nil`.

<LuaCode>
```lua
-- craft a flint and steel, output automatically goes into network storage.
network:shapeless("minecraft:flint", 1, "minecraft:iron_ingot", 1)
```
</LuaCode>

---

## <a name="handle" />ручка

(также см. [Автокрафт](../nodeworks-mechanics/autocrafting.md))

Регистрирует обработчик обработки для внутрисетевого <ItemLink id="processing_set" />. Обработчик вызывается с входными данными и должен использовать переданные выходные данные от [Работа](job.md) до `pull`. Все элементы, указанные в [Инпутитемс](input-items.md), **должны** быть приняты обработчиком.

<GameScene zoom="5" interactive={true} paddingTop="40" paddingLeft="60" paddingRight="30">
  <ImportStructure src="../assets/assemblies/processing_storage_single_entry.snbt" />
  <BoxAnnotation min="1.9 0.1 0.75" max="1.1 0.9 1" color="#83E086">
    Переименовано в **"печь"**<ItemImage id="nodeworks:io_card" />.
  </BoxAnnotation>
  <BlockAnnotation x="0" y="0" z="0">
    <Row>
      <ItemImage id="minecraft:raw_iron" />
      **➜**
      <ItemImage id="minecraft:iron_ingot" />
    </Row>
  </BlockAnnotation>
</GameScene>

<LuaCode>
```lua
local furnace = network:get("furnace")
-- handler for raw iron -> iron ingot
network:handle("…", function(job: Job, items: InputItems)
  furnace:face("top"):insert(items.rawIron)
  job:pull(furnace:face("bottom"))
end)
```
</LuaCode>

---

## <a name="route" />маршрут

Массовое редактирование [настройки фильтра](../items-blocks/storage_card.md#filters) каждого
<ItemLink id="storage_card" />, имя которого соответствует шаблону. Возвращает строителя
чьи методы цепляются так, что весь набор правил для ряда карточек можно записать за один вызов. Каждый метод немедленно изменяет соответствующие карты, аналогично щелчку правой кнопкой мыши по каждой карте и редактированию ее графического интерфейса вручную.

Шаблон представляет собой имя с подстановочным знаком `*`. `cobblestone_*` соответствует `cobblestone_0`, `cobblestone_1` и т. д. Только `*` соответствует каждой карте памяти в сети.

<LuaCode>
```lua
network:route("cobblestone_*")
  :reset()
  :rule("#c:cobblestones")
  :noNbt()
  :allow()
```
</LuaCode>

### <a name="builder-methods" />Методы строителя

| Метод | Эффект |
| ------------------------------------------------------ | ------------------------------------------------- |
| `:rule(filter)` | Добавляет правило (тот же синтаксис, что и в списке правил графического интерфейса) |
| `:clearRules()` | Отменяет все правила, оставляет режимы в покое |
| `:allow()` / `:deny()` | Устанавливает режим списка правил |
| `:stackable()` / `:nonStackable()` / `:anyStackable()` | Устанавливает фильтр стекируемости |
| `:hasNbt()` / `:noNbt()` / `:anyNbt()` | Устанавливает фильтр NBT |
| `:reset()` | Очищает правила, устанавливает Разрешить + Любой + Любой |

Вызовы возвращают одного и того же строителя, поэтому они объединяются в цепочку. Мутации происходят мгновенно и сохраняются при сохранении/загрузке.

---

## <a name="debug" />отладка

Печатает сводную информацию о топологии сети.

<LuaCode>
```lua
network:debug()
-- === Network Debug ===
-- Controller: BlockPos{x=-25, y=70, z=10}
-- Nodes: 1
--   Node BlockPos{x=-25, y=70, z=9}: 1 cards
--     NORTH: cobblestone_storage (storage)
-- Terminals: 1
--   BlockPos{x=-26, y=70, z=9}
-- CPUs: 0
-- Crafters (Instruction Sets): 0
-- Processing APIs: 0
-- Variables: 0
```
</LuaCode>
