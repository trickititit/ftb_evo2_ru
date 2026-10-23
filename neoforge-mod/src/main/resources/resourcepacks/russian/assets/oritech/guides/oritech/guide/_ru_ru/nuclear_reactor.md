---
navigation:
  title: "Ядерный реактор"
  position: 4
  icon: "oritech:nuclear_reactor_controller"
item_ids:
  - oritech:nuclear_reactor_controller
  - oritech:reactor_wall
  - oritech:reactor_fuel_port
  - oritech:reactor_rod
  - oritech:reactor_double_rod
  - oritech:reactor_quad_rod
  - oritech:reactor_neutron_reflector
  - oritech:reactor_energy_port
---
# <Color id="green">Ядерный реактор</Color>

<Column alignItems="center" fullWidth={true}>
  # <Color id="green">Ядерный реактор</Color>

  <ItemImage id="oritech:nuclear_reactor_controller" scale="2"/>

  <Color id="green">Ядерный реактор</Color> потребляет гранулы <Color id="yellow">урана</Color> или <Color id="light_purple">плутония</Color> для производства большого количества <Color id="gold">RF</Color>. Выходные данные зависят от количества топливных стержней и отражателей нейтронов внутри. Реакторы необходимо держать достаточно охлажденными, иначе они расплавятся.
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Структура</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

Реактор представляет собой **прямоугольную полую коробку** из <Color id="green">Стенок Реактора</Color>. Несколько правил, которые следует иметь в виду:

- Максимальный размер: **64 блока в каждом направлении**.
- <Color id="green">Контроллер реактора</Color> и <Color id="green">Энергетические порты</Color> должны быть размещены где-то на **внешних стенах**, дополнительные <Color id="green">Редстоун-порты</Color> также могут располагаться на этих **внешних стенах**.
- <Color id="green">Топливные отверстия</Color> и <Color id="green">Отверстия для охлаждающей жидкости</Color> расположены на **внешнем потолке**, над соответствующими внутренними трубами.
- Все остальные компоненты (стержни, трубы, вентиляционные отверстия, поглотители) помещаются **внутри**.
- Интерьер должен быть **идентичным на всех вертикальных слоях**; Создайте макет и масштабируйте высоту по желанию. Выходная мощность, расход топлива и использование охлаждающей жидкости зависят от высоты.

<ItemImage id="minecraft:air" scale="0.25"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Компоненты</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

<Row>
  <ItemImage id="oritech:nuclear_reactor_controller"/>
  ### <Color id="aqua">Контроллер реактора</Color>
</Row>

<Color id="green">Контроллер реактора</Color> — это сердце реактора. Разместите его в любом месте внешних стен, а затем взаимодействуйте с ним, чтобы собрать или обновить конструкцию. Графический интерфейс отображает текущее состояние, температуру компонентов и выходную статистику.

<ItemImage id="minecraft:air" scale="0.25"/>

<Row>
  <ItemImage id="oritech:reactor_wall"/>
  ### <Color id="aqua">Стена реактора</Color>
</Row>

<Color id="green">Стенки реактора</Color> образуют взрывостойкую внешнюю оболочку реактора. Они составляют весь каркас: верх, низ и бока.

<ItemImage id="minecraft:air" scale="0.25"/>

<Row>
  <ItemImage id="oritech:reactor_rod"/>
  ### <Color id="aqua">Стержни реактора</Color>
</Row>

<ItemGrid>
  <ItemIcon id="oritech:reactor_rod"/>
  <ItemIcon id="oritech:reactor_double_rod"/>
  <ItemIcon id="oritech:reactor_quad_rod"/>
</ItemGrid>

<Color id="gold">Стержни реактора</Color> — это внутренние компоненты, сжигающие топливо. Они бывают <Color id="green">одинарных</Color>, <Color id="yellow">двойных</Color> и <Color id="red">квадратных</Color> вариантов, каждый из которых генерирует больше тепла и RF за такт. Для каждой стопки стержней требуется <Color id="green">Топливный порт</Color>, расположенный прямо над ней на внешнем потолке.


<ItemImage id="minecraft:air" scale="0.25"/>

<Row>
  <ItemImage id="oritech:reactor_neutron_reflector"/>
  ### <Color id="aqua">Отражатель нейтронов</Color>
</Row>

<Color id="green">Отражатели нейтронов</Color> лучше всего размещать рядом с топливными стержнями, чтобы отражать нейтроны обратно в стержень, повышая их эффективность без необходимости добавления еще одного стержня. Отличный способ увеличить производительность при компактной компоновке.

<ItemImage id="minecraft:air" scale="0.25"/>

<Row>
  <ItemImage id="oritech:reactor_fuel_port"/>
  ### <Color id="aqua">Топливный порт реактора</Color>
</Row>

<Color id="green">Топливный порт реактора</Color> расположен на **внешнем потолке** прямо над штабелем стержней. Вставьте сюда <Color id="yellow">Урановые гранулы</Color> или <Color id="light_purple">Плутониевые гранулы</Color>, чтобы стержни горели.

<ItemImage id="minecraft:air" scale="0.25"/>

<Row>
  <ItemImage id="oritech:reactor_energy_port"/>
  ### <Color id="aqua">Энергетический порт реактора</Color>
</Row>

<Color id="green">Энергетические порты реактора</Color> расположены на внешних стенах для вывода RF, генерируемого реактором. Каждый порт может выводить до <Color id="gold">50 000 000 RF/t</Color>.

<ItemImage id="minecraft:air" scale="0.25"/>

<Row>
  <ItemImage id="oritech:reactor_redstone_port"/>
  ### <Color id="aqua">Реактор Редстоун Порт</Color>
</Row>

<Color id="green">Реакторный порт</Color> расположен на внешних стенах. Применение сигнала красного камня предотвратит загрузку нового топлива. Любая уже горящая гранула закончится первой. Щелчок правой кнопкой мыши по порту переключает режим вывода компаратора между <Color id="gold">Энергия</Color>, <Color id="aqua">Количество активных стержней</Color> и <Color id="red">Температура</Color>.

<ItemImage id="minecraft:air" scale="0.25"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Дополнительная информация</Color>
</Column>

<SubPages icons={true} />
