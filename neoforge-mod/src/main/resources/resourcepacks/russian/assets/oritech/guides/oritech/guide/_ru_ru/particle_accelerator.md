---
navigation:
  title: "Ускоритель частиц"
  position: 3
  icon: "oritech:particle_accelerator"
item_ids:
  - oritech:particle_accelerator
  - oritech:accelerator_ring
  - oritech:accelerator_motor
---
# <Color id="aqua">Ускоритель частиц</Color>

<Column alignItems="center" fullWidth={true}>
  # <Color id="aqua">Ускоритель частиц</Color>

  <GameScene zoom="2.5" interactive={true}>
    <ImportStructure src="oritech:assets/basic_accelerator.nbt"/>
    <IsometricCamera yaw="225" pitch="30"/>
    <DiamondAnnotation pos="0.5 0.5 1.5" color="#ff6d6d">
    Для каждой установки требуется 2 ускорителя частиц. Используется для вставки предметов для ускорения.
    </DiamondAnnotation>
    <DiamondAnnotation pos="5.5 0.5 2.5" color="#ff6d6d">
    Линейный двигатель расположен внутри кольца ускорителя. При включении это ускорит частицу.
    </DiamondAnnotation>
    <DiamondAnnotation pos="2.5 0.5 4.5" color="#ff6d6d">
    Направляющие кольца помогают направлять частицу по кольцу. После размещения их можно щелкнуть правой кнопкой мыши, чтобы изменить угол входа.
    </DiamondAnnotation>
  </GameScene>
  #### *Базовая настройка ускорителя частиц*
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Компоненты</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

<Row>
  <ItemImage id="oritech:particle_accelerator"/>
  ### <Color id="aqua">Ускоритель частиц</Color>
</Row>

<Color id="aqua">Ускоритель частиц</Color> является основным устройством в любой установке ускорителя. Здесь предметы будут вставлены в кольцо ускорения частиц. Для базовой установки требуется как минимум 2 <Color id="aqua">Ускорителя частиц</Color>, оба прикрепленных к <Color id="green">Направляющему кольцу ускорителя частиц</Color>.

<ItemImage id="minecraft:air" scale="0.25"/>

<Row>
  <ItemImage id="oritech:accelerator_ring"/>
  ### <Color id="aqua">Направляющее кольцо акселератора</Color>
</Row>

<Color id="green">Направляющие кольца ускорителя частиц</Color> используются для направления частицы по кругу. После размещения их можно щелкнуть правой кнопкой мыши, чтобы изменить угол входа. Вы захотите использовать их, чтобы направлять частицу по кольцу, но вы можете использовать и больше, в зависимости от ваших настроек.

<ItemImage id="minecraft:air" scale="0.25"/>

<Row>
  <ItemImage id="oritech:accelerator_motor"/>
  ### <Color id="aqua">Линейный двигатель</Color>
</Row>

<Color id="green">Линейный двигатель ускорителя частиц</Color> используется для ускорения частиц вокруг кольца. Они должны быть запитаны. Хотя требуется только 1, большее число ускорит частицу быстрее.
