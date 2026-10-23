---
navigation:
  title: "Ferricore Часы"
  icon: "justdynathings:ferricore_clock"
  position: 4
  parent: justdynathings:other.md
item_ids:
  - justdynathings:ferricore_clock
---

# Полностью настраиваемые часы из красного камня.

# Ferricore Часы

_также известные как Редстоунские часы_

Блок, который можно запрограммировать для питания компонентов красного камня, любая сторона которого настраивается с помощью определенного геймика.

<BlockImage id="justdynathings:ferricore_clock" p:north="true" p:south="true" p:east="true" p:west="true" p:up="true" p:down="true" p:active="false" scale="4.0"/>

<BlockImage id="justdynathings:ferricore_clock" p:north="true" p:south="true" p:east="true" p:west="true" p:up="true" p:down="true" p:active="true" scale="4.0"/>

Ferricore Часы с направлением СЕВЕР и ВВЕРХ отключены, чтобы предотвратить включение ненужных вещей.

<GameScene zoom="4" interactive={true}>

  <Block id="justdynathings:ferricore_clock" p:north="false" p:south="false" p:east="true" p:west="true" p:up="false" p:down="true" p:active="true"/>

  <Block y="1" id="minecraft:redstone_torch" p:lit="true"/>

  <Block y="-1" id="minecraft:redstone_lamp" p:lit="true"/>

  <Block x="1" id="minecraft:repeater" p:powered="true" p:locked="false" p:delay="1" p:facing="west"/>

  <Block z="1" id="minecraft:repeater" p:powered="false" p:locked="false" p:delay="1" p:facing="north"/>

  <Block z="-1" id="minecraft:repeater" p:powered="false" p:locked="false" p:delay="1" p:facing="south"/>

  <Block x="-1" id="minecraft:repeater" p:powered="true" p:locked="false" p:delay="1" p:facing="east"/>

</GameScene>

<Recipe id="justdynathings:ferricore_clock" />
