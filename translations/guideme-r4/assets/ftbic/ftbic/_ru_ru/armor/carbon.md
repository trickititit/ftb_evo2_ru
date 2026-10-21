---
navigation:
  title: "Карбоновая броня"
  icon: ftbic:carbon_chestplate
  parent: armor/index.md
  position: 1
item_ids:
  - ftbic:carbon_helmet
  - ftbic:carbon_chestplate
  - ftbic:carbon_leggings
  - ftbic:carbon_boots
---

# <Color id="gold">Углеродная броня</Color>

<Column alignItems="center" fullWidth={true}>
  <ItemImage id="carbon_chestplate" scale="2" />

  Набор силовой брони начального уровня. Поглощает урон, тратя <Energy config="equipment.armor_damage_energy" /> за каждое очко поглощенного урона вместо потери прочности. Емкость: **<Energy config="equipment.carbon_armor_capacity" />** на нагруднике.
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>
***

<Row>
  <ItemImage id="carbon_helmet" />
  ### <Color id="aqua">Углеродный шлем</Color>
</Row>

<RecipeFor id="carbon_helmet" />

<Row>
  <ItemImage id="carbon_chestplate" />
  ### <Color id="aqua">Углеродный нагрудник</Color>
</Row>

Содержит полный запас энергии всего набора.

<RecipeFor id="carbon_chestplate" />

<Row>
  <ItemImage id="carbon_leggings" />
  ### <Color id="aqua">Углеродные леггинсы</Color>
</Row>

<RecipeFor id="carbon_leggings" />

<Row>
  <ItemImage id="carbon_boots" />
  ### <Color id="aqua">Углеродные сапоги</Color>
</Row>

<RecipeFor id="carbon_boots" />

<ItemImage id="minecraft:air" scale="0.25"/>
***

Без заряженного нагрудника остальные части не обеспечивают защиты. Низкий заряд поглощает ровно столько урона, сколько может покрыть оставшийся заряд.
