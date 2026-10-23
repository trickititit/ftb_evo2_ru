---
navigation:
  title: "Power Generation Изменения"
  position: 0
  icon: powah:energy_cell_nitro
---


<Column alignItems="center" fullWidth={true}>
  # <Color id="gold">Power Generation Изменения</Color>

  <ItemImage id="powah:energy_cell_nitro" scale="2"/>

  FTB Evolution 2 меняет баланс мощности в каждом технологическом моде, чтобы ни один генератор не делал другие бессмысленными. В этом руководстве указано, что изменилось в пакете. Все, что не указано здесь, работает так, как описывает его собственный мод.
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

> <Color id="yellow">Числа отображаются как значение пакета (значение по умолчанию).</Color>, FE и RF — это одно и то же.

<ItemImage id="minecraft:air" scale="0.25"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Большие правила</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

* **Лава стоит 10 000 FE за ведро** в Лавовом генераторе Oritech, Термальном генераторе Energized Power и Магматоре Powah.
* **Вода не является теплоносителем реактора.** Powah Термогенераторы и реакторы работают на промышленном теплоносителе, получаемом путем добавления сухого льда в источник воды.
* **Есть один пар.** Colossal Reactors производят Oritech пар, а их турбины и паровая машина Oritech сжигают его.
* **Industrial Contraptions работает на FE.** Его генераторы и машины подключаются к кабелям любого другого мода, при этом выпрямитель энергии не требуется.
* **Некоторые ранние генераторы исчезли**, поэтому линия электропередачи каждого мода начинается там, где этого хочет пакет.

<ItemImage id="minecraft:air" scale="0.25"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Поиск генераторов</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

Найдите `$generator` в JEI, чтобы перечислить все блоки в пакете, создающие силу, и `$energystorage`, чтобы найти все, что ее содержит.

<ItemImage id="minecraft:air" scale="0.25"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Страницы</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

<SubPages icons={true} />
