---
navigation:
  parent: items-blocks/index.md
  icon: portable_inventory_terminal
  title: "Портативный инвентарный терминал"
categories:
  - tool
description: "портативное окно просмотра в хранилище любой связанной сети"
item_ids:
- nodeworks:portable_inventory_terminal
---

# <a name="portable-inventory-terminal" />Портативный инвентарный терминал

Портативный

Портативная версия <ItemLink id="inventory_terminal" />. Подключается по беспроводной сети через <ItemLink id="link_crystal" />, соединенный с <ItemLink id="broadcast_antenna" /> поверх <ItemLink id="network_controller" />.

<ItemImage scale="6" id="portable_inventory_terminal" />

## <a name="linking-it-to-a-network" />Связывание его с сетью

Портативный терминал инвентаря подключается к сети через три компонента, которые вам необходимо установить в первую очередь:

<GameScene zoom="3" interactive={true} paddingTop="20">
  <ImportStructure src="../assets/assemblies/broadcast_antenna_network_controller.snbt" />
</GameScene>

- <ItemLink id="network_controller" /> в целевой сети.
- <ItemLink id="broadcast_antenna" />, помещенный поверх этого контроллера.
- <ItemLink id="link_crystal" />, подключенный к этой антенне *(не к хранилищу обработки)*

<br clear="all" /><br clear="all" /><br clear="all" /><br clear="all" />
<FloatingImage src="../assets/images/portable_inventory_terminal_link_slot.png" align="left" />

Затем, используя парный Кристалл связи, вы помещаете его в верхний правый слот портативного терминала инвентаризации.

Текстура предмета Portable подсвечивается цветом сети, когда ссылка активна.

<br clear="all" />

## <a name="range" />Диапазон

См. страницу <ItemLink id="broadcast_antenna" /> для получения дополнительной информации о диапазоне вещания.

## <a name="using-the-terminal" />Использование терминала

Все внутри графического интерфейса работает идентично <ItemLink id="inventory_terminal" />.

## <a name="recipe" />Рецепт

<RecipeFor id="portable_inventory_terminal" />
