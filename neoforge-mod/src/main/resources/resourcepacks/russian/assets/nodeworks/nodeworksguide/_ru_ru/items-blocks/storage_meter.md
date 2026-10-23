---
navigation:
  parent: items-blocks/index.md
  icon: storage_meter
  title: "Счетчик хранения"
categories:
  - device
description: "отслеживает количество предметов/жидкостей, которые он настроен для просмотра"
item_ids:
- nodeworks:storage_meter
---

# <a name="storage-meter" />Счетчик хранения

Счетчик хранилища отслеживает предмет в сети и подает сигнал красного камня, когда его запас падает ниже вашего порога. Он также может начать работу по автокрафту, чтобы пополнить запасы.

<GameScene interactive={true} zoom="5" paddingLeft="40" paddingRight="40">
  <ImportStructure src="../assets/assemblies/stock_meter_door.snbt" />
  <DiamondAnnotation pos="3.5 0.5 1.5">
    <ItemImage id="minecraft:oak_planks" />
  </DiamondAnnotation>
  <DiamondAnnotation pos="0.5 0.5 0.5">
    <RecipeFor id="minecraft:oak_door" />
  </DiamondAnnotation>
  <BlockAnnotation x="1" color="#00f2ff">
    Включен ли Autocraft и автоматически пополняет запас дверей в сети
  </BlockAnnotation>
</GameScene>

## <a name="using-storage-meters" />Использование счетчиков хранения

Щелкните правой кнопкой мыши элемент, который вы хотите просмотреть. Щелкните правой кнопкой мыши еще раз пустой рукой, чтобы открыть графический интерфейс и установить порог и канал.

Он излучает сигнал красного камня всякий раз, когда цена акций падает ниже порогового значения. Если Autocraft включен (по умолчанию), он также начнет работу по пополнению запасов. Выключите Autocraft, если вы предпочитаете водить
<ItemLink id="craft_requester" /> с сигналом.

Метка состояния в нижней части графического интерфейса сообщает вам, что он делает. Наведите курсор на него, чтобы узнать подробности.

## <a name="subnet-example" />Пример подсети

<GameScene interactive={true} zoom="4" paddingLeft="40" paddingRight="40">
  <ImportStructure src="../assets/assemblies/storage_meter_subnet.snbt" />
  <BlockAnnotation y="2" x="2">
    Готовит от <ItemLink id="minecraft:raw_iron" /> до <ItemLink id="minecraft:iron_ingot" />
  </BlockAnnotation>
  <BlockAnnotation x="4" y="2" z="1">
    <ItemImage id="minecraft:raw_iron" />
  </BlockAnnotation>
  <RemoveBlocks id="minecraft:sandstone" />
  <RemoveBlocks id="minecraft:sandstone" />
</GameScene>

В этом примере показана подсеть <Color id="green">подсеть</Color> с измерителем хранилища, наблюдающим за сундуком в поисках железных слитков. Когда он находится ниже, он отправляет сигнал красного камня на <Color id="blue">другую сеть</Color> <ItemLink id="craft_requester" />, что запускает задание автокрафта с использованием <ItemLink id="processing_handler" />.

## <a name="channel" />Канал

Измеритель хранилища использует средство выбора канала в своем графическом интерфейсе, чтобы выбрать, куда должен направить созданный предмет, а также канал просматриваемого сетевого хранилища.

> **Примечание:** Для получения дополнительной информации см. [Выбор канала](../lua-api/channel.md#choosing-a-channel).

## <a name="recipe" />Рецепт

<RecipeFor id="storage_meter" />
