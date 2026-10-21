---
navigation:
  title: "Энергетические выпрямители"
  icon: ftbic:mv_rectifier
  parent: energy/index.md
  position: 4
item_ids:
  - ftbic:lv_rectifier
  - ftbic:mv_rectifier
  - ftbic:hv_rectifier
  - ftbic:ev_rectifier
  - ftbic:iv_rectifier
---

# <Color id="gold">Выпрямители энергии</Color>

<Column alignItems="center" fullWidth={true}>
  <ItemImage id="hv_rectifier" scale="2" />

  **В этом пакете вам не нужны выпрямители.** Здесь FTBIC работает в режиме FE: каждый генератор FTBIC выдает FE, а каждая машина FTBIC принимает FE со всех сторон, поэтому питание от любого мода поступает напрямую.
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>
***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Как они работают</Color>
</Column>

Выпрямители все еще можно изготовить. Выпрямитель является направленным: его сторона **FE** принимает энергию от соседнего кабеля, генератора или блока хранения, а остальные стороны передают ее с соответствующей скоростью передачи напряжения:

| Выпрямитель | FE ставка |
|-----------|----------|
| ЛВ | 1,024 FE/t |
| МВ | 4,096 FE/t |
| ВВ | 16,384 FE/t |
| EV | 65,536 FE/t |
| IV | 262 144 FE/t |


<ItemImage id="minecraft:air" scale="0.25"/>
***

<Row>
  <ItemImage id="lv_rectifier" />
  ### <Color id="aqua">Выпрямитель энергии низкого напряжения</Color>
</Row>

<RecipeFor id="lv_rectifier" />

<Row>
  <ItemImage id="mv_rectifier" />
  ### <Color id="aqua">Выпрямитель энергии среднего напряжения</Color>
</Row>

<RecipeFor id="mv_rectifier" />

<Row>
  <ItemImage id="hv_rectifier" />
  ### <Color id="aqua">Выпрямитель энергии высокого напряжения</Color>
</Row>

<RecipeFor id="hv_rectifier" />

<Row>
  <ItemImage id="ev_rectifier" />
  ### <Color id="aqua">EV Выпрямитель энергии</Color>
</Row>

<RecipeFor id="ev_rectifier" />

<Row>
  <ItemImage id="iv_rectifier" />
  ### <Color id="aqua">Выпрямитель энергии IV</Color>
</Row>

<RecipeFor id="iv_rectifier" />
