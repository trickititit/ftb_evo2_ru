---
navigation:
  title: "Структура пасеки"
  parent: index.md
  icon: minecraft:honeycomb_block
  position: 1
---

# Структура пасеки

Мистическая пасека — это **мультиблок 3x3x3**, в котором ваши продуктивные пчелы находятся на месте, поэтому ни одна пчела никогда ее не покидает.

В его основе лежит **Сотовый блок**, завернутый в куб **бревен**, с четырьмя коробками, установленными по бокам.

## Сборка

Работаем с середины:

- **В центре**: сотовый блок
- **Север, юг, восток, запад** от него: по одному из [Пчелиный ящик](modules.md#bee-box), [Цветочная Коробка](modules.md#flower-box), [Хранение](modules.md#storage) и [Контроллер](modules.md#controller), в любом расположении.
- **Любое второе место** в кубе: любые бревна, обычные или очищенные.

<GameScene zoom="6">
  <Block x="0" y="0" z="0" id="minecraft:oak_log" />
  <Block x="1" y="0" z="0" id="minecraft:oak_log" />
  <Block x="2" y="0" z="0" id="minecraft:oak_log" />
  <Block x="0" y="0" z="1" id="minecraft:oak_log" />
  <Block x="1" y="0" z="1" id="minecraft:oak_log" />
  <Block x="2" y="0" z="1" id="minecraft:oak_log" />
  <Block x="0" y="0" z="2" id="minecraft:oak_log" />
  <Block x="1" y="0" z="2" id="minecraft:oak_log" />
  <Block x="2" y="0" z="2" id="minecraft:oak_log" />
  <Block x="0" y="1" z="0" id="minecraft:oak_log" />
  <Block x="1" y="1" z="0" id="mystianapiary:input_block" p:facing="west" />
  <Block x="2" y="1" z="0" id="minecraft:oak_log" />
  <Block x="0" y="1" z="1" id="mystianapiary:flower_block" p:facing="south" />
  <Block x="1" y="1" z="1" id="minecraft:honeycomb_block" />
  <Block x="2" y="1" z="1" id="mystianapiary:upgrade_block" />
  <Block x="0" y="1" z="2" id="minecraft:oak_log" />
  <Block x="1" y="1" z="2" id="mystianapiary:output_block" p:facing="east" />
  <Block x="2" y="1" z="2" id="minecraft:oak_log" />
  <Block x="0" y="2" z="0" id="minecraft:oak_log" />
  <Block x="1" y="2" z="0" id="minecraft:oak_log" />
  <Block x="2" y="2" z="0" id="minecraft:oak_log" />
  <Block x="0" y="2" z="1" id="minecraft:oak_log" />
  <Block x="1" y="2" z="1" id="minecraft:oak_log" />
  <Block x="2" y="2" z="1" id="minecraft:oak_log" />
  <Block x="0" y="2" z="2" id="minecraft:oak_log" />
  <Block x="1" y="2" z="2" id="minecraft:oak_log" />
  <Block x="2" y="2" z="2" id="minecraft:oak_log" />
</GameScene>

## Дополнительно: второй ящик для хранения

Нужно больше места? Журнал **непосредственно над сотовым блоком** (вверху в центре) можно заменить **вторым ящиком для хранения** любого уровня. Продукция сначала заполняет основной боковой ящик и переливается во второй только после того, как этот ящик заполнится, хотя частично заполненная стопка во втором ящике всегда пополняется первой. Жидкости переливаются таким же образом.

Журнал там по-прежнему в порядке, второе поле совершенно необязательно (владельцы серверов могут отключить его с помощью конфигурации `allowSecondOutput`).

<GameScene zoom="6">
  <Block x="0" y="0" z="0" id="minecraft:oak_log" />
  <Block x="1" y="0" z="0" id="minecraft:oak_log" />
  <Block x="2" y="0" z="0" id="minecraft:oak_log" />
  <Block x="0" y="0" z="1" id="minecraft:oak_log" />
  <Block x="1" y="0" z="1" id="minecraft:oak_log" />
  <Block x="2" y="0" z="1" id="minecraft:oak_log" />
  <Block x="0" y="0" z="2" id="minecraft:oak_log" />
  <Block x="1" y="0" z="2" id="minecraft:oak_log" />
  <Block x="2" y="0" z="2" id="minecraft:oak_log" />
  <Block x="0" y="1" z="0" id="minecraft:oak_log" />
  <Block x="1" y="1" z="0" id="mystianapiary:input_block" p:facing="west" />
  <Block x="2" y="1" z="0" id="minecraft:oak_log" />
  <Block x="0" y="1" z="1" id="mystianapiary:flower_block" p:facing="south" />
  <Block x="1" y="1" z="1" id="minecraft:honeycomb_block" />
  <Block x="2" y="1" z="1" id="mystianapiary:upgrade_block" />
  <Block x="0" y="1" z="2" id="minecraft:oak_log" />
  <Block x="1" y="1" z="2" id="mystianapiary:output_block" p:facing="east" />
  <Block x="2" y="1" z="2" id="minecraft:oak_log" />
  <Block x="0" y="2" z="0" id="minecraft:oak_log" />
  <Block x="1" y="2" z="0" id="minecraft:oak_log" />
  <Block x="2" y="2" z="0" id="minecraft:oak_log" />
  <Block x="0" y="2" z="1" id="minecraft:oak_log" />
  <Block x="1" y="2" z="1" id="mystianapiary:output_block" p:facing="north" />
  <Block x="2" y="2" z="1" id="minecraft:oak_log" />
  <Block x="0" y="2" z="2" id="minecraft:oak_log" />
  <Block x="1" y="2" z="2" id="minecraft:oak_log" />
  <Block x="2" y="2" z="2" id="minecraft:oak_log" />
</GameScene>
