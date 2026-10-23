---
navigation:
  parent: lua-api/index.md
  title: "ПредметыРучка"
  icon: minecraft:bundle
categories:
  - api_types
description: "конкретный ресурс (предметы или жидкость) с указанием количества, источника и операций передачи."
---

# <a name="itemshandle" />ПредметыРучка

`ItemsHandle` — это **одиночный тип ресурса с прикрепленным счетчиком**. Это значение, которое возвращает большинство сетевых и карточных методов, когда вы спрашиваете: «Что находится в хранилище?» и значение, которое принимают те же самые методы, когда вы говорите «переместить это куда-нибудь».

> **Примечание.** Дескриптор — это **снимок**, сделанный при возврате вызова. Значение > `.count` не обновляется по мере того, как элементы впоследствии перемещаются в хранилище или из него. > Если вам нужен новый подсчет, позвоните по номеру `:find` еще раз.

---

## <a name="what-a-handle-represents-(and-doesn&#x27;t)" />Что представляет собой дескриптор (и что не представляет)

Дескриптор — это **совокупность всех соответствующих ресурсов в запрошенном местоположении**, а не отдельный стек инвентаря. Два важных последствия:

**Один и тот же дескриптор охватывает как предметы, так и жидкости.** Поле `.kind` указывает, на какой из них вы смотрите. Счетчики — это единицы стека для предметов и миллибадеры (mB) для жидкостей. Подробно описано в разделах [считать](./items-handle.md#count) и [добрый](./items-handle.md#kind).

**Счетчик может превышать `maxStackSize`.** `network:find("minecraft:coal")` может возвращать дескриптор с `count = 192`, даже если один слот инвентаря содержит только 64. Дескриптор — это «каждый уголь в любой точке сети», который может быть распределен по множеству слотов, множеству карт памяти или множеству резервуаров. То же самое относится и к [card:find](card-handle.md#find), который накапливается в слотах и ​​резервуарах карты.

Если вам нужен каждый отдельный стек отдельно (например, зачарованный меч или незачарованный меч с тем же идентификатором), используйте вместо этого [`findEach`](network.md#findEach). Он разделяется по идентификатору **и** данным NBT, поэтому каждая уникальная комбинация становится отдельным дескриптором.

<LuaCode>
```lua
local allCoal = network:find("minecraft:coal")
print(allCoal.count) -- 192, total across the whole network

for _, h in network:findEach("minecraft:diamond_sword") do
  print(h.name, h.hasData) -- enchanted vs plain swords as separate entries
end
```
</LuaCode>

---

## <a name="properties" />Свойства

### <a name="id" />идентификатор

Идентификатор ресурса, на который указывает этот дескриптор. Одинаковая форма для обоих типов: `"minecraft:diamond"` для предмета, `"minecraft:water"` для жидкости.

<LuaCode>
```lua
local coal = network:find("minecraft:coal")
print(coal.id) -- "minecraft:coal"
```
</LuaCode>

### <a name="name" />имя

Отображаемое имя, которое игрок видит во всплывающих подсказках. Переведено, отформатировано и учитывает пользовательские имена (элементы, переименованные с помощью наковальни, отображают переименованную строку).

<LuaCode>
```lua
local sword = network:find("minecraft:diamond_sword")
print(sword.name) -- "Diamond Sword" (or "Excalibur" if renamed)
```
</LuaCode>

### <a name="count" />считать

Какую часть ресурса представляет дескриптор. **Элементы собраны в стопки** (отдельные предметы, а не стопки по 64 штуки). **Жидкости указаны в mB** (миллибаках, 1000 mB = 1 ведро).

<LuaCode>
```lua
local coal = network:find("minecraft:coal")
print(coal.count) -- 192 (192 individual coal pieces)
-- or for fluids
local water = network:find("minecraft:water")
print(water.count) -- 4000 (4 buckets in mB)
```
</LuaCode>

### <a name="kind" />добрый

`"item"` или `"fluid"`. Разветвляйтесь на этом, когда сценарий обрабатывает оба.

<LuaCode>
```lua
for _, h in network:findEach("*") do
  if h.kind == "fluid" then
    print(h.count, "mB of", h.name)
  else
    print(h.count, "x", h.name)
  end
end
```
</LuaCode>

### <a name="stackable" />штабелируемый

`true` для предметов с максимальным размером стопки больше 1 (булыжник, слитки, доски, ...), `false` для инструментов, доспехов и всего уникального (зелья с пользовательским НБТ, письменные книги). Жидкости здесь всегда `false`, они отслеживаются по объёму, а не по стопкам.

<LuaCode>
```lua
for _, item in inputChest:findEach("*") do
  if not item.stackable then
    nonStackables:insert(item)
  else
    network:insert(item)
  end
end
```
</LuaCode>

Пример перемещения предметов, не складывающихся друг в друга, в другой сундук за пределами вашей сети.

### <a name="maxstacksize" />МаксСтекСизе

Самый большой стек, который ресурс может занять в одном слоте инвентаря. `64` для большинства предметов, `16` для снежков и жемчуга Эндера, `1` для инструментов и доспехов. Отчет о жидкостях `1`, не имеет смысла.

<LuaCode>
```lua
local coal = network:find("minecraft:coal")
print(coal.maxStackSize) -- 64
```
</LuaCode>

### <a name="hasdata" />имеет данные

`true`, если в стопке есть нестандартные NBT, чары, пользовательские имена, содержимое написанной книги, окрашенная броня, эффекты подозрительного тушеного мяса и т. д. Полезно для сортировки «интересных» предметов от простой массы.

<LuaCode>
```lua
for _, item in inputChest:findEach("*") do
  if item.hasData then
    enchantedItems:insert(item)
  else
    network:insert(item)
  end
end
```
</LuaCode>

---

## <a name="methods" />Методы

### <a name="hastag" />имеет тег

Возвращает `true`, если ресурс является членом данного тега. Принимает идентификатор тега с начальным `#` или без него, оба `"minecraft:logs"` и `"#minecraft:logs"` работают.

<LuaCode>
```lua
for _, h in network:findEach("*") do
  if h:hasTag("minecraft:logs") then
    print(h.name, "is a log type")
  end
end
```
</LuaCode>

Членство в тегах — это тот же набор, который Minecraft использует для создания рецептов и решений по биомам, поэтому здесь будет совпадать все, что работает в ванильном рецепте «любого бревна».

### <a name="matches" />спички

Возвращает `true`, если ресурс соответствует заданному фильтру, используя тот же синтаксис фильтра, что и [`network:find`](network.md#find). Полезно для маршрутизации предикатов и ветвления по элементам без необходимости полного обхода `:find` туда и обратно.

<LuaCode>
```lua
function smelt(item: ItemsHandle)
  if item:matches("/_ore$/") then
    machine:insert(item)
    return
  end
  furnace:insert(item)
end
```
</LuaCode>

---

## <a name="passing-a-handle-into-transfer-methods" />Передача дескриптора в методы передачи

Дескриптор — это не просто значение, доступное только для чтения, это также **источник перемещения этих элементов**. Большинство методов передачи принимают дескриптор в качестве аргумента и перемещаются из того места, откуда он пришел, в новое место назначения.

<LuaCode>
```lua
local coal = network:find("minecraft:coal")
if coal then
  -- move all of it into the chest
  chest:insert(coal)
end
```
</LuaCode>

Методы, которые используют дескриптор следующим образом:

- [`card:insert`](card-handle.md#insert) / [`card:tryInsert`](card-handle.md#tryinsert), в соседний инвентарь карты.
- [`network:insert`](network.md#insert) / [`network:tryInsert`](network.md#tryinsert), в сетевое хранилище с правилами маршрутизации
- [`placer:place`](placer-handle.md#place), использует `.id` маркера, чтобы выбрать, что разместить

`.count` маркера — это максимальное перемещение этих методов. Передайте необязательный второй аргумент, чтобы ограничить ход меньшим количеством, что полезно для небольших пунктов назначения, таких как топливный отсек печи:

<LuaCode>
```lua
local coal = network:find("minecraft:coal")
furnace:insert(coal, 8) -- top up the fuel slot with 8 coal
```
</LuaCode>

> **Примечание.** `:insert` означает «все или ничего». Если пункт назначения не может вместить всю сумму, которую вы пытаетесь переместить, ничего не перемещается, и вызов возвращает > `false`. Используйте `:tryInsert`, если частичная передача допустима, или укажите ограничение > второго аргумента, чтобы перемещение оставалось в пределах емкости пункта назначения.

---

## <a name="nil-when-nothing-matches" />ноль, когда ничего не совпадает

Записи `:find` и `findEach` возвращают `nil`, если фильтр не имеет совпадения. Дескриптора с `count = 0` не существует, отсутствие результата выражается отсутствием. Всегда проверяйте перед созданием цепочки:

<LuaCode>
```lua
local coal = network:find("minecraft:coal")
if coal then
  print(coal.count, "coal available")
else
  print("no coal in storage")
end
```
</LuaCode>

Система типов редактора отслеживает это: при наведении `coal` отображается `ItemsHandle?` (`?` — это маркер «или ноль»), поэтому он подскажет вам, когда вы забудете поставить галочку.
