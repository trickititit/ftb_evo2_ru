---
navigation:
  parent: example-setups/example-setups-index.md
  title: "Автоматизация процессора"
  icon: logic_processor
---

# <a name="automation-of-processor-production" />Автоматизация производства процессоров

Есть много способов автоматизации [процессоры](../items-blocks-machines/processors.md), и это один из них.

Этот общий макет может быть выполнен с использованием любого типа логистических труб, трубопроводов, воздуховодов или как там его называет мод, при условии, что вы можете его фильтровать.

![Блок-схема процесса](../assets/diagrams/processor_flow_diagram.png)

Здесь подробно описано, как это сделать, используя всего лишь AE2 и [«трубные» подсети](pipe-subnet.md).

Обратите внимание: поскольку здесь используется <ItemLink id="pattern_provider" />, он предназначен для интеграции с вашей настройкой [автокрафтинг](../ae2-mechanics/autocrafting.md). Если вы просто хотите автоматизировать автономный процессор, замените поставщика шаблонов другой бочкой и поместите ингредиенты непосредственно в верхнюю бочку.

Это обратно совместимо с предыдущими версиями AE2, потому что даже если <ItemLink id="inscriber" /> расположены по сторонам, подсети труб все равно вставляются в правильные грани и извлекаются из них.

## <a name="a-lesson-in-pattern-encoding" />Урок кодирования шаблонов

Часто [узор](../items-blocks-machines/patterns.md), который вам нужно закодировать, ** НЕ СОВЕТУЕТ ТО, ЧТО ВЫ ВИДИТЕ В JEI**, или то, что JEI выводится при нажатии кнопки +. В этом случае JEI выведет 2 отдельных шаблона: один для напечатанных компонентов и один для окончательной сборки, а шаблон напечатанных компонентов будет содержать [нажать](../items-blocks-machines/presses.md). Это не то, чего мы хотим, потому что установка этого не делает. Нам нужен 1 шаблон, который вводит необработанные ресурсы и выводит готовый процессор, и поскольку печатная машина уже находится в печатном устройстве, мы не должны помещать его в шаблон.

---

<GameScene zoom="4" interactive={true}>
  <ImportStructure src="../assets/assemblies/processor_automation.snbt" />

  <BoxAnnotation color="#dddddd" min="5 1 0" max="6 2 1" thickness=".05">
        (1) Поставщик шаблонов: в конфигурации по умолчанию, с соответствующими шаблонами обработки.

        <Row>
            ![Логический шаблон](../assets/diagrams/logic_pattern_small.png) ![Схема расчета](../assets/diagrams/calculation_pattern_small.png) ![Инженерный шаблон](../assets/diagrams/engineering_pattern_small.png)
        </Row>
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="4.7 2 0" max="5 3 1" thickness=".05">
        (2) Шина хранения данных №1: в конфигурации по умолчанию.
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="4 1 0" max="4.3 2 1" thickness=".05">
        (3) Экспортная шина №1: фильтруется в кремний. Имеет 2 карты ускорения
        <Row><ItemImage id="silicon" scale="2" /> <ItemImage id="speed_card" scale="2" /></Row>
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="4 4 0" max="4.3 3 1" thickness=".05">
        (4) Экспортный автобус №2: фильтруется в золотой слиток. Имеет 2 карты ускорения
        <Row><ItemImage id="minecraft:gold_ingot" scale="2" /> <ItemImage id="speed_card" scale="2" /></Row>
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="4 5 0" max="4.3 4 1" thickness=".05">
        (5) Экспортная шина №3: фильтруется в кристалл кварца Certus. Имеет 2 карты ускорения
        <Row><ItemImage id="certus_quartz_crystal" scale="2" /> <ItemImage id="speed_card" scale="2" /></Row>
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="4 6 0" max="4.3 5 1" thickness=".05">
        (6) Экспортная шина № 4: отфильтрована до алмаза. Имеет 2 карты ускорения
        <Row><ItemImage id="minecraft:diamond" scale="2" /> <ItemImage id="speed_card" scale="2" /></Row>
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="2.3 3 0" max="2 2 1" thickness=".05">
        (7) Экспортный автобус №5: отфильтрован до красной пыли. Имеет 2 карты ускорения
        <Row><ItemImage id="minecraft:redstone" scale="2" /> <ItemImage id="speed_card" scale="2" /></Row>
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="4 1 0" max="3 2 1" thickness=".05">
        (8) Регистратор №1: в конфигурации по умолчанию. Имеет кремниевый пресс и 4 карты ускорения.
        <Row><ItemImage id="silicon_press" scale="2" /> <ItemImage id="speed_card" scale="2" /></Row>
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="4 3 0" max="3 4 1" thickness=".05">
        (9) Inscriber #2: В конфигурации по умолчанию. Имеет логический пресс и 4 карты ускорения.
        <Row><ItemImage id="logic_processor_press" scale="2" /> <ItemImage id="speed_card" scale="2" /></Row>
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="4 4 0" max="3 5 1" thickness=".05">
        (10) Inscriber #3: В конфигурации по умолчанию. Имеет вычислительный пресс и 4 карты ускорения.
        <Row><ItemImage id="calculation_processor_press" scale="2" /> <ItemImage id="speed_card" scale="2" /></Row>
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="4 5 0" max="3 6 1" thickness=".05">
        (11) Inscriber #4: В конфигурации по умолчанию. Имеет инженерный пресс и 4 карты ускорения.
        <Row><ItemImage id="engineering_processor_press" scale="2" /> <ItemImage id="speed_card" scale="2" /></Row>
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="2 2 0" max="1 3 1" thickness=".05">
        (12) Inscriber #5: В конфигурации по умолчанию. Имеет 4 карты ускорения.
        <ItemImage id="speed_card" scale="2" />
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="2.7 2 0" max="3 1 1" thickness=".05">
        (13) Импортная шина № 1: в конфигурации по умолчанию. Имеет 2 карты ускорения
        <ItemImage id="speed_card" scale="2" />
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="2.7 4 0" max="3 3 1" thickness=".05">
        (14) Импортная шина №2: в конфигурации по умолчанию. Имеет 2 карты ускорения
        <ItemImage id="speed_card" scale="2" />
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="2.7 5 0" max="3 4 1" thickness=".05">
        (15) Импортная шина №3: в конфигурации по умолчанию. Имеет 2 карты ускорения
        <ItemImage id="speed_card" scale="2" />
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="2.7 6 0" max="3 5 1" thickness=".05">
        (16) Импортная шина № 4: в конфигурации по умолчанию. Имеет 2 карты ускорения
        <ItemImage id="speed_card" scale="2" />
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="2 3 0" max="1 3.3 1" thickness=".05">
        (17) Шина хранения № 2: в конфигурации по умолчанию.
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="2 1.7 0" max="1 2 1" thickness=".05">
        (18) Шина хранения данных №3: в конфигурации по умолчанию.
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="1 2 0" max="0.7 3 1" thickness=".05">
        (19) Импортная шина №5: в конфигурации по умолчанию. Имеет 2 карты ускорения
        <ItemImage id="speed_card" scale="2" />
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="5 0.7 0" max="6 1 1" thickness=".05">
        (20) Шина хранения № 4: в конфигурации по умолчанию.
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="3.3 2.7 0.3" max="3.7 3 0.7" thickness=".05">
        Кварцевое волокно питает все три устройства для нанесения изображения, поскольку устройства для нанесения изображения действуют как кабели и, таким образом, передают энергию.
  </BoxAnnotation>

<DiamondAnnotation pos="7 1.5 0.5" color="#00ff00">
        В основную сеть
    </DiamondAnnotation>

  <IsometricCamera yaw="185" pitch="5" />
</GameScene>

## <a name="configurations" />Конфигурации

* <ItemLink id="pattern_provider" /> (1) имеет конфигурацию по умолчанию с соответствующими <ItemLink id="processing_pattern" />. Обратите внимание, что шаблоны передаются непосредственно от необработанных ресурсов к готовому процессору и **НЕ** включают [нажать](../items-blocks-machines/presses.md).

  ![Логический шаблон](../assets/diagrams/logic_pattern.png) ![Схема расчета](../assets/diagrams/calculation_pattern.png) ![Инженерный шаблон](../assets/diagrams/engineering_pattern.png)

* <ItemLink id="storage_bus" />es (2, 17, 18, 20) имеют настройки по умолчанию.
* <ItemLink id="export_bus" />es (3–7) фильтруются по соответствующему ингредиенту. У них 2 <ItemLink id="speed_card" />.
    <Row>
      <ItemImage id="silicon" scale="2" />
      <ItemImage id="minecraft:gold_ingot" scale="2" />
      <ItemImage id="certus_quartz_crystal" scale="2" />
      <ItemImage id="minecraft:diamond" scale="2" />
      <ItemImage id="minecraft:redstone" scale="2" />
    </Row>
* <ItemLink id="import_bus" />es (13–16, 19) имеют конфигурации по умолчанию. У них 2 <ItemLink id="speed_card" />.
* <ItemLink id="inscriber" /> находятся в конфигурациях по умолчанию. У них есть соответствующие [нажать](../items-blocks-machines/presses.md) и 4 <ItemLink id="speed_card" />.
   <Row>
     <ItemImage id="silicon_press" scale="2" />
     <ItemImage id="logic_processor_press" scale="2" />
     <ItemImage id="calculation_processor_press" scale="2" />
     <ItemImage id="engineering_processor_press" scale="2" />
   </Row>

## <a name="how-it-works" />Как это работает

1. <ItemLink id="pattern_provider" /> выталкивает ингредиенты в бочку.
2. Первый [трубная подсеть](pipe-subnet.md) (оранжевый) собирает кремний, пыль красного камня и ингредиент соответствующего процессора.
   (Золотой слиток, Кристалл цертусового кварца или Алмаз) из бочки и помещает их в соответствующее <ItemLink id="inscriber" />.
3. Первые четыре <ItemLink id="inscriber" /> составляют <ItemLink id="printed_silicon" /> и <ItemLink id="printed_logic_processor" />,
   <ItemLink id="printed_calculation_processor" /> или <ItemLink id="printed_engineering_processor" />.
4. Второй и третий [трубная подсеть](pipe-subnet.md) (зелёные) отделяют печатные схемы от первых четырёх <ItemLink id="inscriber" />.
    и поместил их в пятую, финальную сборку <ItemLink id="inscriber" />.
5. Пятый <ItemLink id="inscriber" /> собирает [процессор](../items-blocks-machines/processors.md).
6. Четвертый [трубная подсеть](pipe-subnet.md) (фиолетовый) помещает процессор в поставщика шаблонов, возвращая его в основную сеть.
