---
navigation:
  parent: example-setups/example-setups-index.md
  title: "Специализированное локальное хранилище"
  icon: drive
---

# <a name="specialized-local-storage" />Специализированное локальное хранилище

Используя один из [особое поведение интерфейса](../items-blocks-machines/interface.md#special-interactions), [подсеть](../ae2-mechanics/subnetworks.md) может представить содержимое своего хранилища в основную сеть, не имея возможности видеть хранилище основной сети и занимая только 1 [канал](../ae2-mechanics/channels.md).

Это полезно для локального хранилища на некоторой ферме, чтобы предметы не переполнялись в ваше основное хранилище.

<GameScene zoom="6" interactive={true}>
  <ImportStructure src="../assets/assemblies/local_storage.snbt" />

<BoxAnnotation color="#dddddd" min="4 0 0" max="5 2 1">
        (1) Какой-то метод импорта элементов (в данном случае интерфейс)
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="3 0 0" max="4 1 1">
        (2) Диск: содержит несколько ячеек. Ячейки следует фильтровать по выходным данным фермы. В ячейках могут быть карты равного распределения и карты уничтожения переполнения.
        <Row><ItemImage id="item_storage_cell_4k" scale="2" /> <ItemImage id="equal_distribution_card" scale="2" /> <ItemImage id="void_card" scale="2" /></Row>
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="3 1 0" max="4 2 0.3">
        (3) Крафтовый терминал: он может видеть содержимое Диска в подсети, но не содержимое основного сетевого хранилища.
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="2 0 0" max="2.3 1 1">
        (4) Интерфейс №2: в конфигурации по умолчанию.
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="1.7 0 0" max="2 1 1">
        (5) Шина хранилища: имеет приоритет выше, чем у основного хранилища, может быть отфильтрована по всем выходным данным фермы.
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="1 1 0" max="2 2 0.3">
        Крафтовый терминал: он может видеть как содержимое хранилища основной сети *, так и * подсети.
  </BoxAnnotation>

<DiamondAnnotation pos="0 0.5 0.5" color="#00ff00">
        В основную сеть
    </DiamondAnnotation>

  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

## <a name="configurations" />Конфигурации

* Первый <ItemLink id="interface" /> (1) просто принимает предметы с любой вашей фермы и отправляет их в подсеть.
* В <ItemLink id="drive" /> (2) есть немного [клетки](../items-blocks-machines/storage_cells.md). Ячейки должны быть [разделенный](../items-blocks-machines/cell_workbench.md) в зависимости от того, что выдает ферма. Ячейки могут иметь <ItemLink id="equal_distribution_card" /> и <ItemLink id="void_card" />.
* Второй <ItemLink id="interface" /> (4) имеет конфигурацию по умолчанию.
* У <ItemLink id="storage_bus" /> свой [приоритет](../ae2-mechanics/import-export-storage.md#storage-priority) установлен выше, чем у основного хранилища. Его можно отфильтровать по выходным данным фермы.

## <a name="how-it-works" />Как это работает

* <ItemLink id="interface" /> в подсети показывает <ItemLink id="storage_bus" /> в основной сети содержимое
<ItemLink id="drive" />. Это означает, что шина хранения может напрямую извлекать элементы из ячеек накопителя и передавать их в ячейки.
* Шина хранения установлена на высокий уровень [приоритет](../ae2-mechanics/import-export-storage.md#storage-priority), поэтому элементы предпочтительно помещаются обратно в подсеть, а не в основное хранилище.
* Важно отметить, что если ячейки в подсети заполнятся, элементы не перетекут в основную сеть. Если ферма относится к типу
который ломается, если создается резервная копия, вместо этого можно использовать <ItemLink id="void_card" /> для удаления лишних элементов. 
* Если ферма выводит несколько элементов, <ItemLink id="equal_distribution_card" />s могут помешать одному элементу заполнить все ячейки.
и не позволяя хранить другие предметы.
