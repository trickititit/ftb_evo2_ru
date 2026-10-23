---
navigation:
  parent: example-setups/example-setups-index.md
  title: "Подсеть «Труба» предмета/жидкости"
  icon: storage_bus
---

# <a name="item/fluid-&quot;pipe&quot;-subnet" />Подсеть «Труба» предмета/жидкости

Простой метод эмуляции предмета и/или трубки с жидкостью с помощью AE2 [устройства](../ae2-mechanics/devices.md), полезный для всего, для чего вы используете предмет или трубку с жидкостью. Это включает в себя возврат результата крафта в <ItemLink id="pattern_provider" />.

Обычно есть два разных метода достижения этой цели:

## Импортная шина -> Шина хранения

<GameScene zoom="6" background="transparent">
  <ImportStructure src="../assets/assemblies/import_storage_pipe.snbt" />

<BoxAnnotation color="#dddddd" min="3.7 0 0" max="4 1 1">
        (1) Импортная шина: можно фильтровать.
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="1 0 0" max="1.3 1 1">
        (2) Шина хранения: можно фильтровать. Эта (и другие шины хранения, которые вы хотите использовать в качестве назначения) должна быть единственной системой хранения в сети.
  </BoxAnnotation>

<DiamondAnnotation pos="4.5 0.5 0.5" color="#00ff00">
        Источник
    </DiamondAnnotation>

<DiamondAnnotation pos="0.5 0.5 0.5" color="#00ff00">
        Пункт назначения
    </DiamondAnnotation>

  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

Символ <ItemLink id="import_bus" /> (1) в исходном инвентаре импортирует предметы или жидкость и пытается сохранить их в [сетевое хранилище](../ae2-mechanics/import-export-storage.md). Поскольку единственным хранилищем в сети является <ItemLink id="storage_bus" /> (2) (именно поэтому это подсеть, а не ваша основная сеть), предметы или жидкость помещаются в инвентарь назначения и, таким образом, передаются. Энергия подается через <ItemLink id="quartz_fiber" />. И шину импорта, и шину хранения можно фильтровать, но установка передаст все, к чему может получить доступ, если фильтры не будут применены. Эта установка также работает с несколькими шинами импорта и несколькими шинами хранения.

## Шина хранения -> Шина экспорта

<GameScene zoom="6" background="transparent">
  <ImportStructure src="../assets/assemblies/storage_export_pipe.snbt" />

<BoxAnnotation color="#dddddd" min="3.7 0 0" max="4 1 1">
        (1) Шина хранения: можно фильтровать. Эта (и другие шины хранения, которые вы хотите использовать в качестве источника) должна быть единственной системой хранения в сети.
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="1 0 0" max="1.3 1 1">
        (2) Экспортная шина: необходимо фильтровать.
  </BoxAnnotation>

<DiamondAnnotation pos="4.5 0.5 0.5" color="#00ff00">
        Источник
    </DiamondAnnotation>

<DiamondAnnotation pos="0.5 0.5 0.5" color="#00ff00">
        Пункт назначения
    </DiamondAnnotation>

  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

<ItemLink id="export_bus" /> в инвентаре назначения пытается извлечь предметы из своего фильтра из [сетевое хранилище](../ae2-mechanics/import-export-storage.md). Поскольку единственным хранилищем в сети является <ItemLink id="storage_bus" /> (именно поэтому это подсеть, а не ваша основная сеть), предметы или жидкость извлекаются из исходного инвентаря и таким образом передаются. Энергия подается через <ItemLink id="quartz_fiber" />. Поскольку для работы экспортные шины должны быть отфильтрованы, эта настройка работает только в том случае, если вы фильтруете экспортную шину. Эта настройка также работает с несколькими шинами хранения и несколькими шинами экспорта.

## Настройка, которая не работает (Импортная шина -> Экспортная шина)

<GameScene zoom="6" background="transparent">
  <ImportStructure src="../assets/assemblies/import_export_pipe.snbt" />

<BoxAnnotation color="#dd3333" min="3.7 0 0" max="4 1 1">
        Импортная шина: поскольку в сети нет хранилища, импортировать некуда.
  </BoxAnnotation>

<BoxAnnotation color="#dd3333" min="1 0 0" max="1.3 1 1">
        (2) Экспортная шина: поскольку в сети нет хранилища, ей нечего экспортировать.
  </BoxAnnotation>

<DiamondAnnotation pos="4.5 0.5 0.5" color="#ff0000">
        Источник
    </DiamondAnnotation>

<DiamondAnnotation pos="0.5 0.5 0.5" color="#ff0000">
        Пункт назначения
    </DiamondAnnotation>

  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

Установка только с шиной импорта и экспорта не будет работать. Шина импорта попытается извлечь из исходного инвентаря и сохранить предметы или жидкость в сетевом хранилище. Экспортная шина попытается извлечь данные из сетевого хранилища и поместить предметы или жидкость в целевой инвентарь. Однако, поскольку в этой сети **нет хранилища**, шина импорта не может импортировать, а шина экспорта не может экспортировать, поэтому ничего не происходит.

## <a name="inputting-and-outputting-through-1-face" />Ввод и вывод через 1 грань

Предположим, у вас есть машина, которая может принимать входные данные и пропускать их выходные данные через одну грань. (Например, <ItemLink id="charger" />) Вы можете как вставлять ингредиенты, так и получать результат, комбинируя два метода подсети канала:

<GameScene zoom="6" background="transparent">
  <ImportStructure src="../assets/assemblies/import_storage_export_pipe.snbt" />

<BoxAnnotation color="#dddddd" min="4 1 1" max="5 1.3 2">
        (1) Импортная шина: можно фильтровать.
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="2 1 1" max="3 1.3 2">
        (2) Шина хранения: можно фильтровать. Это (и другие шины хранения, на которые вы хотите передавать и получать элементы) должно быть единственным хранилищем в сети.
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="2 0 1" max="3 1 2">
        (3) Вещь, к которой вы хотите подтолкнуть и вытащить: в данном случае зарядное устройство.
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="0 1 1" max="1 1.3 2">
        (4) Экспортная шина: необходимо фильтровать.
  </BoxAnnotation>

<DiamondAnnotation pos="4.5 0.5 1.5" color="#00ff00">
        Источник
    </DiamondAnnotation>

<DiamondAnnotation pos="0.5 0.5 1.5" color="#00ff00">
        Пункт назначения
    </DiamondAnnotation>

  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

## <a name="interfaces" />Интерфейсы

Оказывается, помимо импортных и экспортных автобусов есть [устройства](../ae2-mechanics/devices.md), которые заталкивают товары в [сетевое хранилище](../ae2-mechanics/import-export-storage.md) и вывозят их! Здесь имеет значение <ItemLink id="interface" />. Если вставлен элемент, для которого не установлен стандартный интерфейс, интерфейс отправит его в сетевое хранилище, что мы можем использовать аналогично каналу импортной шины -> шины хранения. Настройка интерфейса для хранения некоторого элемента приведет к его извлечению из сетевого хранилища, аналогично каналу шины хранения -> шины экспорта. Интерфейсы можно настроить для хранения одних вещей и запрета хранения других, что позволяет вам удаленно перемещать и получать данные по шинам хранения, если вы по какой-то причине захотите это сделать.

<GameScene zoom="6" background="transparent">
<ImportStructure src="../assets/assemblies/interface_pipes.snbt" />

<BoxAnnotation color="#dddddd" min="3.7 0 0" max="4 1 1">
        Интерфейс
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="1 0 0" max="1.3 1 1">
        Автобус хранения
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="3.7 0 2" max="4 1 3">
        Автобус хранения
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="0 1 2" max="1 1.3 3">
        Интерфейс
  </BoxAnnotation>

<IsometricCamera yaw="195" pitch="30" />
</GameScene>

## <a name="one-to-many-and-many-to-one-(and-many-to-many)" />Один-ко-многим и многие-к одному (и многие-ко-многим)

Конечно, вам не обязательно использовать только один <ItemLink id="import_bus" />, <ItemLink id="export_bus" /> или <ItemLink id="storage_bus" />.

<GameScene zoom="3" background="transparent">
<ImportStructure src="../assets/assemblies/many_to_many_pipe.snbt" />

<IsometricCamera yaw="185" pitch="30" />
</GameScene>

## <a name="providing-to-multiple-places" />Доставка в несколько мест

Из всего этого мы можем вывести метод для отправки ингредиентов с одной грани <ItemLink id="pattern_provider" /> во множество разных мест, например, в ряд машин или в несколько разных граней одной машины.

Нам не нужен канал импорта -> хранения или канал хранения -> экспорта, потому что <ItemLink id="pattern_provider" /> на самом деле никогда не содержит ингредиентов. Вместо этого поставщики *переносят* ингредиенты в соседние запасы, поэтому нам нужен какой-то смежный инвентарь, который также может импортировать элементы.

Это звучит как... <ItemLink id="interface" />! Убедитесь, что поставщик находится в режиме направленного или плоского подразделения и/или интерфейс находится в режиме плоского подразделения, чтобы они не образовывали сетевое соединение.

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
