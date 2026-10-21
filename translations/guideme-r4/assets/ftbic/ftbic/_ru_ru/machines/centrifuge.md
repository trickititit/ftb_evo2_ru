---
navigation:
  title: "Центрифуга"
  icon: ftbic:centrifuge
  parent: machines/index.md
  position: 7
item_ids:
  - ftbic:centrifuge
  - ftbic:advanced_centrifuge
---

# <Color id="gold">Центрифуга</Color>

<Column alignItems="center" fullWidth={true}>
  <ItemImage id="centrifuge" scale="2" />

  Разделяет материалы на составляющие. Извлекает <ItemLink id="ftbic:silicon_gem" /> из кварца или песка, расщепляет гравий и кремень и обрабатывает слизь/магму.
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

<RecipeFor id="centrifuge" />

<ItemImage id="minecraft:air" scale="0.25"/>
***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Известные рецепты разделения</Color>
</Column>

* Кварц или песок → <ItemLink id="ftbic:silicon_gem" />
* Гравий → кремень
* Светящийся камень → светящаяся пыль
* Магма-крем → шарик слизи (+ шанс появления огненного порошка)
* Маленькая ячейка с охлаждающей жидкостью из горящих стержней и льда

<ItemImage id="minecraft:air" scale="0.25"/>
***

<Row>
  <ItemImage id="advanced_centrifuge" />
  ### <Color id="aqua">Усовершенствованная центрифуга</Color>
</Row>

Уровень МВ. Те же рецепты, быстрее, буфер 128 FE/t, 320 000 FE.

<RecipeFor id="advanced_centrifuge" />
