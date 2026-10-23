---
navigation:
  parent: example-setups/example-setups-index.md
  title: "Автоскладирование интерфейса"
  icon: interface
---

# <a name="interface-autostocking" />Автоскладирование интерфейса

Кто-то может спросить: «Как мне хранить определенное количество различных предметов на складе и создавать больше по мере необходимости?»

Одним из решений является использование <ItemLink id="interface" /> и <ItemLink id="crafting_card" /> для автоматического запроса новых элементов из [автокрафтинг](../ae2-mechanics/autocrafting.md) вашей сети. Эта установка больше подходит для хранения небольшого количества самых разных предметов.

Эта демонстрационная установка обрезана, поэтому она не слишком широка. Вероятно, наиболее оптимально использовать 4 <ItemLink id="interface" /> и 4 <ItemLink id="storage_bus" />, чтобы использовать все 8 [каналы](../ae2-mechanics/channels.md) в обычной [кабель](../items-blocks-machines/cables.md).

<GameScene zoom="6" interactive={true}>
  <ImportStructure src="../assets/assemblies/interface_autostocking.snbt" />

<BoxAnnotation color="#dddddd" min="0 0 0" max="2 1 1">
        (1) Интерфейсы: настроено для сохранения нужных элементов отдельно. У них есть карты крафта.
        <ItemImage id="crafting_card" scale="2" />
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="0 1 0" max="2 1.3 1">
        (2) Шины хранения данных: для параметра «Режим ввода/вывода» установлено значение «Только извлечение».
  </BoxAnnotation>

<DiamondAnnotation pos="4 0.5 0.5" color="#00ff00">
        В основную сеть
    </DiamondAnnotation>

  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

## <a name="configurations" />Конфигурации

* <ItemLink id="interface" />s (1) настроены так, чтобы желаемые предметы оставались в себе: щелкнув нужный предмет в верхние слоты или перетащив в верхние слоты из JEI, а затем щелкнув значок гаечного ключа над слотами, чтобы установить количество. У них есть <ItemLink id="crafting_card" />.
* <ItemLink id="storage_bus" />es (2) установлены таким образом, что для параметра «Режим ввода/вывода» установлено значение «Только извлечение».

## <a name="how-it-works" />Как это работает

1. Если <ItemLink id="interface" /> не может получить достаточно настроенного элемента из [сетевое хранилище](../ae2-mechanics/import-export-storage.md),
   (и у него есть <ItemLink id="crafting_card" />), он запросит, чтобы сеть [автокрафтинг](../ae2-mechanics/autocrafting.md) создала больше этого предмета.
2. <ItemLink id="storage_bus" />es позволяют сети получать доступ к содержимому интерфейсов.
