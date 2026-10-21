---
navigation:
  parent: items-blocks/index.md
  icon: receiver_antenna
  title: "Приемная антенна"
categories:
  - infrastructure
description: "подключается к хранилищам широковещательной обработки и экспортным сундукам"
item_ids:
- nodeworks:receiver_antenna
---

# <a name="receiver-antenna" />Приемная антенна

Используется для подключения одной сети к другой [подсеть](../nodeworks-mechanics/subnets.md). Это оказывается полезным для разделения рецептов [Набор обработки](./recipe_sets.md#processing-set) по разным сетям для [автокрафтинг](../nodeworks-mechanics/autocrafting.md).

<GameScene zoom="4" paddingTop="30" paddingLeft="60" paddingRight="60">
  <IsometricCamera yaw="180" roll="0" pitch="0" />
  <ImportStructure src="../assets/assemblies/receiving_antenna_uses.snbt" />
  <BoxAnnotation min="2 0 0" max="3 1 1">
    Получение рецептов набора обработки из другой сети
  </BoxAnnotation>
  <BoxAnnotation min="0 0 0" max="1 2 1">
    Получает предметы из трансляционных экспортных сундуков.
  </BoxAnnotation>
</GameScene>

## <a name="wireless-item-intake" />Беспроводной прием предметов

Поместите антенну приемника на <ItemLink id="import_chest" /> и соедините ее с <ItemLink id="broadcast_antenna" />, расположенным на
<ItemLink id="export_chest" /> в другой сети. Предметы, вставленные в
трансляция Экспортного сундука размещается в этом Импортном сундуке, предоставляя вам беспроводной конвейер между двумя сетями.

## <a name="recipe" />Рецепт

<RecipeFor id="receiver_antenna" />
