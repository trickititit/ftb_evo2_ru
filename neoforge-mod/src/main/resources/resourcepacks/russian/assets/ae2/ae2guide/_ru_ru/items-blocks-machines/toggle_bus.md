---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: "Переключить автобус"
  icon: toggle_bus
  position: 110
categories:
- network infrastructure
item_ids:
- ae2:toggle_bus
- ae2:inverted_toggle_bus
---

# <a name="the-toggle-bus" />Переключаемый автобус

<GameScene zoom="8" background="transparent">
<ImportStructure src="../assets/assemblies/toggle_bus.snbt" />
<IsometricCamera yaw="195" pitch="30" />
</GameScene>

Шина, которая функционирует аналогично <ItemLink id="fluix_glass_cable" /> или другим кабелям, но позволяет переключать состояние ее соединения с помощью красного камня. Это позволяет вам отрезать часть [ME сеть](../ae2-mechanics/me-network-connections.md).

Когда подается сигнал красного камня, деталь разрешает соединение, <ItemLink id="inverted_toggle_bus" /> обеспечивает обратное поведение, вместо этого отключая соединение.

Следует отметить, что их переключение может привести к перезагрузке сети и перерасчету подключенных устройств.

Они [части кабеля](../ae2-mechanics/cable-subparts.md).

## <a name="recipes" />Рецепты

<RecipeFor id="toggle_bus" />

<RecipeFor id="inverted_toggle_bus" />
