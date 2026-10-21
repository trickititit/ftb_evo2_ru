---
navigation:
  parent: lua-api/index.md
  title: "РоссыпьРучка"
  icon: placer
categories:
  - api_types
description: "устройство для размещения блоков перед ним"
---

# <a name="placerhandle" />РоссыпьРучка

`PlacerHandle` — это ссылка на <ItemLink id="placer" /> в сети, возвращаемая [`network:get(name)`](network.md#get). Он тянет один из выбранных предметов из [Сетевое хранилище](../nodeworks-mechanics/network-storage.md) и помещает его в виде блока лицом к россыпи.

<BlockImage scale="6" id="placer" />

`:place(...)` является синхронным, он возвращает `true`/`false` в том же тике, который вызвал скрипт. Никакого многотикового прогресса, никакого конструктора, никакого обратного вызова. Только предметы со знаком `BlockItem` (имеющие форму размещаемого блока) успешны, вызов быстро завершается неудачно для инструментов, еды или чего-либо, что нельзя разместить.

## <a name="properties" />Свойства

- **`.name`**
  - псевдоним россыпи (та же метка, что и на боковой панели терминала)

## <a name="place" />место

Извлекает один из выбранных предметов из сетевого хранилища и помещает его лицом к россыпщику. Возвращает `true` в случае успеха.

Аргументом может быть либо строка идентификатора элемента, либо [ПредметыРучка](./items-handle.md). С помощью дескриптора россыпь считывает `.id` и извлекает один из *этих* элементов из сетевого пула так же, как это было бы для формы с голой строкой. Собственный источник дескриптора не истощается, а сетевые карты памяти.

<LuaCode>
```lua
local placer = network:get("placer_1")
placer:place("minecraft:cobblestone")
```
</LuaCode>

Возвращает `false` (и ничего не помещает), когда:
- в сети нет подходящего товара
- целевая позиция не воздушная
- элемент не является размещаемым блоком (например, `minecraft:diamond`, `minecraft:stick`)

<LuaCode>
```lua
local placer = network:get("bridge_builder")
local ok = placer:place("minecraft:oak_planks")
if not ok then
  print("nothing placed, no planks in storage or target blocked")
end
```
</LuaCode>

## <a name="block" />блокировать

Возвращает идентификатор блока в позиции, обращенной к россыпи, той же формы, что и [`ObserverCard:block`](./card-handle.md#observer-card). Полезно для проверки «пуст ли слот / ожидаемый ли это блок» перед вызовом `:place`.

<LuaCode>
```lua
local placer = network:get("placer_1")
if placer:block() == "minecraft:air" then
  placer:place("minecraft:torch")
end
```
</LuaCode>

## <a name="isblocked" />заблокирован

Возвращает `true`, если целевую позицию невозможно заменить (не воздух и не заменяемый блок, например трава или снег), `false`, если место приземлится. Дешевле, чем звонить по номеру `:place` и проверять возвращаемое значение, когда вам нужно только узнать, свободен ли слот.

<LuaCode>
```lua
local placer = network:get("placer_1")
if not placer:isBlocked() then
  placer:place("minecraft:cobblestone")
end
```
</LuaCode>
