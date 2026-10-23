---
navigation:
  title: "Батарея"
  icon: "battery"
  parent: little_big_redstone:logic.md
  position: 13
categories:
  - logic
item_ids:
  - little_big_redstone:battery
---

# Батарея

<FloatingColumn width="100" align="right">
	### Аналоговый
	Выходной сигнал батареи будет равен настроенному уровню сигнала. Сигнал не выйдет за пределы диапазона
	от 0 до 15.
</FloatingColumn>

<Row>
	<Column>
		<Recipe id="little_big_redstone:logic/battery" />
	</Column>

	<Column>
		<GameScene zoom="1.48" padding="3" interactive={true}>
			<ImportStructure src="../assets/structures/battery.snbt" />
			<IsometricCamera yaw="150" pitch="30" />
		</GameScene>
	</Column>
</Row>

Батарея представляет собой очень простой логический компонент. Уровень выходного сигнала всегда будет равен настроенному сигналу.
значение прочности.

<MicrochipScene color="red" includeToolbar={true}>
	<Logic name="battery" x="0" y="0" type="battery" />
	<Logic name="output" x="32" y="0" type="io" data="{config:{input:false,signal_strength:15}}" hide={true} />

	<Wire from="battery" fromPort="0" to="output" toPort="0" />
</MicrochipScene>