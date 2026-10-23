---
navigation:
  parent: example-setups/index.md
  icon: milky_soul_ball
  title: "Ферма молочных шаров души"
categories:
  - example
---

# <a name="milky-soul-ball-farm" />Ферма молочных шаров души

<GameScene zoom="4" interactive={true} paddingLeft="30" paddingRight="30">
  <ImportStructure src="../assets/assemblies/milky_soul_farm.snbt" />
  <Entity id="minecraft:cow" x="2.5" z="1.5" rotationY="170"/>
  <IsometricCamera yaw="200" pitch="20" />
  <BlockAnnotation x="5" y="1" z="1">
    <ItemGrid>
        <ItemIcon id="minecraft:bucket" />
        <ItemIcon id="minecraft:soul_sand" />
    </ItemGrid>
  </BlockAnnotation>
  <BlockAnnotation x="3" y="1" z="1">
    Пользователь использует пустые ведра для коров
  </BlockAnnotation>
  <BlockAnnotation x="3" y="4" z="1">
    Пользователь использует ведра с молоком на Песке Души и помещает полученные Шары Молочной Души и пустое ведро обратно в Сетевое хранилище.
  </BlockAnnotation>
  <BlockAnnotation x="1" y="4" z="1">
    Россыпь помещает песок души перед пользователем.
  </BlockAnnotation>
</GameScene>

На этой ферме <ItemLink id="user" /> доят коров, используя пустые ведра, а ведра с молоком ставят в [Сетевое хранилище](../nodeworks-mechanics/network-storage.md). Затем другой Пользователь будет использовать эти <ItemLink id="minecraft:milk_bucket" /> на <ItemLink id="minecraft:soul_sand" />, расположенном рядом с <ItemLink id="placer" />.

> **Примечание.** Для тех, кто размещает россыпи, и для пользователей, установлен низкий режим красного камня, поэтому они все активны.
