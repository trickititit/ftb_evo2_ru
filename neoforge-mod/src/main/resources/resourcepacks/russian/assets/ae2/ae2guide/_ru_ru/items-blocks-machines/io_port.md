---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: "ME-IO-порт"
  icon: io_port
  position: 210
categories:
- devices
item_ids:
- ae2:io_port
---

# <a name="the-me-i/o-port" />Порт ввода-вывода ME

<BlockImage id="io_port" p:powered="true" scale="8" />

Порт ввода-вывода позволяет быстро заполнять или опорожнять [ячейки хранения](../items-blocks-machines/storage_cells.md) до [сетевое хранилище](../ae2-mechanics/import-export-storage.md) или обратно.

Его можно вращать с помощью <ItemLink id="certus_quartz_wrench" />.

## <a name="settings" />Настройки

*   Порт ввода-вывода можно настроить на перемещение ячейки в выходные слоты, когда ячейка пуста, заполнена или когда работа завершена.
*   Если вставлен <ItemLink id="redstone_card" />, будут варианты для различных условий красного камня.
*   В центре графического интерфейса находится стрелка, позволяющая указать направление перемещения элементов: из ячейки в [сетевое хранилище](../ae2-mechanics/import-export-storage.md) или из хранилища в ячейку.

## <a name="upgrades" />Обновления

Порт ввода-вывода поддерживает следующие [обновления](upgrade_cards.md):

*   <ItemLink id="speed_card" /> увеличивает количество вещей, перемещаемых за операцию
*   <ItemLink id="redstone_card" /> добавляет контроль красного камня, позволяющий активировать при высоком сигнале, низком сигнале или один раз за импульс.

## <a name="recipe" />Рецепт

<RecipeFor id="io_port" />
