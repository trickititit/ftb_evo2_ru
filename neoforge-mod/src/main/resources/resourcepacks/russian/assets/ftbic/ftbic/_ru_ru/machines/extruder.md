---
navigation:
  title: "Экструдер"
  icon: ftbic:extruder
  parent: machines/index.md
  position: 5
item_ids:
  - ftbic:extruder
---

# <Color id="gold">Экструдер</Color>

<Column alignItems="center" fullWidth={true}>
  <ItemImage id="extruder" scale="2" />

  Формирует из металла **слитки**, **пластины** и **стержни**. Источник объемного трубопровода слитков/плит/стержней, который питает крафт.
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

<RecipeFor id="extruder" />

<ItemImage id="minecraft:air" scale="0.25"/>
***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Категории рецептов</Color>
</Column>

Экструдер имеет три режима вывода рецептов, выбираемых для каждого рецепта:

* **Слиток** — 2 пыли → 1 слиток.
* **Плита** — 1 слиток → 1 пластина.
* **Пруток** — 1 слиток → 2 стержня.

Каждый металл, зарегистрированный в FTB Materials, имеет все три рецепта, если они не отключены в конфигурации. Пластины и стержни, используемые в крафте (шестеренки, проволока, детали машин), почти всегда происходят отсюда.

<ItemImage id="minecraft:air" scale="0.25"/>

**Статистика:** Уровень LV, 38 400 FE буфера, 24 FE/t использования.
