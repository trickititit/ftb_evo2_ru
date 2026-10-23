---
navigation:
    parent: epp_intro/epp_intro-index.md
    title: "Экспортная шина ME Threshold"
    icon: extendedae:threshold_export_bus
categories:
- extended devices
item_ids:
- extendedae:threshold_export_bus
---

# <a name="me-threshold-export-bus" />Экспортная шина ME Threshold

<GameScene zoom="8" background="transparent">
  <ImportStructure src="../structure/cable_threshold_export_bus.snbt"></ImportStructure>
</GameScene>

Шина экспорта порогового значения ME срабатывает, когда количество элемента, хранящегося в сети ME, выше или ниже порогового значения.

## <a name="example" />Пример

![графический интерфейс](../pic/thr_bus_gui1.png)

Порог меди установлен на 128, поэтому шина экспортирует медь, когда в сети хранится более 128.

![графический интерфейс](../pic/thr_bus_gui2.png)

Порог такой же, как указано выше, но режим установлен на НИЖЕ. Автобус экспортирует медь, когда в сети хранится менее 128 меди.
