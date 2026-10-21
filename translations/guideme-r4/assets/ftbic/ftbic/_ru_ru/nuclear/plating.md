---
navigation:
  title: "Покрытие реактора"
  icon: ftbic:reactor_plating
  parent: nuclear/index.md
  position: 4
item_ids:
  - ftbic:reactor_plating
  - ftbic:heat_capacity_reactor_plating
  - ftbic:containment_reactor_plating
---

# <Color id="gold">Обшивка реактора</Color>

<Column alignItems="center" fullWidth={true}>
  <ItemImage id="reactor_plating" scale="2" />

  Покрытие изменяет сам **корпус реактора**: его общую теплоемкость и радиус взрыва, если произойдет худшее.
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>
***

<Row>
  <ItemImage id="reactor_plating" />
  ### <Color id="aqua">Обшивка реактора</Color>
</Row>

Уменьшает урон от взрыва, если реактор расплавится.

<RecipeFor id="reactor_plating" />

<Row>
  <ItemImage id="heat_capacity_reactor_plating" />
  ### <Color id="aqua">Покрытие теплоёмкого реактора</Color>
</Row>

Увеличивает общий тепловой буфер реактора: медленнее достигается критический уровень, легче запускать импульсные конструкции.

<RecipeFor id="heat_capacity_reactor_plating" />

<Row>
  <ItemImage id="containment_reactor_plating" />
  ### <Color id="aqua">Обшивка реактора сдерживания</Color>
</Row>

Сильно снижает мощность взрыва, если сдерживание не удалось. Защитная сетка для агрессивных конструкций.

<RecipeFor id="containment_reactor_plating" />
