---
navigation:
  parent: example-setups/index.md
  icon: minecraft:furnace
  title: "Подсеть плавильни"
categories:
  - example
---

# <a name="smeltery-subnet" />Подсеть плавильни

Использование специализированных подсетей — хороший способ делегировать ответственность в вашей сети и повторно использовать рецепты.

<GameScene zoom="3" interactive={true} paddingLeft="30" paddingRight="30" paddingTop="20">
  <ImportStructure src="../assets/assemblies/roundrobin_smeltery_subnet.snbt" />
  <IsometricCamera yaw="200" pitch="20" />
  <BoxAnnotation min="0 0.75 0" max="3 1 1" color="#B02E26">
    <ItemImage id="storage_card"/> Красные карты хранения для извлечения готовых изделий из печей.
  </BoxAnnotation>
  <BoxAnnotation min="1 3 1" max="2 3.25 2" color="#3C44AA">
    <ItemImage id="storage_card"/> Синяя карта памяти для всех входных элементов обработчика обработки.
  </BoxAnnotation>
  <BoxAnnotation min="0 2 0" max="3 2.25 1" color="#80C71F">
    <ItemImage id="storage_card"/> Карты хранения лайма, в которые можно импортировать предметы из сундука по кругу.
  </BoxAnnotation>
  <BlockAnnotation x="1" y="2" z="1">
    Раундробин включен

    Канал установлен на <Color id="green">Lime</Color>
  </BlockAnnotation>
</GameScene>

Выше приведен пример подсети **smeltery** с блоком <ItemLink id="processing_storage" />, который транслируется с использованием <ItemLink id="broadcast_antenna" />. К любой сети можно подключиться и использовать ее рецепты с помощью <ItemLink id="link_crystal" />.

Затем у меня есть три устройства <ItemLink id="processing_handler" />, привязанные к трем наборам обработки в сети, и все они передают свои входные элементы в <ItemLink id="import_chest" />. Импортный сундук настроен на циклический перебор в другой канал, который я посвятил картам хранения, указывающим на верхнюю часть печей. Еще есть красные карты хранения, указывающие на дно печей.

Подробности смотрите на странице [Автокрафт](../nodeworks-mechanics/autocrafting.md).
