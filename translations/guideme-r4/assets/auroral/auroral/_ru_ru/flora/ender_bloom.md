---
item_ids:
  - auroral:ender_bloom
  - auroral:aurora_ender_shard
navigation:
  title: "Эндер Блумс"
  icon: auroral:aurora_ender_shard
  parent: index.md
  position: 33
---

# <Color id="gold">Эндер Блум</Color>

<Column alignItems="center" fullWidth={true}>
  <ItemImage id="ender_bloom" scale="2" />

  Тронутые Краем кузены Авроры Блумс — фиолетовые, беспокойные и возобновляемый источник жемчуга Края.
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>
***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Создание</Color>
</Column>

Эндер Блум никогда не появляется сам по себе. Чтобы сделать один:

1. Найдите или вырастите <ItemLink id="aurora_bloom" /> во время полярного сияния.
2. Щелкните правой кнопкой мыши по цветку, удерживая **Жемчужину Края**.
3. Цветение превращается в Ender Bloom на той же стадии роста. Жемчужина сгорает.

<ItemImage id="minecraft:air" scale="0.25"/>
***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Настойчивость</Color>
</Column>

В отличие от Авроры Блумс, Эндер Блумс **сохраняется навсегда**. Они не вянут с восходом солнца и остаются после окончания полярного сияния.

<ItemImage id="minecraft:air" scale="0.25"/>
***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Требования к росту</Color>
</Column>

Ender Bloom будет прогрессировать через стадии роста только при посадке на:

* <ItemLink id="shimmer_soil" />
* **Камень Края**

На любом другом поддерживающем блоке он сохраняется неопределенно долго, но остается на той стадии, на которой он был размещен. Костная мука также неэффективна, если ее не посадить на один из блоков выше.

<ItemImage id="minecraft:air" scale="0.25"/>
***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Сбор урожая</Color>
</Column>

При разрушении Ender Bloom на **любом** этапе выпадает один предмет Ender Bloom (который всегда восстанавливается на этапе 0).

При разрушении на этапе 3 из него **также** выпадает:

* Один <ItemLink id="aurora_ender_shard" />
* **5% шанс** получить дополнительное Цветение Края.

<ItemImage id="minecraft:air" scale="0.25"/>
***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Осколки Эндера Авроры</Color>
</Column>

<Row>
  <ItemImage id="aurora_ender_shard" />
  ### <Color id="aqua">Возобновляемый жемчуг Края</Color>
</Row>

Два осколка Эндера Авроры превращаются обратно в Жемчужину Края. Зрелая ферма Ender Bloom становится возобновляемым источником Ender Pearl.

<RecipeFor id="ender_pearl_from_shards" />
