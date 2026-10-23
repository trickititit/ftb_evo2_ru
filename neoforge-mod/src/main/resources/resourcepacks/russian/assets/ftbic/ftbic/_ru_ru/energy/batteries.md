---
navigation:
  title: "Батарейки и аккумуляторные ящики"
  icon: ftbic:hv_battery
  parent: energy/index.md
  position: 2
item_ids:
  - ftbic:single_use_battery
  - ftbic:lv_battery
  - ftbic:mv_battery
  - ftbic:hv_battery
  - ftbic:ev_battery
  - ftbic:creative_battery
  - ftbic:lv_battery_box
  - ftbic:mv_battery_box
  - ftbic:hv_battery_box
  - ftbic:ev_battery_box
  - ftbic:industrial_bank_cell
  - ftbic:industrial_bank_port
  - ftbic:energy_crystal
---

# <Color id="gold">Батареи и аккумуляторные ящики</Color>

## <Color id="gold">Промышленный аккумулятор</Color>

Поместите <ItemLink id="industrial_bank_cell" /> и <ItemLink id="industrial_bank_port" /> лицом друг к другу, чтобы сформировать один банк. Каждая ячейка добавляет хранилище; каждый порт принимает и подает энергию через открытые поверхности. Добавьте больше портов для большего количества соединений. Щелкните правой кнопкой мыши любую ячейку или порт, чтобы увидеть стоимость, емкость и количество участников банка. На экране порта также есть четыре слота **зарядки**, которые заряжают батареи и другие энергетические элементы из банка. Боковая конфигурация порта может ограничивать входные и выходные поверхности.

Каждая ячейка содержит <Energy config="energy.bank_cell_capacity" />. Каждый порт автоматически выводит до <Energy config="energy.bank_port_transfer" rate="true" /> и принимает до этого количества за одну входную транзакцию. Поступающая энергия перемещается в подключенные ячейки, поэтому порт может продолжать принимать энергию. Конфигурация сервера контролирует как значения, так и максимальное количество блоков, просматриваемых в каждом банке. Энергия остается в каждой ячейке, если вы разделите банк, а повторное соединение ячеек восстанавливает общее показание. Корпуса банков визуально соединяются по соприкасающимся граням.

Подкрадитесь и щелкните правой кнопкой мыши порт, чтобы изменить его внешний вид: **Порт** (символ соединения по умолчанию), **Датчик**, затем **Базовый** (простая сталь, похожая на ячейку). Выбор принадлежит этому порту и сохраняется после мировой перезагрузки. Изменение внешнего вида не меняет вход или выход энергии. Выбранный стиль ненадолго появится над панелью быстрого доступа.

Индикатор показывает уровень заполнения всей банки светящейся полосой. Установите для соседних портов значение «Датчик» на одной и той же плоской поверхности, чтобы сформировать более широкий или высокий дисплей. Прямоугольник портов манометров заполняется снизу всей панели. Стили «Базовый» и «Порт», а также зазоры, закрытые грани и углы прерывают отображение. Калибры неправильной формы образуют прямоугольные панели меньшего размера.

<RecipeFor id="industrial_bank_cell" />
<RecipeFor id="industrial_bank_port" />

<Column alignItems="center" fullWidth={true}>
  <ItemImage id="hv_battery_box" scale="2" />

  Батареи — это портативная энергия. Батарейные ящики представляют собой сетевые буферы: вставьте батареи, и они заряжаются, или вытащите их заряженными для питания портативного устройства.
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>
***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Портативные аккумуляторы</Color>
</Column>

<Row>
  <ItemImage id="single_use_battery" />
  ### <Color id="aqua">Одноразовая батарея</Color>
</Row>

Дешёвый одноразовый аккумулятор. <Energy config="energy.single_use_battery_capacity" />. Хорошо для чрезвычайных ситуаций, бесполезно для инфраструктуры.

<RecipeFor id="single_use_battery" />

<Row>
  <ItemImage id="lv_battery" />
  ### <Color id="aqua">НН аккумулятор</Color>
</Row>

Содержит <Energy config="energy.lv_battery_capacity" />, уровень LV. Первая аккумуляторная батарея.

<RecipeFor id="lv_battery" />

<Row>
  <ItemImage id="mv_battery" />
  ### <Color id="aqua">Батарея МВ</Color>
</Row>

<Energy config="energy.mv_battery_capacity" />. Обновите батарею низкого напряжения, используя <ItemLink id="energy_crystal" />.

<RecipeFor id="mv_battery" />

<Row>
  <ItemImage id="hv_battery" />
  ### <Color id="aqua">Высоковольтная аккумуляторная батарея</Color>
</Row>

<Energy config="energy.hv_battery_capacity" />. Подает портативное снаряжение средней и поздней игры.

<RecipeFor id="hv_battery" />

<Row>
  <ItemImage id="ev_battery" />
  ### <Color id="aqua">EV Батарея</Color>
</Row>

<Energy config="energy.ev_battery_capacity" />. Самый большой портативный аккумулятор в моде.

<RecipeFor id="ev_battery" />

<Row>
  <ItemImage id="creative_battery" />
  ### <Color id="aqua">Творческий аккумулятор</Color>
</Row>

Бесконечная энергия. Только креатив.

<ItemImage id="minecraft:air" scale="0.25"/>
***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Батарейные ящики</Color>
</Column>

Аккумуляторный отсек имеет слот **разрядки** слева и слот **зарядки** справа. Поместите заряженную батарею в разрядное отверстие для питания коробки; вставьте разряженную батарею или другой источник энергии в гнездо для зарядки, чтобы зарядить ее. Каждый блок также имеет внутренний буфер, соответствующий его уровню.

Откройте **Ввод-вывод**, выберите **Энергия**, затем установите для любой грани значение **Выход**, чтобы подавать туда энергию. Вы можете установить несколько лиц для вывода. Установите для грани значение **Вход**, чтобы получать питание, **Оба**, чтобы разрешить оба направления, или **Отключено**, чтобы отключить питание. **По умолчанию** сохраняется исходное расположение: передние выходы и вход с других сторон. Каждая грань меняется между входной и выходной текстурой, когда меняется ее выходная роль. Те же элементы управления работают с аккумуляторными ящиками низкого, среднего, высокого напряжения и EV.

<Row>
  <ItemImage id="lv_battery_box" />
  ### <Color id="aqua">Блок аккумуляторной батареи низкого напряжения (<Energy config="energy.lv_battery_box_capacity" />)</Color>
</Row>

<RecipeFor id="lv_battery_box" />

<Row>
  <ItemImage id="mv_battery_box" />
  ### <Color id="aqua">Батарейный отсек среднего напряжения (<Energy config="energy.mv_battery_box_capacity" />)</Color>
</Row>

<RecipeFor id="mv_battery_box" />

<Row>
  <ItemImage id="hv_battery_box" />
  ### <Color id="aqua">Блок высоковольтной аккумуляторной батареи (<Energy config="energy.hv_battery_box_capacity" />)</Color>
</Row>

<RecipeFor id="hv_battery_box" />

<Row>
  <ItemImage id="ev_battery_box" />
  ### <Color id="aqua">EV Батарейный отсек (<Energy config="energy.ev_battery_box_capacity" />)</Color>
</Row>

<RecipeFor id="ev_battery_box" />

<ItemImage id="minecraft:air" scale="0.25"/>

<Row>
  <ItemImage id="energy_crystal" />
  ### <Color id="aqua">Энергетический кристалл</Color>
</Row>

Спрессованный блок из алмазов и красного камня. Требуется для изготовления аккумуляторов MV+ и устройств большой емкости.

<RecipeFor id="energy_crystal" />
