---
navigation:
  parent: example-setups/example-setups-index.md
  title: "Автоматическое накопление излучателя уровня"
  icon: level_emitter
---

# <a name="level-emitter-autostocking" />Автоматическое накопление излучателя уровня

Кто-то может спросить: «Как мне сохранить определенное количество предметов на складе и создавать больше по мере необходимости?»

Одним из решений является использование <ItemLink id="export_bus" />, <ItemLink id="level_emitter" /> и <ItemLink id="crafting_card" /> для автоматического запроса новых элементов из [автокрафтинг](../ae2-mechanics/autocrafting.md) вашей сети. Эта настройка предназначена для хранения большого количества одного товара.

Вы, конечно, можете создавать свою сеть непрерывно, отказавшись от излучателя уровня и карты красного камня.

<GameScene zoom="6" interactive={true}>
  <ImportStructure src="../assets/assemblies/level_emitter_autostocking.snbt" />

  <BoxAnnotation color="#dddddd" min="1 1 0" max="2 1.3 1">
        (1) Экспортная шина: фильтруется по нужному элементу. Имеет карту Редстоуна и карту крафта. Для режима красного камня установлено значение «Активировать по сигналу», для режима крафта установлено значение «Не использовать имеющиеся предметы».
        <Row><ItemImage id="redstone_card" scale="2" /> <ItemImage id="crafting_card" scale="2" /></Row>
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="0.7 1 0" max="1 2 1">
        (2) Излучатель уровня: настроен на желаемый элемент и количество, установлен на «Излучать, когда уровни ниже предела».
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="1 0 0" max="2 1 1">
        (3) Интерфейс: в конфигурации по умолчанию.
  </BoxAnnotation>

<DiamondAnnotation pos="4 0.5 0.5" color="#00ff00">
        В основную сеть
    </DiamondAnnotation>

  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

## <a name="configurations" />Конфигурации

* <ItemLink id="export_bus" /> (1) фильтруется до нужного элемента. У него есть <ItemLink id="redstone_card" /> и <ItemLink id="crafting_card" />. Для «Режима красного камня» установлено значение «Активировать по сигналу», для «Поведения при крафте» установлено значение «Не использовать имеющиеся предметы».
* <ItemLink id="level_emitter" /> (2) настроен на желаемый предмет и количество и установлен на «Выпускать, когда уровни ниже предела».
* <ItemLink id="interface" /> (3) имеет конфигурацию по умолчанию.

## <a name="how-it-works" />Как это работает

1. Если количество желаемого товара в [сетевое хранилище](../ae2-mechanics/import-export-storage.md) ниже количества, указанного в
   <ItemLink id="level_emitter" />, он издаст сигнал красного камня.
2. При получении сигнала красного камня (и из-за <ItemLink id="crafting_card" /> и настройки не использовать имеющиеся предметы),
   <ItemLink id="export_bus" /> запросит, чтобы сеть [автокрафтинг](../ae2-mechanics/autocrafting.md) создала больше желаемого предмета, а затем экспортировала его.
3. Если в него вставлен предмет (и он не настроен на наличие чего-либо во внутреннем инвентаре), <ItemLink id="interface" /> отправит этот предмет в сетевое хранилище.
