---
navigation:
  parent: lua-api/index.md
  title: "Канал"
  icon: io_card
categories:
  - api_types
description: "представление сети в цветовой области красителя"
---

# <a name="channel" />Канал

`Channel` — это представление сети в цветовой области красителя. Вы получаете один от [`network:channel(color)`](network.md#channel). При поиске по каналу видны только карты, переменные и устройства, канал которых соответствует этому цвету. Канал выбирается в собственном графическом интерфейсе каждой карты или устройства. Несколько подсистем могут совместно использовать одну сеть, при этом псевдонимы их карт не нарушают друг друга.

<LuaCode>
```lua
local red = network:channel("red")
local blue = network:channel("blue")
red:getAll("redstone"):set(true)   -- only the red-channel pistons fire
blue:getAll("redstone"):set(true)  -- only the blue-channel pistons fire
```
</LuaCode>

Название цвета должно быть одним из 16 цветов ванильного красителя (`white`, `red`, `blue`, `light_blue`, `light_gray`, …). Неизвестный цвет вызывает ошибку.

## <a name="choosing-a-channel" />Выбор канала

Во всех [Карты](../nodeworks-mechanics/cards.md) и [Устройства](../nodeworks-mechanics/devices.md) будет возможность выбрать канал. По умолчанию все устройства и карты начинаются с `white`. Вы можете нажать, чтобы развернуть список цветов и выбрать один.

![](../assets/images/choose_channel.png)

## <a name="get" />получить

Поиск псевдонима ограничен этим каналом. Возвращает [КартаРучка](card-handle.md), [Ручка переменной](variable-handle.md), Breaker или Placer — то же пространство имен, что и [`network:get`](network.md#get). Ошибки, когда ни один участник канала не соответствует псевдониму.

<LuaCode>
```lua
local red = network:channel("red")
local counter = red:get("counter")  -- variable named "counter" on the red channel
local door = red:get("door")     -- card named "door" on the red channel
```
</LuaCode>

## <a name="getall" />получить все

Возвращает [Список дескрипторов](handle-list.md) каждого участника этого канала, соответствующего заданному типу. Строки того же типа, что и [`network:getAll`](network.md#getAll), `"io"`, `"storage"`, `"redstone"`, `"observer"`, `"variable"`, `"breaker"`, `"placer"`. Ничего не передавайте, чтобы каждый участник был на канале, независимо от его типа.

<LuaCode>
```lua
local red = network:channel("red")
red:getAll("observer"):onChange(function(block, state)
  print("red-channel observer fired:", block)
end)
```
</LuaCode>

## getFirst

Первый участник данного канала данного типа или `nil`, если ни один из них не соответствует. Полезно, когда на каждом канале есть только одно что-то, и вы не хотите индексировать его в HandleList.

<LuaCode>
```lua
local sensor = network:channel("blue"):getFirst("observer")
if sensor then
  print(sensor.name, "is the blue-channel observer")
end
```
</LuaCode>
