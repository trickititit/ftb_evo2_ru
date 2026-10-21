---
navigation:
  parent: ae2-mechanics/ae2-mechanics-index.md
  title: "Рост Цертуса"
  icon: quartz_cluster
---

# <a name="certus-growth" />Рост Цертуса

## <a name="basically-just-copy-pasted-from-the-getting-started-page" />По сути, просто скопировано со страницы начала работы.

<GameScene zoom="6" background="transparent">
<ImportStructure src="../assets/assemblies/budding_certus_1.snbt" />
</GameScene>

Из [зарождающиеся блоки цертуса](../items-blocks-machines/budding_certus.md) вырастут бутоны цертусового кварца, похожие на аметист. Если вы сломаете бутон, который еще не закончил расти, из него выпадет один <ItemLink id="certus_quartz_dust" />, неизменный по воле судьбы. Если вы сломаете полностью выросший кластер, из него выпадет четыре
<ItemLink id="certus_quartz_crystal" />s, и удача увеличит это число.

Существует 4 уровня зарождающихся блоков цертуса: Безупречный, Дефектный, Сколы и Поврежденные, и изначально вы найдете их в [метеориты](../ae2-mechanics/meteorites.md).

<GameScene zoom="4" background="transparent">
  <ImportStructure src="../assets/assemblies/budding_blocks.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

Каждый раз, когда бутон переходит на следующую стадию, блок почкования имеет шанс деградировать на один уровень, в конечном итоге превращаясь в простой блок цертусового кварца. Их можно отремонтировать (и создать новые блоки почкования), бросив блок почкования (или блок цертусового кварца) в воду с одним или несколькими <ItemLink id="charged_certus_quartz_crystal" />.

<RecipeFor id="damaged_budding_quartz" />

Безупречные блоки процветающего цертуса не будут разрушаться и будут генерировать цертус бесконечно. Однако их нельзя создать или переместить киркой, даже с помощью Silk Touch. (хотя их *можно* перемещать с помощью [пространственное хранение](../ae2-mechanics/spatial-io.md))

Сами по себе бутоны цертусового кварца растут очень медленно. К счастью, <ItemLink id="growth_accelerator" /> значительно ускоряет этот процесс, если его разместить рядом с блоком почкования. Вам следует построить несколько таких в качестве своего первого приоритета.

<GameScene zoom="4" background="transparent">
  <ImportStructure src="../assets/assemblies/budding_certus_2.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

Сложные взаимодействия означают, что каждая сторона почкующегося блока, которая покрыта, замедляет совокупную скорость роста от почкующегося блока, что в конечном итоге подавляет эффект большего количества ускорителей. Эмпирическое тестирование показывает следующее:

![Предметов/мин для соотношений](../assets/diagrams/certus_farm_speed_chart_1.png)

![общие настройки](../assets/diagrams/certus_farm_speed_chart_2.png)

Если у вас недостаточно кварца, чтобы сделать <ItemLink id="energy_acceptor" /> или <ItemLink id="vibration_chamber" />, вы можете сделать <ItemLink id="crank" /> и прикрепить ее к концу ускорителя.

Автоматический сбор цертуса равен [описано здесь](../example-setups/simple-certus-farm.md).
