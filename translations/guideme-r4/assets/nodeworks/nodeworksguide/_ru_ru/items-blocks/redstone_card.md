---
navigation:
  parent: items-blocks/index.md
  icon: redstone_card
  title: "Карта Редстоуна"
categories:
  - card
description: "читает и записывает сигналы красного камня на установленном узле"
item_ids:
- nodeworks:redstone_card
---

# <a name="redstone-card" />Карта Редстоуна

Считывает и записывает сигналы красного камня на установленном лице.

<ItemImage scale="6" id="redstone_card" />

## <a name="installing-and-scripting" />Установка и создание сценариев

Устанавливается на лицевую сторону узла так же, как и <ItemLink id="io_card" />. См. [Установка карты ввода-вывода](./io_card.md#installing) для прохождения. Карта считывает и записывает сигнал красного камня на *этом лице*.

Видите, [API сценариев RedstoneCard](../lua-api/card-handle.md#redstone-card) отличается от других карт.

## <a name="channel" />Канал

Карта Redstone Card имеет в графическом интерфейсе средство выбора каналов. См. [Выбор канала](../lua-api/channel.md#choosing-a-channel), чтобы узнать, как каналы определяют, какие сценарии могут обращаться к этой карте.

## <a name="recipe" />Рецепт

<RecipeFor id="redstone_card" />
