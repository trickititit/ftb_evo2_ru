---
navigation:
  title: "Ядерный"
  icon: ftbic:nuclear_reactor
  position: 40
---

# <Color id="gold">Атомная энергия</Color>

<Column alignItems="center" fullWidth={true}>
  <ItemImage id="nuclear_reactor" scale="2" />

  Самый мощный источник энергии в моде и самая карательная ошибка. Работающий реактор производит **от сотен до тысяч <EnergyUnit /> за такт**. Неудачный вариант **испаряет вашу базу**.
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>
***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Три переменные</Color>
</Column>

Схема реактора — это головоломка из трёх взаимодействующих величин.

* <Color id="red">**Тепло**</Color>: производится топливными стержнями. Накапливается в активной зоне реактора.
* <Color id="aqua">**Охлаждение**</Color>: камеры охлаждающей жидкости и вентиляционные отверстия отводят тепло от соседних топливных стержней и рассеивают его.
* <Color id="gold">**Выход**</Color>: <EnergyUnit /> на такт, умноженный на соседние отражатели нейтронов и двойные/четверные стержни.

Если нагрев достигает 100 %, реактор **взрывается**, увеличиваясь с радиусом основания **10** до предела в **80 блоков**, чего достаточно, чтобы образовать кратер, достигающий коренной породы.

<ItemImage id="minecraft:air" scale="0.25"/>
***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Подразделы</Color>
</Column>

<SubPages icons={true} />
