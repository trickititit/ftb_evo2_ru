---
navigation:
  title: "Солнечные панели"
  icon: ftbic:hv_solar_panel
  parent: generators/index.md
  position: 3
item_ids:
  - ftbic:lv_solar_panel
  - ftbic:mv_solar_panel
  - ftbic:hv_solar_panel
  - ftbic:ev_solar_panel
---

# <Color id="gold">Солнечные панели</Color>

<Column alignItems="center" fullWidth={true}>
  <ItemImage id="hv_solar_panel" scale="2" />

  Для генерации солнечных батарей необходим **прямой доступ к небу** и **дневной свет**. Они ничего не производят ночью или когда их накрывают.
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>
***

<Row>
  <ItemImage id="lv_solar_panel" />
  ### <Color id="aqua">Солнечная панель низкого напряжения</Color>
</Row>

32 FE/t днем. Буфер: 1920 FE. Солнечная батарея начального уровня.

<RecipeFor id="lv_solar_panel" />

<ItemImage id="minecraft:air" scale="0.25"/>

<Row>
  <ItemImage id="mv_solar_panel" />
  ### <Color id="aqua">Солнечная панель MV</Color>
</Row>

256 FE/t в течение дня. Буфер: 15 360 FE.

<RecipeFor id="mv_solar_panel" />

<ItemImage id="minecraft:air" scale="0.25"/>

<Row>
  <ItemImage id="hv_solar_panel" />
  ### <Color id="aqua">Солнечная панель высокого напряжения</Color>
</Row>

2048 FE/t в течение дня. Буфер: 122 880 FE.

<RecipeFor id="hv_solar_panel" />

<ItemImage id="minecraft:air" scale="0.25"/>

<Row>
  <ItemImage id="ev_solar_panel" />
  ### <Color id="aqua">EV Солнечная панель</Color>
</Row>

16 384 FE/t в течение дня. Буфер: 800 000 FE. Самая большая солнечная мощность в моде.

<RecipeFor id="ev_solar_panel" />
