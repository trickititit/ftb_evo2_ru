---
navigation:
  title: "Конструктор антиматерии"
  icon: ftbic:antimatter_constructor
  parent: machines/index.md
  position: 13
item_ids:
  - ftbic:antimatter_constructor
  - ftbic:antimatter
  - ftbic:antimatter_crystal
---

# <Color id="gold">Конструктор антиматерии</Color>

<Column alignItems="center" fullWidth={true}>
  <ItemImage id="antimatter_constructor" scale="2" />

  Машина финала. Изготавливает <ItemLink id="antimatter" /> и <ItemLink id="antimatter_crystal" />, единственные материалы, используемые в <ItemLink id="quantum_helmet" /><ZapMode> и линии <ItemLink id="iv_rectifier" /></ZapMode>.
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

<RecipeFor id="antimatter_constructor" />

<ItemImage id="minecraft:air" scale="0.25"/>
***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Операция</Color>
</Column>

* **Уровень:** IV
* **Буфер:** <Energy config="machines.antimatter_constructor_capacity" />
* Медленно накапливает топливо из антиматерии из сырой энергии. Требует постоянного внутривенного питания. Планируйте ядерный реактор или стену из <ItemLink id="ev_solar_panel" />s.
* Принимает «усиливающие» предметы (см. рецепты `antimatter_boost`), которые временно увеличивают производительность.

<ItemImage id="minecraft:air" scale="0.25"/>

<Row>
  <ItemImage id="antimatter_crystal" />
  ### <Color id="aqua">Кристалл антивещества</Color>
</Row>

Сжатая антиматерия: форма драгоценного камня, используемая непосредственно в рецептах поздней игры.

<RecipeFor id="antimatter_crystal" />
