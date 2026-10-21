---
navigation:
    parent: epp_intro/epp_intro-index.md
    title: "Излучатель порогового уровня ME"
    icon: extendedae:threshold_level_emitter
categories:
- extended devices
item_ids:
- extendedae:threshold_level_emitter
---

# <a name="me-threshold-level-emitter" />Излучатель порогового уровня ME

<GameScene zoom="8" background="transparent">
  <ImportStructure src="../structure/cable_threshold_level_emitter.snbt"></ImportStructure>
</GameScene>

Он работает как защелка сброса и установки. Он выключает свой сигнал красного камня, когда количество предмета в сети меньше нижнего порога, и включает его, когда количество превышает верхний порог.

Например, предположим, что нижний порог установлен на 100, а верхний порог — на 150.

Сначала сеть пуста, поэтому эмиттер неактивен.

Когда количество предмета превышает 150, эмиттер отправляет сигнал красного камня.

Когда количество уменьшится ниже 150, эмиттер продолжает отправлять сигнал.

Когда количество падает ниже 100, эмиттер отключается.
