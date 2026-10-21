---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: "P2P-туннели"
  icon: me_p2p_tunnel
  position: 210
categories:
- devices
item_ids:
- ae2:me_p2p_tunnel
- ae2:redstone_p2p_tunnel
- ae2:item_p2p_tunnel
- ae2:fluid_p2p_tunnel
- ae2:fe_p2p_tunnel
- ae2:light_p2p_tunnel
---

# <a name="point-to-point-tunnels" />Туннели «точка-точка»

<GameScene zoom="6" background="transparent">
  <ImportStructure src="../assets/assemblies/p2p_tunnels.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

P2P-туннели — это способ перемещения таких вещей, как предметы, жидкости, сигналы красного камня, мощность, свет и [каналы](../ae2-mechanics/channels.md) по сети без их прямого взаимодействия с сетью. Существует множество вариантов P2P-туннеля, но каждый из них транспортирует только свой конкретный тип данных. По сути, они действуют как порталы, которые напрямую соединяют две грани блока на расстоянии. Они не двунаправленные, имеют определенные входы и выходы.

![Портал](../assets/assemblies/p2p_portal.png)

Например, бункер, обращенный к предмету P2P, будет действовать так, как будто он напрямую соединен с бочкой, и предметы будут течь.

<GameScene zoom="4" background="transparent">
  <ImportStructure src="../assets/assemblies/p2p_hopper_barrel.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

Однако две бочки, стоящие рядом друг с другом, не будут передавать предметы друг другу.

<GameScene zoom="4" background="transparent">
  <ImportStructure src="../assets/assemblies/p2p_barrel_barrel.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

Есть и другие варианты, такие как Redstone P2P.

<GameScene zoom="4" background="transparent">
  <ImportStructure src="../assets/assemblies/p2p_redstone.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

И ME P2P, который перемещает каналы.

<GameScene zoom="4" background="transparent">
  <ImportStructure src="../assets/assemblies/p2p_channels.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

## <a name="types-of-p2p-tunnel-and-attunement" />Типы P2P-туннелей и настройки

<GameScene zoom="6" background="transparent">
  <ImportStructure src="../assets/assemblies/p2p_tunnels.snbt" />
  <IsometricCamera yaw="180" pitch="90" />
</GameScene>

Существует множество типов P2P-туннелей. Только P2P-туннель ME можно создать напрямую, остальные можно создать, щелкнув правой кнопкой мыши по другим P2P-туннелям с определенными предметами:
- ME P2P-туннели выбираются щелчком правой кнопкой мыши с любым [кабель](../items-blocks-machines/cables.md).
- Туннели Redstone P2P выбираются щелчком правой кнопкой мыши по различным компонентам Redstone.
- Предметные P2P-туннели выбираются щелчком правой кнопкой мыши по сундуку или бункеру.
- Жидкостные P2P-туннели выбираются щелчком правой кнопкой мыши по ведру или бутылке.
- Энергетические P2P-туннели выбираются щелчком правой кнопкой мыши практически по любому энергосодержащему предмету.
- Легкие P2P-туннели выбираются щелчком правой кнопкой мыши факелом или светящимся камнем.

Некоторые типы туннелей имеют свои особенности. Например, каналы ME P2P-туннелей не могут проходить через другие ME P2P-туннели, а P2P-туннели Energy косвенно взимают налог в размере 2,5% с FE, проходящего через себя, увеличивая их [энергия](../ae2-mechanics/energy.md).

## <a name="the-most-used-form-of-p2p" />Наиболее используемая форма P2P

Наиболее распространенным вариантом использования P2P-туннелей является использование P2P-туннеля ME для уменьшения плотности транспорта [канал](../ae2-mechanics/channels.md). Вместо пучка плотного кабеля можно использовать один плотный кабель для передачи множества каналов.

В этом примере 8 входов ME P2P принимают 256 каналов (8*32) из <ItemLink id="controller" /> основной сети, а 8 выходов ME P2P выводят их куда-то еще. Обратите внимание, как каждый вход или выход P2P-туннеля занимает 1 канал. Таким образом, мы можем пропустить множество каналов через тонкий кабель. А поскольку наши P2P-туннели находятся на выделенном [подсеть](../ae2-mechanics/subnetworks.md), мы даже не используем для этого каналы основной сети! Также обратите внимание, что хотя P2P-туннели можно разместить непосредственно напротив контроллера, между ними можно поставить [плотный умный кабель](../items-blocks-machines/cables.md#smart-cable), чтобы упростить визуализацию каналов.

<GameScene zoom="4" interactive={true}>
  <ImportStructure src="../assets/assemblies/p2p_compact_channels.snbt" />

  <BoxAnnotation color="#dddddd" min="1.3 1.3 6.3" max="2 2.7 6.7">
        Quartz Fiber распределяет энергию между основной сетью и подсетью p2p.
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="4.1 0 5.7" max="5 2.3 6.4">
        Вы можете либо подключить туннельный вход непосредственно к контроллеру, либо подключить его кабелем.
  </BoxAnnotation>

  <IsometricCamera yaw="225" pitch="30" />
</GameScene>

Другой пример (включая его использование с [Квантовые мосты](quantum_bridge.md)) см. на диаграмме MS Paint, которую я не удосужился подправить:

![P2P и квантовые мосты](../assets/diagrams/p2p_quantum_network.png)

## <a name="nesting" />Вложение

Однако вы не можете использовать это для отправки бесконечных каналов по одному кабелю. Канал для туннеля ME P2P не будет проходить через другой туннель ME P2P, поэтому вы не можете рекурсивно вкладывать их. Посмотрите, как внешний слой туннелей ME P2P на красных кабелях отключен. Обратите внимание, что это относится только к туннелям ME P2P, другие типы туннелей P2P могут проходить через туннель ME P2P, как видно по туннелям Redstone P2P, работающим нормально.

<GameScene zoom="4" background="transparent">
  <ImportStructure src="../assets/assemblies/p2p_nesting.snbt" />
  <IsometricCamera yaw="225" pitch="30" />
</GameScene>

## <a name="linking" />Связывание

<GameScene zoom="6" background="transparent">
  <ImportStructure src="../assets/assemblies/p2p_linking_frequency.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

Концы туннельного соединения P2P можно соединить с помощью <ItemLink id="memory_card" />. Частота будет отображаться в виде цветового массива 2x2 на задней стороне туннеля.
- Shift — щелкните правой кнопкой мыши, чтобы создать новую частоту соединения P2P.
- Щелкните правой кнопкой мыши, чтобы вставить настройки, карты обновления или частоту привязки.

Туннель, по которому вы щелкаете правой кнопкой мыши, будет входом, а туннель, по которому вы щелкаете правой кнопкой мыши, будет выходом. Вы можете иметь несколько выходов, но с помощью туннелей ME P2P каналы, поступающие на вход, будут разделены между выходами, поэтому вы не сможете дублировать каналы.

## <a name="recipe" />Рецепт

<RecipeFor id="me_p2p_tunnel" />
