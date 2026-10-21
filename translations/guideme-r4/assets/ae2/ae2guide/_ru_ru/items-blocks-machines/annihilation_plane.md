---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: "Самолет уничтожения"
  icon: annihilation_plane
  position: 210
categories:
- devices
item_ids:
- ae2:annihilation_plane
---

# <a name="the-annihilation-plane" />Самолет уничтожения

<GameScene zoom="8" background="transparent">
<ImportStructure src="../assets/blocks/annihilation_plane.snbt" />
</GameScene>

Самолет Аннигиляции разбивает блоки и собирает предметы. Он работает аналогично <ItemLink id="import_bus" />, переводя цифры в [сетевое хранилище](../ae2-mechanics/import-export-storage.md). Чтобы предметы можно было подобрать, они должны столкнуться с поверхностью самолета, он не подбирается в определенной области.

Самолеты уничтожения можно зачаровать любыми чарами для кирки, так что да, вы можете поставить сумасшедшие уровни удачи на несколько и [автоматизировать переработку руды](../example-setups/ore-fortuner.md), если ваш модпак это позволяет. Кроме того, Silk Touch делает то, что вы от него ожидаете: эффективность снижает затраты энергии на разрушение блока, а восстановление дает возможность не использовать энергию.

Они [части кабеля](../ae2-mechanics/cable-subparts.md).

**НЕОБХОДИМО ВКЛЮЧИТЬ ФАЛЬШИВЫХ ИГРОКОВ В ВАШЕМ ЧАНКЕ ЗАЯВКИ**

## <a name="filtering" />Фильтрация

Плоскость уничтожения разобьет блок или подберет предмет только в том случае, если она сможет сохранить полученные капли/предметы в своей сети. Это означает, что для фильтрации *вы должны ограничить то, что может храниться в его сети*, скорее всего, поставив его на [подсеть](../ae2-mechanics/subnetworks.md). Для достижения этой цели <ItemLink id="storage_bus" /> или [клетка](../items-blocks-machines/storage_cells.md) может быть [разделенный](cell_workbench.md).

<GameScene zoom="6" interactive={true}>
  <ImportStructure src="../assets/assemblies/annihilation_filtering.snbt" />

  <DiamondAnnotation pos="1 0.5 0.5" color="#00ff00">
        Отфильтровано все, что выпадает из предмета, который вы хотите сломать.
  </DiamondAnnotation>

  <DiamondAnnotation pos=".5 0.5 2.5" color="#00ff00">
        Разделяется на все, что выпадет из того, что вы хотите сломать.
  </DiamondAnnotation>

  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

Опять же, он фильтрует *по выпадающим предметам*, поэтому, например, если вы хотите отфильтровать нарушение <ItemLink id="minecraft:amethyst_cluster" />, вам нужен самолет, зачарованный Silk Touch, иначе на каждой предыдущей стадии роста ничего не выпадет, и поэтому самолет сломает их несмотря ни на что, поскольку сеть всегда может хранить «ничего».

## <a name="recipe" />Рецепт

<RecipeFor id="annihilation_plane" />
