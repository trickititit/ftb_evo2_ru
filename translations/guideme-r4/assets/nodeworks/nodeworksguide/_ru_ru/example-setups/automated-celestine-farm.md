---
navigation:
  parent: example-setups/index.md
  icon: celestine_shard
  title: "Ферма целестина"
categories:
  - example
---

# <a name="celestine-farm" />Ферма целестина

<ItemLink id="budding_celestine" /> можно легко фармить, используя <ItemLink id="breaker" /> и <ItemLink id="terminal" />.

<GameScene zoom="4" interactive={true} paddingLeft="30" paddingRight="30">
  <ImportStructure src="../assets/assemblies/celestine_farm.snbt" />
  <IsometricCamera yaw="200" pitch="20" />
</GameScene>

Или, при желании, вы можете использовать узлы фокуса, чтобы соединить все вместе.

<GameScene zoom="4" interactive={true} paddingLeft="30" paddingRight="30">
  <ImportStructure src="../assets/assemblies/celestine_farm_focus_node.snbt" />
  <IsometricCamera yaw="200" pitch="20" />
</GameScene>

Затем в графическом интерфейсе Выключателей вы устанавливаете для них режим «Низкий уровень красного камня», который поддерживает их активность без сигнала красного камня. И установите для каждого из них значение <ItemLink id="celestine_cluster" />.

Они сломают полностью выросшие кластеры целестина и вставят их в [сетевое хранилище](../nodeworks-mechanics/network-storage.md).
