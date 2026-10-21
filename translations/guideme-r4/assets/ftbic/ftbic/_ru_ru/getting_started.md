---
navigation:
  title: "С чего начать"
  icon: ftbic:iron_furnace
  parent: index.md
  position: 1
---

# <Color id="gold">Getting Started</Color>

<Column alignItems="center" fullWidth={true}>
  <ItemImage id="iron_furnace" scale="2" />

  Ваш вход в FTB Industrial Contraptions начинается с резины, меди и вашего первого машинного блока.
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>
***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Шаг 1: Резинка</Color>
</Column>

Охотьтесь на слизней (или постройте ферму слизней) и **выплавляйте** каждый шарик слизи, чтобы получить **8 резинок**. Горстки шариков слизи достаточно, чтобы испортить всю раннюю игру.

Резина используется почти для каждого кабеля и машины в моде.

<ItemImage id="minecraft:air" scale="0.25"/>

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Шаг 2: Железная печь</Color>
</Column>

До появления электричества запах был в два раза эффективнее благодаря обновлению, работающему на топливе, по сравнению с ванильным.

<Row>
  <ItemImage id="iron_furnace" />
  ### <Color id="aqua">Железная печь</Color>
</Row>

<RecipeFor id="iron_furnace" />

Сжигает 1 уголь для **12 предметов** (вместо 8 в ванили). Надежный первый шаг при сборе меди и олова.

<ItemImage id="minecraft:air" scale="0.25"/>

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Шаг 3: Схемы и машинный блок</Color>
</Column>

<Row>
  <ItemImage id="machine_block" />
  ### <Color id="aqua">Машинный блок</Color>
</Row>

Пустая оболочка, используемая в рецепте крафта каждой машины LV-уровня.

<RecipeFor id="machine_block" />

<Row>
  <ItemImage id="electronic_circuit" />
  ### <Color id="aqua">Электронная схема</Color>
</Row>

Медная проволока плюс красный камень на железной пластине. Требуется практически для каждого устройства низковольтного уровня.

<RecipeFor id="electronic_circuit" />

<ItemImage id="minecraft:air" scale="0.25"/>

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Шаг 4: Первая сила</Color>
</Column>

Постройте <ItemLink id="basic_generator" />, соедините его с <ItemLink id="lv_cable" /> с <ItemLink id="macerator" /> или <ItemLink id="powered_furnace" />, и вы попадете в энергетический век.

<RecipeFor id="basic_generator" />

Размочите каждую сырую руду на **2 измельченные руды**, а затем переплавьте ее на два слитка. Добавьте [Рудопромыватель и центрифуга](machines/ore_refining.md), чтобы получить **5 слитков на сырую руду** или **15 на блок руды**.

<ItemImage id="minecraft:air" scale="0.25"/>

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Краткий обзор прогресса</Color>
</Column>

1. **LV**: базовый генератор, первые машины, измельчитель, механизированная печь.
2. **МВ**: Солнечные панели, цепочки переработки руды (пыль → пластины/шестерни/стержни)
3. **HV**: современные машины, компрессор, экструдер, ролик.
4. **EV**: Ядерный реактор, Квантовый механизм, Телепорт.
5. **IV / финал**: Антиматерия, Механические Надкрылья, полная автоматизация.

Прочтите страницу [Энергетическая сеть](energy/index.md) рядом, чтобы понять **уровни**, **напряжение** и что происходит, когда вы подаете слишком много напряжения в кабель низкого уровня.
