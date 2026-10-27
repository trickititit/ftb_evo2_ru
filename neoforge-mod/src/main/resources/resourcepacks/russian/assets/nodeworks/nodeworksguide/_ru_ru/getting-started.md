---
navigation:
  title: "С чего начать"
  position: 10
---

# <a name="getting-started" />С чего начать

## <a name="required-materials" />Необходимые материалы

Узловые сети основаны на отражающих свойствах <ItemLink id="celestine_shard" />s.

## <a name="growing-celestine" />Выращивание целестина

Растущая Селестина, такая как <ItemLink id="minecraft:amethyst_cluster" />, вырастет из распускающегося блока, <ItemLink id="budding_celestine" />

## <a name="first-nodeworks-network" />Первая сеть Nodeworks

Начните с простой сети без скриптов: терминал инвентаря позволит просматривать содержимое всех подключённых сундуков. Их количество вы выбираете сами.

<GameScene interactive={true} zoom="5">
  <IsometricCamera yaw="200" pitch="10" />
  <ImportStructure src="assets/assemblies/first_network.snbt" />
  <BoxAnnotation min="2.25 0.1 0.1" max="2 0.9 0.9" color="#AA83E0">
    <ItemImage id="nodeworks:storage_card" /> Карта памяти
  </BoxAnnotation>
</GameScene>

- Для этой сети нужны:
  - 1x <ItemLink id="inventory_terminal" />
  - Несколько <ItemLink id="pipe" /> для соединения всех устройств вместе
  - Некоторые <ItemLink id="node" /> для подключения к сети внешних блоков, таких как сундуки.
  - 1x <ItemLink id="storage_card" />, помещенный на лицо узла в сторону сундука.

### <a name="expanding-your-nodeworks-network" />Расширение сети Nodeworks

- [Перемещение предметов](./nodeworks-mechanics/moving-items.md)
- [Автоматическое изготовление](./nodeworks-mechanics/autocrafting.md)
- [Примеры сетей](./example-setups/index.md)
