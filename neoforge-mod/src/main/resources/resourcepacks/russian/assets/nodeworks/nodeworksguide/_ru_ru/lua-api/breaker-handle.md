---
navigation:
  parent: lua-api/index.md
  title: "Ручка выключателя"
  icon: breaker
categories:
  - api_types
description: "устройство, используемое для разрушения блоков перед собой"
---

# <a name="breakerhandle" />ВыключательРучка

`BreakerHandle` — это ссылка на <ItemLink id="breaker" /> в сети, возвращаемая [`network:get(name)`](network.md#get). Он запускает многотактовый разрыв блока перед прерывателем и направляет отбрасывания обратно в сеть (или к пользовательскому обработчику).

<BlockImage scale="6" id="breaker" />

Разрушитель работает на уровне алмазной кирки и использует формулу длительности деревянной кирки, поэтому более твердые блоки ломаются заметно дольше, чем более легкие. Одновременно для каждого выключателя может выполняться только один перерыв, повторный вызов `:mine()` во время перерыва является неактивным.

## <a name="properties" />Свойства

- **`.name`**
  - псевдоним выключателя (та же метка, что и на боковой панели клеммы)

## <a name="mine" />мой

Запускает многотактовый разрыв блока в положении, обращенном к прерывателю. Возвращает [BreakBuilder](./breaker-handle.md#breakbuilder), чтобы сценарий мог связать `:connect(fn)` для перенаправления капель. Если цепочка не следует, капли переходят в [Сетевое хранилище](../nodeworks-mechanics/network-storage.md), используя стандартные правила приоритета [Карта памяти](../items-blocks/storage_card.md).

<LuaCode>
```lua
local breaker = network:get("quarry_1")
breaker:mine() -- drops go to network storage
```
</LuaCode>

Если цель — воздушная, неразрушимая или выше уровня выключателя, `:mine()` возвращает недействующий построитель, поэтому связанные вызовы не завершаются сбоем.

## <a name="cancel" />отменить

Отменяет перерыв в полете, если таковой имеется. Безопасно звонить, когда он свободен. Блок не сломан и капель не образуется.

<LuaCode>
```lua
local breaker = network:get("breaker_1")
breaker:mine()
if dangerous() then
  breaker:cancel() -- stop before completion
end
```
</LuaCode>

## <a name="block" />блокировать

Возвращает идентификатор блока в позиции, обращенной к выключателю, той же формы, что и [`ObserverCard:block`](./card-handle.md#observer-card). Полезно для раскрытия личности блока.

<LuaCode>
```lua
local breaker = network:get("breaker_1")
if breaker:block() == "minecraft:stone" then
  breaker:mine()
end
```
</LuaCode>

## <a name="state" />государство

Возвращает таблицу свойств блока в положении, обращенном к выключателю. Та же форма, что и [`ObserverCard:state`](./card-handle.md#observer-card), каждое свойство `BlockState`, которое имеет блок (рост `age`, `facing`, `lit`, `waterlogged`, ...), становится полем.

<LuaCode>
```lua
local breaker = network:get("crop_breaker")
local state = breaker:state()
if state.age == 7 then
  breaker:mine() -- only break fully-grown crops
end
```
</LuaCode>

## isMining

Возвращает `true` во время перерыва, `false` в режиме ожидания. Используйте его, чтобы избежать выдачи второго `:mine()` в середине прерывания (второй вызов в любом случае является пустым, но `:isMining()` позволяет сценарию разветвляться чисто).

<LuaCode>
```lua
local breaker = network:get("breaker_1")
if not breaker:isMining() then
  breaker:mine()
end
```
</LuaCode>

## <a name="progress" />прогресс

Возвращает дробь от `0` до `1`, показывающую, насколько далеко находится текущий разрыв. `0` при простое. Полезно для отображения прогресса или определения скорости последующих действий.

<LuaCode>
```lua
local breaker = network:get("breaker_1")
print(string.format("%.0f%%", breaker:progress() * 100))
```
</LuaCode>

---

## BreakBuilder

Вернулся [`Breaker:mine()`](./breaker-handle.md#mine). Настраивает маршрут отбрасывания после завершения разрыва. Без цепочки поток данных автоматически перемещается в сетевое хранилище. Вместо этого используйте цепочку `:connect(fn)`, чтобы перенаправить их на обработчик сценария.

### <a name="connect" />подключить

Перенаправляет капли из этого разрыва на обратный вызов. Обработчик получает одно значение в форме [ПредметыРучка](./items-handle.md) за каждый выпавший стек, поэтому один разрыв многокапельного блока (например, руды, на которую влияет удача) вызывает обработчик несколько раз.

Обработчик может прочитать `.id`, `.name`, `.count` и `.kind` капли, чтобы решить, что делать. Элементы, на которые не претендует обработчик, возвращаются в сетевое хранилище в качестве маршрутизации по умолчанию.

<LuaCode>
```lua
local breaker = network:get("breaker_1")
local chest = network:get("ore_chest")
breaker:mine():connect(function(item: ItemsHandle)
  if item.id == "minecraft:diamond" then
    chest:insert(item) -- diamonds go to a dedicated chest
  end
  -- everything else falls through to network storage
end)
```
</LuaCode>

> **Примечание.** Обработчик прерывателя `:connect` запускается при завершении прерывания, а не при каждом тике. Ошибки внутри обработчика поглощаются, поэтому неправильный обратный вызов не может заблокировать прерыватель.
