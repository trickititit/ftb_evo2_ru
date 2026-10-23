---
navigation:
  parent: index.md
  title: "Охлаждающая жидкость, пар и топливо"
  position: 15
  icon: powah:dry_ice
---
<Column alignItems="center" fullWidth={true}>
  # <Color id="light_purple">Охлаждающая жидкость, пар и топливо</Color>

  <ItemImage id="powah:dry_ice" scale="2"/>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Охлаждающая жидкость и тепло</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

<Row>
  <ItemImage id="ftb:industrial_coolant_bucket"/>
  ### <Color id="aqua">Промышленная охлаждающая жидкость</Color>
</Row>

Промышленная охлаждающая жидкость заменяет воду везде, где реактор нуждается в охлаждении. Бросьте **Сухой лед** в блок источника стоячей воды, и он превратится в промышленную охлаждающую жидкость.

* **Powah:** единственный жидкий теплоноситель для термогенераторов и реакторов. Вода ничего не делает.
* **Colossal Reactors:** работает как радиатор внутри реактора. См. [Colossal Reactors](colossal_reactors.md).

<ItemImage id="minecraft:air" scale="0.25"/>

<Row>
  <ItemImage id="auroral:shimmering_ice"/>
  ### <Color id="aqua">Powah Твердые охлаждающие жидкости</Color>
</Row>

Обычные твердые охлаждающие жидкости по-прежнему работают: снежки, снежные глыбы, лед, паковый лед, голубой лед и сухой лед. В пакет добавлено одно:

| Охлаждающая жидкость | Сумма | Температура |
|---|:---:|:---:|
| <ItemImage id="auroral:shimmering_ice"/> Мерцающий лед | 712 | -32 |

<ItemImage id="minecraft:air" scale="0.25"/>

<Row>
  <ItemImage id="powah:blazing_crystal_block"/>
  ### <Color id="aqua">Powah Источники тепла</Color>
</Row>

Термогенераторы под этими блоками работают горячее или холоднее, чем раньше:

| Блокировать | Тепло |
|---|:---:|
| <ItemImage id="powah:blazing_crystal_block"/> Блок пылающего кристалла | 1500 (2800) |
| <ItemImage id="oritech:manhattan_module"/> Манхэттенский модуль | 4000 (новое) |
| <ItemImage id="ftbic:nuke"/> Ядерное оружие | 4000 (новое) |
| <ItemImage id="justdirethings:coalblock_t4"/> Угольный блок Затмения | 3000 (новое) |

Магматические блоки и лава не изменились.

<ItemImage id="minecraft:air" scale="0.25"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Пар</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

Oritech Steam — единственный пар в наборе. Colossal Reactors, охлаждаемый водой, производит его, Colossal Reactors турбины сжигают его, а Oritech паровая машина сжигает его. Передавайте пар из одного мода в другой свободно.

<ItemImage id="minecraft:air" scale="0.25"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Топливо</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

<Row>
  <ItemImage id="minecraft:lava_bucket"/>
  ### <Color id="aqua">Лава</Color>
</Row>

Ведро лавы стоит **10 000 FE** в каждом генераторе, который сжигает его в качестве топлива:

* Oritech Генератор лавы: 10 000 (76 800)
* Energized Power Термальный генератор: 10 000 (50 000)
* Powah Магматор: 10 000 (уже по умолчанию)

<ItemImage id="minecraft:air" scale="0.25"/>

<Row>
  <ItemImage id="ftbmaterials:charcoal_block"/>
  ### <Color id="aqua">Новое топливо для печей</Color>
</Row>

Они горят в печах и каждой машине, работающей на печном топливе:

| Топливо | Время горения |
|---|:---:|
| <ItemImage id="ftbmaterials:charcoal_block"/> Угольный блок | 16 000 тиков |
| <ItemImage id="mysticalagradditions:inferium_coal"/> Инферий в Инсаниевый уголь | от 2400 до 76800 тиков |
| Inferium к угольным блокам инсания | от 21 600 до 691 200 тиков |

Каждый уровень угля Mystical Agradditions горит в два раза дольше, чем предыдущий.
