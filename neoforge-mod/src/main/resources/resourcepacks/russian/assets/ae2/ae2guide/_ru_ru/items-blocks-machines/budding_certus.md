---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: "Начинающий Цертус Кварц"
  icon: flawless_budding_quartz
  position: 010
categories:
- misc ingredients blocks
item_ids:
- ae2:flawless_budding_quartz
- ae2:flawed_budding_quartz
- ae2:chipped_budding_quartz
- ae2:damaged_budding_quartz
- ae2:small_quartz_bud
- ae2:medium_quartz_bud
- ae2:large_quartz_bud
- ae2:quartz_cluster
---

# <a name="budding-certus-quartz" />Начинающий Цертус Кварц

(также см. [Рост Цертуса](../ae2-mechanics/certus-growth.md))

<GameScene zoom="4" background="transparent">
  <ImportStructure src="../assets/assemblies/budding_blocks.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

Почки цертусового кварца прорастают из распускающихся блоков цертуса, похожих на аметист. Они находятся в [метеориты](../ae2-mechanics/meteorites.md). Существует 4 уровня зарождающихся блоков цертуса: безупречный, дефектный, сколы и поврежденные. Их легче всего идентифицировать с помощью таких модов, как HWYLA, Jade, The One Probe и т. д. (или по экрану F3).

При наличии дефектов, сколов и повреждений почковающейся церки каждый раз, когда почка переходит на следующую стадию, блок почки имеет шанс деградировать на один уровень, в конечном итоге превращаясь в простой <ItemLink id="quartz_block" />.

Безупречные бутоны цертуса не деградируют из растущих почек и служат бесконечным источником.

Если сломать обычную кирку, зарождающиеся блоки цертуса ухудшятся на 1 уровень. Если их сломать киркой, зачарованной «Шелковым прикосновением», они не испортятся, если только не будут безупречными. **Это означает, что безупречные блоки цветущего цертуса нельзя подобрать и переместить киркой**. Вместо этого можно использовать [Пространственное хранение](../ae2-mechanics/spatial-io.md), чтобы вырезать и вставлять вокруг безупречные расцветающие блоки.

## <a name="recipes" />Рецепты

Дефектные, сколы и поврежденные цертусы с бутонами можно создать, бросив блок окулировки предыдущего уровня (или <ItemLink id="quartz_block" />) в воду с одним или несколькими <ItemLink id="charged_certus_quartz_crystal" />.

Безупречный расцветающий цертус невозможно создать, его можно найти только в мире.

<Row>
  <RecipeFor id="damaged_budding_quartz" />

  <RecipeFor id="chipped_budding_quartz" />

  <RecipeFor id="flawed_budding_quartz" />
</Row>
