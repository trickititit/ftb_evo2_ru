---
navigation:
  title: "Химические жидкости"
  icon: nautec:eas_bucket
  position: 3
  parent: laser_chemistry/laser_chemistry-index.md
item_ids:
  - nautec:eas_bucket
  - nautec:saltwater_bucket
  - nautec:oil_bucket
  - nautec:glass_vial
  - nautec:eas_vial
  - nautec:salt
---

# <Color id="light_purple">Химические жидкости</Color>

<Column alignItems="center" fullWidth={true}>
  <ItemImage id="eas_bucket" scale="2"/>
  Жидкости, которые используют и производят машины NauTec.
</Column>

Соленая вода является основой почти каждого рецепта [Миксер](mixer.md). Миксер превращает его в электролитную сыворотку от водорослей (EAS) и кислоту для травления.

***

<Row>
  <ItemImage id="saltwater_bucket"/>
  ### <Color id="aqua">Соленая вода</Color>
</Row>

Соленая вода поступает из [Глубоководный сток](drain.md), который каждую секунду закачивает в свой резервуар 500 mB. Вытяните его ведром или трубой.

Вы также можете сделать это в [Миксер](mixer.md): 1000 mB простой воды и одна соль дают 1000 mB соленой воды за 5 секунд.

Океанская вода в ведре по умолчанию остается простой водой. Создатели упаковок могут установить для `collectSaltWater` значение true в `config/nautec-common.toml`, чтобы наполнение ведра из любого источника воды в океанском биоме давало ведро с соленой водой.

***

<Row>
  <ItemImage id="eas_bucket"/>
  ### <Color id="aqua">Электролитная сыворотка от водорослей (EAS)</Color>
</Row>

Сделано в [Миксер](mixer.md) из Соленой воды. EAS открывает способности [Инструменты из аквариумной стали](tools.md).

Чтобы внедрить инструмент, вылейте EAS в качестве исходного блока и поместите в него инструмент. Примерно через 7,5 секунд средство настаивается окончательно, а источник EAS израсходован, поэтому одно ведро наполняет одно средство.

***

<Row>
  <ItemImage id="etching_acid_bucket"/>
  ### <Color id="aqua">Травильная кислота</Color>
</Row>

Очищает ржавчину с ящиков и старых деталей. Сделайте это в [Миксер](mixer.md) или с помощью крафта. См. [Травление ящиков и предметов](nautec:getting_started/etching.md).

***

<Row>
  <ItemImage id="oil_bucket"/>
  ### <Color id="aqua">Масло</Color>
</Row>

Густая жидкость, обнаруженная за <ItemLink id="oil_barrel"/>s.

***

## <Color id="gold">Флаконы и соль</Color>

<Row>
  <ItemImage id="glass_vial"/>
  ### <Color id="aqua">Стеклянный флакон</Color>
</Row>

<Recipe id="nautec:glass_vial"/>

<Row>
  <ItemImage id="eas_vial"/>
  ### <Color id="aqua">Флакон с электролитной сывороткой от водорослей (EAS)</Color>
</Row>

Ведро EAS и три стеклянных флакона создают три флакона EAS, и вы возвращаете пустое ведро. Стеклянные флаконы и флакон EAS попадают в <ItemLink id="syringe_robot_arm"/>.

<Recipe id="nautec:eas_vial"/>

<Row>
  <ItemImage id="salt"/>
  ### <Color id="aqua">Соль</Color>
</Row>

Появляется в качестве улова в удачных рыболовных зонах. См. [Рыбалка](nautec:getting_started/fishing.md). [Тепловой вентиляционный кран](nautec:getting_started/ocean_generators.md) также оставляет одну соль на каждые 1000 mB соленой воды, которую он кипятит. Соль и вода образуют соленую воду в [Миксер](mixer.md).
