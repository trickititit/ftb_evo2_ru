---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: "Энергетические элементы"
  icon: energy_cell
  position: 110
categories:
- network infrastructure
item_ids:
- ae2:energy_cell
- ae2:dense_energy_cell
- ae2:creative_energy_cell
---

# <a name="energy-cells" />Энергетические элементы

<Row gap="20">
  <BlockImage id="energy_cell" scale="8" p:fullness="4" />

  <BlockImage id="dense_energy_cell" scale="8" p:fullness="4" />

  <BlockImage id="creative_energy_cell" scale="8" />
</Row>

Энергетические ячейки дают сети больше [энергия](../ae2-mechanics/energy.md) памяти. Некоторый объем энергетического буфера помогает сглаживать скачки потребления энергии при вставке или извлечении большого количества предметов, а большие объемы хранения энергии позволяют сети работать, пока энергия не генерируется (например, ночью с солнечными панелями), или справляться с огромным мгновенным потреблением энергии [пространственное хранение](../ae2-mechanics/spatial-io.md).

## <a name="fill-bars" />Заполнить полосы

<Row>
<BlockImage id="energy_cell" scale="4" p:fullness="0" />
<BlockImage id="energy_cell" scale="4" p:fullness="1" />
<BlockImage id="energy_cell" scale="4" p:fullness="2" />
<BlockImage id="energy_cell" scale="4" p:fullness="3" />
<BlockImage id="energy_cell" scale="4" p:fullness="4" />
</Row>

Полосы на боковой стороне ячейки соответствуют количеству энергии, которую она имеет.

*   0, когда заряд ниже 25%
*   1 при уровне заряда от 25% до 50%.
*   2 при уровне заряда от 50% до 75%
*   3, когда уровень заряда составляет от 75% до 99%.
*   4, когда заряд выше 99%

## <a name="types-of-cell" />Типы клеток

*   <ItemLink id="energy_cell" /> может хранить 200 тыс. AE, и для большинства случаев использования достаточно только одного, позволяя легко справляться со скачками напряжения при обычном использовании сети.
*   <ItemLink id="dense_energy_cell" /> может хранить 1,6M AE и предназначен для случаев, когда вы хотите запустить сеть от накопленной энергии или справиться с огромным мгновенным потреблением энергии больших установок [пространственное хранение](../ae2-mechanics/spatial-io.md).
*   <ItemLink id="creative_energy_cell" /> — это творческий предмет для тестирования, дающий НЕОГРАНИЧЕННОЕ POWAHHHH или что-то в этом роде.

## <a name="recipes" />Рецепты

<Row>
  <RecipeFor id="energy_cell" />

  <RecipeFor id="dense_energy_cell" />
</Row>
