---
navigation:
  title: "Промышленный биореактор"
  icon: nautec:industrial_bio_reactor
  position: 12
  parent: aquatic_biology/aquatic_biology-index.md
item_ids:
  - nautec:industrial_bio_reactor
---

# <Color id="light_purple">Промышленный биореактор</Color>

<Column alignItems="center" fullWidth={true}>
  <ItemImage id="industrial_bio_reactor" scale="2"/>
  Реактор 5 на 5 на 4, в котором работают девять колоний с четырьмя слотами для улучшений.
</Column>

Он работает как [Биореактор](bio_reactor.md): тот же [формула производства](production_rates.md) и базовая скорость, тот же [кормление](colony_feeding.md), старение и распад, и тот же [обновления](reactor_upgrades.md). Он добавляет пространство: 9 слотов колоний, 9 выходных слотов, 3 слота для питательных веществ и 4 слота для улучшений.

***

## <Color id="gold">Строим</Color>

Четыре слоя, каждый 5 на 5:

* Слой 1 (внизу): Темные призмариновые колонны в четырех углах, полированный призмарин повсюду.
* Слои 2 и 3: Темные призмариновые колонны по углам и щиты сдерживания бактерий по краям, середина 3 на 3 остается пустой. Промышленный биореактор занимает место среднего щита одной стены второго слоя.
* Слой 4 (крыша): Темные призмариновые колонны по углам, блоки из аквариумной стали повсюду.

<GameScene zoom="3" background="#333333" interactive={true}>
  <Block id="nautec:dark_prismarine_pillar" x="0" y="0" z="0"/>
  <Block id="nautec:polished_prismarine" x="1" y="0" z="0"/>
  <Block id="nautec:polished_prismarine" x="2" y="0" z="0"/>
  <Block id="nautec:polished_prismarine" x="3" y="0" z="0"/>
  <Block id="nautec:dark_prismarine_pillar" x="4" y="0" z="0"/>
  <Block id="nautec:polished_prismarine" x="0" y="0" z="1"/>
  <Block id="nautec:polished_prismarine" x="1" y="0" z="1"/>
  <Block id="nautec:polished_prismarine" x="2" y="0" z="1"/>
  <Block id="nautec:polished_prismarine" x="3" y="0" z="1"/>
  <Block id="nautec:polished_prismarine" x="4" y="0" z="1"/>
  <Block id="nautec:polished_prismarine" x="0" y="0" z="2"/>
  <Block id="nautec:polished_prismarine" x="1" y="0" z="2"/>
  <Block id="nautec:polished_prismarine" x="2" y="0" z="2"/>
  <Block id="nautec:polished_prismarine" x="3" y="0" z="2"/>
  <Block id="nautec:polished_prismarine" x="4" y="0" z="2"/>
  <Block id="nautec:polished_prismarine" x="0" y="0" z="3"/>
  <Block id="nautec:polished_prismarine" x="1" y="0" z="3"/>
  <Block id="nautec:polished_prismarine" x="2" y="0" z="3"/>
  <Block id="nautec:polished_prismarine" x="3" y="0" z="3"/>
  <Block id="nautec:polished_prismarine" x="4" y="0" z="3"/>
  <Block id="nautec:dark_prismarine_pillar" x="0" y="0" z="4"/>
  <Block id="nautec:polished_prismarine" x="1" y="0" z="4"/>
  <Block id="nautec:polished_prismarine" x="2" y="0" z="4"/>
  <Block id="nautec:polished_prismarine" x="3" y="0" z="4"/>
  <Block id="nautec:dark_prismarine_pillar" x="4" y="0" z="4"/>
  <Block id="nautec:dark_prismarine_pillar" x="0" y="1" z="0"/>
  <Block id="nautec:bacterial_containment_shield" x="1" y="1" z="0"/>
  <Block id="nautec:industrial_bio_reactor" x="2" y="1" z="0"/>
  <Block id="nautec:bacterial_containment_shield" x="3" y="1" z="0"/>
  <Block id="nautec:dark_prismarine_pillar" x="4" y="1" z="0"/>
  <Block id="nautec:bacterial_containment_shield" x="0" y="1" z="1"/>
  <Block id="nautec:bacterial_containment_shield" x="4" y="1" z="1"/>
  <Block id="nautec:bacterial_containment_shield" x="0" y="1" z="2"/>
  <Block id="nautec:bacterial_containment_shield" x="4" y="1" z="2"/>
  <Block id="nautec:bacterial_containment_shield" x="0" y="1" z="3"/>
  <Block id="nautec:bacterial_containment_shield" x="4" y="1" z="3"/>
  <Block id="nautec:dark_prismarine_pillar" x="0" y="1" z="4"/>
  <Block id="nautec:bacterial_containment_shield" x="1" y="1" z="4"/>
  <Block id="nautec:bacterial_containment_shield" x="2" y="1" z="4"/>
  <Block id="nautec:bacterial_containment_shield" x="3" y="1" z="4"/>
  <Block id="nautec:dark_prismarine_pillar" x="4" y="1" z="4"/>
  <Block id="nautec:dark_prismarine_pillar" x="0" y="2" z="0"/>
  <Block id="nautec:bacterial_containment_shield" x="1" y="2" z="0"/>
  <Block id="nautec:bacterial_containment_shield" x="2" y="2" z="0"/>
  <Block id="nautec:bacterial_containment_shield" x="3" y="2" z="0"/>
  <Block id="nautec:dark_prismarine_pillar" x="4" y="2" z="0"/>
  <Block id="nautec:bacterial_containment_shield" x="0" y="2" z="1"/>
  <Block id="nautec:bacterial_containment_shield" x="4" y="2" z="1"/>
  <Block id="nautec:bacterial_containment_shield" x="0" y="2" z="2"/>
  <Block id="nautec:bacterial_containment_shield" x="4" y="2" z="2"/>
  <Block id="nautec:bacterial_containment_shield" x="0" y="2" z="3"/>
  <Block id="nautec:bacterial_containment_shield" x="4" y="2" z="3"/>
  <Block id="nautec:dark_prismarine_pillar" x="0" y="2" z="4"/>
  <Block id="nautec:bacterial_containment_shield" x="1" y="2" z="4"/>
  <Block id="nautec:bacterial_containment_shield" x="2" y="2" z="4"/>
  <Block id="nautec:bacterial_containment_shield" x="3" y="2" z="4"/>
  <Block id="nautec:dark_prismarine_pillar" x="4" y="2" z="4"/>
  <Block id="nautec:dark_prismarine_pillar" x="0" y="3" z="0"/>
  <Block id="nautec:aquarine_steel_block" x="1" y="3" z="0"/>
  <Block id="nautec:aquarine_steel_block" x="2" y="3" z="0"/>
  <Block id="nautec:aquarine_steel_block" x="3" y="3" z="0"/>
  <Block id="nautec:dark_prismarine_pillar" x="4" y="3" z="0"/>
  <Block id="nautec:aquarine_steel_block" x="0" y="3" z="1"/>
  <Block id="nautec:aquarine_steel_block" x="1" y="3" z="1"/>
  <Block id="nautec:aquarine_steel_block" x="2" y="3" z="1"/>
  <Block id="nautec:aquarine_steel_block" x="3" y="3" z="1"/>
  <Block id="nautec:aquarine_steel_block" x="4" y="3" z="1"/>
  <Block id="nautec:aquarine_steel_block" x="0" y="3" z="2"/>
  <Block id="nautec:aquarine_steel_block" x="1" y="3" z="2"/>
  <Block id="nautec:aquarine_steel_block" x="2" y="3" z="2"/>
  <Block id="nautec:aquarine_steel_block" x="3" y="3" z="2"/>
  <Block id="nautec:aquarine_steel_block" x="4" y="3" z="2"/>
  <Block id="nautec:aquarine_steel_block" x="0" y="3" z="3"/>
  <Block id="nautec:aquarine_steel_block" x="1" y="3" z="3"/>
  <Block id="nautec:aquarine_steel_block" x="2" y="3" z="3"/>
  <Block id="nautec:aquarine_steel_block" x="3" y="3" z="3"/>
  <Block id="nautec:aquarine_steel_block" x="4" y="3" z="3"/>
  <Block id="nautec:dark_prismarine_pillar" x="0" y="3" z="4"/>
  <Block id="nautec:aquarine_steel_block" x="1" y="3" z="4"/>
  <Block id="nautec:aquarine_steel_block" x="2" y="3" z="4"/>
  <Block id="nautec:aquarine_steel_block" x="3" y="3" z="4"/>
  <Block id="nautec:dark_prismarine_pillar" x="4" y="3" z="4"/>
  <IsometricCamera yaw="225" pitch="30"/>
</GameScene>

Промышленный биореактор можно разместить посередине любой из четырех стен, поэтому вы можете сначала построить каркас и разместить реакторный блок с любой стороны, обращенной к вам. Сцена показывает это на северной стене. В камере 3 на 3 на 2 внутри должен быть воздух, без воды и блоков. Без крыши это выглядит так:

<GameScene zoom="3" background="#333333" interactive={true}>
  <Block id="nautec:dark_prismarine_pillar" x="0" y="0" z="0"/>
  <Block id="nautec:polished_prismarine" x="1" y="0" z="0"/>
  <Block id="nautec:polished_prismarine" x="2" y="0" z="0"/>
  <Block id="nautec:polished_prismarine" x="3" y="0" z="0"/>
  <Block id="nautec:dark_prismarine_pillar" x="4" y="0" z="0"/>
  <Block id="nautec:polished_prismarine" x="0" y="0" z="1"/>
  <Block id="nautec:polished_prismarine" x="1" y="0" z="1"/>
  <Block id="nautec:polished_prismarine" x="2" y="0" z="1"/>
  <Block id="nautec:polished_prismarine" x="3" y="0" z="1"/>
  <Block id="nautec:polished_prismarine" x="4" y="0" z="1"/>
  <Block id="nautec:polished_prismarine" x="0" y="0" z="2"/>
  <Block id="nautec:polished_prismarine" x="1" y="0" z="2"/>
  <Block id="nautec:polished_prismarine" x="2" y="0" z="2"/>
  <Block id="nautec:polished_prismarine" x="3" y="0" z="2"/>
  <Block id="nautec:polished_prismarine" x="4" y="0" z="2"/>
  <Block id="nautec:polished_prismarine" x="0" y="0" z="3"/>
  <Block id="nautec:polished_prismarine" x="1" y="0" z="3"/>
  <Block id="nautec:polished_prismarine" x="2" y="0" z="3"/>
  <Block id="nautec:polished_prismarine" x="3" y="0" z="3"/>
  <Block id="nautec:polished_prismarine" x="4" y="0" z="3"/>
  <Block id="nautec:dark_prismarine_pillar" x="0" y="0" z="4"/>
  <Block id="nautec:polished_prismarine" x="1" y="0" z="4"/>
  <Block id="nautec:polished_prismarine" x="2" y="0" z="4"/>
  <Block id="nautec:polished_prismarine" x="3" y="0" z="4"/>
  <Block id="nautec:dark_prismarine_pillar" x="4" y="0" z="4"/>
  <Block id="nautec:dark_prismarine_pillar" x="0" y="1" z="0"/>
  <Block id="nautec:bacterial_containment_shield" x="1" y="1" z="0"/>
  <Block id="nautec:industrial_bio_reactor" x="2" y="1" z="0"/>
  <Block id="nautec:bacterial_containment_shield" x="3" y="1" z="0"/>
  <Block id="nautec:dark_prismarine_pillar" x="4" y="1" z="0"/>
  <Block id="nautec:bacterial_containment_shield" x="0" y="1" z="1"/>
  <Block id="nautec:bacterial_containment_shield" x="4" y="1" z="1"/>
  <Block id="nautec:bacterial_containment_shield" x="0" y="1" z="2"/>
  <Block id="nautec:bacterial_containment_shield" x="4" y="1" z="2"/>
  <Block id="nautec:bacterial_containment_shield" x="0" y="1" z="3"/>
  <Block id="nautec:bacterial_containment_shield" x="4" y="1" z="3"/>
  <Block id="nautec:dark_prismarine_pillar" x="0" y="1" z="4"/>
  <Block id="nautec:bacterial_containment_shield" x="1" y="1" z="4"/>
  <Block id="nautec:bacterial_containment_shield" x="2" y="1" z="4"/>
  <Block id="nautec:bacterial_containment_shield" x="3" y="1" z="4"/>
  <Block id="nautec:dark_prismarine_pillar" x="4" y="1" z="4"/>
  <Block id="nautec:dark_prismarine_pillar" x="0" y="2" z="0"/>
  <Block id="nautec:bacterial_containment_shield" x="1" y="2" z="0"/>
  <Block id="nautec:bacterial_containment_shield" x="2" y="2" z="0"/>
  <Block id="nautec:bacterial_containment_shield" x="3" y="2" z="0"/>
  <Block id="nautec:dark_prismarine_pillar" x="4" y="2" z="0"/>
  <Block id="nautec:bacterial_containment_shield" x="0" y="2" z="1"/>
  <Block id="nautec:bacterial_containment_shield" x="4" y="2" z="1"/>
  <Block id="nautec:bacterial_containment_shield" x="0" y="2" z="2"/>
  <Block id="nautec:bacterial_containment_shield" x="4" y="2" z="2"/>
  <Block id="nautec:bacterial_containment_shield" x="0" y="2" z="3"/>
  <Block id="nautec:bacterial_containment_shield" x="4" y="2" z="3"/>
  <Block id="nautec:dark_prismarine_pillar" x="0" y="2" z="4"/>
  <Block id="nautec:bacterial_containment_shield" x="1" y="2" z="4"/>
  <Block id="nautec:bacterial_containment_shield" x="2" y="2" z="4"/>
  <Block id="nautec:bacterial_containment_shield" x="3" y="2" z="4"/>
  <Block id="nautec:dark_prismarine_pillar" x="4" y="2" z="4"/>
  <IsometricCamera yaw="225" pitch="30"/>
</GameScene>

Щелкните правой кнопкой мыши промышленный биореактор со знаком <ItemLink id="aquarine_steel_wrench"/> в режиме вращения, не красясь, чтобы сформировать его. Если блок неправильный, чат называет его положение, что там и что должно быть. Разрушение любого блока образовавшегося реактора снова разбирает его на части.

Как только он будет сформирован, щелкните правой кнопкой мыши любой из его блоков без гаечного ключа в руке, чтобы открыть его.

***

## <Color id="gold">Сила</Color>

Ему требуется 100 AP плюс 50 AP за заполненный слот колонии: 150 AP для одной колонии и 550 AP для девяти, прежде чем обновления умножат его. Как и в случае с биореактором, это минимум. Ниже него ничего не работает, и весь прогресс сбрасывается, а более сильный луч над ним ускоряет реактор (см. «Сильнее лучи» ниже).

Электроэнергия поступает через люки в крыше. Щелкните правой кнопкой мыши один из стальных блоков Aquarine сформированной крыши с помощью гаечного ключа, чтобы превратить его в люк, и еще раз, чтобы повернуть его обратно. Это не работает в режиме «Стороны предмета», который вместо этого устанавливает стороны реактора. Люк принимает луч, направленный в него сверху, а люк на краю крыши также принимает луч, направленный на ее внешнюю сторону. Вы можете открыть столько люков, сколько захотите, и их мощность суммируется. Также учитывается луч, направленный в переднюю часть блока промышленного биореактора.

Это гораздо больше, чем дает один катализатор. [Преобразователь энергии](nautec:laser_chemistry/energy_converter.md) без улучшений отправляет до 150 AP за тик, поэтому четыре из них на четырех люках покрывают девять колоний без улучшений. Балки также можно объединить в <ItemLink id="laser_junction"/> до того, как они достигнут люка.

***

## <Color id="gold">Экран</Color>

* Сетка 3 на 3 слева содержит колонии. Тонкая полоска справа от каждого — это буфер питательных веществ, а полоска под ней — его прогресс.
* Сетка 3 на 3 справа содержит выходные данные: по одному слоту на каждую колонию в том же порядке.
* В нижнем ряду расположены три слота для питательных веществ слева и четыре слота для улучшений справа.
* Стрелка посередине показывает средний прогресс. Наведите указатель мыши на него, чтобы увидеть поступающую мощность в соответствии с необходимой мощностью и то, что делают обновления.

Девяти колониям требуется питание только из трех ячеек питательных веществ, поэтому используйте не более трех разных питательных веществ одновременно. [Кормление колоний](colony_feeding.md) содержит подробности.

***

## <Color id="gold">Автоматизация</Color>

* Каждая внешняя грань каждого блока принимает и отдает предметы: бункер на крыше или направленный в стену кормит питательными веществами и улучшениями, бункеры под полом вытягивают продукцию, а труба работает где угодно снаружи.
* [Боковая конфигурация](nautec:getting_started/utilities.md) определяет, что делает каждая сторона структуры. Используйте вкладку справа от экрана реактора или гаечный ключ в режиме «Стороны предметов» на любом блоке реактора. Одна настройка охватывает всю сторону: спереди — это стена с блоком промышленного биореактора, а слева и справа — стены слева и справа от вас, если вы смотрите на этот блок снаружи. Например, установите для крыши значение «Вставить», а для пола — значение «Извлечь», чтобы трубы на крыше никогда не вытягивали выход, а трубы под полом никогда не вталкивались в него.

Колонии загружаются и разгружаются через порт Диш. В верхний слот между решеткой колоний и выходами заходит чашка, а из нижнего выходит посуда с колонией; пустая посуда выходит из слота в нижнем ряду, между питательными веществами и улучшениями. Чашка Петри, содержащая колонию, загружает ее в первый слот для колоний, который может вместить ее всю. Как только каждый слот для колонии заполнен, вместо этого заменяется новая чашка для колонии, но только для стареющей колонии: ее колония заменяет самую старую стареющую колонию, а старая колония выходит в той же чашке, поэтому пустой чашки не остается. Пока ни одна колония не является стареющей, блюдо ожидает в порту, и замена также ожидает, пока выходной слот колонии заполнен. Пустая чашка удаляет колонию с наименьшим количеством питательного буфера, поэтому держите пустую посуду подальше от порта реактора, если только вы не собираетесь ее выгружать. Автоматизация достигает порта везде, где она достигает других слотов.

Автоматизация помещает предметы только в слоты для питательных веществ, улучшений и порта для блюда и забирает их только из выходных слотов и порта для блюда. Держите бункеры подальше от люков на крыше: блок, стоящий на люке, останавливает попадание в него балки.

Простая планировка: ящик и бункер в одном углу крыши для питательных веществ, люки с балками на остальной части крыши и бункеры под полом, ведущие в хранилище. Колония с крышкой может заполнить свой выходной слот примерно за десять секунд, поэтому дайте выходу более одного бункера, как только колонии станут сильными.

***

## <Color id="gold">Рецепт</Color>

<RecipeFor id="industrial_bio_reactor"/>

***

## <Color id="gold">Более сильные лучи</Color>

Промышленный биореактор сначала определяет необходимую ему AP из своих колоний и улучшений. Более сильный луч ускоряет производство помимо улучшений скорости: скорость — это квадратный корень из (луч ÷ то, что ему нужно).

| Луч, как кратный тому, что ему нужно | Скорость |
|---|---|
| 1× | ×1 (нормальный) |
| 4× | ×2 |
| 9× | ×3 |
| 16× | ×4 |

Эти двое умножаются. Реактор, чье обновление скорости позволяет ему работать ×1,5 и который получает в четыре раза больше необходимой мощности, работает ×3. Питательные вещества расходуются за такт работы, поэтому более сильный луч производит больше предметов из одного и того же питательного вещества. Наведите курсор на стрелку прогресса, чтобы увидеть скорость луча и общую скорость с улучшениями; Джейд также показывает скорость луча.

См. [Более сильные лучи](nautec:getting_started/stronger_beams.md), чтобы узнать о правиле и каждой машине, к которой оно применяется.
