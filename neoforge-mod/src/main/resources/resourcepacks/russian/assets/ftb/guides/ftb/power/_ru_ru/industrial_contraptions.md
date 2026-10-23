---
navigation:
  parent: index.md
  title: "Industrial Contraptions"
  position: 20
  icon: ftbic:basic_generator
---
<Column alignItems="center" fullWidth={true}>
  # <Color id="light_purple">Industrial Contraptions</Color>

  <ItemImage id="ftbic:basic_generator" scale="2"/>

  Industrial Contraptions напрямую использует FE. Его генераторы подключают FE к кабелям любого мода, а его машины принимают FE со всех сторон, поэтому выпрямители энергии больше не нужны. Генераторы, солнечные панели, кабели и буферы машин в четыре раза прочнее, чем по умолчанию.
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Генераторы</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

| Генератор | Выход |
|---|:---:|
| <ItemImage id="ftbic:basic_generator"/> Базовый генератор | 320 FE/t (80) |
| <ItemImage id="ftbic:geothermal_generator"/> Геотермальный генератор | 320 FE/t (160) |
| <ItemImage id="ftbic:wind_mill"/> Ветряная мельница | от 9,6 до 104 FE/t (от 2,4 до 52) |
| <ItemImage id="ftbic:lv_solar_panel"/> Солнечная панель низкого напряжения | 32 FE/t (8) |
| <ItemImage id="ftbic:mv_solar_panel"/> Солнечная панель MV | 256 FE/t (64) |
| <ItemImage id="ftbic:hv_solar_panel"/> Солнечная панель высокого напряжения | 2,048 FE/t (512) |
| <ItemImage id="ftbic:ev_solar_panel"/> EV Солнечная панель | 16 384 FE/t (4 096) |

Ветряная мельница по-прежнему не производит ничего ниже y64, а максимум — y320, с бонусом в виде дождя и грозы.

<ItemImage id="minecraft:air" scale="0.25"/>

<Row>
  <ItemImage id="ftbic:nuclear_reactor"/>
  ### <Color id="aqua">Ядерный реактор</Color>
</Row>

* Вывод в **четыре** раза больше значения по умолчанию.
* Водяное охлаждение в **пять раз** сильнее (множитель 10 был равен 2).
* Внутренний буфер в два раза больше.

<ItemImage id="minecraft:air" scale="0.25"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Кабели и буферы</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

### <Color id="aqua">Кабели</Color>

| Уровень | Трансфер |
|---|:---:|
| ЛВ | 1,024 FE/t (256) |
| МВ | 4,096 FE/t (1,024) |
| ВВ | 16 384 FE/t (4 096) |
| EV | 65,536 FE/t (16,384) |
| IV | 262 144 FE/t (65 536) |

> <Color id="red">Машины по-прежнему сгорают, когда в них подается более высокий уровень.</Color>

<ItemImage id="minecraft:air" scale="0.25"/>

### <Color id="aqua">Машинные буферы</Color>

Каждая машина содержит в четыре раза больше энергии, чем по умолчанию. Машины используют то же количество энергии за операцию, что и раньше. Емкость аккумулятора и аккумуляторного ящика не изменилась.

<ItemImage id="minecraft:air" scale="0.25"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Основное топливо для генераторов</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

Базовый генератор сжигает свое обычное топливо (уголь, древесный уголь, бревна, доски, саженцы, палки, сахарный тростник, кактус и лом), а также:

| Топливо | Время горения |
|---|:---:|
| Крошечный уголь и крошечный древесный уголь | 200 тиков |
| <ItemImage id="ftbmaterials:charcoal_block"/> Угольный блок | 16 000 тиков |
| <ItemImage id="justdirethings:coal_t1"/> Just Dire Things угли | от 4800 до 129600 тиков |
| Just Dire Things угольные блоки | от 48 000 до 1 296 000 тиков |
| <ItemImage id="mysticalagradditions:inferium_coal"/> Мистические угли Аграддиции | от 2400 до 76800 тиков |
| Угольные блоки Мистические Аграддиции | от 21 600 до 691 200 тиков |
| EvilCraft Уголь с кровавым воском | 3200 тиков, 32000 в блоке |
| Mob Flow Utilities Настоянный уголь и древесный уголь | 12 800 тиков |
| Прессованный уголь Compressium | 144 000 тиков и выше |

Все, что не является топливом, остается вне слота.

> <Color id="yellow">При 320 FE/t один кусок угля стоит 512 000 FE.</Color>
