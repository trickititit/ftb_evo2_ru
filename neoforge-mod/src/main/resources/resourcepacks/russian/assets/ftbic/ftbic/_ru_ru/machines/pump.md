---
navigation:
  title: "Насос"
  icon: ftbic:pump
  parent: machines/index.md
  position: 11
item_ids:
  - ftbic:pump
  - ftbic:exfluid
---

# <Color id="gold">Насос</Color>

<Column alignItems="center" fullWidth={true}>
  <ItemImage id="pump" scale="2" />

  Саморасширяющийся жидкостный майнер. Бросает трубу прямо вниз, сливает всю найденную лужу лавы, воды или модовой жидкости и сохраняет результат во внутреннем резервуаре на 128 ведер.
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

<RecipeFor id="pump" />

<ItemImage id="minecraft:air" scale="0.25"/>
***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Операция</Color>
</Column>

* Поместите поверх блока. Насос протягивает трубу вниз через воздух и сменные блоки до тех пор, пока она не встретит жидкость.
* 40 тиков, чтобы добыть блок с жидкостью, 10 тиков, чтобы переместить трубу на одну ступень вниз.
* По умолчанию слитые жидкости заменяются на <ItemLink id="exfluid" />, чтобы предотвратить эксплойты с бесконечным исходным кодом. Отключите в конфигурации, если вы предпочитаете полые отверстия.
* Машины, подключенные к трубам, или <ItemLink id="fluid_cell" /> в сторону для экспорта жидкости.

**Статистика:** Уровень HV, 320 000 FE буфера, 24 FE/t использования.
