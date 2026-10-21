---
navigation:
    parent: epp_intro/epp_intro-index.md
    title: "Беспроводной разъем ME"
    icon: extendedae:wireless_connect
categories:
- extended devices
item_ids:
- extendedae:wireless_connect
- extendedae:wireless_tool
---

# <a name="me-wireless-connector" />Беспроводной разъем ME

<Row gap="20">
<BlockImage id="extendedae:wireless_connect" scale="6"></BlockImage>
<ItemImage id="extendedae:wireless_tool" scale="6"></ItemImage>
</Row>

Беспроводной соединитель ME может соединять две сети, как <ItemLink id="ae2:quantum_link" />, но он имеет ограниченный радиус действия и не может соединяться между измерениями. Он поддерживает только соединения «один к одному»; используйте <ItemLink id="extendedae:wireless_hub" /> для соединений «многие ко многим».

## <a name="linking-wireless-connectors" />Соединение беспроводных разъемов

Щелкните два беспроводных разъема, которые вы хотите связать с комплектом беспроводной настройки ME, чтобы соединить их.

Незаметно щелкните, чтобы очистить текущие настройки комплекта беспроводной настройки ME.

Беспроводной разъем ME меняет свою текстуру после успешного установления соединения.

Несвязанные беспроводные разъемы ME

<GameScene zoom="5" background="transparent">
  <ImportStructure src="../structure/wireless_connector_off.snbt"></ImportStructure>
</GameScene>

Связанные беспроводные разъемы ME

<GameScene zoom="5" background="transparent">
  <ImportStructure src="../structure/wireless_connector_on.snbt"></ImportStructure>
</GameScene>

## <a name="color" />Цвет

Беспроводные разъемы могут быть окрашены в цвет кабелей и подключаться только к кабелям и разъемам того же цвета.

Вам нужен <ItemLink id="ae2:color_applicator" />, чтобы раскрасить разъем.

Вы можете настроить беспроводные разъемы следующим образом:

<GameScene zoom="3" background="transparent" interactive={true}>
  <ImportStructure src="../structure/wireless_connector_setup.snbt"></ImportStructure>
</GameScene>

## <a name="power-usage" />Использование энергии

Беспроводные разъемы ME потребляют больше энергии, когда они находятся дальше друг от друга. Кривая стоимости-расстояния не является линейной, поэтому стоимость электроэнергии может стать очень высокой, если они расположены слишком далеко друг от друга.

Вы можете использовать <ItemLink id="ae2:energy_card" /> для экономии энергии. Каждая карта снижает затраты энергии на 10%.

