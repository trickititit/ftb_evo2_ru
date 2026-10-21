---
navigation:
  parent: example-setups/example-setups-index.md
  title: "Автоматизация бросания в воду"
  icon: fluix_crystal
---

# <a name="automation-of-throwing-in-water-recipes" />Автоматизация рецептов заливки воды

Обратите внимание: поскольку здесь используется <ItemLink id="pattern_provider" />, он предназначен для интеграции с вашей настройкой [автокрафтинг](../ae2-mechanics/autocrafting.md).

Некоторые рецепты требуют, чтобы предметы бросали в воду (хотя аналогичную настройку можно использовать и для бросания предметов в другие места). Это можно автоматизировать с помощью <ItemLink id="formation_plane" />, <ItemLink id="annihilation_plane" /> и некоторой вспомогательной инфраструктуры (по сути, это 2 модифицированных [подсети каналов](pipe-subnet.md)).

Эта настройка предназначена для использования в сочетании с [автоматизация зарядного устройства](charger-automation.md) для получения <ItemLink id="charged_certus_quartz_crystal" />.

<GameScene zoom="6" interactive={true}>
  <ImportStructure src="../assets/assemblies/throw_in_water.snbt" />

<BoxAnnotation color="#dddddd" min="2 0 1" max="3 1 2">
        (1) Поставщик шаблонов: в конфигурации по умолчанию, с соответствующими шаблонами обработки.

        ![Модель потока](../assets/diagrams/fluix_pattern_small.png) ![Неправильный образец почкования](../assets/diagrams/flawed_budding_pattern_small.png)
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="1.7 0 1" max="2 1 2">
        (2) Интерфейс: в конфигурации по умолчанию.
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="1 .7 1" max="2 1 2">
        (3) Плоскость формирования: настроена на отбрасывание входных данных как элементов.
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="1 2 1" max="2 2.3 2">
        (4) Плоскость уничтожения: нет графического интерфейса для настройки.
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="2 1 1" max="3 1.3 2">
        (5) Шина хранения: фильтруется на выходы шаблонов.
        <Row><ItemImage id="fluix_crystal" scale="2" /><BlockImage id="flawless_budding_quartz" scale="2" /></Row>
  </BoxAnnotation>

<DiamondAnnotation pos="3.9 0.5 1.5" color="#00ff00">
        К основной сети и автоматизации зарядного устройства
        <GameScene zoom="3" background="transparent">
          <ImportStructure src="../assets/assemblies/charger_automation.snbt" />
          <IsometricCamera yaw="195" pitch="30" />
        </GameScene>
    </DiamondAnnotation>

  <IsometricCamera yaw="180" pitch="0" />
</GameScene>

## <a name="configurations-and-patterns" />Конфигурации и шаблоны

* <ItemLink id="pattern_provider" /> (1) имеет конфигурацию по умолчанию с соответствующими <ItemLink id="processing_pattern" />s.
  * Для <ItemLink id="fluix_crystal" /> рецепт по умолчанию из JEI/REI работает нормально:

    ![Модель потока](../assets/diagrams/fluix_pattern.png)

  * Для <ItemLink id="flawed_budding_quartz" />, вероятно, лучше всего сделать это непосредственно из <ItemLink id="quartz_block" />, что позволяет избежать проблем, когда входные данные одного рецепта являются выходными данными другого, из-за чего шина хранения не сможет фильтровать:

    ![Неправильный образец почкования](../assets/diagrams/flawed_budding_pattern.png)

* <ItemLink id="interface" /> (2) имеет конфигурацию по умолчанию.
* <ItemLink id="formation_plane" /> (3) настроен на отбрасывание входных данных как элементов.
* <ItemLink id="annihilation_plane" /> (4) не имеет графического интерфейса и не может быть настроен.
* <ItemLink id="storage_bus" /> (5) фильтруется на выходные данные шаблонов.

## <a name="how-it-works" />Как это работает

1.  <ItemLink id="pattern_provider" /> помещает ингредиенты в <ItemLink id="interface" /> на своей стороне, в зеленой подсети.
2.  Интерфейс (по умолчанию настроенный так, чтобы ничего не хранить) пытается поместить свое содержимое в [сетевое хранилище](../ae2-mechanics/import-export-storage.md)
3.  Единственное хранилище в зеленой подсети — это <ItemLink id="formation_plane" />, которое сбрасывает полученные предметы в воду.
4.  <ItemLink id="annihilation_plane" /> в оранжевой подсети пытается подобрать только что выброшенные предметы, но не может, потому что
    <ItemLink id="storage_bus" /> в верхней части поставщика шаблонов (единственное хранилище в оранжевой подсети) фильтруется так, чтобы принимать только результаты возможных поделок
5.  Предметы выполняют свою трансформацию в мире.
6.  Самолет уничтожения теперь может подбирать предметы перед собой, поскольку шине хранения разрешено хранить их.
7.  Шина хранения сохраняет полученные элементы в поставщике шаблонов, возвращая их в сеть.
