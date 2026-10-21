---
navigation:
  parent: lua-api/index.md
  title: "КартаРучка"
  icon: blank_card
categories:
  - api_types
description: "ссылка на одну карту в сети"
---

# <a name="cardhandle" />КартаРучка

Ссылка на одну карту в сети. Вы получаете его от [`network:get(alias)`](network.md#get) или от [Список дескрипторов](handle-list.md), возвращаемого [`network:getAll(type)`](network.md#getAll).

<ItemImage scale="6" id="blank_card" />

---

## <a name="properties" />Свойства

- **`.name`**
  - псевдоним карты (та же метка, что и на боковой панели терминала)

---

## Карты инвентаря <ItemImage scale="0.5" id="nodeworks:storage_card" /> <ItemImage scale="0.5" id="nodeworks:io_card" />

*Применяется к картам ввода-вывода и картам памяти.* Оба используют один и тот же Lua API, разница заключается в том, как сеть обрабатывает блок, к которому они подключены. См.
<ItemLink id="storage_card" /> и <ItemLink id="io_card" /> для внутреннего мира
поведение.

### <a name="face" />лицо

Сузить до определенной грани соседнего блока. Полезно, когда блок имеет разные запасы на каждой стороне (входы печи и выходы и т. д.).

По умолчанию карта выберет лицо, к которому она обращена.

<GameScene zoom="5" interactive={true} paddingLeft="50" paddingRight="60">
  <ImportStructure src="../assets/assemblies/furnace_and_terminal.snbt" />
  <BoxAnnotation min="0 0.9 0" max="1 1.1 1" color="#00ff00">
    `card:face("top")`
  </BoxAnnotation>
  <BoxAnnotation min="1.1 0 0" max="0.9 1 1" color="#00ff00">
    `card`
  </BoxAnnotation>
</GameScene>

<LuaCode>
```lua
local card = network:get("io_1")
card:insert(coal)
card:face("top"):insert(inputItem)
```
</LuaCode>

### <a name="slots" />слоты

Ограничьте инвентарь карты определенными слотами, используя их индексы (индекс начинается с 1).

<ItemGrid>
  <ItemIcon id="minecraft:cobblestone" />
  <ItemIcon id="minecraft:stone" components="minecraft:enchantment_glint_override=true,custom_name=Selected" />
  <ItemIcon id="minecraft:oak_planks" />
  <ItemIcon id="minecraft:diorite" components="minecraft:enchantment_glint_override=true,custom_name=Selected" />
  <ItemIcon id="minecraft:deepslate" />
  <ItemIcon id="minecraft:stick" />
</ItemGrid>

<LuaCode>
```lua
local card = network:get("io_1")
card:slots(2, 4):find("*") -- selects Stone and Diorite
```
</LuaCode>

### <a name="find" />найти

Сканирует инвентарь карты на наличие предметов/жидкостей, соответствующих фильтру. Синтаксис фильтра идентичен [`network:find`](network.md#find), с той лишь разницей, что областью действия являются слоты/резервуары этой карты, а не сама карта памяти в сети.

<LuaCode>
```lua
local coalInCard = card:find("minecraft:coal")
if coalInCard then
  print(coalInCard.count, "coal in this card")
end
```
</LuaCode>

### <a name="findeach" />найтиКаждый

Идентичен [найти](./card-handle.md#find), за исключением того, что возвращает список [ПредметыРучка](./items-handle.md). Каждая запись уникальна своим идентификатором элемента и содержит ли она данные NBT.

Если бы в вашей сети был алмазный меч, некоторые с чарами, а некоторые без них были бы разделены на разные записи.

<ItemGrid>
  <ItemIcon id="minecraft:cobblestone" />
  <ItemIcon id="minecraft:cobblestone" />
  <ItemIcon id="minecraft:oak_planks" />
  <ItemIcon id="minecraft:cobblestone" />
  <ItemIcon id="minecraft:oak_planks" />
  <ItemIcon id="minecraft:stick" />
</ItemGrid>

<LuaCode>
```lua
local allItems = card:findEach("*")
for _, val in allItems do
  print(val.name)
end
-- Cobblestone
-- Oak Planks
-- Stick
```
</LuaCode>

### <a name="insert" />вставить

Перемещает предметы или жидкости *в* инвентарь этой карты. Либо вся сумма подходит и движется, либо вообще ничего не движется. Вы никогда не получите частичный перевод. Возвращает `true`, когда получена полная сумма, `false`, если она не помещается. Зеркала [`network:insert`](network.md#insert), за исключением того, что они ограничены этой картой.

<LuaCode>
```lua
local coal = network:find("minecraft:coal")
if coal and card:insert(coal, 32) then
  print("stored 32 coal in this card")
end
```
</LuaCode>

### <a name="tryinsert" />попробоватьВставить

Как [`insert`](card-handle.md#insert), но перемещает все, что подходит, а не «все или ничего». Возвращает количество фактически приземлившихся (от 0 до запрошенной суммы). Все, что не подошло, остается в исходнике. Используйте это, когда частичное перемещение подходит.

<LuaCode>
```lua
local coal = network:find("minecraft:coal")
if coal then
  local moved = card:tryInsert(coal)
  print("moved", moved, "of", coal.count, "coal")
end
```
</LuaCode>

### <a name="count" />считать

Возвращает общее количество в инвентаре этой карты, соответствующее фильтру. (Жидкости считаются в mB)

Фильтрация имеет тот же синтаксис, что и [найти](network.md#find).

<LuaCode>
```lua
print(card:count("#minecraft:coals"))
```
</LuaCode>

---

## Карта Редстоуна <ItemImage scale="0.5" id="nodeworks:redstone_card" />

*Применимо только к <ItemLink id="redstone_card" />.* Описанные выше методы инвентаризации не применяются, `card:find()` карты красного камня равно нулю.

### <a name="powered" />питание

Возвращает `true`, если входящий сигнал красного камня больше 0.

<GameScene zoom="5" interactive={true} paddingTop="10" paddingLeft="60" paddingRight="30">
  <ImportStructure src="../assets/assemblies/redstone_read_lever.snbt" />
  <BoxAnnotation min="1.2 0.2 1.2" max="1 0.8 1.8" color="#F53B68">
    <ItemImage id="nodeworks:redstone_card" />
  </BoxAnnotation>
</GameScene>

<LuaCode>
```lua
local card = network:get("redstone_1")
print(card:powered())
-- true
```
</LuaCode>

### <a name="strength" />сила

Возвращает силу входящего сигнала красного камня от 0 до 15.

<GameScene zoom="5" interactive={true} paddingTop="10" paddingBottom="40" paddingLeft="60" paddingRight="30">
  <ImportStructure src="../assets/assemblies/redstone_read_strength.snbt" />
  <BoxAnnotation min="3.2 1.2 0.2" max="3 1.8 0.8" color="#F53B68">
    <ItemImage id="nodeworks:redstone_card" />
  </BoxAnnotation>
</GameScene>

<LuaCode>
```lua
local card = network:get("redstone_1")
print(card:strength())
-- "14"
```
</LuaCode>

### <a name="set" />набор

Издает сигнал красного камня. Логическое значение отображается в 15 или 0, как <ItemLink id="minecraft:lever" />. Число ограничено от 0 до 15.

<GameScene zoom="5" interactive={true} paddingTop="10" paddingLeft="60" paddingRight="30">
  <ImportStructure src="../assets/assemblies/redstone_set_true.snbt" />
  <BoxAnnotation min="3 1 0.2" max="4 1.1 0.8">
    15 сила
  </BoxAnnotation>
  <BoxAnnotation min="4.2 1.2 0.2" max="4 1.8 0.8" color="#F53B68">
    <ItemImage id="nodeworks:redstone_card" />
  </BoxAnnotation>
  <RemoveBlocks id="minecraft:stone" />
</GameScene>

<LuaCode>
```lua
local card = network:get("redstone_1")
card:set(true) -- emit a signal of 15 strength like a lever
card:set(false) -- set emitted signal to 0
```
</LuaCode>

Вы можете использовать число, чтобы указать силу излучаемого сигнала.

<GameScene zoom="5" interactive={true} paddingTop="10" paddingLeft="60" paddingRight="30">
  <ImportStructure src="../assets/assemblies/redstone_set_low.snbt" />
  <BoxAnnotation min="3 1 0.2" max="4 1.1 0.8">
    3 сила
  </BoxAnnotation>
  <BoxAnnotation min="4.2 1.2 0.2" max="4 1.8 0.8" color="#F53B68">
    <ItemImage id="nodeworks:redstone_card" />
  </BoxAnnotation>
  <RemoveBlocks id="minecraft:stone" />
</GameScene>

<LuaCode>
```lua
local card = network:get("redstone_1")
card:set(3)
```
</LuaCode>

### onChange

Регистрирует обратный вызов, запускаемый при изменении уровня входящего сигнала красного камня.

<GameScene zoom="5" interactive={true} paddingTop="10" paddingLeft="60" paddingRight="30">
  <ImportStructure src="../assets/assemblies/redstone_onchange.snbt" />
  <BoxAnnotation min="3.2 1.2 0.2" max="3 1.8 0.8" color="#F53B68">
    <ItemImage id="nodeworks:redstone_card" />
  </BoxAnnotation>
  <BoxAnnotation min="0 1 0" max="3 2 2">
    часы/пульсатор из красного камня
  </BoxAnnotation>
</GameScene>

<LuaCode>
```lua
local card = network:get("redstone_1")
-- print "state changed" when redstone torch turns on and off
local lastPowered = card:powered()
card:onChange(function(strength: number)
    local powered = strength > 0
    if lastPowered == powered then
        return
    end
    lastPowered = powered
    print("state changed")
end)
```
</LuaCode>

> **Совет.** Также рекомендуется включить [«Автозапуск»](../items-blocks/scripting_terminal.md#autorun) для <ItemLink id="terminal" /> > при использовании `:onChange`.

![](../assets/images/autorun.png)

## Карта наблюдателя <ItemImage scale="0.5" id="nodeworks:observer_card" />

*Применимо только к <ItemLink id="observer_card" />.* Указанные выше методы инвентаризации не применяются. `card:find()` карты наблюдателя равен нулю. Карта наблюдает за блоком перед установленным лицом и предоставляет его идентификатор, свойства и событие изменения.

### <a name="block" />блокировать

Возвращает идентификатор блока в отслеживаемой позиции в виде строки `"namespace:path"`.

<LuaCode>
```lua
local watcher = network:get("watcher_1")
print(watcher:block())
-- "nodeworks:celestine_cluster"
```
</LuaCode>

Если отслеживаемый фрагмент не загружен, вызов все равно возвращает кешированный блок (Minecraft загрузит фрагмент для его чтения). Для сценариев большого объема отдавайте предпочтение `:onChange` вместо опроса `:block()` каждый тик.

### <a name="state" />государство

Возвращает таблицу свойств отслеживаемого блока. Ключи — это имена свойств блока (`age`, `facing`, `waterlogged`, `lit`, `axis`, ...). Значения возвращаются в виде чисел, логических значений или строк в нижнем регистре в зависимости от типа свойства. Air и другие блоки без свойств возвращают пустую таблицу.

<LuaCode>
```lua
local s = network:get("watcher_1"):state()
if s.age == 3 then
    print("fully grown")
end
```
</LuaCode>

Разные блоки предоставляют разные свойства, то, что возвращает `state()`, полностью зависит от того, какой блок отслеживается. Сначала используйте `:block()`, если вам нужно перейти к тому блоку, который вы проверяете.

### onChange

Регистрирует обратный вызов, который срабатывает всякий раз, когда изменяется идентификатор отслеживаемого блока или какое-либо свойство состояния. Заменяет любой предыдущий обработчик на той же карте. Обработчик получает новый идентификатор блока и новую таблицу свойств.

<LuaCode>
```lua
local watcher = network:get("watcher_1")
local breaker = network:get("breaker_1")

watcher:onChange(function(block: string, state: { [string]: any })
    if block == "nodeworks:celestine_cluster" then
        breaker:set(true)
        scheduler:delay(2, function() breaker:set(false) end)
    end
end)
```
</LuaCode>

Первый опрос после регистрации автоматически устанавливает состояние «последний просмотр», сценарий, который перезапускается, не запускает фантомное событие для блока, который уже был в своей окончательной форме до появления сценария.

> **Совет:** Как и красный камень `:onChange`, это тип обратного вызова, который обычно требуется для автозапуска. Включите [«Автозапуск»](../items-blocks/scripting_terminal.md#autorun) > на <ItemLink id="terminal" />, чтобы обработчик продолжал срабатывать при входе в систему.
