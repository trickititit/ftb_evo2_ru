---
navigation:
  title: "Cooling Components"
  icon: ftbic:heat_vent
  parent: nuclear/index.md
  position: 3
item_ids:
  - ftbic:small_coolant_cell
  - ftbic:medium_coolant_cell
  - ftbic:large_coolant_cell
  - ftbic:heat_vent
  - ftbic:reactor_heat_vent
  - ftbic:overclocked_heat_vent
  - ftbic:component_heat_vent
  - ftbic:advanced_heat_vent
  - ftbic:heat_exchanger
  - ftbic:reactor_heat_exchanger
  - ftbic:component_heat_exchanger
  - ftbic:advanced_heat_exchanger
---

# <Color id="gold">Компоненты охлаждения</Color>

<Column alignItems="center" fullWidth={true}>
  <ItemImage id="heat_vent" scale="2" />

  Два вида охлаждения: **ячейки** поглощают тепло во внутренний буфер до тех пор, пока оно не насытится, а **вентиляционные отверстия/обменники** непрерывно передают тепло от стержней → вентиляционные отверстия → воздух.
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>
***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Ячейки охлаждающей жидкости</Color>
</Column>

Храните тепло в ограниченном буфере. Когда клетка насыщается, она перестает поглощать. Проекты, основанные исключительно на ячейках, являются **импульсными** конструкциями с запланированным временем простоя.

<Row>
  <ItemImage id="small_coolant_cell" />
  ### <Color id="aqua">Маленькая камера охлаждения</Color>
</Row>

<RecipeFor id="small_coolant_cell" />

<Row>
  <ItemImage id="medium_coolant_cell" />
  ### <Color id="aqua">Средняя ячейка охлаждающей жидкости</Color>
</Row>

<RecipeFor id="medium_coolant_cell" />

<Row>
  <ItemImage id="large_coolant_cell" />
  ### <Color id="aqua">Большая камера охлаждающей жидкости</Color>
</Row>

<RecipeFor id="large_coolant_cell" />

<ItemImage id="minecraft:air" scale="0.25"/>
***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Heat Vents</Color>
</Column>

Вентиляционные отверстия отводят тепло от корпуса реактора или от соседних компонентов. Требуется для **непрерывных** проектов.

<Row>
  <ItemImage id="heat_vent" />
  ### <Color id="aqua">Heat Vent</Color>
</Row>

Base unit. Отводит тепло от корпуса реактора и выводит его в воздух.

<RecipeFor id="heat_vent" />

<Row>
  <ItemImage id="reactor_heat_vent" />
  ### <Color id="aqua">Теплоотвод реактора</Color>
</Row>

Более мощное вентиляционное отверстие корпуса. Вытягивает больше тепла за такт из самой камеры реактора.

<RecipeFor id="reactor_heat_vent" />

<Row>
  <ItemImage id="component_heat_vent" />
  ### <Color id="aqua">Теплоотвод компонента</Color>
</Row>

Отводит тепло от соседних **компонентов** (камер охлаждающей жидкости), а не от корпуса. Краеугольный камень проектов по переработке клеток.

<RecipeFor id="component_heat_vent" />

<Row>
  <ItemImage id="overclocked_heat_vent" />
  ### <Color id="aqua">Разогнанный радиатор</Color>
</Row>

Гибридное вентиляционное отверстие: распространяется как на корпус, так и на соседей. Самоповреждается при большой нагрузке, но эффективен при правильном размещении.

<RecipeFor id="overclocked_heat_vent" />

<Row>
  <ItemImage id="advanced_heat_vent" />
  ### <Color id="aqua">Усовершенствованная теплоотводная трубка</Color>
</Row>

The endgame vent. Используется в конструкциях IV класса.

<RecipeFor id="advanced_heat_vent" />

<ItemImage id="minecraft:air" scale="0.25"/>
***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Теплообменники</Color>
</Column>

Теплообменники **выравнивают** тепло: они передают тепло от более горячих соседей к более холодным или от корпуса реактора к компоненту. Без теплообменников тепло остается сосредоточенным вокруг топливных стержней.

<Row>
  <ItemImage id="heat_exchanger" />
  ### <Color id="aqua">Теплообменник</Color>
</Row>

<RecipeFor id="heat_exchanger" />

<Row>
  <ItemImage id="reactor_heat_exchanger" />
  ### <Color id="aqua">Теплообменник реактора</Color>
</Row>

Обменивается теплом именно с корпусом реактора. Он отводит тепло корпуса в решетку компонентов и рассеивает его через вентиляционные отверстия.

<RecipeFor id="reactor_heat_exchanger" />

<Row>
  <ItemImage id="component_heat_exchanger" />
  ### <Color id="aqua">Компонентный теплообменник</Color>
</Row>

Только балансирует тепло между соседними компонентами. Дешевый.

<RecipeFor id="component_heat_exchanger" />

<Row>
  <ItemImage id="advanced_heat_exchanger" />
  ### <Color id="aqua">Усовершенствованный теплообменник</Color>
</Row>

Endgame exchanger.

<RecipeFor id="advanced_heat_exchanger" />
