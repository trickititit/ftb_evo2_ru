---
navigation:
  parent: example-setups/example-setups-index.md
  title: "Полуавтоматическая ферма Certus"
  icon: certus_quartz_crystal
  position: 115
---

# <a name="semi-auto-certus-farm" />Полуавтоматическая ферма Certus

К сожалению, для полностью автоматической работы [простая ферма сертификатов](simple-certus-farm.md) требуется <ItemLink id="flawless_budding_quartz" />. Для этого нужно либо [Пространственный ввод-вывод](../ae2-mechanics/spatial-io.md), либо построить ферму на [метеорит](../ae2-mechanics/meteorites.md).

Тем не менее, AE2 может ставить и разбивать блоки, так что, возможно, ваша ферма *заменит вам зарождающийся цертус*. (Вам придется периодически вставлять некоторые
<ItemLink id="flawed_budding_quartz" /> во входную бочку и извлеките <ItemLink id="quartz_block" /> из израсходованной
расцветающий ствол цертуса)

Чтобы сделать это полностью автоматически, см. [Продвинутая ферма Цертус](advanced-certus-farm.md).

Эта ферма немного сложнее, чем [простая ферма сертификатов](simple-certus-farm.md), потому что на самом деле это 3 отдельные установки, собранные вместе.

См. [Рост Цертуса](../ae2-mechanics/certus-growth.md) для ознакомления с расчетной скоростью.

**ЭТО СЛОЖНАЯ ЗДАНИЕ, ВЕЩИ СКРЫТЫ ЗА ДРУГИМИ ВЕЩАМИ. ПОВТОРНО, ЧТОБЫ ПРОСМОТРЕТЬ ЕГО СО ВСЕХ УГОЛОВ**

<GameScene zoom="6" interactive={true}>
  <ImportStructure src="../assets/assemblies/semiauto_certus_farm.snbt" />

  <BoxAnnotation color="#ddaaaa" min="3.7 2 1" max="4 3 2">
        (1) Самолет уничтожения №1: нет графического интерфейса для настройки, но его можно зачаровать с помощью Фортуны.
  </BoxAnnotation>

  <BoxAnnotation color="#ddaaaa" min="2 2 1" max="2.3 3 2">
        (2) Шина хранения № 1: фильтруется в кристалл кварца Certus.
        <ItemImage id="certus_quartz_crystal" scale="2" />
  </BoxAnnotation>

  <DiamondAnnotation pos="3 2.5 1.5" color="#ff0000">
    Подсеть кластерного прерывателя
  </DiamondAnnotation>

  <BoxAnnotation color="#aaddaa" min="3.7 1 1" max="4 2 2">
        (3) Самолет Аннигиляции №2: нет графического интерфейса для настройки, но он зачарован Silk Touch.
  </BoxAnnotation>

  <BoxAnnotation color="#aaddaa" min="2 1 1" max="2.3 2 2">
        (4) Шина хранения № 2: фильтруется в блок Certus Quartz.
        <BlockImage id="quartz_block" scale="2" />
  </BoxAnnotation>

  <DiamondAnnotation pos="3 1.5 1.5" color="#00ff00">
    Подсеть Certus Block Breaker
  </DiamondAnnotation>

  <BoxAnnotation color="#ffddaa" min="4 0.7 1" max="5 1 2">
        (5) Плоскость формирования: в конфигурации по умолчанию.
  </BoxAnnotation>

  <BoxAnnotation color="#ffddaa" min="2 0 1" max="2.3 1 2">
        (6) Импортная шина: в конфигурации по умолчанию.
  </BoxAnnotation>

  <DiamondAnnotation pos="3 0.5 1.5" color="#ddcc00">
    Подсеть места размещения блоков
  </DiamondAnnotation>

  <BoxAnnotation color="#aaaadd" min="0.7 2 1" max="1 3 2">
        (7) Шина хранения №3: фильтруется в кристалл кварца Certus. Имеет приоритет выше, чем у основного хранилища.
        <ItemImage id="certus_quartz_crystal" scale="2" />
  </BoxAnnotation>

    <DiamondAnnotation pos="1.5 0.5 1.5" color="#00ff00">
        Вручную вставьте Flawed Budding Certus Quartz.
        <BlockImage id="flawed_budding_quartz" scale="2" />
    </DiamondAnnotation>

    <DiamondAnnotation pos="1.5 1.5 1.5" color="#00ff00">
        Вручную извлеките кварцевый блок Certus.
        <BlockImage id="quartz_block" scale="2" />
    </DiamondAnnotation>

<DiamondAnnotation pos="0.5 0.5 0" color="#00ff00">
        В основную сеть
    </DiamondAnnotation>

  <IsometricCamera yaw="165" pitch="5" />
</GameScene>

## <a name="configurations" />Конфигурации

### <a name="cluster-breaker:" />Разрушитель кластера:

* Первый <ItemLink id="annihilation_plane" /> (1) не имеет графического интерфейса и не может быть настроен, но его можно зачаровать с помощью Фортуны.
* Первый <ItemLink id="storage_bus" /> (2) фильтруется до <ItemLink id="certus_quartz_crystal" />.

### <a name="certus-block-breaker:" />Разрушитель блоков Certus:

* Второй <ItemLink id="annihilation_plane" /> (3) не имеет графического интерфейса и не может быть настроен, но его необходимо зачаровать с помощью Silk Touch.
* Второй <ItemLink id="storage_bus" /> (4) фильтруется до <ItemLink id="quartz_block" />.

### <a name="budding-block-placer:" />Укладка перспективного блока:

* <ItemLink id="formation_plane" /> (5) имеет конфигурацию по умолчанию.
* <ItemLink id="import_bus" /> (6) имеет конфигурацию по умолчанию.

### <a name="on-main-network:" />В основной сети:

* Третий <ItemLink id="storage_bus" /> (7) фильтруется до <ItemLink id="certus_quartz_crystal" />, а его [приоритет](../ae2-mechanics/import-export-storage.md#storage-priority) устанавливается выше, чем в вашем основном хранилище.

## <a name="how-it-works" />Как это работает

### <a name="cluster-breaker:" />Разрушитель кластера:

Подсеть прерывателя кластера работает очень похоже на подсеть в [простая ферма сертификатов](simple-certus-farm.md).

1. <ItemLink id="annihilation_plane" /> пытается сломать то, что находится перед ним, но может сломать только <ItemLink id="quartz_cluster" />.
   потому что единственное хранилище в подсети — это <ItemLink id="storage_bus" />, отфильтрованное до <ItemLink id="certus_quartz_crystal" />.
2. <ItemLink id="storage_bus" /> хранит кристаллы цертусового кварца в стволе.

### <a name="certus-block-breaker" />Разрушитель блоков Certus

Подсеть прерывателя блоков certus служит для разрушения истощенного блока почкования, когда он превращается в простой <ItemLink id="quartz_block" />. Он работает аналогично прерывателю кластеров.

1. <ItemLink id="annihilation_plane" /> пытается сломать то, что находится перед ним, но может сломать только <ItemLink id="quartz_block" />.
   потому что единственное хранилище в подсети — это <ItemLink id="storage_bus" />, отфильтрованное до <ItemLink id="quartz_block" />. Самолет должен иметь Silk Touch, чтобы блок расцветки не разрушался при разрушении и, следовательно, самолет не сломал его преждевременно.
2. <ItemLink id="storage_bus" /> хранит блок цертусового кварца в отработанном
   зарождающаяся бочка цертуса, вам придется вручную бросить ее в воду с помощью <ItemLink id="charged_certus_quartz_crystal" />, чтобы освежить ее.

### <a name="budding-block-placer" />Укладчик перспективных блоков

Подсеть-рассыпной блок для почкования служит для размещения нового <ItemLink id="flawed_budding_quartz" />, когда подсеть-прерыватель разрушает старую истощенную.

1. <ItemLink id="import_bus" /> Импортирует блок почкования из входной бочки.
2. Единственное хранилище в подсети — это <ItemLink id="formation_plane" />, в котором размещается блок формирования.

### <a name="on-the-main-network" />В основной сети

* <ItemLink id="storage_bus" /> дает основной сети (а также [Автоматизация зарядного устройства](charger-automation.md)) доступ ко всем кристаллам цертусового кварца в стволе. Он установлен на высокое значение [приоритет](../ae2-mechanics/import-export-storage.md#storage-priority), чтобы кристаллы цертусового кварца предпочтительно помещались обратно в бочку, а не в основное хранилище.
