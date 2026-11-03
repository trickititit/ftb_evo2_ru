---
navigation:
    title: "Ячейка хранения материи ME"
    icon: matter_cell_256k
    parent: index.md
item_ids:
    - matter_cell_housing
    - matter_cell_1k
    - matter_cell_4k
    - matter_cell_16k
    - matter_cell_64k
    - matter_cell_256k
#    - mega_matter_cell_housing
#    - matter_cell_1m
#    - matter_cell_4m
#    - matter_cell_16m
#    - matter_cell_64m
#    - matter_cell_256m
---

# <a name="applied-replicatics:-me-matter-storage-cell" />Applied Replicatics: Ячейка хранения материи ME

<Row>
  <ItemImage id="matter_cell_housing" scale="4"/>
  <ItemImage id="matter_cell_1k" scale="4"/>
  <ItemImage id="matter_cell_4k" scale="4"/>
  <ItemImage id="matter_cell_16k" scale="4"/>
  <ItemImage id="matter_cell_64k" scale="4"/>
  <ItemImage id="matter_cell_256k" scale="4"/>
</Row>

[Ячейки хранения](ae2:items-blocks-machines/storage_cells.md), способные хранить материю Replication.

<GameScene zoom="6" interactive={true}>
  <ImportStructure src="structures/matter_cells.snbt" />
  <IsometricCamera yaw="195" pitch="30" />

  <BoxAnnotation color="#dddddd" min="0 0 0" max="1 1 0.3">
    Чтобы он появился, дважды используйте заполненный резервуар с материей.
  </BoxAnnotation>
</GameScene>


Основные характеристики совпадают с обычными [ячейками хранения](ae2:items-blocks-machines/storage_cells.md), но для хранения 256 единиц материи требуется 1 байт.


---

## <a name="note" />Примечание

Чтобы обмениваться материей с сетью Replication, вам нужен <ItemLink id="replication_connector" />. Обратите внимание, что он не совместим с блоками других модов, выполняющими аналогичные функции.
