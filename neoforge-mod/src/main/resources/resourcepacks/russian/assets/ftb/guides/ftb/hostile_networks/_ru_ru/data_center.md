---
navigation:
  title: "Дата-центр"
  icon: hostilenetworks:data_center
  position: 1
  parent: index.md
item_ids:
  - hostilenetworks:data_center
  - hostilenetworks:data_center_io_port
---

<Column alignItems="center" fullWidth={true}>
  # <Color id="gold">Центр обработки данных</Color>

  <ItemImage id="hostilenetworks:data_center" scale="2"/>

  Одновременно запускает до 25 моделей данных с самосознанием и является единственным местом в этом пакете, где модели данных создают элементы.
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Панцирь</Color>
</Column>

<Column alignItems="center" fullWidth={true}>
  <GameScene zoom="2" interactive={true} background="#333333">
    <ImportStructure src="data_center.nbt"/>
    <IsometricCamera yaw="-45" pitch="30"/>
    <BoxAnnotation min="1 1 1" max="6 6 6" color="#ff5555">
      Внутри 5x5x5 должен быть пустой воздух.
    </BoxAnnotation>
    <BlockAnnotation x="3" y="1" z="6" color="#ffaa00">
      Контроллер обращен **наружу** корпуса.
    </BlockAnnotation>
    <BlockAnnotation x="5" y="1" z="6" color="#55ffff">
      Порты ввода-вывода являются дополнительными и могут заменить любой настенный или потолочный блок.
    </BlockAnnotation>
  </GameScene>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

* Размер корпуса 7x7x7. Пол — <ItemLink id="minecraft:obsidian"/> (что-нибудь в теге обсидиана).
* Стены и потолок — <ItemLink id="minecraft:black_stained_glass"/> или <ItemLink id="hostilenetworks:data_center_io_port"/>.
* <ItemLink id="hostilenetworks:data_center"/> заменяет стеновой блок в первом ряду над полом, обращенный наружу. Любое положение вдоль этой стены работает, включая углы.
* Если оболочка неправильная, на экране контроллера отображаются недостающие блоки с их координатами.

<ItemImage id="minecraft:air" scale="0.25"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Бегущие модели</Color>
</Column>

* Поместите модели самосознания в сетку 5х5. Нижним уровням отказано.
* Поместите <ItemLink id="hostilenetworks:prediction_matrix"/> в четыре входных слота. Каждая модель использует один за цикл.
* <Color id="red">Щелкните правой кнопкой мыши по слоту модели, чтобы выбрать, что она делает.</Color> Модель, в которой ничего не выбрано, не запускается. <Color id="aqua">Fixed</Color> повторяет одну каплю; <Color id="aqua">Очередь</Color> работает через список.
* Цикл составляет 15 секунд. Он дает <Color id="green">Обобщенное предсказание</Color> модели плюс один выбранный отброс в выходной буфер с 16 слотами.
* Мощность на такт для каждой модели равна стоимости ее моделирования плюс 25%. Буфер содержит 20 000 000 FE.

<ItemImage id="minecraft:air" scale="0.25"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Порты ввода-вывода</Color>
</Column>

<Row>
  <ItemImage id="hostilenetworks:data_center_io_port"/>
  ### <Color id="aqua">Порт ввода-вывода центра обработки данных</Color>
</Row>

Контроллер самостоятельно принимает питание и предметы. Порты позволяют трубам и кабелям достигать центра обработки данных с других сторон корпуса. Щелкните порт правой кнопкой мыши, чтобы переключить его режим.

| Режим | С чем это связано |
|---|---|
| <Color id="aqua">Энергия</Color> | Буфер мощности |
| <Color id="aqua">Модели</Color> | Сетка модели 5x5 |
| <Color id="aqua">Входы</Color> | Четыре входных слота |
| <Color id="aqua">Выходы</Color> | Выходной буфер, только извлечение |

Каждый порт может находиться в одном режиме одновременно. Используйте столько, сколько вам нужно.
