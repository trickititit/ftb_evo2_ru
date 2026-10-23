---
navigation:
  parent: index.md
  title: "Powah"
  position: 30
  icon: powah:reactor_hardened
---
<Column alignItems="center" fullWidth={true}>
  # <Color id="light_purple">Powah</Color>

  <ItemImage id="powah:reactor_hardened" scale="2"/>

  Каждый генератор Powah производит меньше энергии, чем по умолчанию, и больше всего теряют верхние уровни. Реакторы и термогенераторы начинаются с уровня «Закалено». См. [Удалены генераторы](removed.md).
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

> <Color id="yellow">Все значения — FE/t, в порядке уровней:</Color> Стартовый, Базовый, Закаленный, Пылающий, Ниотический, Энергичный, Нитро.

<ItemImage id="minecraft:air" scale="0.25"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Генераторы</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

<Row>
  <ItemImage id="powah:furnator_starter"/>
  ### <Color id="aqua">Печь</Color>
</Row>

* <Color id="green">Сейчас:</Color> 16, 64, 128, 256, 512, 1024, 4096
* <Color id="gray">По умолчанию:</Color> 20, 80, 200, 800, 2000, 8000, 40000

<ItemImage id="minecraft:air" scale="0.25"/>

<Row>
  <ItemImage id="powah:magmator_starter"/>
  ### <Color id="aqua">Магматор</Color>
</Row>

* <Color id="green">Сейчас:</Color> 16, 64, 128, 256, 512, 1024, 4096
* <Color id="gray">По умолчанию:</Color> 20, 80, 200, 800, 2000, 8000, 40000

Передача выходного сигнала осуществляется от 80 FE/t для стартера до 160 000 FE/t для нитро. Лава дает 10 000 FE за ведро.

<ItemImage id="minecraft:air" scale="0.25"/>

<Row>
  <ItemImage id="powah:reactor_hardened"/>
  ### <Color id="aqua">Реактор</Color>
</Row>

* <Color id="green">Сейчас:</Color> 128, 512, 2560, 12800, 64000 (закалено до нитро)
* <Color id="gray">По умолчанию:</Color> 2500, 10 000, 25 000, 100 000, 500 000

Буфер составляет одну десятую от значения по умолчанию: от 250 000 FE для Hardened до 50 000 000 FE для Nitro.

У закаленных реакторов есть свой рецепт: уранинит, закаленный конденсатор и диэлектрический корпус — четыре.

<ItemImage id="minecraft:air" scale="0.25"/>

<Row>
  <ItemImage id="powah:thermo_generator_hardened"/>
  ### <Color id="aqua">Термогенератор</Color>
</Row>

* <Color id="green">Сейчас:</Color> 64, 128, 256, 512, 2,048 (закалено до нитро)
* <Color id="gray">По умолчанию:</Color> 100, 200, 400, 800, 2000

Термогенераторы охлаждаются промышленной охлаждающей жидкостью, а не водой. Изменились и некоторые источники тепла. См. [Охлаждающая жидкость, пар и топливо](coolant_and_fuel.md).

<ItemImage id="minecraft:air" scale="0.25"/>

<Row>
  <ItemImage id="powah:solar_panel_starter"/>
  ### <Color id="aqua">Солнечная панель</Color>
</Row>

* <Color id="green">Сейчас:</Color> 8, 16, 32, 64, 128, 256, 1,024
* <Color id="gray">По умолчанию:</Color> 20, 60, 100, 200, 400, 800, 2000.

Буферы панелей также намного меньше: от 1000 FE для Starter до 20 000 000 FE для Nitro.
