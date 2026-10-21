---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: "Молекулярный ассемблер"
  icon: molecular_assembler
  position: 310
categories:
- machines
item_ids:
- ae2:molecular_assembler
---

# <a name="the-molecular-assembler" />Молекулярный ассемблер

<BlockImage id="molecular_assembler" scale="8" />

Молекулярный ассемблер принимает введенные в него элементы и выполняет операцию, определенную соседним <ItemLink id="pattern_provider" /> или вставленным <ItemLink id="crafting_pattern" />, <ItemLink id="smithing_table_pattern" /> или <ItemLink id="stonecutting_pattern" />, а затем отправляет результат в соседние инвентари.

В этом ассемблере есть шаблон крафта, в котором указан рецепт 1 дубовое бревно = 4 дубовые доски. Когда дубовые бревна подаются в верхний бункер, сборщик изготавливает и сбрасывает дубовые доски в нижний бункер.

<GameScene zoom="6" background="transparent">
  <ImportStructure src="../assets/assemblies/standalone_assembler.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

## <a name="the-main-use-of-the-molecular-assembler" />Основное использование молекулярного ассемблера

Однако их основное использование находится рядом с <ItemLink id="pattern_provider" />. В этом случае поставщики шаблонов ведут себя особым образом и отправляют информацию о соответствующем шаблоне вместе с ингредиентами соседним сборщикам. Поскольку ассемблеры автоматически выбрасывают результаты поделок в соседние инвентари (и, таким образом, в слоты возврата поставщика выкроек), ассемблер поставщика выкроек — это все, что необходимо для автоматизации создания выкроек.

<GameScene zoom="4" background="transparent">
  <ImportStructure src="../assets/assemblies/assembler_tower.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

## <a name="upgrades" />Обновления

Молекулярный ассемблер поддерживает следующие [обновления](upgrade_cards.md):

*   <ItemLink id="speed_card" />

## <a name="recipe" />Рецепт

<RecipeFor id="molecular_assembler" />

## <a name="note" />Примечание

Optifine ломает функцию «переместить в соседние инвентари», поэтому большинство настроек крафта с помощью ассемблеров не будут работать.
