---
navigation:
  parent: example-setups/example-setups-index.md
  title: "Ячеечный дампер или наполнитель"
  icon: io_port
---

# <a name="cell-dumper-or-filler" />Ячеечный дампер или наполнитель

Кто-то может спросить: «Как мне быстро опустошить ячейку в сундук, ящик или рюкзак или, наоборот, заполнить ячейку из того же?»

Ответ — использование <ItemLink id="io_port" /> и некоторого разбиения на подсети, чтобы ограничить, куда можно помещать или извлекать элементы.

<GameScene zoom="6" interactive={true}>
  <ImportStructure src="../assets/assemblies/cell_dumper_filler.snbt" />

<BoxAnnotation color="#dddddd" min="1 1 0" max="2 2 1">
        (1) Порт ввода-вывода: можно установить либо «Передача данных в сеть», либо «Передача данных в ячейку хранения» с помощью кнопки со стрелкой в середине графического пользовательского интерфейса. Имеет 3 карты ускорения.
        <ItemImage id="speed_card" scale="2" />
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="0 0.7 0" max="1 1 1">
        (2) Шина хранения: в конфигурации по умолчанию.
  </BoxAnnotation>

<BoxAnnotation color="#33dd33" min="0 1 0" max="1 2 1">
        Поместите сюда все, что вы хотите заполнить или опустошить.
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="2 0.35 0.35" max="2.3 0.65 0.65">
        Кварцевое волокно: необходимо только в том случае, если источником энергии является другая сеть.
  </BoxAnnotation>

<DiamondAnnotation pos="3 0.5 0.5" color="#00ff00">
        К какому-то источнику энергии, например, другой сети или акцептору энергии.
    </DiamondAnnotation>

  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

## <a name="configurations" />Конфигурации

* Для <ItemLink id="io_port" /> (1) можно установить значение «Передача данных в сеть» или «Передача данных в ячейку хранения» с помощью кнопки со стрелкой в середине графического пользовательского интерфейса. Имеет 3 карты ускорения для максимальной скорости.
* <ItemLink id="storage_bus" /> (2) имеет конфигурацию по умолчанию.

## <a name="how-it-works" />Как это работает

### <a name="in-&quot;transfer-to-network&quot;-mode" />В режиме «Передача в сеть»

1. <ItemLink id="io_port" /> пытается сбросить содержимое вставленного [ячейка хранения](../items-blocks-machines/storage_cells.md).
    в [сетевое хранилище](../ae2-mechanics/import-export-storage.md).
2. Единственное хранилище в подсети — это <ItemLink id="storage_bus" />, в котором хранятся предметы, жидкости и т. д. в любом месте.
    вы ставите перед ним.
* <ItemLink id="energy_cell" /> обеспечивает достаточно большой буфер [энергия](../ae2-mechanics/energy.md), чтобы сеть не исчерпала мощность, необходимую для передачи такого большого количества предметов за игровой такт.

### <a name="in-&quot;transfer-to-storage-cell&quot;-mode" />В режиме «Перенос в ячейку хранения»

1. <ItemLink id="io_port" /> пытается сбросить содержимое [сетевое хранилище](../ae2-mechanics/import-export-storage.md).
   во вставленный [ячейка хранения](../items-blocks-machines/storage_cells.md).
2. Единственное хранилище в подсети — это <ItemLink id="storage_bus" />, которое извлекает предметы, жидкости и т. д. из чего бы то ни было.
   вы ставите перед ним.
* <ItemLink id="energy_cell" /> обеспечивает достаточно большой буфер [энергия](../ae2-mechanics/energy.md), чтобы сеть не исчерпала мощность, необходимую для передачи такого большого количества предметов за игровой такт.
