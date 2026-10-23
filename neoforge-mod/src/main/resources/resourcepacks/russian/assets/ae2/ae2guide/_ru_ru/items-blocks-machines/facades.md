---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: "Фасады"
  icon: facade
  icon_components:
    "ae2:facade_item": "minecraft:stone"
  position: 110
categories:
- network infrastructure
item_ids:
- ae2:facade
---

# <a name="facades" />Фасады

Фасады можно использовать, чтобы сделать вашу базу чище. Они могут закрывать кабели обоих размеров и могут быть изготовлены из блоков разных типов.

<GameScene zoom="6" background="transparent">
  <ImportStructure src="../assets/assemblies/facades_1.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

Хотя фасады могут закрывать все стороны кабеля, [подразделы](../ae2-mechanics/cable-subparts.md) и кабельные соединения могут выступать.

<GameScene zoom="6"  interactive={true}>
  <ImportStructure src="../assets/assemblies/facades_2.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

Будьте с ними умны, чтобы улучшить внешний вид вашей базы или создавать блоки с разной текстурой с каждой стороны.

<GameScene zoom="4" interactive={true}>
  <ImportStructure src="../assets/assemblies/facades_3.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

## <a name="hiding-facades" />Скрытие фасадов

Фасады будут скрыты, если вы держите <ItemLink id="network_tool" /> в любой руке.

Вы можете взаимодействовать с блоками за скрытыми фасадами, не снимая их предварительно.

## <a name="recipe" />Рецепт

Чтобы сделать фасад с текстурой блока, поместите этот блок в середину 4 <ItemLink id="cable_anchor" />s.

![Рецепт фасада](../assets/diagrams/facade_recipe.png)
