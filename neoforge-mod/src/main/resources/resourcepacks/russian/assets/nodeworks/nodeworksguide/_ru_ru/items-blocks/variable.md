---
navigation:
  parent: items-blocks/index.md
  icon: variable
  title: "Переменная"
categories:
  - device
description: "общая сетевая переменная"
item_ids:
- nodeworks:variable
---

# <a name="variable-block" />Переменный блок

Блок переменных — это значение, которое может использоваться во всей сети.

<BlockImage scale="6" id="variable" />

## <a name="configuration" />Конфигурация

После подключения переменной к сети вы можете выбрать ее **тип** и дать ей **имя**. Оба важны для просмотра вашей переменной в <ItemLink id="terminal" />.

![](../assets/images/variable_gui_count.png)

В данном случае это **числовая** переменная с именем `count`.

Когда вы откроете любой <ItemLink id="terminal" /> в той же сети, вы увидите его на боковой панели, где вы можете ссылаться на него.

![](../assets/images/variable_in_terminal.png)

### <a name="types" />Типы

- **номер**
  - числовое значение (целое или десятичное)
- **строка**
  - любой текст до 256 символов
- **бул**
  - `true` или `false`

## <a name="channel" />Канал

В графическом интерфейсе Variable также имеется средство выбора каналов. См. [Выбор канала](../lua-api/channel.md#choosing-a-channel), чтобы узнать, как каналы определяют, какие сценарии могут обращаться к этой переменной.

## <a name="scripting" />Сценарии

См. страницу [Ручка переменной](../lua-api/variable-handle.md), чтобы увидеть API сценариев.

## <a name="recipe" />Рецепт

<RecipeFor id="variable" />
