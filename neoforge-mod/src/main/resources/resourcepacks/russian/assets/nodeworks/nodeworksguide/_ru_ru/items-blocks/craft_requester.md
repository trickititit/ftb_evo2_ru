---
navigation:
  parent: items-blocks/index.md
  icon: craft_requester
  title: "Запрашивающий ремесло"
categories:
  - device
description: "начинает работу по автокрафту по сигналу красного камня"
item_ids:
- nodeworks:craft_requester
---

# <a name="craft-requester" />Запрашивающий ремесло

Запрашивающий ремесло начинает работу по автокрафту, когда получает сигнал красного камня. Настройте его, указав предмет для изготовления и размер партии.

<GameScene interactive={true} zoom="5" paddingLeft="40" paddingRight="40">
  <ImportStructure src="../assets/assemblies/craft_requester_door.snbt" />
  <DiamondAnnotation pos="3.5 0.5 1.5">
    <ItemImage id="minecraft:oak_planks" />
  </DiamondAnnotation>
  <DiamondAnnotation pos="0.5 0.5 0.5">
    <RecipeFor id="minecraft:oak_door" />
  </DiamondAnnotation>
  <BoxAnnotation min="1.2 1 0.3" max="1.8 1.2 0.7" color="#00f2ff">
    Сигнал Redstone активирует запрос на изготовление и создает настроенный предмет.
  </BoxAnnotation>
</GameScene>

## <a name="using-the-craft-requester" />Использование Запросчика Craft

Щелкните правой кнопкой мыши по предмету, чтобы указать, что он создает. Щелкните правой кнопкой мыши еще раз пустой рукой, чтобы открыть графический интерфейс, выберите размер пакета и [выходной канал](./craft_requester.md#channel).

Примените красный камень, и корабли будут стоять в очереди, пока сигнал остается включенным, по одной партии за раз. Отбросьте сигнал и он остановится.

Соедините его с кнопкой для одноразовых поделок или <ItemLink id="storage_meter" /> для автостока. Счетчик меняет свой сигнал самостоятельно по мере падения и восстановления запасов.

Метка состояния в нижней части графического интерфейса сообщает вам, что он делает. Наведите курсор на него, чтобы узнать подробности.

## <a name="channel" />Канал

Запрашивающая сторона использует средство выбора канала в своем графическом интерфейсе, чтобы выбрать, куда должен поместить созданный предмет.

> **Примечание:** Для получения дополнительной информации см. [Выбор канала](../lua-api/channel.md#choosing-a-channel).

## <a name="recipe" />Рецепт

<RecipeFor id="craft_requester" />
