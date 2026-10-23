---
navigation:
  title: "Черная дыра"
  position: 2
  icon: "oritech:black_hole"
item_ids:
  - oritech:black_hole
  - oritech:tachyon_absorber
---
# <Color id="light_purple">Чёрная дыра</Color>

<Column alignItems="center" fullWidth={true}>
  # <Color id="light_purple">Чёрная дыра</Color>

  <ItemImage id="oritech:black_hole" scale="1"/>

  #### *Черная дыра Power Generation*
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

<Color id="light_purple">Черная дыра</Color> используется в FTB Evolution 2 для генерации <Color id="gold">Энергии</Color>. Для установки требуются три основных компонента: <Color id="light_purple">Черная дыра</Color>, Блок <Color id="green">Источник</Color> и Блок <Color id="dark_green">Placer</Color>.

<ItemImage id="minecraft:air" scale="0.25"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Компоненты</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

<Row>
  <ItemImage id="oritech:black_hole"/>
  ### <Color id="light_purple">Черная дыра</Color>
</Row>

<Color id="light_purple">Черная дыра</Color> является ядром установки. Он притягивает и поглощает блоки в радиусе действия, испуская тахионные частицы при каждом потреблении. Направление, из которого был поглощен блок, определяет, куда выходит энергия тахионов.

<ItemImage id="minecraft:air" scale="0.25"/>

<Row>
  <ItemImage id="minecraft:cobblestone"/>
  ### <Color id="green">Источник блока</Color>
</Row>

Вам понадобится постоянный запас дешевых блоков, в идеале по одному на каждый тик, которые будут поступать в инвентарь. Быстрый генератор булыжника — классический выбор; подойдет все, что может соответствовать скорости потребления <Color id="light_purple">Черной дыры</Color>.

<ItemImage id="minecraft:air" scale="0.25"/>

<Row>
  <ItemImage id="justdirethings:blockplacert1"/>
  ### <Color id="dark_green">Разместитель блоков</Color>
</Row>

Вам также понадобится машина, которая сможет размещать блоки один раз. <Color id="dark_green"><ItemLink id="justdirethings:blockplacert1"/></Color> — очень дешевый способ добиться этого, но многие другие моды, такие как <Color id="yellow">Integrated Dynamics</Color>, <Color id="yellow">LaserIO</Color> или <Color id="yellow">Modular Routers</Color>, имеют возможность размещать блоки с такой скоростью. В частности, <Color id="dark_green"><ItemLink id="justdirethings:blockplacert1"/></Color> может размещать блок в том направлении, в котором он смотрит, и его можно настроить с помощью щелчка левой кнопкой мыши или щелчка правой кнопкой мыши, чтобы увеличить или уменьшить скорость, с которой он размещает блоки.

<ItemImage id="minecraft:air" scale="0.25"/>

### <Color id="aqua">Как настроить</Color>

1. Установите <Color id="green">Источник блоков</Color> и <Color id="dark_green">Укладчик блоков</Color> на одной стороне от того места, где будет находиться <Color id="light_purple">Черная дыра</Color>.
2. Поместите <Color id="light_purple">Чёрная дыра</Color> рядом с источником блока.
3. Поместите <Color id="aqua">Поглотитель тахионов</Color> в 2 блоках на **противоположной стороне** Чёрной дыры.
4. Подключите <Color id="aqua">Тахионный поглотитель</Color> к своей энергетической сети.

<ItemImage id="minecraft:air" scale="0.25"/>

><Color id="red">ВНИМАНИЕ!</Color> Черная дыра продолжает притягивать ближайший блок в пределах 16 блоков. Если вы не можете удовлетворить этот спрос, он РАЗЕДЕТ вашу установку.

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Power Generation</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

<GameScene zoom="3" interactive={true}>
  <ImportStructure src="oritech:assets/black_hole_power_gen.nbt"/>
  <IsometricCamera yaw="225" pitch="30"/>
</GameScene>

<Color id="light_purple">Черная дыра</Color> притягивает и поглощает ближайший к ней блок, и каждый съеденный блок испускает до пяти тахионных лучей. Каждый луч, достигающий <Color id="green">Тахионного поглотителя</Color>, дает ему <Color id="gold">50 000 RF</Color>, поэтому один блок стоит от 50 000 до 250 000 RF. Чтобы уловить эту энергию, необходимо разместить <Color id="green">Тахионный поглотитель</Color> на **противоположной** стороне** Чёрной Дыры от места, где был поглощен блок. Чем дальше расположен <Color id="green">Тахионный поглотитель</Color>, тем менее эффективно он будет собирать частицы, поэтому для максимальной эффективности рекомендуется оставить блок или максимум два между ним и <Color id="light_purple">Черной дырой</Color>.
<ItemImage id="minecraft:air" scale="0.25"/>

<Row>
  <ItemImage id="oritech:tachyon_absorber"/>
  ### <Color id="aqua">Тахионный поглотитель</Color>
</Row>

<Color id="aqua">Поглотитель тахионов</Color> улавливает тахионные частицы, испускаемые Чёрной Дырой, и преобразует их в <Color id="gold">RF</Color>. Его необходимо разместить на **противоположной** стороне Черной Дыры от поглощённого блока. Если блок на <Color id="aqua">Север</Color> израсходован, поглотитель должен быть на <Color id="aqua">Юг</Color>. Каждый поглотитель вмещает до <Color id="gold">1 000 000 RF</Color>.

<ItemImage id="minecraft:air" scale="0.25"/>

<Row>
  <ItemImage id="powah:energy_cell_nitro"/>
  ### <Color id="red">Энергетическая сеть</Color>
</Row>

Наконец, вам нужно подключить к этой установке энергетическую сеть. В приведенном выше примере используется <Color id="red"><ItemLink id="powah:energy_cell_nitro"/></Color>, но подойдет любой метод хранения энергии. <Color id="aqua">Тахионный поглотитель</Color> будет выводить энергию только через заднюю часть блока.