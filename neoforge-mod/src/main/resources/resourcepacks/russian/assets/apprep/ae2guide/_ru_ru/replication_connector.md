---
navigation:
    title: "ME-соединитель репликации"
    icon: replication_connector
    parent: index.md
item_ids:
    - replication_connector
---

# <a name="applied-replicatics:-me-replication-connector" />Applied Replicatics: ME-соединитель репликации

<BlockImage id="replication_connector" scale="4" />

Этот блок соединяет сеть Replication и сеть ME.

Он может хранить материю из сети Replication в сети МЕ, а также может извлекать материю обратно из сети МЕ в сеть Replication.

<GameScene zoom="6" interactive={true}>
  <ImportStructure src="structures/replication_connector_basic.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

## <a name="autocrafting" />Автокрафт

Шаблоны из хранилища чипов регистрируются в ME-сети как доступные для автосоздания. Продукция репликатора поступает в ME-сеть через ME-соединитель репликации.

<GameScene zoom="6" interactive={true}>
  <ImportStructure src="structures/auto_craft.snbt" />
  <IsometricCamera yaw="195" pitch="30" />

  <BlockAnnotation color="#dddddd" x="0" y="0" z="1">
    В автокрафте используется материя, хранящаяся в Ячейках хранения материи ME.
  </BlockAnnotation>
</GameScene>
