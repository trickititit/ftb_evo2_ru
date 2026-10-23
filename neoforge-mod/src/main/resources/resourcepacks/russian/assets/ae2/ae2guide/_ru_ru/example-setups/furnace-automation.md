---
navigation:
  parent: example-setups/example-setups-index.md
  title: "Автоматизация печей"
  icon: minecraft:furnace
---

# <a name="furnace-automation" />Автоматизация печей

Обратите внимание: поскольку здесь используется <ItemLink id="pattern_provider" />, он предназначен для интеграции с вашей настройкой [автокрафтинг](../ae2-mechanics/autocrafting.md). Если вы просто хотите автоматизировать автономную печь, используйте бункеры, сундуки и прочее.

Автоматизация <ItemLink id="minecraft:furnace" /> немного сложнее, чем автоматизация более простых машин, таких как [зарядное устройство](../example-setups/charger-automation.md). Печь требует ввода с двух отдельных сторон и вытяжки с третьей. Предмет, подлежащий плавке, необходимо протолкнуть в верхнюю грань, топливо — в боковую грань, а результат — вытащить снизу.

Это можно сделать с помощью <ItemLink id="pattern_provider" /> вверху, <ItemLink id="export_bus" /> сбоку, чтобы постоянно подавать топливо, и <ItemLink id="import_bus" /> внизу, чтобы импортировать результаты в сеть. Однако здесь используется 3 [каналы](../ae2-mechanics/channels.md).

Вот как это можно сделать, используя всего 1 канал:

<GameScene zoom="6" interactive={true}>
  <ImportStructure src="../assets/assemblies/furnace_automation.snbt" />

<BoxAnnotation color="#dddddd" min="1 0 0" max="2 1 1">
        (1) Поставщик шаблонов: Направленный вариант с использованием кварцевого ключа с соответствующими шаблонами обработки.

        ![Железный узор](../assets/diagrams/furnace_pattern_small.png)
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="1 1 0" max="2 1.3 1">
        (2) Интерфейс: в конфигурации по умолчанию.
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="1 1 0" max="1.3 2 1">
        (3) Шина хранения №1: фильтруется в уголь.
        <ItemImage id="minecraft:coal" scale="2" />
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="0 2 0" max="1 2.3 1">
        (4) Шина хранения № 2: Фильтруется в черный список угля с помощью инверторной карты.
        <Row><ItemImage id="minecraft:coal" scale="2" /><ItemImage id="inverter_card" scale="2" /></Row>
  </BoxAnnotation>

<DiamondAnnotation pos="4 0.5 0.5" color="#00ff00">
        В основную сеть
    </DiamondAnnotation>

  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

## <a name="configurations" />Конфигурации

* <ItemLink id="pattern_provider" /> (1) имеет конфигурацию по умолчанию с соответствующими <ItemLink id="processing_pattern" />. Он сделан направленным с помощью <ItemLink id="certus_quartz_wrench" />.

  ![Железный узор](../assets/diagrams/furnace_pattern.png)

* <ItemLink id="interface" /> (2) имеет конфигурацию по умолчанию.
* Первый <ItemLink id="storage_bus" /> (3) фильтруется до угля или любого другого топлива, которое вы хотите использовать.
* Второй <ItemLink id="storage_bus" /> (4) фильтруется, чтобы внести в черный список топливо, которое вы используете, с помощью <ItemLink id="inverter_card" />.

## <a name="how-it-works" />Как это работает

1. <ItemLink id="pattern_provider" /> помещает ингредиенты в <ItemLink id="interface" />.
   (На самом деле, в качестве оптимизации, он проходит напрямую через шины хранения, как если бы они были продолжением лица провайдера. Элементы на самом деле никогда не попадают в интерфейс.)
2. Интерфейс настроен на сохранение ничего, поэтому он пытается поместить ингредиенты в [сетевое хранилище](../ae2-mechanics/import-export-storage.md).
3. Единственное хранилище в зеленой подсети — это <ItemLink id="storage_bus" />es. Автобус, отфильтрованный до угля, помещает уголь в топливный паз печи через боковую поверхность.
    Автобус, отфильтрованный до НЕ угля, помещает предметы для плавки в верхний слот через верхнюю грань.
4. Печь делает свое дело
5. Бункер извлекает результаты из нижней части печи и помещает их в возвратные слоты поставщика, возвращая их в основную сеть.
