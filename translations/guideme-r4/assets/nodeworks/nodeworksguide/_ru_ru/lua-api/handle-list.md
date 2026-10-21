---
navigation:
  parent: lua-api/index.md
  title: "Список дескрипторов"
  icon: minecraft:red_bundle
categories:
  - api_types
description: "разветвленный список карточек или переменных, возвращаемых getAll"
---

# <a name="handlelist" />Список дескрипторов

`HandleList<T>` — это список карточек или переменных, которые **распространяют методы записи для каждого члена**. Вы получаете один от [`network:getAll(type)`](network.md#getAll) или [`Channel:getAll(type)`](network.md#channel-getall).

Вызов метода записи в списке вызывает этот метод по порядку для каждого члена с одинаковыми аргументами. Методы чтения не отображаются в списке, их возвращаемые значения — это весь смысл их вызова, и бесшумное размещение их среди N членов было бы непростым делом. Чтобы прочитать данные для каждого участника, вызовите `:list()` и выполните итерацию.

<LuaCode>
```lua
-- Toggle every red-channel piston on at once.
network:channel("red"):getAll("redstone"):set(true)
-- Register the same onChange handler on every observer in one line.
network:getAll("observer"):onChange(function(block, state)
    if block == "nodeworks:celestine_cluster" then
        -- ...
    end
end)
```
</LuaCode>

## <a name="which-methods-broadcast" />Какие методы трансляции

В списке разбросаны только **методы записи**, у которых место вызова не зависит от возвращаемого значения. Такие операции чтения, как `:powered()`, `:count()`, `:get()`, `:block()`, намеренно отсутствуют, поэтому возвращаемое значение не распределяется автоматически между N членами. Чтобы прочитать каждого участника, позвоните по номеру `:list()` и проверьте каждого участника индивидуально.

Собственная страница каждого типа (например, [RedstoneКарта](card-handle.md#redstone-card), [Ручка переменной](variable-handle.md)) является источником истины, для которого из ее методов выполняется чтение, а не запись.

## <a name="list" />список

Аварийный люк. Возвращает базовый массив, чтобы вы могли выполнять итерацию для каждого элемента, читать отдельные значения или применять логику для каждого элемента, которая не соответствует форме широковещательной рассылки.

<LuaCode>
```lua
local pistons = network:channel("red"):getAll("redstone")
for _, p in pistons:list() do
    if p:powered() then
        print(p.name, "is currently powered")
    end
end
```
</LuaCode>

## <a name="count" />считать

Сколько участников в списке. Дешевле, чем `#list:list()`, поскольку не строит массив.

<LuaCode>
```lua
local watchers = network:getAll("observer")
print(watchers:count(), "observer cards on the network")
```
</LuaCode>

## <a name="face" />лицо

Возвращает новый HandleList, лицо доступа членов карты которого переопределено на `name`. Исходный список не изменяется, переопределение применяется только к возвращенной копии. Элементы, которые не являются [КартаРучка](card-handle.md) (переменные, разбивчики, россыпи), проходят без изменений, эти типы дескрипторов игнорируют лицо.

Переопределение сохраняется, когда список передается в предустановку ([Импортер](importer.md) / [Стокер](stocker.md)), поэтому разветвление с подстановочными знаками может читать или записывать лицо, отличное от умолчанию, на каждой совпадающей карте с одним выражением.

<LuaCode>
```lua
-- pull furnace outputs (bottom face) from every io_* card into the output chest
importer:from(network:cards("io_*"):face("bottom")):to("output"):start()
```
</LuaCode>

Та же форма, что и [`CardHandle:face`](card-handle.md#face), но применяется сразу ко всему списку.
