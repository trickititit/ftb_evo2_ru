---
navigation:
  parent: ae2-mechanics/ae2-mechanics-index.md
  title: "Сетевые подключения"
  icon: fluix_glass_cable
---

# <a name="network-connections" />Сетевые подключения

## <a name="what-does-&quot;network&quot;-mean?" />Что означает «сеть»?

«Сеть» — это группа [устройства](../ae2-mechanics/devices.md), связанных блоками, которые могут передавать [каналы](../ae2-mechanics/channels.md), например [кабели](../items-blocks-machines/cables.md) или полноблочные машины и [устройства](../ae2-mechanics/devices.md). (<ItemLink id="charger" />, <ItemLink id="interface" />, <ItemLink id="drive" /> и т. д.) Технически один кабель на самом деле представляет собой сеть.

## <a name="an-aside-on-device-positioning" />Небольшое замечание о позиционировании устройства

Для [устройства](../ae2-mechanics/devices.md), у которого есть определенная сетевая функция (например, <ItemLink id="interface" />, нажатие и извлечение из [сетевое хранилище](../ae2-mechanics/import-export-storage.md), <ItemLink id="level_emitter" />, чтение содержимого сетевого хранилища, <ItemLink id="drive" />, являющееся сетевым хранилищем и т. д.), физическое положение устройства не имеет значения.

Опять же, **физическое положение устройства не имеет значения**. Важно лишь то, подключено ли устройство к сети (и, конечно же, к какой сети оно подключено).

## <a name="network-connections" />Сетевые подключения

Простой способ определить, что подключено к сети, — использовать <ItemLink id="network_tool" />. Он покажет каждый компонент в сети, поэтому, если вы видите то, чего не должны, или не видите того, что должны, у вас есть проблема.

Например, это 2 отдельные сети.

<GameScene zoom="6" background="transparent">
  <ImportStructure src="../assets/assemblies/2_networks_1.snbt" />

  <BoxAnnotation color="#915dcd" min="0 0 0" max="1 2 2">
        Сеть 1
  </BoxAnnotation>

<BoxAnnotation color="#5CA7CD" min="2 0 0" max="3 2 2">
        Сеть 2
  </BoxAnnotation>

  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

Это также две отдельные сети, поскольку <ItemLink id="quartz_fiber" /> разделяет [энергия](../ae2-mechanics/energy.md), не обеспечивая сетевое соединение.

<GameScene zoom="6" background="transparent">
  <ImportStructure src="../assets/assemblies/2_networks_2.snbt" />

  <BoxAnnotation color="#915dcd" min="0 0 0" max="1 2 2">
        Сеть 1
  </BoxAnnotation>

  <BoxAnnotation color="#5CA7CD" min="1.3 0 0" max="3 2 2">
        Сеть 2
  </BoxAnnotation>

  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

Однако это всего лишь 1 сеть, а не 2 отдельные. [квантовый мост](../items-blocks-machines/quantum_bridge.md) действует как беспроводной [плотный кабель](../items-blocks-machines/cables.md#dense-cable), поэтому оба конца находятся в одной сети.

<GameScene zoom="4" background="transparent">
  <ImportStructure src="../assets/assemblies/actually_1_network.snbt" />

  <BoxAnnotation color="#915dcd" min="0 0 0" max="7 3 3">
        Все 1 сеть
  </BoxAnnotation>

  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

Это также всего лишь 1 сеть, поскольку цвет [кабель](../items-blocks-machines/cables.md) не имеет ничего общего с сетевыми подключениями, кроме кабелей разных цветов, не соединяющихся друг с другом. Все цвета подключаются к кабелям Fluix (или «неокрашенным»).

<GameScene zoom="6" background="transparent">
  <ImportStructure src="../assets/assemblies/actually_1_network_2.snbt" />

  <BoxAnnotation color="#915dcd" min="0 0 0" max="4 2 2">
        Все 1 сеть
  </BoxAnnotation>

  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

## <a name="connections-in-the-context-of-subnets" />Соединения в контексте подсетей

[Подсети](../ae2-mechanics/subnetworks.md) использовать сетевые подключения (и, в частности, **НЕ** подключение), чтобы ограничить то, что [устройства](../ae2-mechanics/devices.md) имеет доступ к каким другим устройствам.

Вся подсеть - это, действительно, отдельная сеть.

Например, возьмем [Автоматический рудник](../example-setups/ore-fortuner.md). Здесь есть 3 отдельные сети, каждая из которых служит определенной цели в настройке.

<GameScene zoom="6" interactive={true}>
  <ImportStructure src="../assets/assemblies/ore_fortuner.snbt" />

  <BoxAnnotation color="#915dcd" min="0 0 2" max="3 1 3">
        Сеть 1: действует как канальная подсеть. Ограничивает доступ к импортному автобусу, чтобы он «хранил» блоки руды через плоскости формирования.
  </BoxAnnotation>

  <BoxAnnotation color="#5CA7CD" min="0 0 0" max="3 1 1">
        Сеть 2: действует как другая подсеть канала. Ограничивает доступ самолетов уничтожения, поэтому они хранят добытые куски руды в бочке, а не в вашей основной сети. Это также означает, что они не используют каналы основной сети.
  </BoxAnnotation>

  <BoxAnnotation color="#82CD5C" min="2 0 1" max="4 1 2">
        Сеть 3: Основная сеть со всем вашим хранилищем и крафтом. Просто вот для подачи питания, действительно, и конкретно *не* подключенного к 2-м подсетям.
  </BoxAnnotation>

  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

## <a name="connections-in-the-context-of-p2p" />Соединения в контексте P2P

Один вариант [P2P-туннель](../items-blocks-machines/p2p_tunnels.md) перемещает [Каналы](channels.md) вместо предметов, жидкостей или сигнала красного камня, и это по какой-то причине сбивает людей с толку. Сеть, к которой подключен туннель, не имеет ничего общего с сетью, которую несет туннель. Они *могут* быть одной и той же сетью, но это не обязательно, и обычно это не так.

<GameScene zoom="6" background="transparent">
  <ImportStructure src="../assets/assemblies/p2p_channels_network_connection.snbt" />

  <BoxAnnotation color="#915dcd" min="0 0 0" max="1.98 2 1">
        Сеть 1: используемая сеть (обычно ваша основная сеть).
  </BoxAnnotation>

  <BoxAnnotation color="#5CA7CD" min="2.02 0 0" max="3.98 1 1">
        Сеть 2: Сеть, в которой работают туннели ME P2P (обычно *не* ваша основная сеть).
  </BoxAnnotation>

  <BoxAnnotation color="#915dcd" min="4.02 0 0" max="6 1 1">
        Сеть 1: используемая сеть (обычно ваша основная сеть).
  </BoxAnnotation>

  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

## <a name="less-intuitive-connections" />Меньше интуитивных связей

В данном случае это всего лишь 1 сеть, поскольку <ItemLink id="pattern_provider" />, будучи полноблочным устройством, действует как кабель, а <ItemLink id="inscriber" /> действует аналогично. Таким образом, сетевое соединение проходит через провайдера и абонента.

<GameScene zoom="6" background="transparent">
  <ImportStructure src="../assets/assemblies/pattern_provider_network_connection_1.snbt" />

  <BoxAnnotation color="#915dcd" min="0 0 0" max="4 2 2">
        Все 1 сеть
  </BoxAnnotation>

  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

Чтобы предотвратить это (полезно для многих настроек автокрафта, включающих [подсети](../ae2-mechanics/subnetworks.md)), вы можете щелкнуть правой кнопкой мыши провайдера с помощью <ItemLink id="certus_quartz_wrench" />, чтобы сделать его направленным, и в этом случае он не будет передавать каналы через одну сторону.

<Row gap="40">
<GameScene zoom="6" background="transparent">
  <ImportStructure src="../assets/assemblies/pattern_provider_network_connection_2.snbt" />

  <BoxAnnotation color="#915dcd" min="0 0 0" max="1.98 2 2">
        Сеть 1
  </BoxAnnotation>

  <BoxAnnotation color="#5CA7CD" min="2.02 0 0" max="4 2 2">
        Сеть 2
  </BoxAnnotation>

  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

<GameScene zoom="6" background="transparent">
  <ImportStructure src="../assets/assemblies/pattern_provider_directional_connection.snbt" />

  <BoxAnnotation color="#ee3333" min="1 .3 .3" max="1.3 .7 .7">
        Наблюдайте, как кабель не подключается
  </BoxAnnotation>

  <IsometricCamera yaw="255" pitch="30" />
</GameScene>
</Row>

Другие части, которые не обеспечивают направленные сетевые соединения, чаще всего [подраздел](../ae2-mechanics/cable-subparts.md) [устройства](../ae2-mechanics/devices.md), такие как <ItemLink id="import_bus" />es, <ItemLink id="storage_bus" />es и
<ItemLink id="cable_interface" />s.

<GameScene zoom="6" background="transparent">
  <ImportStructure src="../assets/assemblies/subpart_no_connection.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>
