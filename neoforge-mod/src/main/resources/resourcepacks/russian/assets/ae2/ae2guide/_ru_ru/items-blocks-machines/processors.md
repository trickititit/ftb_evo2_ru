---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: "Процессоры"
  icon: logic_processor
  position: 010
categories:
- misc ingredients blocks
item_ids:
- ae2:logic_processor
- ae2:calculation_processor
- ae2:engineering_processor
- ae2:printed_silicon
- ae2:printed_logic_processor
- ae2:printed_calculation_processor
- ae2:printed_engineering_processor
- ae2:silicon
---

# <a name="processors" />Процессоры

<Row>
  <ItemImage id="logic_processor" scale="4" />

  <ItemImage id="calculation_processor" scale="4" />

  <ItemImage id="engineering_processor" scale="4" />
</Row>

Процессоры являются одним из основных компонентов AE2 [устройства](../ae2-mechanics/devices.md) и машин. Это также одна из ваших первых серьезных задач по автоматизации. Существует три типа процессоров, изготовленных из золота, <ItemLink id="certus_quartz_crystal" /> и бриллианта соответственно. Они изготавливаются с использованием [прессует](presses.md) в <ItemLink id="inscriber" /> в многоэтапном процессе (обычно достигается с помощью ряда устройств для нанесения надписей и фильтрованных трубок).

## <a name="production-steps" />Этапы производства

<Column gap="5">
  1.  Соберите/изготовьте необходимые ингредиенты: кремний, красный камень, золото, <ItemLink id="certus_quartz_crystal" />, алмаз.

  <RecipeFor id="silicon" />

  <br />

  2.  Нажмите необходимые компоненты печатной схемы

  <Row>
    <RecipeFor id="printed_silicon" />

    <RecipeFor id="printed_logic_processor" />
  </Row>

  <Row>
    <RecipeFor id="printed_calculation_processor" />

    <RecipeFor id="printed_engineering_processor" />
  </Row>

  <br />

  3.  Окончательная сборка

  <Row>
    <RecipeFor id="logic_processor" />

    <RecipeFor id="calculation_processor" />
  </Row>

  <RecipeFor id="engineering_processor" />
</Column>
