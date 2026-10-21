---
navigation:
  title: "Квантовая броня"
  icon: ftbic:quantum_chestplate
  parent: armor/index.md
  position: 2
item_ids:
  - ftbic:quantum_helmet
  - ftbic:quantum_chestplate
  - ftbic:quantum_leggings
  - ftbic:quantum_boots
---

# <Color id="gold">Квантовая броня</Color>

<Column alignItems="center" fullWidth={true}>
  <ItemImage id="quantum_chestplate" scale="2" />

  Силовая броня эндшпиля. Та же защитная модель, что и уголь, но с запасом **<Energy config="equipment.quantum_armor_capacity" />**, полетом и полным поглощением урона при скорости зарядки EV.
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>
***

<Row>
  <ItemImage id="quantum_helmet" />
  ### <Color id="aqua">Квантовый шлем</Color>
</Row>

<RecipeFor id="quantum_helmet" />

<Row>
  <ItemImage id="quantum_chestplate" />
  ### <Color id="aqua">Квантовый нагрудник</Color>
</Row>

Сохраняет энергию всего набора. Дважды нажмите прыжок, чтобы зависнуть и полететь во время зарядки. При наведении тратится <Energy config="equipment.armor_flight_energy" rate="true" />. Нагрудник также поддерживает скольжение; удерживайте прыжок, чтобы ускориться, или подкрадитесь, чтобы замедлиться во время планирования.

<RecipeFor id="quantum_chestplate" />

<Row>
  <ItemImage id="quantum_leggings" />
  ### <Color id="aqua">Квантовые поножи</Color>
</Row>

<RecipeFor id="quantum_leggings" />

<Row>
  <ItemImage id="quantum_boots" />
  ### <Color id="aqua">Квантовые сапоги</Color>
</Row>

<RecipeFor id="quantum_boots" />

<ItemImage id="minecraft:air" scale="0.25"/>
***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Советы</Color>
</Column>

* Нагрудник потребляет <Energy config="equipment.armor_flight_energy" rate="true" /> во время парения или планирования. Разгон и торможение во время планирования требуют дополнительной энергии.
* Поглощение урона использует только накопленную энергию. Части никогда не теряют прочности и не обеспечивают защиты, когда нагрудник пуст.
* Поместите <ItemLink id="charge_pad" /> над <ItemLink id="ev_battery_box" />, чтобы, наступив на нее, мгновенно перезарядил весь набор.
