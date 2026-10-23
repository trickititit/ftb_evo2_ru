---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: "Интерфейс"
  icon: interface
  position: 210
categories:
- devices
item_ids:
- ae2:interface
- ae2:cable_interface
---

# <a name="the-interface" />Интерфейс

<Row gap="20">
<BlockImage id="interface" scale="8" />
<GameScene zoom="8" background="transparent">
  <ImportStructure src="../assets/blocks/cable_interface.snbt" />
</GameScene>
</Row>

Интерфейсы действуют как небольшой ящик с жидкостью, который наполняется и опорожняется. [сетевое хранилище](../ae2-mechanics/import-export-storage.md) в зависимости от того, что вы установили, чтобы хранить запас в своих слотах. Он пытается выполнить это за один игровой такт, поэтому может заполнить или опустошить до 9 стаков за игровой такт, что делает его быстрым методом импорта или экспорта, если у вас есть быстрые конвейеры предметов.

Еще одна полезная особенность заключается в том, что, хотя большинство резервуаров с жидкостью могут хранить только один тип жидкости, интерфейсы могут хранить до 9, а также предметы. По сути, это просто сундуки/емкости с несколькими жидкостями с некоторой дополнительной функциональностью, и вы можете предотвратить эту дополнительную функциональность, отключив их от любых сетей. Таким образом, они полезны в некоторых нишевых случаях, когда вы хотите хранить небольшое количество разных вещей.

## <a name="how-an-interface-works-internally" />Как интерфейс работает внутри

Как уже говорилось ранее, интерфейс — это, по сути, сундук/танк с некоторыми супер-пупер <ItemLink id="import_bus" /> и
Прикреплены <ItemLink id="export_bus" /> и куча <ItemLink id="level_emitter" />.

<GameScene zoom="3" interactive={true}>
  <ImportStructure src="../assets/assemblies/interface_internals.snbt" />

  <BoxAnnotation color="#dddddd" min="1.3 0.3 1.3" max="9.7 1 1.7">
        Набор датчиков уровня для контроля запрошенного количества товара на складе.
        <GameScene zoom="4" background="transparent">
        <ImportStructure src="../assets/blocks/level_emitter.snbt" />
        </GameScene>
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="1.3 4 1.3" max="9.7 4.7 1.7">
        Набор датчиков уровня для контроля запрошенного количества товара на складе.
        <GameScene zoom="4" background="transparent">
        <ImportStructure src="../assets/blocks/level_emitter.snbt" />
        </GameScene>
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="1.3 1.3 1.3" max="9.7 2 1.7">
        Куча супер-пупер импортных автобусов, способных переносить 1 стак за геймтик
        <GameScene zoom="4" background="transparent">
        <ImportStructure src="../assets/blocks/import_bus.snbt" />
        </GameScene>
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="1.3 3 1.3" max="9.7 3.7 1.7">
        Куча супер-пупер экспортных автобусов, способных переносить 1 стак за геймтик
        <GameScene zoom="4" background="transparent">
        <ImportStructure src="../assets/blocks/export_bus.snbt" />
        </GameScene>
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="1 2 1" max="10 3 2">
        9 отдельных внутренних слотов
  </BoxAnnotation>

  <IsometricCamera yaw="195" pitch="15" />
</GameScene>

## <a name="special-interactions" />Специальные взаимодействия

Интерфейсы также имеют несколько специальных функций с другими AE2 [устройства](../ae2-mechanics/devices.md):

<ItemLink id="storage_bus" /> на ненастроенном интерфейсе будет представлять всю [сетевое хранилище](../ae2-mechanics/import-export-storage.md) его сети сети шины хранения данных, как если бы сеть интерфейса представляла собой один большой сундук, на котором была размещена шина хранения данных. Установка элемента, который будет храниться в слотах фильтра интерфейса, отключает это.

<GameScene zoom="6" interactive={true}>
  <ImportStructure src="../assets/assemblies/interface_storage.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

Поставщики шаблонов имеют особое взаимодействие с интерфейсами на [подсети](../ae2-mechanics/subnetworks.md): если интерфейс не настроен, поставщик полностью пропустит интерфейс и отправит данные непосредственно в [хранение](../ae2-mechanics/import-export-storage.md) этой подсети, пропуская интерфейс и не заполняя его пакетами рецептов, и, что более важно, не вставляя следующий пакет до тех пор, пока в хранилище не освободится место.

<GameScene zoom="6" background="transparent">
<ImportStructure src="../assets/assemblies/provider_interface_storage.snbt" />

<BoxAnnotation color="#dddddd" min="2.7 0 1" max="3 1 2">
        Интерфейс (должен быть плоским, а не полноблочным)
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="1 0 0" max="1.3 1 4">
        Автобусы-хранилища
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="0 0 0" max="1 1 4">
        Места, для которых вы хотите предоставить шаблоны (несколько машин или несколько сторон одной машины)
  </BoxAnnotation>

<IsometricCamera yaw="185" pitch="30" />
</GameScene>

## <a name="variants" />Варианты

Интерфейсы бывают двух разных вариантов: обычный и плоский/[подраздел](../ae2-mechanics/cable-subparts.md). Это влияет на то, с каких конкретных сторон можно получить доступ к их инвентарям и к которым они обеспечивают сетевое соединение.

*   Обычные интерфейсы позволяют вещам входить, извлекать и получать доступ к своему инвентарю со всех сторон и, как и большинство машин AE2, действуют как кабель, обеспечивающий сетевое соединение со всех сторон.

*   Плоские интерфейсы имеют обозначение [части кабеля](../ae2-mechanics/cable-subparts.md), поэтому на одном кабеле можно разместить несколько интерфейсов, что обеспечивает компактность установки. Они позволяют вещам входить, извлекать и получать доступ к своему инвентарю с их лица, но не обеспечивают сетевое соединение с их лица.

Интерфейсы можно переключать между обычными и плоскими в сетке крафта.

## <a name="settings" />Настройки

Верхние слоты интерфейса определяют, что интерфейс будет хранить внутри себя. Когда что-то помещается в них или перетаскивается из JEI/REI, появляется гаечный ключ, позволяющий установить количество.

Щелкните правой кнопкой мыши контейнер с жидкостью (например, ведро или резервуар с жидкостью), чтобы установить эту жидкость в качестве фильтра вместо ведра или бака.

Когда вы устанавливаете слот в режим хранения, это также не позволяет внешним машинам вставлять что-либо еще в этот слот.

## <a name="upgrades" />Обновления

Интерфейс поддерживает следующие [обновления](upgrade_cards.md):

*   <ItemLink id="fuzzy_card" /> позволяет шине фильтровать по уровню повреждения и/или игнорировать элемент NBT.
*   <ItemLink id="crafting_card" /> позволяет интерфейсу отправлять запросы на создание в вашу систему [автокрафтинг](../ae2-mechanics/autocrafting.md), чтобы получить желаемые предметы. Он будет извлекать предметы из хранилища, если это возможно, прежде чем сделать запрос на создание нового предмета.

## <a name="priority" />Приоритет

Приоритеты можно установить, щелкнув гаечный ключ в правом верхнем углу графического интерфейса. Интерфейсы с более высоким приоритетом получат свои элементы раньше интерфейсов с более низким приоритетом.

## <a name="recipes" />Рецепты

<Recipe id="network/blocks/interfaces_interface" />

<RecipeFor id="cable_interface" />
