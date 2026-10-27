---
navigation:
  title: "Сплавы"
  icon: ftbic:iridium_alloy
  parent: materials/index.md
  position: 2
item_ids:
  - ftbic:mixed_metal_blend
  - ftbic:advanced_alloy
  - ftbic:industrial_grade_metal
  - ftbic:steel_ingot
  - ftbmaterials:bronze_ingot
  - ftbmaterials:electrum_ingot
  - ftbmaterials:invar_ingot
  - ftbmaterials:constantan_ingot
  - ftbic:iridium_alloy
  - ftbic:machine_block
  - ftbic:advanced_machine_block
  - ftbic:enderium_ingot
  - ftbic:enderium_nugget
  - ftbic:enderium_plate
  - ftbic:enderium_rod
  - ftbic:enderium_gear
  - ftbic:enderium_wire
  - ftbic:enderium_block
---

# <Color id="gold">Сплавы</Color>

<Column alignItems="center" fullWidth={true}>
  <ItemImage id="iridium_alloy" scale="2" />

  Композитные металлы объединяют несколько слитков в новые материалы высокого уровня. <ItemLink id="alloy_smelter" /> — это рабочая лошадка: через него проходит каждый металлический сплав.
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>
***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Базовые сплавы</Color>
</Column>

Сделано в <ItemLink id="alloy_smelter" /> из необработанных слитков. Каждый из них можно повторно измельчить в пыль и повторно переплавить для восстановления.

<Row>
  <ItemImage id="ftbmaterials:bronze_ingot" />
  ### <Color id="aqua">Бронза</Color>
</Row>

3 меди + 1 олово → 4 бронзы. Сплав среднего уровня, используемый в усовершенствованных сплавах бронзы.

<Recipe id="ftb:unification/ftbic/alloy_smelting/from_ingots/bronze" />

<Row>
  <ItemImage id="ftbmaterials:electrum_ingot" />
  ### <Color id="aqua">Электрум</Color>
</Row>

1 серебро + 1 золото → 2 электрума. Используется в усовершенствованных сплавах электрума и в цепях из проводящих сплавов.

<Recipe id="ftb:unification/ftbic/alloy_smelting/from_ingots/electrum" />

<Row>
  <ItemImage id="ftbmaterials:invar_ingot" />
  ### <Color id="aqua">Инвар</Color>
</Row>

2 железа + 1 никель → 3 инвара. Используется в передовых инварных сплавах и в качестве термостойкого промежуточного продукта.

<Recipe id="ftb:unification/ftbic/alloy_smelting/from_ingots/invar" />

<Row>
  <ItemImage id="ftbmaterials:constantan_ingot" />
  ### <Color id="aqua">Константан</Color>
</Row>

Промежуточный сплав общего назначения. На заводе по производству сплавов нет рецепта константана; слитки получаются в результате плавки константановой пыли или из самородков и блоков.

<RecipesFor id="ftbmaterials:constantan_ingot" fallbackText="No recipes found for constantan." />

<ItemImage id="minecraft:air" scale="0.25"/>
***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Сталь: передовые возможности сплавов</Color>
</Column>

<Row>
  <ItemImage id="steel_ingot" />
  ### <Color id="aqua">Стальной слиток</Color>
</Row>

Самый важный сплав в цепочке: **каждый усовершенствованный рецепт сплава начинается со стали.** Изготовлен в <ItemLink id="alloy_smelter" /> путем легирования <ItemLink id="industrial_grade_metal" /> углеродом:

* 1 металл промышленного качества + 1 уголь → 1 стальной слиток
* 1 металл промышленного качества + 1 уголь → 1 стальной слиток

<RecipesFor id="steel_ingot" />

Прежде чем приступить к работе с <ItemLink id="advanced_machine_block" />, <ItemLink id="reactor_plating" /> или любой другой машиной HV+, сделайте запас стали, поскольку для каждой из них в качестве последующего ингредиента требуется усовершенствованный сплав.

<ItemImage id="minecraft:air" scale="0.25"/>
***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Смешанная смесь металлов и металл промышленного класса</Color>
</Column>

<Row>
  <ItemImage id="mixed_metal_blend" />
  ### <Color id="aqua">Смешанная смесь металлов</Color>
</Row>

Извлекается путем мацерации <ItemLink id="advanced_alloy" /> обратно в смесь, которую можно переплавить в усовершенствованный сплав. Для смешивания не существует фасонных изделий. Рецепты плавки сплавов полностью пропускают этот этап.

<RecipesFor id="mixed_metal_blend" />

<Row>
  <ItemImage id="industrial_grade_metal" />
  ### <Color id="aqua">Промышленный металл</Color>
</Row>

Сжатое железо: три железных слитка, измельченные в один. Питает <ItemLink id="machine_block" /> и является основным ингредиентом стали.

<RecipeFor id="industrial_grade_metal" />

<ItemImage id="minecraft:air" scale="0.25"/>
***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Усовершенствованный сплав</Color>
</Column>

<Row>
  <ItemImage id="advanced_alloy" />
  ### <Color id="aqua">Усовершенствованный сплав</Color>
</Row>

Краеугольный камень каждой машины поздней игры, части брони, компонента реактора и <ItemLink id="iridium_alloy" />. Изготовлено в <ItemLink id="alloy_smelter" /> по одному из трёх рецептов на основе стали:

* 1 сталь + 2 бронзы + 1 алюминий → 1 улучшенный сплав
* 1 сталь + 1 электрум + 1 алюминий → 1 усовершенствованный сплав
* 1 сталь + 2 инвара + 1 алюминий → 1 усовершенствованный сплав

Выберите тот путь, который соответствует вашим доступным сплавам: бронза — самый дешевый вариант, если у вас есть запасная медь/олово, инвар требует больше сырого железа, электрум — наиболее эффективный подсчет слитков, если у вас есть серебро и золото для сжигания.

<RecipesFor id="advanced_alloy" />

<Row>
  <ItemImage id="iridium_alloy" />
  ### <Color id="aqua">Иридиевый сплав</Color>
</Row>

Иридиевые пластины, усиленные <ItemLink id="advanced_alloy" />. Сплав последнего уровня, необходимый для <ItemLink id="iridium_circuit" />, <ItemLink id="iridium_neutron_reflector" /> и <ItemLink id="quantum_helmet" />.

<RecipeFor id="iridium_alloy" />

<ItemImage id="minecraft:air" scale="0.25"/>
***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Эндериум</Color>
</Column>

Пурпурно-синий магический сплав, используемый в цепях <ItemLink id="teleporter" />, <ItemLink id="iv_cable" /> и продвинутых схемах.

<Row>
  <ItemImage id="enderium_ingot" />
  ### <Color id="aqua">Слиток Эндериума</Color>
</Row>

Сделано в <ItemLink id="alloy_smelter" />: 1 свинец + 1 алмаз + 1 жемчужина Эндера → 1 слиток эндериума. Формованного пути нет.

<Recipe id="ftb:unification/ftbic/alloy_smelting/from_ingots/enderium" />

<Row>
  <ItemImage id="enderium_block" />
  ### <Color id="aqua">Блок Эндериума</Color>
</Row>

9 слитков → блок. Массовое хранение.

<RecipeFor id="enderium_block" />

Эндериум бывает всех стандартных форм: <ItemLink id="enderium_nugget" />, <ItemLink id="enderium_plate" />, <ItemLink id="enderium_rod" />, <ItemLink id="enderium_gear" />, <ItemLink id="enderium_wire" />.
