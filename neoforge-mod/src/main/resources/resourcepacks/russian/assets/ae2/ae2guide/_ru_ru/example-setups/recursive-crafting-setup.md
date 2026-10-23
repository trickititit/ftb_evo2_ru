---
navigation:
  parent: example-setups/example-setups-index.md
  title: "Рекурсивное создание"
  icon: minecraft:netherite_upgrade_smithing_template
---

# <a name="a-recursive-crafting-setup" />Рекурсивная настройка крафта

Как указано в [автокрафтинг](../ae2-mechanics/autocrafting.md), алгоритм планирования автокрафта не может обрабатывать рецепты, где основной результат является одним из входов. Например, он не может обрабатывать клонирование <ItemLink id="minecraft:netherite_upgrade_smithing_template" />.

Одним из решений является использование способности <ItemLink id="level_emitter" /> притворяться [узор](../items-blocks-machines/patterns.md).

Затем это будет использоваться для включения небольшой установки, которая постоянно выполняет работу. В этом случае мы рассмотрим установку для клонирования <ItemLink id="minecraft:netherite_upgrade_smithing_template" />.

<RecipeFor id="minecraft:netherite_upgrade_smithing_template" />

***

<GameScene zoom="6" interactive={true}>
  <ImportStructure src="../assets/assemblies/recursive_recipe_setup.snbt" />

  <BoxAnnotation color="#dddddd" min="1 0 0" max="2 1 1">
        (1) Интерфейс: настроен для хранения необходимых дополнительных ингредиентов: алмаза и нижней стойки.
        <Row><ItemImage id="minecraft:diamond" scale="2" /> <ItemImage id="minecraft:netherrack" scale="2" /></Row>
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="2.3 1 0.3" max="2.7 1.3 0.7">
        (2) Излучатель уровня: настроен на «шаблон кузнечного дела незерита», установлен на «Испускание красного камня для создания предмета».
        <Row><ItemImage id="minecraft:netherite_upgrade_smithing_template" scale="2" /> <ItemImage id="crafting_card" scale="2" /></Row>
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="2 0 0" max="2.3 1 1">
        (3) Шина импорта № 1: фильтруется по элементам, которые есть в интерфейсе. Имеет карту Редстоуна. Режим Redstone установлен на «Активировать по сигналу».
        <Row>
        <ItemImage id="minecraft:diamond" scale="2" />
        <ItemImage id="minecraft:netherrack" scale="2" />
        <ItemImage id="redstone_card" scale="2" />
        </Row>
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="3 1 1" max="4 1.3 2">
        (4) Шина хранения № 1: установлена с более высоким приоритетом, чем у другой шины хранения. ОЧЕНЬ ВАЖНО.
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="3 0 1" max="4 1 2">
        (5) Молекулярный ассемблер: содержит шаблон для дублирования кузнечного шаблона.

        ![Узор](../assets/diagrams/smithing_template_pattern_small.png)

        В него также есть один кузнечный шаблон, уже вставленный в него вручную, когда вы впервые его создаете.
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="2.7 0 1" max="3 1 2">
        (6) Импортная шина № 2: в конфигурации по умолчанию.
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="1 0 1" max="2 1 1.3">
        (7) Шина хранения № 2: Отфильтровано как «шаблон кузнечного дела незерита». Установите более низкий приоритет, чем у другой шины хранения.
        <ItemImage id="minecraft:netherite_upgrade_smithing_template" scale="2" />
  </BoxAnnotation>

<DiamondAnnotation pos="0 0.5 0.5" color="#00ff00">
        В основную сеть
    </DiamondAnnotation>

  <IsometricCamera yaw="15" pitch="30" />
</GameScene>

## <a name="configurations" />Конфигурации

* <ItemLink id="interface" /> (1) предназначен для хранения необходимых дополнительных ингредиентов: алмаза и подставки.
* <ItemLink id="level_emitter" /> (2) настроен на «шаблон кузнечного дела незерита» и установлен на «Испускать красный камень для создания предмета».
* Первый <ItemLink id="import_bus" /> (3) фильтруется по элементам, которые есть в интерфейсе. У него есть карта Редстоуна. Режим красного камня установлен на «Активировать по сигналу».
* Для первого <ItemLink id="storage_bus" /> (4) установлено *более высокое* [приоритет](../ae2-mechanics/import-export-storage.md#storage-priority), чем для второй шины хранения.
* <ItemLink id="molecular_assembler" /> (5) имеет шаблон для дублирования кузнечного шаблона, и один кузнечный шаблон уже вставлен вручную.

  ![Узор](../assets/diagrams/smithing_template_pattern.png)

* Второй <ItemLink id="import_bus" /> (6) имеет конфигурацию по умолчанию.
* Второй <ItemLink id="storage_bus" /> (7) фильтруется как «шаблон кузнечного дела из незерита». Она имеет *меньшую* [приоритет](../ae2-mechanics/import-export-storage.md#storage-priority), чем первая шина хранения.

## <a name="how-it-works" />Как это работает

1. <ItemLink id="level_emitter" /> притворяется [узор](../items-blocks-machines/patterns.md) из-за вставленной
   <ItemLink id="crafting_card" /> и установлено значение «Испускать красный камень для создания предмета». Таким образом, «шаблон кузнечного дела незерита» появляется в
   [терминалы](../items-blocks-machines/terminals.md) как действительная вещь для [автокрафт](../ae2-mechanics/autocrafting.md).
2. При получении запроса на создание этого предмета от игрока или от самой системы включается излучатель уровня.
3. Первый <ItemLink id="import_bus" /> активируется датчиком уровня и извлекает ингредиенты, хранящиеся в <ItemLink id="interface" />.
4. Единственный <ItemLink id="storage_bus" /> в сети, который может хранить эти ингредиенты, — это тот, который находится на ассемблере.
5. <ItemLink id="molecular_assembler" /> получает ингредиенты (внутри которых уже имеется 1 образец кузнечного дела) и выполняет ремесло, производя 2 образца кузнечного дела.
6. Второй <ItemLink id="import_bus" /> извлекает 1 образец кузнечного дела.
7. Первая шина хранения имеет более высокий приоритет, поэтому кузнечный шаблон возвращается в ассемблер.
8. Второй <ItemLink id="import_bus" /> извлекает 1 образец кузнечного дела.
9. Ассемблер не может получить другой образец кузнечного дела, поэтому второй образец кузнечного дела поступает на шину хранения с более низким приоритетом, вставляя его в интерфейс.
10. <ItemLink id="interface" />, не установленный для шаблонов кузнечного дела, вставляет его в сеть.
