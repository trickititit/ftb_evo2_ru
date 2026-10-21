---
navigation:
  title: "Топливные стержни"
  icon: ftbic:uranium_fuel_rod
  parent: nuclear/index.md
  position: 2
item_ids:
  - ftbic:uranium_fuel_rod
  - ftbic:dual_uranium_fuel_rod
  - ftbic:quad_uranium_fuel_rod
---

# <Color id="gold">Fuel Rods</Color>

<Column alignItems="center" fullWidth={true}>
  <ItemImage id="quad_uranium_fuel_rod" scale="2" />

  Топливные стержни производят **тепло** и **мощность**. Увеличение количества стержней вдвое (двойные, четырехъядерные) экспоненциально увеличивает оба показателя за счет гораздо более высоких требований к охлаждению.
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>
***

<Row>
  <ItemImage id="uranium_fuel_rod" />
  ### <Color id="aqua">Урановый топливный стержень</Color>
</Row>

Изготовлен в <ItemLink id="canning_machine" /> из обедненного урана. Базовый блок: 1 выходной, 1 тепловой.

<RecipeFor id="uranium_fuel_rod" />

<Row>
  <ItemImage id="dual_uranium_fuel_rod" />
  ### <Color id="aqua">Двойной урановый топливный стержень</Color>
</Row>

Два стержня, соединенных вместе. В 4 раза больше мощности, в 2 раза больше тепла (эффективность на элемент, но вдвое больше охлаждающей нагрузки).

<RecipeFor id="dual_uranium_fuel_rod" />

<Row>
  <ItemImage id="quad_uranium_fuel_rod" />
  ### <Color id="aqua">Счетверенный урановый топливный стержень</Color>
</Row>

Ядро высокопроизводительных конструкций. 10× output, 4× heat. Требует осторожного размещения рядом с сильным охлаждением.

<RecipeFor id="quad_uranium_fuel_rod" />

<ItemImage id="minecraft:air" scale="0.25"/>
***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Правило размещения</Color>
</Column>

Стержень излучает тепло/выход для каждого из своих **действительных соседей** (стержня, отражателя или теплорассеивающего компонента). Пустые слоты не считаются ничем. Эмпирическое правило дизайна:

* Одинарный стержень с 4 отражателями дает такую же производительность, как и четверной стержень с 2 отражателями. Начните там.
* Масштабируйтесь до двойных/четырех стержней только после того, как ваше охлаждение масштабируется.
