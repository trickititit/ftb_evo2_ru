---
navigation:
  parent: example-setups/example-setups-index.md
  title: "Автоматический рудник"
  icon: minecraft:raw_iron
---

# <a name="automation-of-ore-fortuning" />Автоматизация добычи руды

<ItemLink id="annihilation_plane" /> можно зачаровать любыми чарами для кирки, включая удачу, поэтому очевидный вариант использования — применить удачу к нескольким и заставить <ItemLink id="formation_plane" /> и <ItemLink id="annihilation_plane" /> быстро размещать и разбивать руду.

Обратите внимание: поскольку <ItemLink id="import_bus" />es «раскручивается до максимальной скорости», установка начнется медленно, а затем достигнет полной скорости через несколько секунд.

<GameScene zoom="6" interactive={true}>
  <ImportStructure src="../assets/assemblies/ore_fortuner.snbt" />

  <BoxAnnotation color="#dddddd" min="2.7 0 2" max="3 1 3">
        (1) Импортный автобус: содержит несколько карт ускорения.
        <ItemImage id="speed_card" scale="2" />
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="0 0 2" max="2 1 2.3">
        (2) Плоскости формирования: в конфигурации по умолчанию.
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="0 0 0.7" max="2 1 1">
        (3) Самолеты уничтожения: нет графического интерфейса для настройки, но они зачарованы удачей.
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="2.7 0 0" max="3 1 1">
        (4) Шина хранения: в конфигурации по умолчанию.
  </BoxAnnotation>

<DiamondAnnotation pos="3.5 0.5 2.5" color="#00ff00">
        Ввод
    </DiamondAnnotation>

<DiamondAnnotation pos="3.5 0.5 0.5" color="#00ff00">
        Выход
    </DiamondAnnotation>

<DiamondAnnotation pos="4 0.5 1.5" color="#00ff00">
        В основную сеть
    </DiamondAnnotation>

  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

## <a name="configurations" />Конфигурации

*   В <ItemLink id="import_bus" /> (1) есть несколько <ItemLink id="speed_card" />. Чем больше плоскостей формирования в массиве, тем больше требуется, поскольку они заставляют шину импорта одновременно тянуть больше элементов.
*   <ItemLink id="formation_plane" />s (2) имеют настройки по умолчанию.
*   <ItemLink id="annihilation_plane" />s (3) не имеют графического интерфейса и не могут быть настроены, но зачарованы удачей.
*   <ItemLink id="storage_bus" /> (4) имеет конфигурацию по умолчанию.

## <a name="how-it-works" />Как это работает

1.  <ItemLink id="import_bus" /> в зеленой подсети импортирует блоки из первого ствола в [сетевое хранилище](../ae2-mechanics/import-export-storage.md).
2.  Единственное хранилище в зеленой подсети — это <ItemLink id="formation_plane" />, в котором размещаются блоки.
3.  <ItemLink id="annihilation_plane" /> в оранжевой подсети разбивает блоки, принося им удачу.
4.  <ItemLink id="storage_bus" /> в оранжевой подсети хранит результаты взлома второй бочки.
