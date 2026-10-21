---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: "Приемник энергии"
  icon: energy_acceptor
  position: 110
categories:
- network infrastructure
item_ids:
- ae2:energy_acceptor
---

# <a name="the-energy-acceptor" />Приемник энергии

<Row gap="20">
<BlockImage id="energy_acceptor" scale="8" /> 

<GameScene zoom="8" background="transparent">
  <ImportStructure src="../assets/blocks/cable_energy_acceptor.snbt" />
</GameScene>
</Row>

Акцептор энергии преобразует обычные формы энергии из других технологических модов во внутреннюю форму AE2, [энергия](../ae2-mechanics/energy.md), AE. Хотя <ItemLink id="controller" /> тоже может это сделать, лица контроллеров имеют ценность, поэтому часто вместо этого лучше использовать акцептор энергии.

Коэффициенты конвертации Forge Energy и Techreborn Energy:

*   2 FE = 1 AE (Forge)
*   1 Е = 2 АЕ (Ткань)

Скорость конвертации полностью зависит от того, сколько AE может хранить ваша сеть, по причинам, описанным в [эта страница](../ae2-mechanics/energy.md).

## <a name="variants" />Варианты

Акцепторы энергии бывают двух разных вариантов: нормальные и плоские/[подраздел](../ae2-mechanics/cable-subparts.md). Это позволяет сделать некоторые установки более компактными.

Акцепторы энергии можно переключать между обычными и плоскими в сетке крафта.

## <a name="recipe" />Рецепт

<RecipeFor id="energy_acceptor" />

<RecipeFor id="cable_energy_acceptor" />
