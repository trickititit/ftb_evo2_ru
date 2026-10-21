---
navigation:
  parent: lua-api/index.md
  title: "Ручка переменной"
  icon: variable
categories:
  - api_types
description: "ссылка на <ItemLink id="variable" /> в сети"
---

# <a name="variablehandle" />Ручка переменной

`VariableHandle` — это ссылка на <ItemLink id="variable" /> в сети, возвращаемая [`network:get(name)`](network.md#get) (тот же метод доступа, который используется для карт). Дескриптор отслеживает объявленный тип переменной. Каждый тип переменной получает определенных помощников поверх общего основного API, представленного ниже.

<BlockImage scale="6" id="variable" />

> **Примечание.** Все мутации являются атомарными. Второй скрипт, вызывающий `:set` или `:cas` > для той же переменной, никогда не сможет чередоваться в середине операции.

## <a name="properties" />Свойства

- **`.name`**
  - псевдоним переменной (та же метка, что и на боковой панели терминала)

## <a name="core-methods" />Основные методы

### <a name="get-/-set" />получить/установить

Получает и устанавливает текущее значение переменной

<LuaCode>
```lua
local myNumericVar = network:get("myNumericVar")
print(myNumericVar:get())
myNumericVar:set(1)
print(myNumericVar:get())
-- "0"
-- "1"
```
</LuaCode>

### <a name="cas" />Кас

Сравнить и поменять. Устанавливает переменную в `new`, только если ее текущее значение равно `expected`. В противном случае текущее значение остается нетронутым. Возвращает `true`, если замена прошла успешно, `false`, если что-то еще уже изменило значение.

Используйте это всякий раз, когда новое значение, которое вы хотите записать, **зависит от текущего значения** и к этой переменной может относиться более одного сценария. `:set` с радостью перезапишет все, что там есть, поэтому два сценария, соревнующиеся друг с другом, могут помешать работе друг друга. `:cas` отказывается записывать, пока переменная не будет выглядеть так, как вы думаете.

<LuaCode>
```lua
-- claim a job slot: only the first script that reads "" wins
if slot:cas("", "worker_A") then
  print("i got the job")
else
  print("someone else already claimed it")
end
```
</LuaCode>

Типичный цикл чтения-изменения-записи, когда значение может измениться в процессе выполнения:

<LuaCode>
```lua
-- decrement only while > 0, retrying on contention
while true do
  local current = counter:get()
  if current <= 0 then
    break -- nothing left to take
  end
  if counter:cas(current, current - 1) then
    break -- we got it
  end
  -- another script moved the value between :get and :cas, try again
end
```
</LuaCode>

> **Примечание.** Для простой арифметики [`increment / decrement`](variable-handle.md#increment--decrement) уже > атомарно и проще. Используйте `:cas`, если переход не просто «+/-» n

### <a name="type" />тип

Возвращает строку, представляющую «тип» этого `VariableHandle`

- **`NumberVariableHandle`**
  - `"number"`
- **`BoolVariableHandle`**
  - `"bool"`
- **`StringVariableHandle`**
  - `"string"`

<LuaCode>
```lua
local numberVar = network:get("numberVar")
local boolVar = network:get("boolVar")
local stringVar = network:get("stringVar")
print(numberVar:type())
print(boolVar:type())
print(stringVar:type())
-- "number"
-- "bool"
-- "string"
```
</LuaCode>

## BoolVariableHandle

[`VariableHandle`](./variable-handle.md), указывающий на <ItemLink id="variable" />, объявленный с типом `bool`. Добавляет методы, которые работают только с логическими переменными.

### <a name="toggle" />переключить

Переворачивает текущее значение. (`true` становится `false`, `false` становится `true`) и возвращает новое значение.

<LuaCode>
```lua
local lights = network:get("lights")
print(lights:get())
lights:toggle()
print(lights:get())
-- "false"
-- "true"
```
</LuaCode>

> **Примечание.** Полезно в качестве действия «нажмите для переключения», связанного с кнопкой красного камня через > [`RedstoneCard:onChange`](./card-handle.md#onchange).

### <a name="trylock-/-unlock" />попробуйте заблокировать/разблокировать

Переменная bool выполняет функцию блокировки взаимного исключения. `:tryLock()` атомарно меняет значение переменной с `false` на `true` и возвращает `true` в случае успеха. Если переменная bool уже равна `true` (она хранится в другом скрипте), она возвращает `false` **без блокировки**. `:unlock()` переворачивает его обратно на `false`.

<LuaCode>
```lua
local mutex = network:get("job_mutex") -- bool variable
if mutex:tryLock() then
  -- do job
  mutex:unlock()
end
```
</LuaCode>

> **Важно:** `:tryLock` не ждет, если блокировка удерживается. Вместо этого он немедленно вернет `false`. Создайте свой сценарий так, чтобы он либо повторил попытку позже ([`scheduler:delay`](scheduler.md#delay)), либо пропустил работу, если он не может запросить блокировку. > > Всегда сочетайте успешную `:tryLock` с `:unlock`. Оберните критический раздел в `pcall`, как указано выше, чтобы замок не застрял в случае ошибки в коде.

## <a name="numbervariablehandle" />НомерVariableHandle

[`VariableHandle`](./variable-handle.md), указывающий на <ItemLink id="variable" />, объявленный с типом `number`. Добавляет методы, которые работают только с числовыми переменными.

### <a name="increment-/-decrement" />увеличение/уменьшение

Добавляет или вычитает текущее значение переменной. Оба принимают сумму и возвращают новое значение.

<LuaCode>
```lua
local counter = network:get("counter")
counter:set(0)
counter:increment(1) -- +1 -> 1
counter:increment(5) -- +5 -> 6
counter:decrement(2) -- -2 -> 4
```
</LuaCode>

### <a name="min-/-max" />мин/макс

- `:min(n)` устанавливает для переменной меньшее значение: текущее значение или `n`.
- `:max(n)` устанавливает большее значение.

Оба возвращают новое значение.

<LuaCode>
```lua
local best = network:get("best_score")
best:set(42)
best:max(50) -- 42 vs 50 -> 50 (new high)
best:max(35) -- 50 vs 35 -> 50 (unchanged)
best:min(10) -- 50 vs 10 -> 10 (capped)
```
</LuaCode>

## StringVariableHandle

[`VariableHandle`](./variable-handle.md), указывающий на <ItemLink id="variable" />, объявленный с типом `string`. Добавляет методы, которые работают только со строковыми переменными.

### <a name="append-/-length-/-clear" />добавить/длину/очистить

- `:append(str)` добавляет `str` в конец текущего значения и возвращает новое
строка.
- `:length()` возвращает количество символов в текущем значении.
- `:clear()` очищает переменную (устанавливает ей значение `""`).

<LuaCode>
```lua
local log = network:get("log")
log:clear()
log:append("start ")
log:append("middle ")
log:append("end")
print(log:get())
print(log:length())
-- "start middle end"
-- 16
```
</LuaCode>
