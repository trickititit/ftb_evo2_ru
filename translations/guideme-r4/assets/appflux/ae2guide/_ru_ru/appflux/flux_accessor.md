---
navigation:
  parent: appflux/appflux-index.md
  title: "Флюсовый аксессуар"
  icon: appflux:flux_accessor
categories:
- flux accessor
item_ids:
- appflux:flux_accessor
- appflux:part_flux_accessor
---

# <a name="flux-accessor" />Флюсовый аксессуар

<Row>
<BlockImage id="appflux:flux_accessor" scale="8"></BlockImage>
<GameScene zoom="8" background="transparent">
  <ImportStructure src="../structure/flux_accessor.snbt"></ImportStructure>
</GameScene>
</Row>

Flux Accessor может вводить/выводить энергию, хранящуюся в вашей сети ME. По умолчанию у них нет ограничений ввода-вывода, которые можно изменить в конфигурации Appflux.

У них есть быстрый и нормальный режим. В быстром режиме он выдает энергию при каждом такте, что может вызвать задержку при интенсивном использовании. В обычном режиме его выходная энергия зависит от запасенной энергии цели, что не вызывает проблем с задержкой.

* Примечание. Упомянутая здесь «энергия» — это FE, хранящаяся в вашем [FE Ячейки хранения](./flux_cells.md), а не энергия в
[Энергетические элементы](ae2:items-blocks-machines/energy_cells.md).

