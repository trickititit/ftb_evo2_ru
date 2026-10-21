---
navigation:
  title: "Машины"
  icon: ftbic:macerator
  position: 30
---

# <Color id="gold">Машины</Color>

<Column alignItems="center" fullWidth={true}>
  <ItemImage id="macerator" scale="2" />

  Машины обработки рецептов FTBIC имеют общий инвентарь, тактовый цикл рецептов, энергетический буфер и до четырех слотов **улучшений**. Расширенные варианты имеют большие буферы и более высокую пропускную способность. Вспомогательные машины, такие как дозатор, имеют собственные элементы управления.
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>
***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Машинная структура</Color>
</Column>

Машины для обработки рецептов делятся:

* **Буфер энергии**: отображается в правой части графического интерфейса.
* **Индикатор выполнения**: заполняется по мере выполнения рецепта; по умолчанию 200 тиков/рецепт
* **Слоты для обновления**: установите <ItemLink id="overclocker_upgrade" />, <ItemLink id="energy_storage_upgrade" />, <ItemLink id="transformer_upgrade" /> или <ItemLink id="ejector_upgrade" />.
* **[Боковая конфигурация](side_configuration.md)**: независимые грани предметов, жидкости и энергии от кнопки ввода-вывода.
* **[Замки входных слотов](side_configuration.md)**: постоянные назначения призраков с помощью кнопки L.

Все машины LV построены на основе оболочки <ItemLink id="machine_block" /> плюс ядра, соответствующего рецепту (например, <ItemLink id="electronic_circuit" /> плюс кремень и камень для Мацератора).

<ItemImage id="minecraft:air" scale="0.25"/>
***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Подразделы</Color>
</Column>

<SubPages icons={true} />
