---
navigation:
  parent: nodeworks-mechanics/index.md
  title: "Сетевое хранилище"
  icon: minecraft:chest
categories:
  - mechanic
---

# <a name="network-storage" />Сетевое хранилище

Сетевое хранилище — это общий пул элементов и жидкостей, который сеть Nodeworks рассматривает как свой собственный. Любой блок с установленным <ItemLink id="storage_card" /> присоединяется к этому пулу. Скрипты читают и пишут в него,
<ItemLink id="inventory_terminal" /> отображает его и взаимодействует с ним, а
Система крафта извлекает из него ингредиенты.

<GameScene zoom="5" interactive={true} paddingLeft="50" paddingRight="60">
  <ImportStructure src="../assets/assemblies/network_storage.snbt" />
  <BoxAnnotation min="2.25 1.1 0.1" max="2 1.9 0.9" color="#AA83E0">
    <ItemImage id="nodeworks:storage_card" /> включает этот сундук в сетевое хранилище.
  </BoxAnnotation>
  <BoxAnnotation min="2.25 0.1 0.1" max="2 0.9 0.9" color="#AA83E0">
    <ItemImage id="nodeworks:storage_card" /> включает этот сундук в сетевое хранилище.
  </BoxAnnotation>
  <BlockAnnotation x="3" y="1" z="0">
    Вы можете использовать <ItemLink id="inventory_terminal" /> для просмотра содержимого сетевого хранилища.
  </BlockAnnotation>
</GameScene>

## <a name="what&#x27;s-in-the-network-storage-pool" />Что находится в пуле сетевых хранилищ

Все внутри каждого блока привязано к <ItemLink id="storage_card" />. Если вы разорвете соединение узла карты памяти, этот блок немедленно выпадет из пула.

### <a name="not-in-the-pool" />Не в бассейне

Блоки <ItemLink id="io_card" /> НЕ являются частью сетевого хранилища.
Скрипты должны явно перемещать элементы в/из блока с картой ввода-вывода. Сеть не увидит его содержимое через `network:find`, а <ItemLink id="inventory_terminal" /> или <ItemLink id="portable_inventory_terminal" /> не будут его перечислять.

## <a name="priority-and-routing" />Приоритет и маршрутизация

Каждый <ItemLink id="storage_card" /> имеет **приоритет**, который управляет порядком заполнения хранилища `network:insert`/`:tryInsert`. Сначала записывает землю на соответствующую карту с самым высоким приоритетом и переливается на карты с более низким приоритетом по мере заполнения каждой из них. Две карты с одинаковым приоритетом заполняются в порядке подключения.

Скрипты могут переопределить порядок приоритетов по умолчанию для определенных элементов, зарегистрировав маршрут с помощью [`network:route`](../lua-api/network.md#route).

Установите приоритет карты непосредственно в ее графическом интерфейсе. См. [Карта памяти](../items-blocks/storage_card.md#configuring-priority) для интерфейса и <ItemLink id="card_programmer" /> для копирования приоритета (и всех остальных настроек карты) по группе карт одновременно.

## <a name="scripting-with-network-storage" />Создание сценариев с использованием сетевого хранилища

На странице [Сетевой API](../lua-api/network.md) представлен полный набор функций чтения/записи, которые сценарии используют для взаимодействия с пулом.

## <a name="viewing-and-managing-through-the-inventory-terminal" />Просмотр и управление через терминал инвентаря

<Row align="center">
  <BlockImage scale="3.3" id="inventory_terminal" />
  <ItemImage scale="4" id="portable_inventory_terminal" />
</Row>

<ItemLink id="inventory_terminal" /> и <ItemLink id="portable_inventory_terminal" /> — это основные способы просмотра и взаимодействия с сетевым хранилищем без написания сценариев. Он показывает весь пул в сетке с возможностью поиска, позволяет извлекать предметы в свой инвентарь, вставлять предметы обратно в хранилище и запрашивать поделки. Все, что он отображает, извлекается из карт памяти, подключенных к этой сети.

Подробности интерфейса см. на странице [Инвентарный терминал](../items-blocks/inventory_terminal.md).
