---
navigation:
  parent: ae2-mechanics/ae2-mechanics-index.md
  title: "Каналы"
  icon: controller
---

# <a name="channels" />Каналы

Applied Energistics 2 для [МЭ Сети](me-network-connections.md) требуют, чтобы каналы поддерживали [устройства](../ae2-mechanics/devices.md), которые используют сетевое хранилище или другие сетевые службы. Подумайте о таких каналах, как USB-кабели для всех ваших устройств. Компьютер имеет ограниченное количество портов USB и может поддерживать только определенное количество подключенных к нему устройств. Большинство машин, полноблочных устройств и стандартных кабелей могут проходить через не более 8 каналов. Вы можете рассматривать полноблочные устройства и стандартные кабели как пучок из 8 «канальных проводов». Однако [плотные кабели](../items-blocks-machines/cables.md#dense-cable) может поддерживать до 32 каналов. Единственными другими устройствами, способными передавать 32, являются <ItemLink id="me_p2p_tunnel" /> и [Квантовый сетевой мост](../items-blocks-machines/quantum_bridge.md). Каждый раз, когда устройство использует канал, представьте, что вы выдергиваете «провод» USB из жгута, что, очевидно, означает, что «провод» недоступен в дальнейшем.

<GameScene zoom="7" interactive={true}>
  <ImportStructure src="../assets/assemblies/channel_demonstration_1.snbt" />

  <LineAnnotation color="#33ff33" from="1 .4 .7" to="2.4 .4 .7" alwaysOnTop={true}/>
  <LineAnnotation color="#33ff33" from="1 .6 .7" to="2.4 .6 .7" alwaysOnTop={true}/>
  <LineAnnotation color="#33ff33" from="1 .4 .6" to="2.6 .4 .6" alwaysOnTop={true}/>
  <LineAnnotation color="#33ff33" from="1 .6 .6" to="2.6 .6 .6" alwaysOnTop={true}/>
  <LineAnnotation color="#33ff33" from="1 .6 .6" to="2.6 .6 .6" alwaysOnTop={true}/>

  <LineAnnotation color="#33ff33" from="2.4 .6 .7" to="2.4 .6 1.5" alwaysOnTop={true}/>
  <LineAnnotation color="#33ff33" from="2.4 .4 .7" to="2.4 .4 1.5" alwaysOnTop={true}/>
  <LineAnnotation color="#33ff33" from="2.6 .6 .6" to="2.6 .6 1.5" alwaysOnTop={true}/>
  <LineAnnotation color="#33ff33" from="2.6 .4 .6" to="2.6 .4 1.5" alwaysOnTop={true}/>

  <LineAnnotation color="#33ff33" from="2.1 .6 1.5" to="2.4 .6 1.5" alwaysOnTop={true}/>
  <LineAnnotation color="#33ff33" from="2.6 .4 1.5" to="2.9 .4 1.5" alwaysOnTop={true}/>

  <LineAnnotation color="#33ff33" from="2.6 .6 1.5" to="2.6 .9 1.5" alwaysOnTop={true}/>
  <LineAnnotation color="#33ff33" from="2.4 .1 1.5" to="2.4 .4 1.5" alwaysOnTop={true}/>

  <LineAnnotation color="#33ff33" from="1 .6 .4" to="3.5 .6 .4" alwaysOnTop={true}/>
  <LineAnnotation color="#33ff33" from="1 .4 .4" to="3.5 .4 .4" alwaysOnTop={true}/>

  <LineAnnotation color="#33ff33" from="3.5 .6 .4" to="3.5 .9 .4" alwaysOnTop={true}/>
  <LineAnnotation color="#33ff33" from="3.5 .1 .4" to="3.5 .4 .4" alwaysOnTop={true}/>

  <LineAnnotation color="#33ff33" from="1 .6 .3" to="1.5 .6 .3" alwaysOnTop={true}/>
  <LineAnnotation color="#33ff33" from="1 .4 .3" to="1.5 .4 .3" alwaysOnTop={true}/>

  <LineAnnotation color="#33ff33" from="1.5 .6 .3" to="1.5 .9 .3" alwaysOnTop={true}/>
  <LineAnnotation color="#33ff33" from="1.5 .1 .3" to="1.5 .4 .3" alwaysOnTop={true}/>

  <LineAnnotation color="#ff3333" from="3.5 .5 .5" to="5.5 .5 .5" alwaysOnTop={true}>
  Все 8 каналов в кабеле использованы, поэтому накопитель не получает ни одного.  
  </LineAnnotation>

  <LineAnnotation color="#993333" from="1 .5 .5" to="1.25 .5 .5" alwaysOnTop={true}/>
  <LineAnnotation color="#993333" from="1.5 .5 .5" to="1.75 .5 .5" alwaysOnTop={true}/>
  <LineAnnotation color="#993333" from="2 .5 .5" to="2.25 .5 .5" alwaysOnTop={true}/>
  <LineAnnotation color="#993333" from="2.5 .5 .5" to="2.75 .5 .5" alwaysOnTop={true}/>
  <LineAnnotation color="#993333" from="3 .5 .5" to="3.25 .5 .5" alwaysOnTop={true}/>

  <DiamondAnnotation pos="3.6 0.5 0.5" color="#ff0000">
        Все 8 каналов в кабеле использованы, поэтому накопитель не получает ни одного.
    </DiamondAnnotation>

  <IsometricCamera yaw="15" pitch="30" />
</GameScene>

Простой способ увидеть, как каналы используются и маршрутизируются через вашу сеть, — это использовать [умные кабели](../items-blocks-machines/cables.md), который отобразит на них пути и использование каналов.

Каналы будут потреблять 1/128 AE/t на каждый узел, через который они проходят. Это означает, что добавление <ItemLink id="controller" /> для сети с 8 устройствами и более 96 узлами может фактически снизить энергопотребление, поскольку изменится способ распределения каналов.

Следует отметить, что **КАНАЛЫ НЕ ИМЕЮТ НИКАКОГО ОБЩЕГО СВЯЗИ С ЦВЕТОМ КАБЕЛЯ**. Все, что делает цвет кабеля, — это предотвращает соединение кабелей.

## <a name="channel-routing" />Маршрутизация каналов

При использовании <ItemLink id="controller" /> каналы маршрутизируются в 3 этапа. Сначала они выбирают кратчайший путь через соседние машины к ближайшему [обычный кабель](../items-blocks-machines/cables.md) (стеклянному, крытому или умному). Затем они выбирают кратчайший путь через этот обычный кабель до ближайшего [плотный кабель](../items-blocks-machines/cables.md) (плотного или плотного смарта). Затем они выбирают кратчайший путь через этот плотный кабель к <ItemLink id="controller" />. Если кратчайший путь уже исчерпан, некоторые [устройства](devices.md) могут не получить необходимые каналы. Используйте цветные кабели, кабельные анкеры и туннели в своих интересах, чтобы убедиться, что ваши каналы идут по желаемому пути.

Например, в этом случае некоторые накопители не получают каналы, потому что, хотя в кабелях достаточно емкости, каналы стараются идти по кратчайшему пути, перегружая одни кабели и оставляя другие пустыми.

<GameScene zoom="4" interactive={true}>
  <ImportStructure src="../assets/assemblies/channel_path_length_issue.snbt" />

  <LineAnnotation color="#33ff33" from="3 .5 1.4" to="0.4 0.5 1.4" alwaysOnTop={true} thickness="0.05"/>
  <LineAnnotation color="#33ff33" from="0.4 .5 1.4" to="0.4 0.5 3.6" alwaysOnTop={true} thickness="0.05"/>
  <LineAnnotation color="#33ff33" from="0.4 0.5 3.6" to="1.4 0.5 3.6" alwaysOnTop={true} thickness="0.05"/>
  <LineAnnotation color="#33ff33" from="1.4 0.5 3.6" to="1.4 0.5 5" alwaysOnTop={true} thickness="0.05"/>

  <LineAnnotation color="#33ff33" from="3 0.5 3.6" to="1.6 0.5 3.6" alwaysOnTop={true} thickness="0.05"/>
  <LineAnnotation color="#33ff33" from="1.6 0.5 3.6" to="1.6 0.5 5" alwaysOnTop={true} thickness="0.05"/>

  <LineAnnotation color="#ff3333" from="3 .5 1.6" to="0.6 .5 1.6" alwaysOnTop={true} thickness="0.05"/>
  <LineAnnotation color="#ff3333" from="0.6 .5 1.6" to="0.6 .5 3.4" alwaysOnTop={true} thickness="0.05"/>
  <LineAnnotation color="#ff3333" from="0.6 .5 3.4" to="1.4 .5 3.4" alwaysOnTop={true} thickness="0.05"/>

  <LineAnnotation color="#ff3333" from="3 .5 3.4" to="1.6 .5 3.4" alwaysOnTop={true} thickness="0.05"/>

  <BoxAnnotation color="#dddddd" min="1.2 0.2 3.2" max="1.8 0.8 3.8" alwaysOnTop={true} thickness="0.05">
        Сюда пытаются пройти более 8 каналов, поэтому некоторые из них отключены.
  </BoxAnnotation>

  <IsometricCamera yaw="90" pitch="90" />

</GameScene>

Это можно исправить, более тщательно ограничив пути, по которым могут идти каналы. Сети должны быть древовидными (или кустовидными). Петли и неоднозначные пути канала должны быть сведены к минимуму.

<GameScene zoom="4" interactive={true}>
  <ImportStructure src="../assets/assemblies/channel_path_length_issue_fix.snbt" />

  <LineAnnotation color="#33ff33" from="3 .5 1.4" to="0.4 0.5 1.4" alwaysOnTop={true} thickness="0.05"/>
  <LineAnnotation color="#33ff33" from="0.4 .5 1.4" to="0.4 0.5 5.6" alwaysOnTop={true} thickness="0.05"/>
  <LineAnnotation color="#33ff33" from="0.4 0.5 5.6" to="1 0.5 5.6" alwaysOnTop={true} thickness="0.05"/>

  <LineAnnotation color="#33ff33" from="3 0.5 3.6" to="1.6 0.5 3.6" alwaysOnTop={true} thickness="0.05"/>
  <LineAnnotation color="#33ff33" from="1.6 0.5 3.6" to="1.6 0.5 5" alwaysOnTop={true} thickness="0.05"/>

  <IsometricCamera yaw="90" pitch="90" />

</GameScene>

## <a name="ad-hoc-networks" />Специальные сети

Сеть без <ItemLink id="controller" /> считается Ad-Hoc и может поддерживать до 8 каналов с использованием устройств. Как только вы превысите 8 устройств, устройства, использующие каналы сети, отключатся. Вы можете удалить устройства или добавить <ItemLink id="controller" />.

В отличие от сетей, оборудованных контроллером, [умные кабели](../items-blocks-machines/cables.md) в одноранговых сетях будет показывать количество каналов, используемых во всей сети, а не количество каналов, проходящих через этот конкретный кабель.

При использовании одноранговых сетей каждое устройство будет использовать 1 канал во всей сети. Это сильно отличается от того, как <ItemLink id="controller" /> распределяет каналы на основе кратчайшего маршрута.

## <a name="design" />Дизайн

Как упоминалось ранее в разделе [маршрутизация каналов](channels.md#channel-routing), лучше всего проектировать сеть в виде древовидной структуры с плотными кабелями, отходящими от контроллера, обычными кабелями, ответвляющимися от плотной сети, и [устройства](../ae2-mechanics/devices.md) в группах по 8 или меньше обычных кабелей.

Вот пример того, чего не следует делать:

Следуя по путям каналов,

1. Сразу выйдя из контроллера направо, мы упираемся в 8 каналов, потому что привод ведет себя как обычный кабель.
Однако, поскольку мы здесь не используем интеллектуальный кабель, мы не можем видеть, сколько каналов используется. Осталось 8 каналов.
2. Привод занимает канал.
Осталось 7 каналов.
3. К клеммам подходят 2 канала.
Осталось 5 каналов.
4. Продолжая направо, интерфейс занимает другой канал.
Осталось 4 канала.
5. 1 канал идет к провайдеру шаблонов.
Осталось 3 канала.
6. Продолжаем направо, 1 канал идет на импортную шину.
Осталось 2 канала.
7. Кластер поставщиков шаблонов, питающих ассемблеры, получает только два канала, поэтому два поставщика не получают каналов.

В конечном счете, ошибка заключается в том, чтобы ограничить каналы и не продумать, как каналы будут распределяться.

<GameScene zoom="4" interactive={true}>
  <ImportStructure src="../assets/assemblies/bad_network_structure.snbt" />

<LineAnnotation color="#33ff33" from="6.5 .5 1.5" to="6 .5 1.5" alwaysOnTop={true} thickness="0.4">
  32 канала
</LineAnnotation>

<LineAnnotation color="#33ff33" from="6 .5 1.5" to="5.5 .5 1.5" alwaysOnTop={true} thickness="0.2">
  8 каналов
</LineAnnotation>

<LineAnnotation color="#33ff33" from="5.5 .5 1.5" to="5.5 1.5 1.5" alwaysOnTop={true} thickness="0.1">
  2 канала
</LineAnnotation>

<LineAnnotation color="#33ff33" from="5.5 .5 1.5" to="5.5 .3 1.5" alwaysOnTop={true} thickness="0.071">
  1 канал
</LineAnnotation>

<LineAnnotation color="#33ff33" from="5.5 1.5 1.5" to="5.5 2.5 1.5" alwaysOnTop={true} thickness="0.071">
  1 канал
</LineAnnotation>

<LineAnnotation color="#33ff33" from="5.5 2.5 1.5" to="5.5 2.5 1.1" alwaysOnTop={true} thickness="0.071">
  1 канал
</LineAnnotation>

<LineAnnotation color="#33ff33" from="5.5 .5 1.5" to="4.5 .5 1.5" alwaysOnTop={true} thickness="0.158">
  5 каналов
</LineAnnotation>

<LineAnnotation color="#33ff33" from="4.5 .5 1.5" to="4.5 .3 1.5" alwaysOnTop={true} thickness="0.071">
  1 канал
</LineAnnotation>

<LineAnnotation color="#33ff33" from="4.5 .5 1.5" to="4.5 1.5 1.5" alwaysOnTop={true} thickness="0.071">
  1 канал
</LineAnnotation>

<LineAnnotation color="#33ff33" from="4.5 .5 1.5" to="3.5 .5 1.5" alwaysOnTop={true} thickness="0.122">
  3 канала
</LineAnnotation>

<LineAnnotation color="#33ff33" from="3.5 .5 1.5" to="3.5 2.5 1.5" alwaysOnTop={true} thickness="0.071">
  1 канал
</LineAnnotation>

<LineAnnotation color="#33ff33" from="3.5 2.5 1.5" to="3.7 2.5 1.5" alwaysOnTop={true} thickness="0.071">
  1 канал
</LineAnnotation>

<LineAnnotation color="#33ff33" from="3.5 .5 1.5" to="1.5 .5 1.5" alwaysOnTop={true} thickness="0.1">
  2 канала
</LineAnnotation>

<LineAnnotation color="#33ff33" from="1.5 0.5 1.5" to="1.5 0.3 1.5" alwaysOnTop={true} thickness="0.071">
  1 канал
</LineAnnotation>

<LineAnnotation color="#33ff33" from="1.5 0.5 1.5" to="0.5 0.5 1.5" alwaysOnTop={true} thickness="0.071">
  1 канал
</LineAnnotation>

<LineAnnotation color="#33ff33" from="0.5 0.5 1.5" to="0.5 0.5 0.5" alwaysOnTop={true} thickness="0.071">
  1 канал
</LineAnnotation>

<LineAnnotation color="#ff3333" from="0.5 1.5 1.5" to="0.5 1.3 1.5" alwaysOnTop={true} thickness="0.071">
  нет каналов
</LineAnnotation>

<LineAnnotation color="#ff3333" from="1.5 1.5 0.5" to="1.5 1.3 0.5" alwaysOnTop={true} thickness="0.071">
  нет каналов
</LineAnnotation>

  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

---

Вот пример хорошей структуры:

<GameScene zoom="2.5" interactive={true}>
  <ImportStructure src="../assets/assemblies/treelike_network_structure.snbt" />

    <BoxAnnotation color="#dddddd" min="6.9 0 4.9" max="9.1 4 7.1" thickness="0.05">
        Обратите внимание, что поставщики шаблонов находятся в отдельных группах по 8 штук.
    </BoxAnnotation>

    <BoxAnnotation color="#dddddd" min="5 4 4" max="8 5 5" thickness="0.05">
        Два обычных кабеля с множеством каналов, собранные вместе, означают, что вам нужен плотный кабель.
    </BoxAnnotation>

    <BoxAnnotation color="#dddddd" min="5 0 13" max="8 1 14" thickness="0.05">
        Кабели разных цветов используются для предотвращения подключения соседних кабелей.
    </BoxAnnotation>


  <IsometricCamera yaw="315" pitch="30" />
</GameScene>

## <a name="channel-modes" />Режимы канала

AE2 10.0.0 для Minecraft 1.18 представляет новые возможности изменения поведения каналов AE2 в вашем мире. В общем разделе (`channels`) появилась новая опция конфигурации, которая управляет этой опцией, а также новая внутриигровая команда, позволяющая операторам изменять режим и конфигурацию изнутри игры. Команда `/ae2 channelmode <mode>` для его изменения и `/ae2 channelmode` для отображения текущего режима. При изменении режима в игре все существующие сетки перезагрузятся и немедленно начнут использовать новый режим.

Это возрождает и улучшает вариант, который был доступен в Minecraft 1.12, и предоставляет лучшие возможности для игроков, которые просто хотят немного более спокойного игрового процесса, но не хотят, чтобы эта механика была полностью удалена.

В следующей таблице перечислены доступные режимы как в файле конфигурации, так и в команде.

| Настройка | Описание |
| ---------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `default` | Стандартный режим с пропускной способностью каналов кабельных и одноранговых сетей, как описано на этом сайте |
| `x2` | Все каналы увеличены вдвое (16 для обычного кабеля, 64 для плотного кабеля, одноранговые сети поддерживают 16 каналов) |
| `x3` | Все каналы увеличены втрое (24 для обычного кабеля, 92 для плотного кабеля, одноранговые сети поддерживают 24 канала) |
| `x4` | Емкость всех каналов увеличена в четыре раза (32 для обычного кабеля, 128 для плотного кабеля, одноранговые сети поддерживают 32 канала) |
| `infinite` | Все ограничения канала сняты. Контроллеры по-прежнему *значительно* снижают энергопотребление сетей. Интеллектуальные кабели переключаются только между полностью выключенным режимом (отсутствуют каналы) и полностью включенным режимом (передача одного или нескольких каналов). |
