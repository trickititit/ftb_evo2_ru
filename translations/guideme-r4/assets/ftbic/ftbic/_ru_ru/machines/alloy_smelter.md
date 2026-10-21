---
navigation:
  title: "Плавильня сплавов"
  icon: ftbic:alloy_smelter
  parent: machines/index.md
  position: 14
item_ids:
  - ftbic:alloy_smelter
---

# <Color id="gold">Завод по выплавке сплавов</Color>

<Column alignItems="center" fullWidth={true}>
  <ItemImage id="alloy_smelter" scale="2" />

  Трехвходовая легирующая машина. Объединяет слитки в композитные металлы — бронзу, электрум, инвар, константан, сталь, эндерий, незерит, улучшенные сплавы — без изменения формы и пыли.
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

<RecipeFor id="alloy_smelter" />

<ItemImage id="minecraft:air" scale="0.25"/>
***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Слоты и правило уникального ввода</Color>
</Column>

Плавильная печь имеет **три входных слота** и **один выходной слот**. Каждый входной слот вмещает один ингредиент любого размера; счетчики в рецепте сопоставляются со счетчиком стека слота, а не распределяются по слотам.

В слотах применяется **ограничение уникального предмета** — как только тип предмета попадает в один слот, два других отклоняют тот же предмет. Это предотвращает случайное разделение стека по слотам и застревание рецепта, для которого требовался `2 gold`, в одном месте. Поместите 4 золотых слитка в слот 1, а не 2 в слот 1 и 2 в слот 2.

Если входные данные могут соответствовать более чем одному рецепту, плавильня отдает предпочтение рецепту с **наибольшим количеством ингредиентов** — заполните все три слота, и вы всегда будете получать сплав с 3 входами, а не подмножество с 2 входами.

<ItemImage id="minecraft:air" scale="0.25"/>
***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Рецепты сплавов</Color>
</Column>

<Row>
  <ItemImage id="bronze_ingot" />
  ### <Color id="aqua">Бронза</Color>
</Row>

3 меди + 1 олово → 4 бронзовых слитка.

<Row>
  <ItemImage id="electrum_ingot" />
  ### <Color id="aqua">Электрум</Color>
</Row>

1 серебро + 1 золото → 2 слитка электрума.

<Row>
  <ItemImage id="invar_ingot" />
  ### <Color id="aqua">Инвар</Color>
</Row>

2 железа + 1 никель → 3 инваровых слитка.

<Row>
  <ItemImage id="constantan_ingot" />
  ### <Color id="aqua">Константан</Color>
</Row>

1 медь + 1 никель → 2 слитка константана.

<Row>
  <ItemImage id="steel_ingot" />
  ### <Color id="aqua">Сталь</Color>
</Row>

1 <ItemLink id="industrial_grade_metal" /> + 1 уголь **или** 1 уголь → 1 стальной слиток. Сталь — это исходный материал для создания современных сплавов — см. рецепты <ItemLink id="advanced_alloy" /> ниже.

<Row>
  <ItemImage id="minecraft:netherite_ingot" />
  ### <Color id="aqua">Нетерит</Color>
</Row>

2 золота + 2 лома незерита → 1 слиток незерита. Полностью пропускает этап кузнечного дела из ванильного алмаза и незеритового слитка.

<Row>
  <ItemImage id="enderium_ingot" />
  ### <Color id="aqua">Эндериум</Color>
</Row>

3 свинца + 1 алмазная пыль + 2 жемчужины Эндера → 2 слитка эндериума. Единственный способ изготовления слитков эндериума — рецепта фасонного крафта не существует.

<ItemImage id="minecraft:air" scale="0.25"/>
***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Усовершенствованный сплав</Color>
</Column>

Плавильня сплавов производит <ItemLink id="advanced_alloy" /> по трем рецептам на основе стали. **Сталь необходима для каждого пути** — сначала произведите ее, легировав металл промышленного качества углем или древесным углем.

* 1 сталь + 2 бронзы + 1 алюминий → 1 улучшенный сплав
* 1 сталь + 1 электрум + 1 алюминий → 1 усовершенствованный сплав
* 1 сталь + 2 инвара + 1 алюминий → 1 усовершенствованный сплав

<RecipesFor id="advanced_alloy" />

<ItemImage id="minecraft:air" scale="0.25"/>
***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Статистика</Color>
</Column>

* **Уровень:** MV (вход среднего напряжения)
* **Буфер энергии:** 320 000 FE
* **Потребление энергии:** 384 FE/t — в три раза больше <ItemLink id="advanced_powered_furnace" />
* **Цикл по умолчанию:** 200 тактов на рецепт (можно изменить с помощью <ItemLink id="overclocker_upgrade" />)

<ItemImage id="minecraft:air" scale="0.25"/>
