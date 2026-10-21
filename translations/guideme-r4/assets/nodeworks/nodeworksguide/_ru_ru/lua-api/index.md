---
navigation:
  title: "API скриптов Nodeworks"
  position: 40
---

# <a name="nodeworks-scripting-api" />API скриптов Nodeworks

<BlockImage scale="6" id="terminal" float="left" />

Nodeworks использует [Lua](https://www.lua.org/docs.html) с несколькими расширениями, которые редактор обрабатывает перед запуском скрипта:

- **Аннотации типов:** ( `local x: CardHandle`, `function(xs: { CardHandle }): ItemsHandle` и т. д.)
  - Указывают редактору тип переменной, параметра или возвращаемого значения. Это улучшает подсказки и автодополнение, а также позволяет определять тип элементов в циклах for.

## <a name="built-ins" />Встроенные модули

<CategoryIndexDescriptions category="api_builtin" />

- [clock()](): возвращает число секунд с дробной частью с момента запуска скрипта.
- [print(...)](): выводит сообщение в терминал.
- [require(name)](): загружает другую вкладку скрипта из того же терминала по её имени.

## <a name="presets" />Готовые шаблоны

Декларативные конструкторы позволяют записывать типовые циклы планировщика короткими цепочками вызовов. Общая схема описана в разделе [Готовые шаблоны](presets.md).

<CategoryIndexDescriptions category="api_preset" />

## <a name="types" />Типы

<CategoryIndexDescriptions category="api_types" />
