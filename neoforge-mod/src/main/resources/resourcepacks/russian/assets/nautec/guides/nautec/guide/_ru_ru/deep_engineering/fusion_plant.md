---
navigation:
  title: "Завод Фьюжн"
  icon: nautec:fusion_controller
  position: 8
  parent: deep_engineering/deep_engineering-index.md
item_ids:
  - nautec:fusion_controller
  - nautec:fusion_casing
  - nautec:aquamarine_structural_glass
  - nautec:laser_injector
  - nautec:fusion_collector
  - nautec:containment_coil
  - nautec:fusion_port
---

# <Color id="light_purple">Завод термоядерного синтеза</Color>

<Column alignItems="center" fullWidth={true}>
  <Row>
    <ItemImage id="fusion_controller" scale="2"/>
    <ItemImage id="laser_injector" scale="2"/>
    <ItemImage id="containment_coil" scale="2"/>
  </Row>
  Лазерный термоядерный реактор, построенный на основе культивированного призмаринового кристалла. Он сжигает соленую воду и производит Forge энергии (FE) для машин других модов.
</Column>

Лазерные инжекторы направляют лучи в кристаллическое сердце. Кристалл запускает их в виде плазменных лучей в два термоядерных коллектора, а плазма превращает соленую воду в FE. Маленькая камера составляет около 20 000 FE/t; большой с полным набором Катушек Сдерживания составляет 300 000 FE/t, а кристаллы-спутники в его углах — до 700 000 FE/t.

***

## <Color id="gold">Что ему нужно</Color>

* Культивированный призмариновый кристалл, выращенный, как описано в [Выращивание кристаллов](crystal_cultivation.md). Сердце необходимо развивать.
* Лазерные лучи чистотой 2,0 и более. Чистота 3.0 дает полную мощность, поэтому самые сильные растения питаются через другой кристалл. [Бактериальный топливный элемент](nautec:aquatic_biology/bacterial_fuel_cell.md) в лучшем случае (2,5) дает пять шестых полной мощности.
* Стабильный запас соленой воды из [Глубоководные стоки](nautec:laser_chemistry/drain.md).
* Части ниже. JEI показывает их рецепты: они берут Глубокую стальную обшивку, Атлантическое золото, Эндерский жемчуг, Безупречные призмариновые кристаллы и, в качестве контроллера, Звезду Пустоты.

***

## <Color id="gold">Строим палату</Color>

Кристалл стоит в центре полой квадратной коробки. Внутри коробка ровно равна высоте кристалла (6 блоков) и имеет ширину и глубину 3, 5, 7 или 9 блоков. Стены, пол и потолок вокруг этого пространства имеют толщину в один блок.

<GameScene zoom="2.5" background="#333333" interactive={true}>
  <Block id="nautec:fusion_casing" x="0" y="0" z="0"/>
  <Block id="nautec:fusion_casing" x="1" y="0" z="0"/>
  <Block id="nautec:fusion_casing" x="2" y="0" z="0"/>
  <Block id="nautec:fusion_casing" x="3" y="0" z="0"/>
  <Block id="nautec:fusion_casing" x="4" y="0" z="0"/>
  <Block id="nautec:fusion_casing" x="0" y="0" z="1"/>
  <Block id="nautec:aquamarine_structural_glass" x="1" y="0" z="1"/>
  <Block id="nautec:aquamarine_structural_glass" x="2" y="0" z="1"/>
  <Block id="nautec:aquamarine_structural_glass" x="3" y="0" z="1"/>
  <Block id="nautec:fusion_casing" x="4" y="0" z="1"/>
  <Block id="nautec:fusion_casing" x="0" y="0" z="2"/>
  <Block id="nautec:aquamarine_structural_glass" x="1" y="0" z="2"/>
  <Block id="nautec:fusion_collector" x="2" y="0" z="2"/>
  <Block id="nautec:aquamarine_structural_glass" x="3" y="0" z="2"/>
  <Block id="nautec:fusion_casing" x="4" y="0" z="2"/>
  <Block id="nautec:fusion_casing" x="0" y="0" z="3"/>
  <Block id="nautec:aquamarine_structural_glass" x="1" y="0" z="3"/>
  <Block id="nautec:aquamarine_structural_glass" x="2" y="0" z="3"/>
  <Block id="nautec:aquamarine_structural_glass" x="3" y="0" z="3"/>
  <Block id="nautec:fusion_casing" x="4" y="0" z="3"/>
  <Block id="nautec:fusion_casing" x="0" y="0" z="4"/>
  <Block id="nautec:fusion_casing" x="1" y="0" z="4"/>
  <Block id="nautec:fusion_casing" x="2" y="0" z="4"/>
  <Block id="nautec:fusion_casing" x="3" y="0" z="4"/>
  <Block id="nautec:fusion_casing" x="4" y="0" z="4"/>
  <Block id="nautec:fusion_casing" x="0" y="1" z="0"/>
  <Block id="nautec:aquamarine_structural_glass" x="1" y="1" z="0"/>
  <Block id="nautec:aquamarine_structural_glass" x="2" y="1" z="0"/>
  <Block id="nautec:aquamarine_structural_glass" x="3" y="1" z="0"/>
  <Block id="nautec:fusion_casing" x="4" y="1" z="0"/>
  <Block id="nautec:aquamarine_structural_glass" x="0" y="1" z="1"/>
  <Block id="nautec:aquamarine_structural_glass" x="0" y="1" z="2"/>
  <Block id="nautec:aquamarine_structural_glass" x="0" y="1" z="3"/>
  <Block id="nautec:fusion_casing" x="0" y="1" z="4"/>
  <Block id="nautec:fusion_casing" x="4" y="1" z="4"/>
  <Block id="nautec:fusion_casing" x="0" y="2" z="0"/>
  <Block id="nautec:containment_coil" x="1" y="2" z="0"/>
  <Block id="nautec:aquamarine_structural_glass" x="2" y="2" z="0"/>
  <Block id="nautec:containment_coil" x="3" y="2" z="0"/>
  <Block id="nautec:fusion_casing" x="4" y="2" z="0"/>
  <Block id="nautec:fusion_port" x="0" y="2" z="1"/>
  <Block id="nautec:aquamarine_structural_glass" x="0" y="2" z="2"/>
  <Block id="nautec:aquamarine_structural_glass" x="0" y="2" z="3"/>
  <Block id="nautec:fusion_casing" x="0" y="2" z="4"/>
  <Block id="nautec:fusion_casing" x="4" y="2" z="4"/>
  <Block id="nautec:fusion_casing" x="0" y="3" z="0"/>
  <Block id="nautec:aquamarine_structural_glass" x="1" y="3" z="0"/>
  <Block id="nautec:aquamarine_structural_glass" x="2" y="3" z="0"/>
  <Block id="nautec:aquamarine_structural_glass" x="3" y="3" z="0"/>
  <Block id="nautec:fusion_casing" x="4" y="3" z="0"/>
  <Block id="nautec:aquamarine_structural_glass" x="0" y="3" z="1"/>
  <Block id="nautec:aquamarine_structural_glass" x="0" y="3" z="2"/>
  <Block id="nautec:aquamarine_structural_glass" x="0" y="3" z="3"/>
  <Block id="nautec:fusion_casing" x="0" y="3" z="4"/>
  <Block id="nautec:fusion_casing" x="4" y="3" z="4"/>
  <Block id="nautec:fusion_casing" x="0" y="4" z="0"/>
  <Block id="nautec:aquamarine_structural_glass" x="1" y="4" z="0"/>
  <Block id="nautec:aquamarine_structural_glass" x="2" y="4" z="0"/>
  <Block id="nautec:aquamarine_structural_glass" x="3" y="4" z="0"/>
  <Block id="nautec:fusion_casing" x="4" y="4" z="0"/>
  <Block id="nautec:aquamarine_structural_glass" x="0" y="4" z="1"/>
  <Block id="nautec:laser_injector" x="0" y="4" z="2" p:facing="east"/>
  <Block id="nautec:laser_injector" x="4" y="4" z="2" p:facing="west"/>
  <Block id="nautec:aquamarine_structural_glass" x="0" y="4" z="3"/>
  <Block id="nautec:fusion_casing" x="0" y="4" z="4"/>
  <Block id="nautec:fusion_casing" x="4" y="4" z="4"/>
  <Block id="nautec:fusion_casing" x="0" y="5" z="0"/>
  <Block id="nautec:aquamarine_structural_glass" x="1" y="5" z="0"/>
  <Block id="nautec:fusion_controller" x="2" y="5" z="0" p:facing="north"/>
  <Block id="nautec:aquamarine_structural_glass" x="3" y="5" z="0"/>
  <Block id="nautec:fusion_casing" x="4" y="5" z="0"/>
  <Block id="nautec:aquamarine_structural_glass" x="0" y="5" z="1"/>
  <Block id="nautec:aquamarine_structural_glass" x="0" y="5" z="2"/>
  <Block id="nautec:aquamarine_structural_glass" x="0" y="5" z="3"/>
  <Block id="nautec:fusion_casing" x="0" y="5" z="4"/>
  <Block id="nautec:fusion_casing" x="4" y="5" z="4"/>
  <Block id="nautec:fusion_casing" x="0" y="6" z="0"/>
  <Block id="nautec:aquamarine_structural_glass" x="1" y="6" z="0"/>
  <Block id="nautec:aquamarine_structural_glass" x="2" y="6" z="0"/>
  <Block id="nautec:aquamarine_structural_glass" x="3" y="6" z="0"/>
  <Block id="nautec:fusion_casing" x="4" y="6" z="0"/>
  <Block id="nautec:aquamarine_structural_glass" x="0" y="6" z="1"/>
  <Block id="nautec:aquamarine_structural_glass" x="0" y="6" z="2"/>
  <Block id="nautec:aquamarine_structural_glass" x="0" y="6" z="3"/>
  <Block id="nautec:fusion_casing" x="0" y="6" z="4"/>
  <Block id="nautec:fusion_casing" x="4" y="6" z="4"/>
  <Block id="nautec:fusion_casing" x="0" y="7" z="0"/>
  <Block id="nautec:fusion_casing" x="1" y="7" z="0"/>
  <Block id="nautec:fusion_casing" x="2" y="7" z="0"/>
  <Block id="nautec:fusion_casing" x="3" y="7" z="0"/>
  <Block id="nautec:fusion_casing" x="4" y="7" z="0"/>
  <Block id="nautec:fusion_casing" x="0" y="7" z="1"/>
  <Block id="nautec:fusion_casing" x="4" y="7" z="1"/>
  <Block id="nautec:fusion_casing" x="0" y="7" z="2"/>
  <Block id="nautec:fusion_collector" x="2" y="7" z="2"/>
  <Block id="nautec:fusion_casing" x="4" y="7" z="2"/>
  <Block id="nautec:fusion_casing" x="0" y="7" z="3"/>
  <Block id="nautec:fusion_casing" x="4" y="7" z="3"/>
  <Block id="nautec:fusion_casing" x="0" y="7" z="4"/>
  <Block id="nautec:fusion_casing" x="1" y="7" z="4"/>
  <Block id="nautec:fusion_casing" x="2" y="7" z="4"/>
  <Block id="nautec:fusion_casing" x="3" y="7" z="4"/>
  <Block id="nautec:fusion_casing" x="4" y="7" z="4"/>
  <BoxAnnotation min="2 1 2" max="3 7 3" color="#52e8ff" thickness="0.6">
    Здесь стоит культивированный призмариновый кристалл, заполняющий комнату от пола до потолка.
  </BoxAnnotation>
  <BlockAnnotation x="2" y="5" z="0" color="#ffd86b">
    Контроллер Fusion, в боковой стене, обращенной наружу.
  </BlockAnnotation>
  <BlockAnnotation x="0" y="4" z="2" color="#52e8ff">
    Лазерный инжектор, расположенный в середине боковой стены на высоте кристаллического ядра, направлен на него.
  </BlockAnnotation>
  <BlockAnnotation x="2" y="0" z="2" color="#b8a6ff">
    Коллектор термоядерного синтеза, посередине этажа. Другой идет посередине потолка.
  </BlockAnnotation>
  <BlockAnnotation x="1" y="2" z="0" color="#ffd86b">
    Защитная катушка в любом месте стены, пола или потолка.
  </BlockAnnotation>
  <BlockAnnotation x="0" y="2" z="1" color="#8cc4f2">
    Порт Fusion в любом месте стены, пола или потолка.
  </BlockAnnotation>
  <IsometricCamera yaw="135" pitch="25"/>
</GameScene>

В сцене отсутствуют две стены и потолок, поэтому вы можете видеть внутри.

* <ItemLink id="fusion_casing"/> идет по каждому краю коробки.
* Остальные стены, пол и потолок могут быть <ItemLink id="aquamarine_structural_glass"/>, корпусом Fusion, защитными катушками или портами Fusion. Стекло позволяет смотреть плазму.
* Знак <ItemLink id="fusion_collector"/> проходит посередине потолка, а другой — посередине пола, на уровне кристалла.
* <ItemLink id="laser_injector"/> идет посередине любой боковой стены, на уровне ядра кристалла (четвертый блок от его основания). Поместите его, глядя в камеру, так, чтобы он был направлен на кристалл. Вмещается до четырех, по одному на стену.
* <ItemLink id="fusion_controller"/> проходит в любом месте боковой стены от краев и наружу. Он ищет кристалл на расстоянии от 2 до 5 блоков позади него.
* Оставьте внутреннюю часть пустой, за исключением кристалла и кристаллов-спутников в его углах (см. Кристаллы-спутники ниже). Воздух и вода в порядке, поэтому завод можно построить под водой.

Щелкните правой кнопкой мыши контроллер или любой порт Fusion, чтобы открыть его экран. Хотя камера неполная, в нижней строке указывается первое, что не так.

***

## <Color id="gold">Бег</Color>

1. **Топливо.** Подайте соленую воду в контроллер или <ItemLink id="fusion_port"/>. Ничего другого они не принимают.
2. **Зажигание.** Огонь попадает в заднюю часть форсунок снаружи. Холодная установка поглощает свои первые 5 000 000 AP в виде тепла, прежде чем что-либо произвести, что составляет около 40 секунд при 6 000 AP/т или несколько минут для небольшого сырья. Левая полоса на экране показывает температуру.
3. **Мощность.** Как только шкала тепла заполнится, каждый введенный AP составит до 50 FE. Более низкая чистота уменьшает это значение: чистота 2,4 дает 40 FE за AP.
4. **Сожгите.** Каждый mB соленой воды производит 2000 FE, поэтому растение при 300 000 FE/t сжигает 150 mB за каждый тик. Именно это перекачивают шесть глубоководных дренажей.
5. **Выход.** Контроллер и каждый порт Fusion вводят FE в любой кабель или устройство, соприкасающееся с ними.

Если топливо или луч останавливаются, плазма остывает, и установка снова остывает в течение 20 секунд. Короткий зазор стоит только потерянного тепла, которое лучи быстро возвращают.

***

## <Color id="gold">Потолок вывода</Color>

Камера ограничивает количество плазмы, которую она может вместить. Балки за потолком теряются, и на экране отображается **У потолка**.

| Внутри | Потолок |
|---|---|
| 3 x 3 | 20,000 FE/t |
| 5 x 5 | 50,000 FE/t |
| 7 x 7 | 100,000 FE/t |
| 9 x 9 | 200,000 FE/t |

Каждый <ItemLink id="containment_coil"/> в оболочке добавляет 4000 FE/t, всего до 300 000 FE/t. Камера размером 9 x 9 достигает этого показателя с 25 катушками, питаемыми 6000 AP/т лучей чистоты 3.0.

***

## <Color id="gold">Спутниковые кристаллы</Color>

В камере размером 7 x 7 или 9 x 9 достаточно места для большего количества кристаллов. Поместите культивированный призмариновый кристалл в каждый из четырех внутренних углов, стоя на полу и дотягиваясь до потолка так же, как сердце. Каждый кристалл-спутник:

* добавляет 100 000 FE/t к потолку и увеличивает лимит в 300 000 FE/t на ту же величину
* добавляет 10 FE к тому, что дает каждая введенная точка доступа, поэтому 50 становится 60 с одним спутником и 90 со всеми четырьмя

<GameScene zoom="2.5" background="#333333" interactive={true}>
  <ImportStructure src="fusion_plant_satellites.nbt" />
  <IsometricCamera yaw="225" pitch="30" />
  <BoxAnnotation min="3.97 0.97 3.97" max="5.03 7.03 5.03" color="#52e8ff" thickness="0.06" alwaysOnTop={true}>
    **Сердце.** Здесь, от пола до потолка, стоит культивированный призмариновый кристалл, вокруг которого построен завод.
  </BoxAnnotation>
  <BoxAnnotation min="0.97 0.97 0.97" max="2.03 7.03 2.03" color="#ff6ec7" thickness="0.06" alwaysOnTop={true}>
    **Спутниковый кристалл.** Здесь, от пола до потолка, стоит культивированный призмариновый кристалл.
  </BoxAnnotation>
  <BoxAnnotation min="6.97 0.97 0.97" max="8.03 7.03 2.03" color="#ff6ec7" thickness="0.06" alwaysOnTop={true}>
    **Спутниковый кристалл.** Здесь, от пола до потолка, стоит культивированный призмариновый кристалл.
  </BoxAnnotation>
  <BoxAnnotation min="0.97 0.97 6.97" max="2.03 7.03 8.03" color="#ff6ec7" thickness="0.06" alwaysOnTop={true}>
    **Спутниковый кристалл.** Здесь, от пола до потолка, стоит культивированный призмариновый кристалл.
  </BoxAnnotation>
  <BoxAnnotation min="6.97 0.97 6.97" max="8.03 7.03 8.03" color="#ff6ec7" thickness="0.06" alwaysOnTop={true}>
    **Спутниковый кристалл.** Здесь, от пола до потолка, стоит культивированный призмариновый кристалл.
  </BoxAnnotation>
  <BoxAnnotation min="3.97 4.97 -0.03" max="5.03 6.03 1.03" color="#ffd86b" thickness="0.06" alwaysOnTop={true}>
    **Контроллер Fusion.** На боковой стенке, вдали от краев, лицом наружу.
  </BoxAnnotation>
  <BoxAnnotation min="3.97 3.97 -0.03" max="5.03 5.03 1.03" color="#52e8ff" thickness="0.06" alwaysOnTop={true}>
    **Лазерный инжектор.** В середине боковой стены, на уровне кристаллического ядра, направлен на него. У этого растения по одному на каждой стене.
  </BoxAnnotation>
  <BoxAnnotation min="3.97 -0.03 3.97" max="5.03 1.03 5.03" color="#b8a6ff" thickness="0.06" alwaysOnTop={true}>
    **Коллектор термоядерного синтеза**. Посередине пола и еще один посередине потолка.
  </BoxAnnotation>
  <BoxAnnotation min="7.97 1.97 0.97" max="9.03 3.03 2.03" color="#ffb74d" thickness="0.06" alwaysOnTop={true}>
    **Змеевик сдерживания.** У восточной стены их два ряда. Каждый добавляет 4000 FE/t к потолку.
  </BoxAnnotation>
  <BoxAnnotation min="-0.03 1.97 3.97" max="1.03 3.03 5.03" color="#8cc4f2" thickness="0.06" alwaysOnTop={true}>
    **Порт Fusion.** Берет соленую воду и выдает FE, как контроллер.
  </BoxAnnotation>
</GameScene>

Завод 7 x 7 со всеми четырьмя спутниками: 88 термоядерных корпусов по краям, 244 аквамариновых структурных стекла, 14 защитных катушек, 4 лазерных инжектора, 2 термоядерных коллектора, термоядерный порт и контроллер, всего 354 блока плюс пять кристаллов. Кристаллы рисуются собственным рендерером, поэтому сцена отмечает их места, а не показывает их. Перетащите сцену, чтобы повернуть ее.

| Спутники | Большая часть продукции | FE за точку доступа | AP/t чистоты 3.0, чтобы достичь этого |
|---|---|---|---|
| 0 | 300,000 FE/t | 50 | 6,000 |
| 1 | 400,000 FE/t | 60 | 6,667 |
| 2 | 500,000 FE/t | 70 | 7,143 |
| 3 | 600,000 FE/t | 80 | 7,500 |
| 4 | 700,000 FE/t | 90 | 7,778 |

Каждый спутник необходимо культивировать, см. [Выращивание кристаллов](crystal_cultivation.md), поэтому выращивание каждого из них стоит еще 10 000 000 AP. Соленая вода по-прежнему производит 2000 FE на mB, поэтому растение на 700 000 FE/t сжигает 350 mB каждый тик, что составляет 14 глубоководных стоков. Линия спутников на экране показывает, сколько их имеется в камере, а кристалл в любом другом месте внутри по-прежнему останавливает ее формирование.

Числа `fusionSatelliteContainment` и `fusionSatelliteFePerAp` в `config/nautec-common.toml`.

<Color id="gold">Совет</Color>: [Преобразователь энергии](nautec:laser_chemistry/energy_converter.md) может передать растению часть своих FE обратно в качестве AP. Конвертерные лучи имеют чистоту 0, поэтому сначала пропустите их через другой призмариновый кристалл, чтобы довести их до 3,0.
