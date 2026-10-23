---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: "Ускоритель роста"
  icon: growth_accelerator
  position: 310
categories:
- machines
item_ids:
- ae2:growth_accelerator
---

# <a name="the-growth-accelerator" />Ускоритель роста

<BlockImage id="growth_accelerator" p:powered="true" scale="8"/>

Ускоритель роста значительно ускоряет [рост](../ae2-mechanics/certus-growth.md) цертус или аметист, если его поместить рядом с блоком расцвета.

Любопытно, что он *также* ускоряет рост различных растений.

Это достигается путем применения «случайных тиков» к соседним блокам в дополнение к случайным тикам, которые происходят естественным образом. Теоретически это означает, что один ускоритель должен заставить вещи расти примерно в 90 раз быстрее, чем обычно, и эффект суммируется.

<GameScene zoom="6" interactive={true}>
  <ImportStructure src="../assets/assemblies/growth_accelerator.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

Питание может подаваться сверху или снизу, через AE2 [кабели](cables.md) или через другие кабели питания модов. Он может принимать либо силу AE2 (AE), либо энергию Forge (FE).

Чтобы включить его вручную, поместите <ItemLink id="crank" /> сверху или снизу и щелкните его правой кнопкой мыши.

Верх и низ можно отличить по розовым флюсовым пятнам на них.

<GameScene zoom="6" background="transparent">
<ImportStructure src="../assets/assemblies/accelerator_connections.snbt" />
<IsometricCamera yaw="195" pitch="30" />
</GameScene>

## <a name="recipe" />Рецепт

<RecipeFor id="growth_accelerator" />
