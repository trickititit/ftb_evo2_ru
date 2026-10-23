---
navigation:
  title: "Пример настройки"
  position: 2
  icon: "oritech:nuclear_reactor_controller"
  parent: oritech:nuclear_reactor.md
---
# <Color id="green">Пример настройки</Color>

<Column alignItems="center" fullWidth={true}>
  # <Color id="green">Пример настройки</Color>

  <GameScene zoom="2.5" interactive={true}>
    <ImportStructure src="oritech:assets/oritech_reactor.nbt"/>
    <IsometricCamera yaw="125" pitch="45"/>
  </GameScene>

  При такой настройке каждый слой производит около 158 000 RF/t за **FTB Evolution 2** (другие пакеты модов могут отличаться).
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Материалы</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

Это полный список блоков для одного слоя, показанного выше. Наложите сверху дополнительные одинаковые слои, чтобы увеличить результат.

| Материал | Граф |
| :--- | :---: |
| <ItemImage id="oritech:reactor_wall" scale="0.5"/> Стена реактора | 83 |
| <ItemImage id="oritech:reactor_heat_vent" scale="0.5"/> Теплоотвод реактора | 9 |
| <ItemImage id="oritech:reactor_heat_pipe" scale="0.5"/> Тепловая трубка реактора | 6 |
| <ItemImage id="oritech:reactor_heat_absorber" scale="0.5"/> Теплопоглотитель реактора | 2 |
| <ItemImage id="oritech:reactor_quad_rod" scale="0.5"/> Четырехстержневой реактор | 2 |
| <ItemImage id="oritech:reactor_coolant_absorber_port" scale="0.5"/> Порт абсорбера охлаждающей жидкости реактора | 2 |
| <ItemImage id="oritech:reactor_fuel_port" scale="0.5"/> Топливный порт реактора | 2 |
| <ItemImage id="oritech:reactor_redstone_port" scale="0.5"/> Реактор Редстоун Порт | 1 |
| <ItemImage id="oritech:reactor_neutron_reflector" scale="0.5"/> Реакторный отражатель нейтронов | 1 |
| <ItemImage id="oritech:reactor_energy_port" scale="0.5"/> Энергетический порт реактора | 1 |
| <ItemImage id="oritech:nuclear_reactor_controller" scale="0.5"/> Контроллер ядерного реактора | 1 |

<ItemImage id="minecraft:air" scale="0.25"/>