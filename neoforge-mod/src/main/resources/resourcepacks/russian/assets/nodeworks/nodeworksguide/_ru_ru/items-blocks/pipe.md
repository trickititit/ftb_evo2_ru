---
navigation:
  parent: items-blocks/index.md
  icon: pipe
  title: "Вакуумная труба"
categories:
  - infrastructure
description: "строительный блок каждой сети"
item_ids:
- nodeworks:pipe
- nodeworks:covered_pipe
---

# <a name="vacuum-pipe" />Вакуумная труба

Провод сети Nodeworks. По каналам передаются элементы, сигналы и маршрутизация между каждым блоком в сети.

<GameScene interactive={true} zoom="5" paddingLeft="20" paddingTop="20" paddingBottom="20">
  <IsometricCamera yaw="200" pitch="10" />
  <ImportStructure src="../assets/assemblies/vacuum_pipe.snbt" />
</GameScene>

Разместите трубы рядом друг с другом (или рядом с любым сетевым блоком), и они соединятся автоматически.

## <a name="hiding-pipes" />Скрытие труб

### <a name="covered-pipes" />Покрытые трубы

Вы также можете скрыть трубы, создав покрытую трубу, взяв один блок и окружив его 8 вакуумными трубами на верстаке.

<GameScene interactive={true} zoom="5" paddingLeft="20" paddingTop="20" paddingBottom="20">
  <IsometricCamera yaw="200" pitch="10" />
  <ImportStructure src="../assets/assemblies/covered_pipe.snbt" />
</GameScene>

### <a name="focus-nodes" />Фокусные узлы

Вы также можете использовать <ItemLink id="focus_node" />, чтобы пройти сквозь стекло, чтобы пройти сквозь стены.

<GameScene interactive={true} zoom="5" paddingLeft="20" paddingTop="20" paddingBottom="20">
  <IsometricCamera yaw="200" pitch="10" />
  <ImportStructure src="../assets/assemblies/focus_node_glass.snbt" />
</GameScene>

## <a name="recipe" />Рецепт

<RecipeFor id="pipe" />
