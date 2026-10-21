---
navigation:
  parent: aae_intro/aae_intro-index.md
  title: "Автобус для экспорта акций"
  icon: advanced_ae:stock_export_bus_part
categories:
  - advanced items
item_ids:
  - advanced_ae:stock_export_bus_part
---

# <a name="stock-export-bus" />Автобус для экспорта акций

<GameScene zoom="8" background="transparent">
  <ImportStructure src="../structure/cable_stock_export_bus.snbt"></ImportStructure>
</GameScene>

Шину экспорта акций можно настроить для экспорта точного количества отфильтрованных стеков. Он отслеживает сумму, присутствующую в настоящее время в целевом инвентаре, и не вставляет сверх этого числа. Чтобы настроить его, вы открываете графический интерфейс, перетаскиваете нужный элемент в слот фильтра и, используя средний щелчок, можете настроить сумму. Обратите внимание, что он не будет регулировать производительность, то есть не будет извлекать дополнительные предметы/жидкости из инвентаря, если их количество превышает настроенное.
