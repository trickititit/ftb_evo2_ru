---
navigation:
  parent: lua-api/index.md
  title: "Пользовательский дескриптор"
  icon: user
categories:
  - api_types
description: "устройство, которое щелкает правой кнопкой мыши по элементу перед ним"
---

# <a name="userhandle" />Пользовательский дескриптор

`UserHandle` — это ссылка на <ItemLink id="user" /> в сети, возвращаемая [`network:get(name)`](network.md#get). Он извлекает один элемент из [Сетевое хранилище](../nodeworks-mechanics/network-storage.md) и щелкает им правой кнопкой мыши по всему, что находится перед блоком.

<BlockImage scale="6" id="user" />

Пользователь имеет два режима. **Мгновенно** вызывает один щелчок правой кнопкой мыши за вызов `:use()`. **Удерживать** удерживает правый щелчок нажатым в течение нескольких тактов до тех пор, пока не запустится `:stop()` (или удерживаемый элемент не завершит свое действие, или не истечет 30-секундный тайм-аут). Фильтры используют тот же синтаксис, что и
<ItemLink id="storage_card" /> правила.

## <a name="properties" />Свойства

- **`.name`**
  - псевдоним пользователя (та же метка, что и на боковой панели терминала)
- **`.kind`**
  - всегда `"user"`

## <a name="use" />использовать

Увольняет пользователя. В **мгновенном** режиме он щелкает правой кнопкой мыши один раз и возвращает информацию о том, выполнено ли действие. В режиме **hold** он запускает удержание и сообщает, перешло ли удержание в состояние удержания.

Возвращает `false` (без срабатывания), когда Пользователь уже использует, находится на перезарядке, заблокирован фильтром, не имеет ничего подходящего в хранилище или не имеет контроллера в сети.

<LuaCode>
```lua
local farmer = network:get("crop_farmer")
farmer:use()
```
</LuaCode>

Чтобы перезапустить удержание без ошибок, сначала позвоните по номеру `:stop()`.

## <a name="stop" />стоп

Отменяет ожидающий мгновенный огонь или отпускает текущий удержание. Безопасный вызов в режиме ожидания, возвращает `false` без ошибок. Анимацию возврата, которая возвращает зарезервированный элемент в сетевое хранилище, нельзя отменить.

<LuaCode>
```lua
local user = network:get("user_1")
local watcher = network:get("observ_1")
user:setMode("hold")
user:use() -- start using a brush on a sus block
-- when the block changes to normal sand or gravel, stop the user
watcher:onChange(function(block: BlockId, state: any)
    if block == "minecraft:gravel" or block == "minecraft:sand" then
        user:stop()
    end
end)
```
</LuaCode>

## isUsing

Возвращает `true`, пока активно удержание, и `false` в противном случае.

<LuaCode>
```lua
local user = network:get("user_1")
if not user:isUsing() then
  user:use()
end
```
</LuaCode>

## <a name="mode" />режим

Возвращает текущий режим в виде строки: `"instant"` или `"hold"`.

<LuaCode>
```lua
local user = network:get("user_1")
print(user:mode()) -- "instant"
```
</LuaCode>

## setMode

Устанавливает режим пользователя. Принимает `"instant"` или `"hold"` (регистронезависимо).

<LuaCode>
```lua
local user = network:get("crop_farmer")
user:setMode("hold")
```
</LuaCode>

## <a name="filter" />фильтр

Возвращает текущее правило фильтра в виде строки, пустой, если ничего не установлено.

<LuaCode>
```lua
local user = network:get("user_1")
print(user:filter()) -- "minecraft:bone_meal"
```
</LuaCode>

## <a name="setfilter" />УстановитьФильтр

Устанавливает правило фильтрации пользователя. Использует тот же синтаксис, что и
<ItemLink id="storage_card" /> фильтры, поэтому идентификаторы элементов отсутствуют,
Префиксы `#namespace:tag`, `minecraft:*`, `/regex/` и `$item:`/`$fluid:` работают.

<LuaCode>
```lua
local user = network:get("crop_farmer")
user:setFilter("minecraft:bone_meal")
```
</LuaCode>

## <a name="facing" />лицом к лицу

Возвращает направление, в котором смотрит пользователь, в виде строчной строки (`"north"`, `"south"`, `"east"`, `"west"`, `"up"`, `"down"`).

<LuaCode>
```lua
local user = network:get("user_1")
print(user:facing()) -- "north"
```
</LuaCode>
