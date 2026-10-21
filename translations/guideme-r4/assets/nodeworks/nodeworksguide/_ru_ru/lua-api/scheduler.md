---
navigation:
  parent: lua-api/index.md
  title: "Планировщик"
  icon: minecraft:repeater
categories:
  - api_builtin
description: "обратные вызовы тика/секунды/задержки"
---

# <a name="scheduler" />Планировщик

Модуль `scheduler` регистрирует периодические и отложенные обратные вызовы, которые выполняются по такту сервера (20 TPS). Каждая регистрация возвращает идентификатор задачи, который вы можете передать `:cancel`, чтобы остановить ее.

> **Совет:** Также рекомендуется включить [«Автозапуск»](../items-blocks/scripting_terminal.md#autorun) из <ItemLink id="terminal" />, если вы хотите, чтобы это всегда работало [`scheduler:tick`](scheduler.md#tick) или [`scheduler:second`](scheduler.md#second).

![](../assets/images/autorun.png)

## <a name="tick" />поставить галочку

Запускает предоставленный обратный вызов при каждом тике сервера

<LuaCode>
```lua
scheduler:tick(function()
  -- runs 20 times/second
end)
```
</LuaCode>

## <a name="second" />второй

Запускает предоставленный обратный вызов каждую секунду (20 тактов)

<LuaCode>
```lua
scheduler:second(function()
  -- runs once per second
end)
```
</LuaCode>

## <a name="delay" />задержка

Задерживает функцию обратного вызова на указанное количество тактов.

<LuaCode>
```lua
scheduler:delay(20, function()
  -- runs after one second has passed
end)
```
</LuaCode>

## <a name="cancel" />отменить

Останавливает заданный идентификатор задачи. Безопасно звонить по уже аннулированным или просроченным идентификаторам.

<LuaCode>
```lua
local task = scheduler:tick(function()
  print("hello")
end)
-- cancel the scheduler:tick task after one second
scheduler:delay(20, function()
  scheduler:cancel(task)
end)
-- "hello" (x20)
```
</LuaCode>
