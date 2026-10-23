---
navigation:
  title: "С чего начать"
  position: 10
---

# <a name="getting-started" />С чего начать

## <a name="required-materials" />Необходимые материалы

Сети Nodeworks работают благодаря отражающим свойствам осколков целестина — <ItemLink id="celestine_shard" />.

## <a name="growing-celestine" />Выращивание целестина

Целестин растёт подобно аметисту — <ItemLink id="minecraft:amethyst_cluster" />. Его друзы появляются на блоке цветущего целестина — <ItemLink id="budding_celestine" />.

## <a name="first-nodeworks-network" />Первая сеть Nodeworks

Начните с простой сети без скриптов: терминал инвентаря позволит просматривать содержимое всех подключённых сундуков. Их количество вы выбираете сами.

<GameScene interactive={true} zoom="5">
  <IsometricCamera yaw="200" pitch="10" />
  <ImportStructure src="assets/assemblies/first_network.snbt" />
</GameScene>

- Для этой сети нужны:
  - 1x <ItemLink id="network_controller" />
  - 1x <ItemLink id="inventory_terminal" />
  - Трубы — <ItemLink id="pipe" /> — для соединения устройств между собой.
  - Узлы — <ItemLink id="node" /> — для подключения внешних блоков, например сундуков.
  - 1x <ItemLink id="storage_card" />. Установите карту на грань узла, обращённую к сундуку.

### <a name="expanding-your-nodeworks-network" />Расширение сети Nodeworks

- [Перемещение предметов](./example-setups/moving-items.md)
- [Автоматическое изготовление](./nodeworks-mechanics/autocrafting.md)
- [Примеры сетей](./example-setups/index.md)
