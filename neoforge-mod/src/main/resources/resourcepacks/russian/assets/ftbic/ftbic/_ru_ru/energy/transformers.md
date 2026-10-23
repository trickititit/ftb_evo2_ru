---
navigation:
  title: "Трансформеры"
  icon: ftbic:mv_transformer
  parent: energy/index.md
  position: 3
item_ids:
  - ftbic:lv_transformer
  - ftbic:mv_transformer
  - ftbic:hv_transformer
  - ftbic:ev_transformer
---

# <Color id="gold">Трансформеры</Color>

<Column alignItems="center" fullWidth={true}>
  <ItemImage id="mv_transformer" scale="2" />

  Трансформаторы понижают напряжение **вниз** с более высокого уровня на более низкий или **вверх**, размещая их задом наперед. Каждый трансформер имеет одну грань более высокого уровня и пять граней нижнего уровня.
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

Без трансформатора подача высокого напряжения в машину низкого напряжения мгновенно сгорает. Трансформаторы разделяют сигнал уровня N на следующий уровень с соответствующей более низкой скоростью передачи.

<ItemImage id="minecraft:air" scale="0.25"/>
***

<Row>
  <ItemImage id="lv_transformer" />
  ### <Color id="aqua">НН Трансформатор</Color>
</Row>

Шаг MV (4096 FE/t) до LV (1024 FE/t).

<RecipeFor id="lv_transformer" />

<Row>
  <ItemImage id="mv_transformer" />
  ### <Color id="aqua">Трансформатор СН</Color>
</Row>

Снижает HV (16 384 FE/t) до MV (4096 FE/t).

<RecipeFor id="mv_transformer" />

<Row>
  <ItemImage id="hv_transformer" />
  ### <Color id="aqua">Высоковольтный трансформатор</Color>
</Row>

Шаг EV (65 536 FE/t) до HV (16 384 FE/t).

<RecipeFor id="hv_transformer" />

<Row>
  <ItemImage id="ev_transformer" />
  ### <Color id="aqua">EV Трансформатор</Color>
</Row>

Шаги IV (262 144 FE/t) до EV (65 536 FE/t).

<RecipeFor id="ev_transformer" />
