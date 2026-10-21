---
navigation:
  title: "Компрессор"
  icon: ftbic:compressor
  parent: machines/index.md
  position: 4
item_ids:
  - ftbic:compressor
  - ftbic:advanced_compressor
  - ftbic:protein_bar
---

# <Color id="gold">Компрессор</Color>

<Column alignItems="center" fullWidth={true}>
  <ItemImage id="compressor" scale="2" />

  Сжимает материалы в более плотные формы: углерод в <ItemLink id="carbon_plate" />, медные пластины в <ItemLink id="dense_copper_plate" />, снежки в лед, стопки пыли в драгоценные камни.
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

<RecipeFor id="compressor" />

<ItemImage id="minecraft:air" scale="0.25"/>
***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Известные рецепты компрессов</Color>
</Column>

* <ItemLink id="carbon_fibers" /> → <ItemLink id="carbon_plate" />
* 9× медных пластин → <ItemLink id="dense_copper_plate" /> (используется в <ItemLink id="nuclear_reactor" />)
* <ItemLink id="industrial_grade_metal" /> (от <ItemLink id="mixed_metal_blend" />)
* Снежки → лед
* Алмазная пыль → алмаз
* <ItemLink id="compressed_coal_ball" /> (5 минутный шаг к переработке алмазов)
* <ItemLink id="protein_bar" /> из говядины

<ItemImage id="minecraft:air" scale="0.25"/>
***

<Row>
  <ItemImage id="advanced_compressor" />
  ### <Color id="aqua">Усовершенствованный компрессор</Color>
</Row>

Уровень МВ. 128 FE/t, 320 000 FE буфер. Те же рецепты — быстрее.

<RecipeFor id="advanced_compressor" />
