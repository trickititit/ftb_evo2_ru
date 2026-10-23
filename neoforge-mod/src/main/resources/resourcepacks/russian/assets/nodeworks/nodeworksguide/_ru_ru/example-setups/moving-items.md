---
navigation:
  parent: example-setups/index.md
  icon: minecraft:hopper
  title: "Перемещение предметов"
categories:
  - example
---

# <a name="moving-items" />Перемещение предметов

Самая простая задача, которую может выполнить сеть Nodeworks: извлекать элементы из контейнера в сетевое хранилище. На этой странице рассматриваются два варианта: сначала базовый вариант, затем та же настройка с фильтрацией.

---

## <a name="with-import/export-chests" />С сундуками импорта/экспорта

### <a name="inserting-items-into-your-network" />Вставка элементов в вашу сеть

Все, что находится внутри <ItemLink id="import_chest"/>, будет вставлено в [Сетевое хранилище](../nodeworks-mechanics/network-storage.md).

<GameScene zoom="5" interactive={true}>
  <ImportStructure src="../assets/assemblies/moving_items_import_chest.snbt" />
  <IsometricCamera yaw="200" pitch="20" />
  <BoxAnnotation min="1 0.1 0.1" max="1.25 0.9 0.9" color="#AA83E0">
    <ItemImage id="nodeworks:storage_card" />
  </BoxAnnotation>
  <BlockAnnotation x="4">
    Предметы, помещенные в сундук импорта, будут автоматически добавлены в сеть.
  </BlockAnnotation>
</GameScene>

### <a name="extracting-items-from-your-network" />Извлечение элементов из вашей сети

<ItemLink id="export_chest"/>s может переносить предметы из сетевого хранилища в свой инвентарь. 

<GameScene zoom="5" interactive={true}>
  <ImportStructure src="../assets/assemblies/moving_items_export_chest.snbt" />
  <IsometricCamera yaw="200" pitch="20" />
  <BoxAnnotation min="1 0.1 0.1" max="1.25 0.9 0.9" color="#AA83E0">
    <ItemImage id="nodeworks:storage_card" />
  </BoxAnnotation>
  <BlockAnnotation x="4">
    Предметы, помещенные в сундук импорта, будут автоматически добавлены в сеть.
  </BlockAnnotation>
</GameScene>

---

## <a name="with-a-scripting-terminal" />С помощью скриптового терминала

### <a name="pull-all-items" />Вытащить все предметы

Перетащите каждый предмет из шалкерового ящика в сетевое хранилище без фильтрации.

<GameScene zoom="5" interactive={true}>
  <ImportStructure src="../assets/assemblies/moving_items.snbt" />
  <IsometricCamera yaw="200" pitch="20" />
  <BoxAnnotation min="1 0.1 0.1" max="1.25 0.9 0.9" color="#AA83E0">
    <ItemImage id="nodeworks:storage_card" />
  </BoxAnnotation>
  <BoxAnnotation min="4.75 0.1 0.1" max="5 0.9 0.9" color="#83E086">
    Переименован в **"shulkerBox"**<ItemImage id="nodeworks:io_card" />.
  </BoxAnnotation>
</GameScene>

Сценарий:

<LuaCode>
```lua
importer
    :from(shulkerBox)
    :to(network)
    :start()
```
</LuaCode>

> **Примечание.** Или, если вы хотите изменить его, просто поменяйте местами `:from(shulkerBox)` на `:from(network)` и `:to(shulkerBox)`.

При запуске этого скрипта все предметы, попадающие в шалкеровый ящик, будут вставлены в сетевое хранилище (любые карты памяти, которые не были отфильтрованы).

## <a name="filtering:-route-by-item-kind" />Фильтрация: маршрут по типу товара

Та же сеть, но логи идут на одну карту памяти, булыжник на другую, а все остальное на карту по умолчанию.

<GameScene zoom="5" interactive={true}>
  <ImportStructure src="../assets/assemblies/item_filtering.snbt" />
  <IsometricCamera yaw="200" pitch="20" />
  <BoxAnnotation min="2 0.1 1.1" max="2.25 0.9 1.9" color="#AA83E0">
    **Правила**: `#c:cobblestones`
    <ItemImage id="nodeworks:storage_card" />
  </BoxAnnotation>
  <BoxAnnotation min="2 1.1 1.1" max="2.25 1.9 1.9" color="#AA83E0">
    **Правила**: `#c:logs`
    <ItemImage id="nodeworks:storage_card" />
  </BoxAnnotation>
  <BoxAnnotation min="2 2.1 1.1" max="2.25 2.9 1.9" color="#AA83E0">
    <ItemImage id="nodeworks:storage_card" />
  </BoxAnnotation>
  <BoxAnnotation min="5.75 0.1 1.1" max="6 0.9 1.9" color="#83E086">
    Переименован в **"shulkerBox"**<ItemImage id="nodeworks:io_card" />.
  </BoxAnnotation>
</GameScene>

Повторное использование того же кода, что и раньше, но теперь каждая карта памяти имеет разные значения [настройки фильтра](../items-blocks/storage_card.md#filters).
