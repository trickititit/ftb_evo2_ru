---
navigation:
  parent: example-setups/example-setups-index.md
  title: "Аметистовая ферма"
  icon: minecraft:amethyst_shard
---

# <a name="farming-of-amethyst" />Фермерство аметиста

Хотя <ItemLink id="growth_accelerator" /> работает с аметистом, обычные методы фильтрации [почки цертуса](../items-blocks-machines/budding_certus.md) с помощью <ItemLink id="annihilation_plane" /> не работают с бутонами аметиста. В отличие от незрелых почек цертуса, которые опадают
<ItemLink id="certus_quartz_dust" />, из незрелых бутонов аметиста ничего не выпадает, поэтому самолет уничтожения всегда их сломает.
потому что сеть всегда может хранить «ничего».

Чтобы обойти эту проблему, нужно зачаровать план уничтожения Шелковым прикосновением. Тогда незрелые бутоны аметиста *делают* что-то опадающим (различные стадии физических бутонов блокируются), и таким образом их можно отфильтровать.

Затем <ItemLink id="minecraft:amethyst_cluster" /> необходимо снова поставить на <ItemLink id="formation_plane" />, а затем повторно разбить на <ItemLink id="annihilation_plane" /> без Silk Touch, чтобы получить <ItemLink id="minecraft:amethyst_shard" />.

Обратите внимание, что из-за направленности кластера должна быть сплошная грань блока, прямо противоположная плоскости образования.

<GameScene zoom="6" interactive={true}>
  <ImportStructure src="../assets/assemblies/amethyst_farm.snbt" />

  <BoxAnnotation color="#dddddd" min="2.7 1 1" max="3 2 2">
        (1) Самолет Аннигиляции №1: нет графического интерфейса для настройки, но он зачарован Silk Touch.
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="2 1 1" max="2.3 2 2">
        (2) Плоскость формирования: фильтруется до скопления аметиста.
        <ItemImage id="minecraft:amethyst_cluster" scale="2" />
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="1.3 0.7 1" max="2 1 2">
        (3) Самолет уничтожения № 2: нет графического интерфейса для настройки, но его можно зачаровать с помощью Фортуны.
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="1 0 1" max="1.3 1 2">
        (4) Шина хранения №1: фильтруется в осколок аметиста.
        <ItemImage id="minecraft:amethyst_shard" scale="2" />
  </BoxAnnotation>

  <BoxAnnotation color="#dddddd" min="0 0 .7" max="1 1 1">
        (5) Шина хранения № 2: фильтруется в осколок аметиста. Имеет приоритет выше, чем у основного хранилища.
        <ItemImage id="minecraft:amethyst_shard" scale="2" />
  </BoxAnnotation>

<DiamondAnnotation pos="0 0.5 0.5" color="#00ff00">
        В основную сеть
    </DiamondAnnotation>

  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

## <a name="configurations" />Конфигурации

* Первый <ItemLink id="annihilation_plane" /> (1) не имеет графического интерфейса и не может быть настроен, но его необходимо зачаровать с помощью Silk Touch.
* <ItemLink id="formation_plane" /> (2) фильтруется до <ItemLink id="minecraft:amethyst_cluster" />.
* Второй <ItemLink id="annihilation_plane" /> (3) не имеет графического интерфейса и не может быть настроен, но его можно зачаровать удачей.
* Первый <ItemLink id="storage_bus" /> (4) фильтруется до <ItemLink id="minecraft:amethyst_shard" />.
* Второй <ItemLink id="storage_bus" /> (5) фильтруется до <ItemLink id="minecraft:amethyst_shard" />, а его [приоритет](../ae2-mechanics/import-export-storage.md#storage-priority) устанавливается выше, чем в вашем основном хранилище.

## <a name="how-it-works" />Как это работает

1. Первый <ItemLink id="annihilation_plane" /> пытается сломать то, что находится перед ним, но может сломать только <ItemLink id="minecraft:amethyst_cluster" />
    потому что единственное хранилище в подсети — это <ItemLink id="formation_plane" />, отфильтрованное в кластер аметиста. Это работает только потому, что самолет зачарован Шелковым прикосновением, иначе он сможет сломать незрелые бутоны, потому что с них ничего не выпадет.
2. <ItemLink id="formation_plane" /> помещает кластер в противоположный ему блок.
3. Второй <ItemLink id="annihilation_plane" /> разрывает кластер, производя <ItemLink id="minecraft:amethyst_shard" />.
4. Первый <ItemLink id="storage_bus" /> хранит осколки в бочке. Технически это не нужно фильтровать, потому что единственный
то, с чем должен столкнуться второй самолет уничтожения, — это полностью выросшие скопления.
5. Второй <ItemLink id="storage_bus" /> предоставляет основной сетевой доступ ко всем осколкам аметиста в бочке. Он установлен на
высокий [приоритет](../ae2-mechanics/import-export-storage.md#storage-priority), чтобы осколки аметиста предпочтительно помещались обратно в бочку, а не в основное хранилище.
