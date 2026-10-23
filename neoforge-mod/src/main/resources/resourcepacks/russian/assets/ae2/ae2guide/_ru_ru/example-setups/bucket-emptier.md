---
navigation:
  parent: example-setups/example-setups-index.md
  title: "Ведро пустое"
  icon: minecraft:bucket
---

# <a name="bucket-emptier" />Ведро пустое

Также см. [Наполнитель ведра](bucket-filler.md).

Обратите внимание: поскольку здесь используется <ItemLink id="pattern_provider" />, он предназначен для интеграции с вашей настройкой [автокрафтинг](../ae2-mechanics/autocrafting.md).

Иногда жизнь неудобна, и вам нужна сама жидкость, но сделать жидкость можно только в ведре. Иногда за вас это может сделать машина (например, Fluid Transposer из Thermal Expansion), но у вас не всегда может быть мод, который сделает это удобно для вас. К счастью, у ванильного Minecraft есть немного менее удобный способ — <ItemLink id="minecraft:dispenser" />.

<GameScene zoom="6" interactive={true}>
  <ImportStructure src="../assets/assemblies/bucket_emptier.snbt" />

<BoxAnnotation color="#dddddd" min="2 1 0" max="3 2 1">
        (1) Поставщик шаблонов: настроен для блокировки крафта «С сигналом красного камня» и включенным режимом блокировки с соответствующими шаблонами обработки.

        <Row>
        ![Образец заливки](../assets/diagrams/water_empty_pattern_small.png) ![Образец заливки](../assets/diagrams/lava_empty_pattern_small.png)
        </Row>
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="2.1 2 0.1" max="2.9 2.2 0.9">
        (2) Интерфейс: в конфигурации по умолчанию.
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="3.1 2 1.1" max="3.9 2.2 1.9">
        (3) Шина хранения № 1: в конфигурации по умолчанию.
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="4.05 1.05 0.8" max="4.95 1.95 1">
        (4) Плоскость уничтожения: нет графического интерфейса для настройки.
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="3.2 1.2 0.8" max="3.8 1.8 1">
        (5) Шина импорта: фильтруется по сегментам.
        <ItemImage id="minecraft:bucket" scale="2" />
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="3 1.1 0.1" max="3.2 1.9 0.9">
        (6) Шина хранения № 2: в конфигурации по умолчанию.
  </BoxAnnotation>

<DiamondAnnotation pos="0 1.5 0.5" color="#00ff00">
        В основную сеть
    </DiamondAnnotation>

  <IsometricCamera yaw="225" pitch="45" />
</GameScene>

## <a name="configurations" />Конфигурации

* <ItemLink id="pattern_provider" /> (1) установлен для блокировки крафта «С сигналом красного камня» и включенным режимом блокировки с соответствующими <ItemLink id="processing_pattern" />s.
  
    ![Схема зарядного устройства](../assets/diagrams/water_empty_pattern.png) ![Схема зарядного устройства](../assets/diagrams/lava_empty_pattern.png)

* <ItemLink id="interface" /> (2) имеет конфигурацию по умолчанию.
* Первый <ItemLink id="storage_bus" /> (3) имеет конфигурацию по умолчанию.
* <ItemLink id="annihilation_plane" /> (4) не имеет графического интерфейса и не может быть настроен.
* <ItemLink id="import_bus" /> (5) фильтруется по сегментам.
  <ItemImage id="minecraft:bucket" scale="2" />
* Второй <ItemLink id="storage_bus" /> (6) имеет конфигурацию по умолчанию.

## <a name="how-it-works" />Как это работает

1. <ItemLink id="pattern_provider" /> помещает ингредиенты в <ItemLink id="interface" />.
   (На самом деле, в качестве оптимизации, он проходит напрямую через шину хранения, как если бы он был продолжением лица провайдера. На самом деле элементы никогда не попадают в интерфейс.)
2. С помощью механизмов, описанных в [подсети каналов](pipe-subnet.md#providing-to-multiple-places),
   ведро оказывается в <ItemLink id="minecraft:dispenser" />.
3. <ItemLink id="minecraft:comparator" /> обнаруживает ведро в дозаторе и, таким образом, одновременно подает питание на дозатор и блокирует его.
   <ItemLink id="pattern_provider" />.
4. Дозатор сливает жидкость из ведра, теперь в нем есть пустое ведро.
5. <ItemLink id="import_bus" /> вытягивает пустое ведро из дозатора и помещает его в
   <ItemLink id="storage_bus" /> в поставщика шаблонов, возвращая его в основную сеть.
6. Компаратор видит, что дозатор пуст, разблокируя провайдера.
