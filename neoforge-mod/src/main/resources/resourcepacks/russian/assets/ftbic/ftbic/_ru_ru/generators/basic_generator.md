---
navigation:
  title: "Базовый генератор"
  icon: ftbic:basic_generator
  parent: generators/index.md
  position: 1
item_ids:
  - ftbic:basic_generator
---

# <Color id="gold">Базовый генератор</Color>

<Column alignItems="center" fullWidth={true}>
  <ItemImage id="basic_generator" scale="2" />

  Ваш первый источник энергии — крошечный печной двигатель, который сжигает твердое топливо за **320 FE/t**.
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

<RecipeFor id="basic_generator" />

<ItemImage id="minecraft:air" scale="0.25"/>
***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Статистика</Color>
</Column>

* **Уровень:** LV (выводит 320 FE/t)
* **Внутренний буфер:** 128 000 FE
* **Топливный слот:** один стек

Поместите топливо в единственный слот инвентаря. Генератор продолжает гореть до тех пор, пока не исчерпается запас топлива — он **не** остановится, когда буфер заполнен, поэтому подключите его напрямую к <ItemLink id="lv_battery_box" />, чтобы избежать потерь.

<ItemImage id="minecraft:air" scale="0.25"/>
***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Принятое топливо</Color>
</Column>

Только это топливо горит. Другие виды топлива для печей, такие как ведра с лавой и пылающие стержни, здесь ничего не делают. Слот будет принимать другие предметы, но они просто сидят там и блокируют его, поэтому фильтруйте все, что его подает, автоматически.

* Уголь и древесный уголь: 1600 тиков
* Угольные блоки: 16 000 тиков
* Бревна и доски: 300 тиков.
* Саженцы, палки и сахарный тростник: 100 клещей.
* Кактус: 200 тиков
* <ItemLink id="scrap" />: 400 тиков, сильное топливо, учитывая его дешевизну.

<RecipesFor id="scrap" />
