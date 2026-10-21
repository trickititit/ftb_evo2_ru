---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: "Зарядное устройство"
  icon: charger
  position: 310
categories:
- machines
item_ids:
- ae2:charger
---

# <a name="the-charger" />Зарядное устройство

<BlockImage id="charger" scale="8" />

Зарядное устройство позволяет заряжать поддерживаемые инструменты и <ItemLink id="certus_quartz_crystal" />.

Питание может подаваться сверху или снизу, через AE2 [кабели](cables.md) или через другие кабели питания модов. Он может принимать либо силу AE2 (AE), либо энергию Forge (FE). Элементы можно вставлять и удалять с любой стороны. Удалить можно только результаты, поэтому нет необходимости в фильтрах, предотвращающих удаление кристаллов цертуса вместо заряженного цертуса. Можно вращать с помощью
<ItemLink id="certus_quartz_wrench" /> для облегчения автоматизации.

Может использоваться для создания <ItemLink id="charged_certus_quartz_crystal" /> из <ItemLink id="certus_quartz_crystal" /> и <ItemLink id="meteorite_compass" /> из <ItemLink id="minecraft:compass" />.

Чтобы включить его вручную, поместите <ItemLink id="crank" /> сверху или снизу и щелкайте его правой кнопкой мыши, пока предмет не зарядится.

Он также действует как рабочая станция для [Исследователь Fluix](fluix_researcher.md).

## <a name="simple-automation" />Простая автоматизация

Например, возможность вращения позволяет полуавтоматизировать зарядные устройства следующим образом:

<GameScene zoom="4" background="transparent">
  <ImportStructure src="../assets/assemblies/charger_hopper.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

## <a name="recipe" />Рецепт

<RecipeFor id="charger" />
