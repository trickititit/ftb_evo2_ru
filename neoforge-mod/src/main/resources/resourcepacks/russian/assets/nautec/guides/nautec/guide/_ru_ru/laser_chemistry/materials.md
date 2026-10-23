---
navigation:
  title: "Аквариумная сталь и чугун"
  icon: nautec:aquarine_steel_ingot
  position: 2
  parent: laser_chemistry/laser_chemistry-index.md
item_ids:
  - nautec:aquarine_steel_compound
  - nautec:aquarine_steel_ingot
  - nautec:aquarine_steel_block
  - nautec:cast_iron_compound
  - nautec:cast_iron_ingot
  - nautec:cast_iron_nugget
  - nautec:cast_iron_rod
  - nautec:cast_iron_block
  - nautec:laser_channeling_coil
  - nautec:whisk
  - nautec:broken_whisk
  - nautec:oil_barrel
---

# <Color id="light_purple">Акваринная сталь и чугун</Color>

<Column alignItems="center" fullWidth={true}>
  <ItemImage id="aquarine_steel_ingot" scale="2"/>
  Металлы и детали, из которых изготовлено большинство машин NauTec.
</Column>

## <Color id="gold">Аквариновая сталь</Color>

<Row>
  <ItemImage id="aquarine_steel_compound"/>
  ### <Color id="aqua">Аквариновое стальное соединение</Color>
</Row>

Создайте его вручную или сделайте в [Миксер](mixer.md) с соленой водой, которая дает больше соединения для того же сырого железа. JEI показывает рецепт миксера.

<Recipe id="nautec:aquarine_steel_compound"/>

<Row>
  <ItemImage id="aquarine_steel_ingot"/>
  ### <Color id="aqua">Слиток аквариумной стали</Color>
</Row>

Бросьте смесь в любой мощный лазерный луч, и через 5 секунд она превратится в слиток. Любая чистота работает, поэтому одного Водного Катализатора вполне достаточно. Луч чистоты 2.0 и выше вместо этого дает 2 слитка на соединение за 4 секунды. См. [Трансформация предмета](nautec:getting_started/item_transformation.md) для настройки.

<Row>
  <ItemImage id="aquarine_steel_block"/>
  ### <Color id="aqua">Аквариновый стальной блок</Color>
</Row>

Хранилище для девяти слитков.

<RecipeFor id="aquarine_steel_block"/>

***

## <Color id="gold">Чугун</Color>

<Row>
  <ItemImage id="cast_iron_compound"/>
  ### <Color id="aqua">Чугунное соединение</Color>
</Row>

<Recipe id="nautec:cast_iron_compound"/>

<Row>
  <ItemImage id="cast_iron_ingot"/>
  ### <Color id="aqua">Чугунный слиток</Color>
</Row>

Плавьте смесь в печи или в доменной печи в два раза быстрее.

<Recipe id="nautec:cast_iron_ingot_blasting"/>

Старое железо со дна моря тоже взрывается: Якорь дает 11 слитков, а Нефтяная бочка — 5.

<Recipe id="nautec:cast_iron_ingot_from_oil_barrel_blasting"/>

<Row>
  <ItemImage id="cast_iron_rod"/>
  ### <Color id="aqua">Чугунный стержень</Color>
</Row>

Используется в инструментах из аквариумной стали, рыболовной станции, глубоководной дренажной стене, нефтяной бочке и венчике.

<Recipe id="nautec:cast_iron_rod"/>

<Row>
  <ItemImage id="cast_iron_nugget"/>
  ### <Color id="aqua">Чугунный самородок</Color>
</Row>

Девять до слитка и обратно. Наггетсы починят сломанный венчик.

<Row>
  <ItemImage id="cast_iron_block"/>
  ### <Color id="aqua">Чугунный блок</Color>
</Row>

Хранилище для девяти слитков.

<Recipe id="nautec:cast_iron_block_from_ingots"/>

<Row>
  <ItemImage id="oil_barrel"/>
  ### <Color id="aqua">Нефтяная бочка</Color>
</Row>

Чугунный барабан, вмещающий до 8000 mB масла, NauTec или любых других модов (все, что в теге `c:oil`). Щелкните правой кнопкой мыши, чтобы открыть или закрыть крышку; трубы могут достигать масла только при открытой крышке. Взорвите его, чтобы получить чугунные слитки. Чтобы забрать его, добудьте его киркой.

<Recipe id="nautec:oil_barrel"/>

***

## <Color id="gold">Детали машин</Color>

<Row>
  <ItemImage id="laser_channeling_coil"/>
  ### <Color id="aqua">Лазерная направляющая катушка</Color>
</Row>

Изготовлен из <ItemLink id="burnt_coil"/> путем трансформации предмета: 10 секунд в луче чистоты 1,5 или выше. Максимальный показатель Водного катализатора составляет 1,2, поэтому либо запустите катализатор в <ItemLink id="prismarine_crystal"/> и используйте луч, выходящий из него, либо пропустите луч из осколков кристалла прямо через <ItemLink id="focusing_lens"/>.

Катушка используется в зарядном устройстве, призматической батарее, большинстве инструментов Aquarine Steel и многих более поздних машинах.

<Row>
  <ItemImage id="broken_whisk"/>
  ### <Color id="aqua">Сломанный венчик</Color>
</Row>

Утонувшие иногда оставляют один, удачливые рыболовные зоны могут превратить его в сокровище, а в руинах океана и в сундуках исследовательских аванпостов можно его хранить.

<Row>
  <ItemImage id="whisk"/>
  ### <Color id="aqua">Венчик</Color>
</Row>

Волнующая часть [Миксер](mixer.md). Почините сломанный венчик с помощью четырех чугунных самородков или создайте новый из чугунных стержней, осколка призмаринового кристалла и слитка аквариновой стали.

<Recipe id="nautec:whisk"/>
<Recipe id="nautec:whisk_from_cast_iron"/>
