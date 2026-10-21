---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: "Ячейки хранения"
  icon: item_storage_cell_1k
  position: 410
categories:
- tools
item_ids:
- ae2:item_cell_housing
- ae2:fluid_cell_housing
- ae2:cell_component_1k
- ae2:cell_component_4k
- ae2:cell_component_16k
- ae2:cell_component_64k
- ae2:cell_component_256k
- ae2:item_storage_cell_1k
- ae2:item_storage_cell_4k
- ae2:item_storage_cell_16k
- ae2:item_storage_cell_64k
- ae2:item_storage_cell_256k
- ae2:fluid_storage_cell_1k
- ae2:fluid_storage_cell_4k
- ae2:fluid_storage_cell_16k
- ae2:fluid_storage_cell_64k
- ae2:fluid_storage_cell_256k
---

# <a name="storage-cells" />Ячейки хранения

<Column>
  <Row>
    <ItemImage id="item_storage_cell_1k" scale="4" />

    <ItemImage id="item_storage_cell_4k" scale="4" />

    <ItemImage id="item_storage_cell_16k" scale="4" />

    <ItemImage id="item_storage_cell_64k" scale="4" />

    <ItemImage id="item_storage_cell_256k" scale="4" />
  </Row>

  <Row>
    <ItemImage id="fluid_storage_cell_1k" scale="4" />

    <ItemImage id="fluid_storage_cell_4k" scale="4" />

    <ItemImage id="fluid_storage_cell_16k" scale="4" />

    <ItemImage id="fluid_storage_cell_64k" scale="4" />

    <ItemImage id="fluid_storage_cell_256k" scale="4" />
  </Row>
</Column>

Ячейки хранения являются одним из основных методов хранения в прикладной энергетике. Они идут через <ItemLink id="drive" />s или <ItemLink id="me_chest" />s.

См. [Байты и типы](../ae2-mechanics/bytes-and-types.md) для объяснения их емкости в байтах и типах.

Ячейки можно разобрать обратно на компонент хранения и корпус: сначала очистите ячейку, затем щелкните правой кнопкой мыши, удерживая клавишу Shift, держа ячейку в руке.

<Row>
    <Recipe id="upgrade/item_storage_cell_1k_to_4k" />

    Вы можете улучшить ячейки хранилища до более высоких уровней, объединив их с компонентами хранилища более высокого уровня в сетке крафта. Их содержимое будет сохранено, а компонент нижнего уровня будет возвращен.
</Row>

## <a name="storage-capacity-with-varying-type-count" />Емкость хранилища с различным количеством типов

[первоначальная стоимость типов](../ae2-mechanics/bytes-and-types.md) таково, что ячейка, содержащая 1 тип, может содержать в 2 раза больше, чем ячейка, в которой используются все 63 типа.

| Ячейка | Общая емкость ячейки при использовании 1 типа | Общая емкость ячеек с 63 используемыми типами |
| ---------------------------------------- | ----------------------------------------: | ------------------------------------------: |
| <ItemLink id="item_storage_cell_1k" />   |                                     8,128 |                                       4,160 |
| <ItemLink id="item_storage_cell_4k" />   |                                    32,512 |                                      16,640 |
| <ItemLink id="item_storage_cell_16k" />  |                                   130,048 |                                      66,560 |
| <ItemLink id="item_storage_cell_64k" />  |                                   520,192 |                                     266,240 |
| <ItemLink id="item_storage_cell_256k" /> |                                 2,080,768 |                                   1,064,960 |


## <a name="partitioning" />Разделение

Ячейки можно фильтровать, чтобы принимать только определенные элементы, аналогично тому, как можно фильтровать <ItemLink id="storage_bus" />es. Это делается в <ItemLink id="cell_workbench" />.

Предметы можно перетаскивать в слоты из JEI/REI, даже если у вас на самом деле нет ни одного из этих предметов.

## <a name="upgrades" />Обновления

Ячейки хранения поддерживают следующий [обновления](upgrade_cards.md), вставленный через <ItemLink id="cell_workbench" />:

*   <ItemLink id="fuzzy_card" /> (недоступно для ячеек с жидкостью) позволяет разделить ячейку по уровню повреждения и/или игнорировать элемент NBT.
*   <ItemLink id="inverter_card" /> переключает фильтр из белого списка в черный список.
*   <ItemLink id="equal_distribution_card" /> выделяет одинаковое количество байтов ячейки для каждого типа, поэтому один тип не может заполнить всю ячейку
*   <ItemLink id="void_card" /> аннулирует вставленные элементы, если ячейка заполнена (или выделенное пространство этого конкретного типа в случае равной карты распределения), что полезно для предотвращения резервного копирования ферм. Будьте осторожны, разделив это!
*   Портативные элементы могут принимать <ItemLink id="energy_card" />, чтобы увеличить емкость батареи.

## <a name="coloring" />Раскраска

Портативные предметы и жидкостные элементы можно раскрасить так же, как кожаную броню, если создать их вместе с красителями.

# <a name="housings" />Корпуса

Ячейки могут быть изготовлены с компонентом хранения и корпусом или с рецептом корпуса вокруг компонента хранения:

<Row>
  <Recipe id="network/cells/item_storage_cell_1k" />

  <Recipe id="network/cells/item_storage_cell_1k_storage" />
</Row>

Сами по себе корпуса изготавливаются так:

<Row>
  <RecipeFor id="item_cell_housing" />

  <RecipeFor id="fluid_cell_housing" />
</Row>

# <a name="storage-components" />Компоненты хранения

Компоненты хранения — это ядро всех ячеек AE2, определяющее емкость ячеек. Каждый уровень увеличивает емкость в 4 раза и стоит 3 единицы предыдущего уровня.

<Column>
  <Row>
    <RecipeFor id="cell_component_1k" />

    <RecipeFor id="cell_component_4k" />

    <RecipeFor id="cell_component_16k" />
  </Row>

  <Row>
    <RecipeFor id="cell_component_64k" />

    <RecipeFor id="cell_component_256k" />
  </Row>
</Column>

# <a name="item-storage-cells" />Ячейки для хранения предметов

Ячейки для хранения предметов могут вмещать до 63 различных типов предметов и доступны во всех стандартных объемах.

<Column>
  <Row>
    <Recipe id="network/cells/item_storage_cell_1k_storage" />

    <Recipe id="network/cells/item_storage_cell_4k_storage" />

    <Recipe id="network/cells/item_storage_cell_16k_storage" />
  </Row>

  <Row>
    <Recipe id="network/cells/item_storage_cell_64k_storage" />

    <Recipe id="network/cells/item_storage_cell_256k_storage" />
  </Row>
</Column>

## <a name="portable-item-storage" />Портативное хранилище предметов

Они действуют как крошечный <ItemLink id="me_chest" /> в вашем кармане или как своего рода рюкзак. Их можно зарядить за <ItemLink id="charger" />

В отличие от стандартных ячеек памяти, их типовая емкость *уменьшается* по мере увеличения их байтовой емкости и составляет половину общей байтовой емкости.

В дополнение к картам обновления, которые могут получить все ячейки, они также принимают <ItemLink id="energy_card" /> для обновления своих внутренних батарей.

<Column>
  <Row>
    <RecipeFor id="portable_item_cell_1k" />

    <RecipeFor id="portable_item_cell_4k" />

    <RecipeFor id="portable_item_cell_16k" />
  </Row>

  <Row>
    <RecipeFor id="portable_item_cell_64k" />

    <RecipeFor id="portable_item_cell_256k" />
  </Row>
</Column>

# <a name="fluid-storage-cells" />Ячейки для хранения жидкости

Ячейки для хранения жидкости могут содержать до 5 различных типов жидкостей и доступны во всех стандартных объемах.

<Column>
  <Row>
    <Recipe id="network/cells/fluid_storage_cell_1k_storage" />

    <Recipe id="network/cells/fluid_storage_cell_4k_storage" />

    <Recipe id="network/cells/fluid_storage_cell_16k_storage" />
  </Row>

  <Row>
    <Recipe id="network/cells/fluid_storage_cell_64k_storage" />

    <Recipe id="network/cells/fluid_storage_cell_256k_storage" />
  </Row>
</Column>

## <a name="portable-fluid-storage" />Портативное хранилище жидкости

Они действуют как крошечный <ItemLink id="me_chest" /> в вашем кармане или как своего рода рюкзак. Их можно зарядить за <ItemLink id="charger" />

В отличие от стандартных ячеек памяти, их типовая емкость *уменьшается* по мере увеличения их байтовой емкости и составляет половину общей байтовой емкости.

В дополнение к картам обновления, которые могут получить все ячейки, они также принимают <ItemLink id="energy_card" /> для обновления своих внутренних батарей.

<Column>
  <Row>
    <RecipeFor id="portable_fluid_cell_1k" />

    <RecipeFor id="portable_fluid_cell_4k" />

    <RecipeFor id="portable_fluid_cell_16k" />
  </Row>

  <Row>
    <RecipeFor id="portable_fluid_cell_64k" />

    <RecipeFor id="portable_fluid_cell_256k" />
  </Row>
</Column>

# <a name="creative-storage-cell" />Творческая ячейка хранения

<Row>
  <ItemImage id="creative_storage_cell" scale="2" />
</Row>

Творческие ячейки **не обеспечивают бесконечное хранилище**. Вместо этого они действуют как бесконечные источники и стоки любого предмета или жидкости, к которым вы их [раздел](cell_workbench.md).
