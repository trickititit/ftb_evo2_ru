---
navigation:
  parent: example-setups/index.md
  icon: minecraft:furnace
  title: "Подсеть автоматической переплавки"
categories:
  - example
---

# <a name="automated-smelting-subnet" />Подсеть автоматической переплавки

Вы можете соединить две сети, используя <ItemLink id="export_chest" /> и <ItemLink id="import_chest" />. В этом примере показана сеть, передающая свои `#c:raw_material` элементы в меньшую сеть с массивом печей. Затем эта меньшая сеть отправляет приготовленные результаты обратно в исходную сеть.

<GameScene zoom="4" interactive={true} paddingLeft="30" paddingRight="30">
  <ImportStructure src="../assets/assemblies/automated_smelting.snbt" />
  <IsometricCamera yaw="190" pitch="10" />
  <BlockAnnotation x="7" y="4">
  ![](../assets/images/automated_smelting_export_raw.png)
  </BlockAnnotation>
  <BlockAnnotation x="7" y="3">
  ![](../assets/images/automated_smelting_import_raw.png)
  </BlockAnnotation>
  <BlockAnnotation x="5" y="3">
  ![](../assets/images/automated_smelting_export_cooked.png)
  </BlockAnnotation>
  <BlockAnnotation x="5" y="4">
  ![](../assets/images/automated_smelting_import_cooked.png)
  </BlockAnnotation>
  <DiamondAnnotation pos="7.5 4 0.5" color="#ff0000">
    При экспорте сундука из сети хранения в его графическом интерфейсе установлены элементы, перемещаемые вниз.

    **Эти два сундука не связаны друг с другом, они являются частью двух отдельных сетей.**
  </DiamondAnnotation>
  <DiamondAnnotation pos="5.5 4 0.5" color="#ff0000">
    Экспортировать сундук из печи. Сеть перемещает свои предметы вверх, что установлено в его графическом интерфейсе.

    **Эти два сундука не связаны друг с другом, они являются частью двух отдельных сетей.**
  </DiamondAnnotation>
  <BoxAnnotation min="5 0.75 0" max="8 1 1" color="#B02E26">
    <ItemImage id="storage_card" /> Карты памяти, установленные на красный канал, извлекаются из экспортного сундука с использованием фильтра `*`, чтобы захватить все
  </BoxAnnotation>
  <BoxAnnotation min="5 2 0" max="8 2.25 1" color="#3C44AA">
    <ItemImage id="storage_card" /> Карты хранения, установленные в синий канал, — это то место, куда импортный сундук отправляет предметы с помощью циклического перебора.
  </BoxAnnotation>
</GameScene>

При желании вы можете использовать <ItemLink id="terminal" />, чтобы добиться того же с большей гибкостью.

<GameScene zoom="4" interactive={true} paddingLeft="30" paddingRight="30">
  <ImportStructure src="../assets/assemblies/automated_smelting_scripting.snbt" />
  <IsometricCamera yaw="190" pitch="10" />
  <BoxAnnotation min="5 1 0" max="8 1.25 1" color="#22C55E">
    <ItemImage id="io_card" /> Карты ввода-вывода
  </BoxAnnotation>
</GameScene>

С помощью следующего скрипта:

<LuaCode>
```lua
local furnaces = network:cards("furnace_*")
-- put raw materials and ores into the furnaces
importer
    :from(network)
    :to(furnaces:face("top"))
    :filter("#c:raw_materials")
    :filter("#c:ores")
    :roundrobin()
    :start()
-- take the finished ingots out of the furnaces
importer
    :from(furnaces:face("bottom"))
    :to(network)
    :start()
```
</LuaCode>
