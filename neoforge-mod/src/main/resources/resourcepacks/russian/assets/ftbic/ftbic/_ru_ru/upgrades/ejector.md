---
navigation:
  title: "Обновление эжектора"
  icon: ftbic:ejector_upgrade
  parent: upgrades/index.md
  position: 4
item_ids:
  - ftbic:ejector_upgrade
---

# <Color id="gold">Модернизация эжектора</Color>

<Column alignItems="center" fullWidth={true}>
  <ItemImage id="ejector_upgrade" scale="2" />

  Автоматически выталкивает готовые предметы из выходного слота машины в соседний инвентарь через грань, позволяющую выводить предметы.
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

<RecipeFor id="ejector_upgrade" />

<ItemImage id="minecraft:air" scale="0.25"/>
***

* Выберите выходные грани, используя [Боковая конфигурация](../machines/side_configuration.md). Грани элементов, предназначенных только для ввода, и отключенных элементов не извлекаются.
* Хорошо сочетается с <ItemLink id="powered_crafting_table" /> для создания цепей автоматизации без цепей бункеров.
* Одной модернизации эжектора вполне достаточно. Дополнительные копии не ускоряют вывод.
