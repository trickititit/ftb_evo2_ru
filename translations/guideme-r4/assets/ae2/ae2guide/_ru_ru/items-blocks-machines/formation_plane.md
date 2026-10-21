---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: "Плоскость формирования"
  icon: formation_plane
  position: 210
categories:
- devices
item_ids:
- ae2:formation_plane
---

# <a name="the-formation-plane" />Плоскость формирования

<GameScene zoom="8" background="transparent">
  <ImportStructure src="../assets/blocks/formation_plane.snbt" />
</GameScene>

Плоскость формирования размещает блоки и сбрасывает предметы. Он работает аналогично <ItemLink id="storage_bus" />, предназначенному только для вставки: размещение/удаление, когда элементы «хранятся» в нем, путем вставки [устройства](../ae2-mechanics/devices.md) в [сетевое хранилище](../ae2-mechanics/import-export-storage.md), например <ItemLink id="import_bus" />es и <ItemLink id="interface" />s.

<GameScene zoom="8" interactive={true}>
  <ImportStructure src="../assets/assemblies/formation_plane_demonstration.snbt" />
  <IsometricCamera yaw="255" pitch="30" />
</GameScene>

Обратите внимание, что они похожи на каналы импорта -> шина хранения и интерфейс -> шина хранения в [подсети каналов](../example-setups/pipe-subnet.md).

<GameScene zoom="6" interactive={true}>
  <ImportStructure src="../assets/assemblies/import_storage_pipe.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

<GameScene zoom="6" interactive={true}>
  <ImportStructure src="../assets/assemblies/interface_storage_pipe.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

Этот [устройство](../ae2-mechanics/devices.md) использует механику, используемую шинами хранения в таких вещах, как [подсети каналов](../example-setups/pipe-subnet.md), и может заменить шины хранения в этих конфигурациях, если вы хотите сбрасывать предметы/размещать блоки вместо транспортировки предметов.

Они [части кабеля](../ae2-mechanics/cable-subparts.md).

**НЕОБХОДИМО ВКЛЮЧИТЬ ФАЛЬШИВЫХ ИГРОКОВ В ВАШЕМ ЧАНКЕ ЗАЯВКИ**

## <a name="filtering" />Фильтрация

По умолчанию самолет поместит/бросит что угодно. Элементы, вставленные в слоты фильтров, будут действовать как белый список, позволяя размещать только эти конкретные элементы.

Предметы и жидкости можно перетаскивать в слоты из JEI/REI, даже если у вас на самом деле нет ни одного из этих предметов.

Щелкните правой кнопкой мыши контейнер с жидкостью (например, ведро или резервуар с жидкостью), чтобы установить эту жидкость в качестве фильтра вместо ведра или бака.

## <a name="priority" />Приоритет

Приоритеты можно установить, щелкнув гаечный ключ в правом верхнем углу графического интерфейса. Предметы, поступающие в сеть, начинаются с хранилища с наивысшим приоритетом.

## <a name="settings" />Настройки

*   Самолет можно настроить для размещения блоков в мире или сброса предметов.

## <a name="upgrades" />Обновления

Плоскость формирования поддерживает следующие [обновления](upgrade_cards.md):

*   <ItemLink id="capacity_card" /> увеличивает количество слотов для фильтров.
*   <ItemLink id="fuzzy_card" /> позволяет фильтровать самолет по уровню урона и/или игнорировать предмет NBT.
*   <ItemLink id="inverter_card" /> переключает фильтр из белого списка в черный список.

## <a name="recipe" />Рецепт

<RecipeFor id="formation_plane" />
