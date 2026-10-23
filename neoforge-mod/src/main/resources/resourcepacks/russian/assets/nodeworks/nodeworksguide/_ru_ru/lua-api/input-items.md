---
navigation:
  parent: lua-api/index.md
  title: "Инпутитемс"
  icon: minecraft:cobblestone
categories:
  - api_types
description: "второй аргумент передается в [network:handle обратные вызовы](network.md#handle) набор полей [`ItemsHandle`](items-handle.md) для каждого рецепта, связанных с именами входных слотов рецепта."
---

# <a name="inputitems" />Инпутитемс

`InputItems` — это второй аргумент, который получает ваша функция [`network:handle`](network.md#handle). Сеть уже достала для вас ингредиенты рецепта из хранилища, они ждут на этой таблице, по одному полю на входной слот. Ваша задача — закачать эти предметы в настоящую машину.

Каждое поле представляет собой полный [ПредметыРучка](items-handle.md), поэтому вы вызываете `:insert`, `:tryInsert`, `:count` и т. д., как и любой другой дескриптор.

## <a name="field-names" />Имена полей

Имена полей имеют **верблюжий регистр, основанный на идентификаторах входных элементов**. Таким образом, `minecraft:raw_iron` становится `items.rawIron`, `minecraft:copper_ingot` становится `items.copperIngot`. Редактор сценариев автоматически заполняет правильные имена для любого рецепта, который вы обрабатываете, их не нужно запоминать.

<LuaCode>
```lua
local furnace = network:get("furnace")
network:handle("...", function(job: Job, items: InputItems)
  furnace:face("top"):insert(items.rawIron) -- minecraft:raw_iron
  job:pull(furnace:face("bottom"))
end)
```
</LuaCode>

### <a name="duplicate-ingredients" />Дублирующиеся ингредиенты

Если в рецепте один и тот же ингредиент присутствует более чем в одном слоте, второму вхождению присваивается суффикс `2`, третьему — `3` и так далее. Таким образом, рецепт, в котором используются два медных слитка и один золотой слиток, отображает их как `items.copperIngot`, `items.goldIngot`, `items.copperIngot2`.

<LuaCode>
```lua
local press = network:get("press")
network:handle("...", function(job: Job, items: InputItems)
  press:face("top"):insert(items.copperIngot)
  press:face("top"):insert(items.copperIngot2)
  press:face("north"):insert(items.goldIngot)
  job:pull(press:face("bottom"))
end)
```
</LuaCode>

## <a name="you-must-use-everything" />Вы должны использовать все

Ожидается, что обработчик перенесет все входные данные в машину. Если что-то осталось в `items.<slot>`, когда обработчик возвращается, сеть считает поделку незавершенной и повторяет рецепт позже. Режима «пропустить этот ввод» нет, в рецепте сказано, что нужно N медных слитков, и N медных слитков должны куда-то приземлиться.

> **Примечание.** «Использовать» означает вставить его в доступное место, сетевое хранилище > через `network:insert` считается. Проверка просто заключается в том, «использовал ли сценарий> данные ему элементы?», а не «попали ли они на нужную машину».
