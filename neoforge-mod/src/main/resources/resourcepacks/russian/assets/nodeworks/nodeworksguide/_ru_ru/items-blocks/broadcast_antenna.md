---
navigation:
  parent: items-blocks/index.md
  icon: broadcast_antenna
  title: "Вещательная антенна"
categories:
  - infrastructure
description: "транслирует доступ к сетевым контроллерам, хранилищу обработки и экспортным сундукам"
item_ids:
- nodeworks:broadcast_antenna
---

# <a name="broadcast-antenna" />Вещательная антенна

Блок с двумя целями, в зависимости от того, поверх чего он расположен:

- На <ItemLink id="network_controller" />: транслирует беспроводной доступ к
сеть. <ItemLink id="portable_inventory_terminal" />, подключенный к этой антенне, может читать/записывать в сеть в любом месте в радиусе действия.
- На <ItemLink id="processing_storage" />: транслирует блок (и любые другие
касание <ItemLink id="processing_storage" />) коллекция <ItemLink id="processing_set" />, которую другая сеть может использовать для [автокрафтинг](../nodeworks-mechanics/autocrafting.md)
- На <ItemLink id="export_chest" />: транслирует сундук как беспроводное соединение.
Парный <ItemLink id="receiver_antenna" /> в другой сети пересылает все, что попадает в сундук, прямо в эту сеть.

<GameScene zoom="4" paddingTop="30" paddingLeft="60" paddingRight="60">
  <IsometricCamera yaw="180" roll="0" pitch="0" />
  <ImportStructure src="../assets/assemblies/broadcast_antenna_uses.snbt" />
  <BoxAnnotation min="2 0 0" max="4 1 1">
    Оба блока Processing Storage транслируются.
  </BoxAnnotation>
  <BoxAnnotation min="5 0 0" max="6 1 1">
    Трансляция для портативных инвентарных терминалов
  </BoxAnnotation>
  <BoxAnnotation min="0 0 0" max="1 1 1">
    Перемещает предметы в парные импортные сундуки.
  </BoxAnnotation>
</GameScene>

## <a name="pairing" />Сопряжение

1. Откройте графический интерфейс широковещательной антенны.
1. Поместите <ItemLink id="link_crystal" /> в верхний слот.
1. Выньте Кристалл, теперь он в паре.

## <a name="range" />Диапазон

По умолчанию радиус действия радиовещательной антенны составляет 128 блоков. Вы можете обновить диапазон с помощью <ItemLink id="dimension_range_upgrade" /> или <ItemLink id="multi_dimension_range_upgrade" />.

## <a name="recipe" />Рецепт

<RecipeFor id="broadcast_antenna" />
