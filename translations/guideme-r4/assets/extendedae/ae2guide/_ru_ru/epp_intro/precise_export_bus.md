---
navigation:
    parent: epp_intro/epp_intro-index.md
    title: "ME Точный экспортный автобус"
    icon: extendedae:precise_export_bus
categories:
- extended devices
item_ids:
- extendedae:precise_export_bus
---

# <a name="me-precise-export-bus" />ME Точный экспортный автобус

<GameScene zoom="8" background="transparent">
  <ImportStructure src="../structure/cable_precise_export_bus.snbt"></ImportStructure>
</GameScene>

ME Precision Export Bus экспортирует предметы или жидкости в определенных количествах. Он экспортирует только тогда, когда контейнер может принять весь вывод.

## <a name="example" />Пример

![графический интерфейс](../pic/pre_bus_gui1.png)

Этот параметр экспортирует 3 единицы булыжника за операцию. Экспорт прекращается, когда в сети содержится менее 3 устройств.

![графический интерфейс](../pic/pre_bus_gui2.png)

Он также прекращает экспорт, когда целевой контейнер не может вместить весь вывод. В сундуке можно разместить еще только 2 единицы булыжника, поэтому экспортный автобус останавливается.
