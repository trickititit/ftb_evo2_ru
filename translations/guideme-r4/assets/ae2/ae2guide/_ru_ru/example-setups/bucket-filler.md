---
navigation:
  parent: example-setups/example-setups-index.md
  title: "Наполнитель ведра"
  icon: minecraft:water_bucket
---

# <a name="bucket-filler" />Наполнитель ведра

Также см. [Ведро пустое](bucket-emptier.md).

Обратите внимание: поскольку здесь используется <ItemLink id="pattern_provider" />, он предназначен для интеграции с вашей настройкой [автокрафтинг](../ae2-mechanics/autocrafting.md).

Иногда жизнь неудобна и вместо самой жидкости нужны ведра с жидкостью. Иногда за вас это может сделать машина (например, Fluid Transposer из Thermal Expansion), но у вас не всегда может быть мод, который сделает это удобно для вас. К счастью, у ванильного Minecraft есть немного менее удобный способ — <ItemLink id="minecraft:dispenser" />.

**Обратите внимание, что зачастую вам не нужно этого делать, поскольку замена жидкости в [Терминал кодирования шаблонов](../items-blocks-machines/terminals.md#pattern-encoding-terminal) позволяет вам использовать саму жидкость в рецепте крафта вместо ведра.**

<GameScene zoom="6" interactive={true}>
  <ImportStructure src="../assets/assemblies/bucket_filler.snbt" />

<BoxAnnotation color="#dddddd" min="2 1 0" max="3 2 1">
        (1) Поставщик шаблонов: настроен для блокировки крафта «С сигналом красного камня» с соответствующими шаблонами обработки.

        <Row>
        ![Образец заливки](../assets/diagrams/water_fill_pattern_small.png) ![Образец заливки](../assets/diagrams/lava_fill_pattern_small.png)
        </Row>
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="3 1.1 0.1" max="3.2 1.9 0.9">
        (2) Интерфейс: в конфигурации по умолчанию.
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="3.1 1.1 0.8" max="3.9 1.9 1">
        (3) Шина хранения № 1: в конфигурации по умолчанию.
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="4.05 1.05 0.8" max="4.95 1.95 1">
        (4) Плоскость формирования: фильтруется в сегменты черного списка с использованием инверторной карты.
        <Row><ItemImage id="minecraft:bucket" scale="2" /><ItemImage id="inverter_card" scale="2" /></Row>
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="3.2 2 1.2" max="3.8 2.2 1.8">
        (5) Шина импорта: фильтруется в сегменты черного списка с использованием инверторной карты.
        <Row><ItemImage id="minecraft:bucket" scale="2" /><ItemImage id="inverter_card" scale="2" /></Row>
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="2.1 2 0.1" max="2.9 2.2 0.9">
        (6) Шина хранения № 2: в конфигурации по умолчанию.
  </BoxAnnotation>

<DiamondAnnotation pos="0 1.5 0.5" color="#00ff00">
        В основную сеть
    </DiamondAnnotation>

  <IsometricCamera yaw="225" pitch="45" />
</GameScene>

## <a name="configurations" />Конфигурации

* <ItemLink id="pattern_provider" /> (1) настроен на блокировку крафта «С сигналом красного камня» с соответствующими <ItemLink id="processing_pattern" />.
  
    ![Схема зарядного устройства](../assets/diagrams/water_fill_pattern.png) ![Схема зарядного устройства](../assets/diagrams/lava_fill_pattern.png)

* <ItemLink id="interface" /> (2) имеет конфигурацию по умолчанию.
* Первый <ItemLink id="storage_bus" /> (3) имеет конфигурацию по умолчанию.
* <ItemLink id="formation_plane" /> (4) фильтруется в сегменты черного списка с использованием инверторной карты.
  <Row><ItemImage id="minecraft:bucket" scale="2" /><ItemImage id="inverter_card" scale="2" /></Row>
* <ItemLink id="import_bus" /> (5) фильтруется в сегменты черного списка с использованием инверторной карты.
  <Row><ItemImage id="minecraft:bucket" scale="2" /><ItemImage id="inverter_card" scale="2" /></Row>
* Второй <ItemLink id="storage_bus" /> (6) имеет конфигурацию по умолчанию.

## <a name="how-it-works" />Как это работает

1. <ItemLink id="pattern_provider" /> помещает ингредиенты в <ItemLink id="interface" />.
   (На самом деле, в качестве оптимизации, он проходит напрямую через шину хранения и плоскость формирования, как если бы они были продолжением лиц провайдера. Элементы на самом деле никогда не попадают в интерфейс.)
2. С помощью механизмов, описанных в [подсети каналов](pipe-subnet.md#providing-to-multiple-places) и <ItemLink id="formation_plane" />,
   ковш оказывается в точке <ItemLink id="minecraft:dispenser" />, а жидкость размещается в плоскости пласта.
3. <ItemLink id="minecraft:comparator" /> обнаруживает ведро в дозаторе и, таким образом, одновременно подает питание на дозатор и блокирует его.
   <ItemLink id="pattern_provider" />.
4. Дозатор зачерпывает жидкость ведром, теперь он имеет в себе наполненное ведро.
5. <ItemLink id="import_bus" /> вытягивает наполненное ведро из дозатора и сохраняет его через
   <ItemLink id="storage_bus" /> в поставщика шаблонов, возвращая его в основную сеть.
6. Компаратор видит, что дозатор пуст, разблокируя провайдера.
