---
navigation:
  parent: index.md
  title: "Colossal Reactors"
  position: 50
  icon: colossal_reactors:reactor_controller
---
<Column alignItems="center" fullWidth={true}>
  # <Color id="light_purple">Colossal Reactors</Color>

  <ItemImage id="colossal_reactors:reactor_controller" scale="2"/>

  Реакторы стали меньше, реакторы и турбины имеют верхний предел мощности, а некоторые входы и выходы изменились.
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Пар и охлаждающая жидкость</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

<Row>
  <ItemImage id="colossal_reactors:reactor_controller"/>
  ### <Color id="aqua">Реакторы</Color>
</Row>

* Реактор может иметь размеры не более 32x32x32, включая корпус.
* Каждый дополнительный стержень добавляет меньше энергии, чем больше становится реактор (показатель масштабирования 0,55, был 0,9), поэтому маленькие реакторы остаются полезными, а самые большие достигают максимума около 500К RF/t.

<ItemImage id="minecraft:air" scale="0.25"/>

<Row>
  <ItemImage id="oritech:still_steam_bucket"/>
  ### <Color id="aqua">Водяное охлаждение делает Oritech паровым</Color>
</Row>

Активно охлаждаемый реактор, работающий на воде, производит пар Oritech. Турбины Colossal Reactors принимают пар Oritech, как и паровой двигатель Oritech, поэтому любая из них может сжигать мощность реактора.

* Реактор с водяным охлаждением использует 0,085 mB воды на каждую RF/t, которую он мог бы произвести (0,45), и производит 0,8 mB пара на mB воды (1,0).

<ItemImage id="minecraft:air" scale="0.25"/>

<Row>
  <ItemImage id="colossal_reactors:turbine_controller"/>
  ### <Color id="aqua">Турбины</Color>
</Row>

* Турбина производит 9 RF на mB пара (4), до змеевиков и лопаток.
* Размер турбины может быть не более 32х32х32, включая корпус.
* Каждая лопасть потребляет не более 48 mB пара за такт (1000), поэтому даже самая большая турбина достигает максимума около 1M RF/t.
* Работает любой пар, включая пар от генератора Oritech, оснащенного надстройкой парового котла.

<ItemImage id="minecraft:air" scale="0.25"/>

<Row>
  <ItemImage id="ftb:industrial_coolant_bucket"/>
  ### <Color id="aqua">Промышленный радиатор охлаждающей жидкости</Color>
</Row>

Блоки источников промышленного теплоносителя работают как радиатор внутри реактора:

| Радиатор | Топливная эффективность | Энергия | Перегрев |
|---|:---:|:---:|:---:|
| <ItemImage id="minecraft:water_bucket"/> Вода | 1.0 | 1.0 | 1.0 |
| <ItemImage id="ftb:industrial_coolant_bucket"/> Промышленная охлаждающая жидкость | 1,75 | 2.15 | 3.2 |

Это лучшая топливная экономичность среди всех жидкостей и больше энергии, чем у Ender Molten. Сделайте это, бросив сухой лед в источник стоячей воды.

<ItemImage id="minecraft:air" scale="0.25"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Топливо</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

<Row>
  <ItemImage id="colossal_reactors:red_cake"/>
  ### <Color id="aqua">Красный Торт</Color>
</Row>

Красный Торт больше не является реакторным топливом. Уран, азурит и другие виды топлива не изменились.
