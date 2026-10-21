---
navigation:
  title: "Кабели"
  icon: ftbic:mv_cable
  parent: energy/index.md
  position: 1
item_ids:
  - ftbic:lv_cable
  - ftbic:mv_cable
  - ftbic:hv_cable
  - ftbic:ev_cable
  - ftbic:iv_cable
  - ftbic:burnt_cable
  - ftbic:lv_reinforced_cable
  - ftbic:mv_reinforced_cable
  - ftbic:hv_reinforced_cable
  - ftbic:ev_reinforced_cable
  - ftbic:iv_reinforced_cable
  - ftbic:burnt_reinforced_cable
---

# <Color id="gold">Кабели</Color>

<Column alignItems="center" fullWidth={true}>
  <ItemImage id="hv_cable" scale="2" />

  Кабели соединяют производителей, потребителей и аккумуляторы в единую сеть. Энергия мгновенно передается по подключенной цепи до достижения настроенной **максимальной длины кабеля** (по умолчанию 300).
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>
***

<Row>
  <ItemImage id="lv_cable" />
  ### <Color id="aqua">Кабель низкого напряжения — 1,024 FE/t</Color>
</Row>

Медь с резиновым покрытием. Кабель по умолчанию для основных генераторов, измельчителя и печи с электроприводом.

<RecipeFor id="lv_cable" />

<ItemImage id="minecraft:air" scale="0.25"/>

<Row>
  <ItemImage id="mv_cable" />
  ### <Color id="aqua">Кабель МВ — 4,096 FE/t</Color>
</Row>

Изолированный золотой провод. Используется между трансформаторами среднего напряжения и машинами среднего уровня.

<RecipeFor id="mv_cable" />

<ItemImage id="minecraft:air" scale="0.25"/>

<Row>
  <ItemImage id="hv_cable" />
  ### <Color id="aqua">ВН-кабель — 16,384 FE/t</Color>
</Row>

Изолированный железный провод. Необходим для современных машин и первой ступени ядерного реактора.

<RecipeFor id="hv_cable" />

<ItemImage id="minecraft:air" scale="0.25"/>

<Row>
  <ItemImage id="ev_cable" />
  ### <Color id="aqua">EV Кабель — 65 536 FE/t</Color>
</Row>

Иридиевый провод с изоляцией. Питает телепорт, конструктор антиматерии и зарядные площадки квантового механизма.

<RecipeFor id="ev_cable" />

<ItemImage id="minecraft:air" scale="0.25"/>

<Row>
  <ItemImage id="iv_cable" />
  ### <Color id="aqua">IV Кабель — 262 144 FE/t</Color>
</Row>

Самая высокая скорость передачи данных в моде. Зарезервировано для проектов реакторов с максимальным использованием и финальной цепочки антивещества.

<RecipeFor id="iv_cable" />

<ItemImage id="minecraft:air" scale="0.25"/>

<Row>
  <ItemImage id="burnt_cable" />
  ### <Color id="aqua">Сгоревший кабель</Color>
</Row>

Во что превращается кабель, если на него попадает слишком большое напряжение. Разбейте его, замените на правильный уровень и измельчите сгоревшие остатки до <ItemLink id="scrap" />.

<RecipeFor id="scrap" fallbackText="Drop a Burnt Cable in any crafting grid for scrap." />

<ItemImage id="minecraft:air" scale="0.25"/>
***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Армированные кабели</Color>

  <ItemImage id="lv_reinforced_cable" scale="2" />

  Полный куб с прочностью <ItemLink id="reinforced_stone" />, который по-прежнему передает мощность со своей уровнем уровня. Используйте их, чтобы проложить кабели **через** защитную стену реактора, не оставляя зазора. Каждый уровень имеет цвет соответствующего обычного кабеля.
</Column>

Армированные кабели подключаются к обычным кабелям того же яруса, поэтому для перехода на стену не требуется трансформатор. Если армированный кабель перегружен, он превращается в <ItemLink id="burnt_reinforced_cable" /> — мертвый армированный каменный блок с обгоревшим сердечником — а не в хрупкий сгоревший кабель, сохраняя при этом целостность оболочки.

<Row>
  <ItemImage id="lv_reinforced_cable" />
  ### <Color id="aqua">Усиленный низковольтный кабель — 1,024 FE/t</Color>
</Row>

<RecipeFor id="lv_reinforced_cable" />

<Row>
  <ItemImage id="mv_reinforced_cable" />
  ### <Color id="aqua">Усиленный кабель среднего напряжения — 4,096 FE/t</Color>
</Row>

<RecipeFor id="mv_reinforced_cable" />

<Row>
  <ItemImage id="hv_reinforced_cable" />
  ### <Color id="aqua">Усиленный высоковольтный кабель — 16,384 FE/t</Color>
</Row>

<RecipeFor id="hv_reinforced_cable" />

<Row>
  <ItemImage id="ev_reinforced_cable" />
  ### <Color id="aqua">Усиленный EV Кабель — 65 536 FE/t</Color>
</Row>

<RecipeFor id="ev_reinforced_cable" />

<Row>
  <ItemImage id="iv_reinforced_cable" />
  ### <Color id="aqua">Усиленный кабель IV — 262,144 FE/t</Color>
</Row>

<RecipeFor id="iv_reinforced_cable" />

<Row>
  <ItemImage id="burnt_reinforced_cable" />
  ### <Color id="aqua">Сгоревший армированный кабель</Color>
</Row>

Каким становится армированный трос при перегрузке. Он по-прежнему невосприимчив к иссушению и драконам, поэтому остается на месте в качестве сдерживающего блока, но больше не проводит энергию. Замените его свежим армированным тросом нужного уровня.
