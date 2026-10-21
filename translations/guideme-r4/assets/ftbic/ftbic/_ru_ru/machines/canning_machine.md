---
navigation:
  title: "Консервная машина"
  icon: ftbic:canning_machine
  parent: machines/index.md
  position: 8
item_ids:
  - ftbic:canning_machine
  - ftbic:empty_can
  - ftbic:canned_food
---

# <Color id="gold">Консервная машина</Color>

<Column alignItems="center" fullWidth={true}>
  <ItemImage id="canning_machine" scale="2" />

  Упаковывает еду в <ItemLink id="canned_food" /> для эффективного хранения, наполняет баллончики с краской краской и собирает картриджи <ItemLink id="uranium_fuel_rod" />.
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

<RecipeFor id="canning_machine" />

<ItemImage id="minecraft:air" scale="0.25"/>
***

<Row>
  <ItemImage id="empty_can" />
  ### <Color id="aqua">Пустая банка</Color>
</Row>

Штамповка из жести. Контейнер для каждого рецепта консервов.

<RecipeFor id="empty_can" />

<Row>
  <ItemImage id="canned_food" />
  ### <Color id="aqua">Консервы</Color>
</Row>

Берет любой продукт плюс пустую банку. Консервированные варианты складываются больше и сохраняют полную питательную ценность оригинала.

<Row>
  <ItemImage id="light_spray_paint_can" />
  ### <Color id="aqua">Банки с аэрозольной краской</Color>
</Row>

Заполните <ItemLink id="empty_can" /> любым красителем, чтобы получилась <ItemLink id="light_spray_paint_can" /> или <ItemLink id="dark_spray_paint_can" />. См. [Аэрозольная краска](../utilities/spray_paint.md).

<ItemImage id="minecraft:air" scale="0.25"/>

**Статистика:** Уровень LV, буфер 38 400 FE, использование 8 FE/t.
