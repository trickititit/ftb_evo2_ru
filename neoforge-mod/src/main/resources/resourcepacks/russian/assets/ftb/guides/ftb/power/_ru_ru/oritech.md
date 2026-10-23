---
navigation:
  parent: index.md
  title: "Oritech"
  position: 40
  icon: oritech:fuel_generator
---
<Column alignItems="center" fullWidth={true}>
  # <Color id="light_purple">Oritech</Color>

  <ItemImage id="oritech:fuel_generator" scale="2"/>

  Маленькие генераторы Oritech сильнее стандартных, реактор деления намного слабее, а его ранние части больше не нуждаются в стали.
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Генераторы</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

| Генератор | Выход |
|---|:---:|
| <ItemImage id="oritech:basic_generator"/> Базовый генератор | 64 RF/t (32) |
| <ItemImage id="oritech:bio_generator"/> Биогенератор | 256 RF/t (64) |
| <ItemImage id="oritech:fuel_generator"/> Топливный генератор | 8,192 RF/t (256) |
| <ItemImage id="oritech:lava_generator"/> Генератор лавы | 64 RF/t, без изменений |
| <ItemImage id="oritech:big_solar_panel"/> Большая солнечная панель | 128 RF/t (32) |

Генератор лавы сжигает лаву намного быстрее, чем по умолчанию: 128 mB в секунду. Ведро стоит 10 000 RF (76 800).

<ItemImage id="minecraft:air" scale="0.25"/>

<Row>
  <ItemImage id="oritech:steam_engine"/>
  ### <Color id="aqua">Паровая машина</Color>
</Row>

* Аддон парового котла производит вдвое больше пара за RF (коэффициент 4, было 2). Собственный RF за mB Паровой двигатель не изменился.
* Котел вмещает 128 ведер (8).
* Он горит тем же паром Colossal Reactors.

<ItemImage id="minecraft:air" scale="0.25"/>

<Row>
  <ItemImage id="oritech:nuclear_reactor_controller"/>
  ### <Color id="aqua">Реактор деления</Color>
</Row>

* Каждый топливный импульс составляет 38RF (64).
* Каждый энергетический порт выдает до 75 000 RF/t (25 000).
* Реактор хранит до 500 000 000 RF (50 000 000).
* Максимальный нагрев составляет 4000 (2000), но становится критическим после 400 нестабильных тиков (600).
* Реакторы могут иметь не более 16 блоков в поперечнике (64).

<ItemImage id="minecraft:air" scale="0.25"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Накопление энергии</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

Портативные накопители энергии и большие накопители энергии вмещают на 25 % больше и передаются на 25 % быстрее:

* <ItemImage id="oritech:portable_energy_storage"/> Портативное хранилище энергии: 1 250 000 RF, 6 250 RF/t
* <ItemImage id="oritech:large_storage"/> Большое хранилище энергии: 25 000 000 RF, 12 500 RF/t

<ItemImage id="minecraft:air" scale="0.25"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Легкие ранние части</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

<Row>
  <ItemImage id="oritech:magnetic_coil"/>
  ### <Color id="aqua">Магнитная катушка</Color>
</Row>

Слитки никеля вокруг железных слитков и куска железа, без стали. Получается четыре.

<RecipeFor id="oritech:magnetic_coil"/>

<ItemImage id="minecraft:air" scale="0.25"/>

<Row>
  <ItemImage id="oritech:motor"/>
  ### <Color id="aqua">Мотор</Color>
</Row>

Никель, железные пластины, одна магнитная катушка и железный блок, без стали.

<RecipeFor id="oritech:motor"/>
