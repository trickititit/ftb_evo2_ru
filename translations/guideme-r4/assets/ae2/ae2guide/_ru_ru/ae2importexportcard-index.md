---
navigation:
  title: "Дополнение: AE2 Карта импорта-экспорта"
  icon: ae2importexportcard:export_card
  position: 150
categories:
  - tools
item_ids:
- ae2importexportcard:export_card
- ae2importexportcard:import_card
- ae2importexportcard:block_picker_card
---

# <a name="ae2-import-export-card" />AE2 Импортно-экспортная карта

<Row>
  <ItemImage id="ae2importexportcard:export_card" scale="2" />

  <ItemImage id="ae2importexportcard:import_card" scale="2" />

  <ItemImage id="ae2importexportcard:block_picker_card" scale="2" />
</Row>

Карты импорта, экспорта и выбора блоков позволяют импортировать/экспортировать предметы из вашего инвентаря.

## <a name="import-card" />Импортировать карту

<ItemImage id="ae2importexportcard:import_card" scale="2" />

Карта импорта берет предметы из определенных слотов вашего инвентаря и помещает их в вашу систему ME.

![Импортировать карту](diagrams/import_card.png)

При нажатии на слоты ставится галочка. Любой элемент в слоте, отмеченный галочкой, будет импортирован в вашу систему ME. Перетащите предметы из инвентаря наверх, чтобы изменить фильтр.

### <a name="upgrades" />Обновления

Карта импорта поддерживает следующие [обновления](items-blocks-machines/upgrade_cards.md):

*   <ItemLink id="fuzzy_card" /> фильтровать по уровню урона и/или игнорировать предмет NBT
*   <ItemLink id="inverter_card" /> переключает фильтр из белого списка в черный список.

### <a name="recipe" />Рецепт

<RecipeFor id="ae2importexportcard:import_card" />

## <a name="export-card" />Экспортная карта

<ItemImage id="ae2importexportcard:export_card" scale="2" />

Карта экспорта работает точно так же, но переносит предметы из вашей системы ME в ваш инвентарь.

![Экспортная карта](diagrams/export_card.png)

Чтобы указать, какие предметы, перетащите предмет из инвентаря в один из слотов вверху и нажмите на слот в инвентаре, чтобы изменить его на нужное число. Щелчок правой кнопкой мыши возвращает X.

### <a name="upgrades" />Обновления

Экспортная карта поддерживает следующие [обновления](items-blocks-machines/upgrade_cards.md):

*   <ItemLink id="fuzzy_card" /> фильтровать по уровню урона и/или игнорировать предмет NBT
*   <ItemLink id="speed_card" /> повышает скорость передачи с 1 до всей стопки предметов.
*   <ItemLink id="crafting_card" /> автоматически запрашивать и создавать предметы, которые в данный момент недоступны

### <a name="recipe" />Рецепт

<RecipeFor id="ae2importexportcard:export_card" />

## <a name="block-picker-card" />Карта выбора блоков

<ItemImage id="ae2importexportcard:block_picker_card" scale="2" />

Карта выбора блоков позволяет вам извлечь блок, который вы сейчас просматриваете, непосредственно из вашей сети. Просто наведите курсор на блок и нажмите клавишу «Выбрать блок». Если соответствующий блок доступен в вашей сети, он будет извлечен в ваш инвентарь.

![Карта выбора блоков](diagrams/block_picker_card.png)

### <a name="recipe" />Рецепт

<RecipeFor id="ae2importexportcard:block_picker_card" />
