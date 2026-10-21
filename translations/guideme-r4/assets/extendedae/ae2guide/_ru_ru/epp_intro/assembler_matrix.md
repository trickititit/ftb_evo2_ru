---
navigation:
    parent: epp_intro/epp_intro-index.md
    title: "Ассемблерная матрица"
    icon: extendedae:assembler_matrix_frame
categories:
- extended devices
item_ids:
- extendedae:assembler_matrix_frame
- extendedae:assembler_matrix_wall
- extendedae:assembler_matrix_glass
- extendedae:assembler_matrix_pattern
- extendedae:assembler_matrix_crafter
- extendedae:assembler_matrix_speed
---

# <a name="assembler-matrix" />Ассемблерная матрица

<Row>
<BlockImage id="extendedae:assembler_matrix_frame" p:formed="true" p:powered="true" scale="5"></BlockImage>
<BlockImage id="extendedae:assembler_matrix_wall" scale="5"></BlockImage>
<BlockImage id="extendedae:assembler_matrix_glass" scale="5"></BlockImage>
</Row>
<Row>
<BlockImage id="extendedae:assembler_matrix_pattern" scale="5"></BlockImage>
<BlockImage id="extendedae:assembler_matrix_crafter" scale="5"></BlockImage>
<BlockImage id="extendedae:assembler_matrix_speed" scale="5"></BlockImage>
</Row>

Матрица Ассемблера представляет собой многоблочную структуру. Это комбинация <ItemLink id="ae2:molecular_assembler" /> и <ItemLink id="ae2:pattern_provider" />. Он может одновременно выполнять множество крафтовых работ (при достаточном количестве <ItemLink id="ae2:crafting_accelerator" /> в вашей сети ME) и сохранять сетевые каналы.

## <a name="structure" />Структура

<GameScene zoom="3" background="transparent" interactive={true}>
  <ImportStructure src="../structure/assembler_matrix.snbt"></ImportStructure>
</GameScene>

Это прямоугольная призма с длиной ребра от 3 до 7.

- Его края состоят из кадров матрицы ассемблера.
- Его грани состоят из блоков Assembler Matrix Wall или Assembler Matrix Glass.
- Его внутренняя часть состоит из шаблонов матрицы ассемблера, ремесленных или скоростных ядер.

Действительная матрица ассемблера должна содержать как минимум одно ядро шаблона и одно ядро ремесла. Он должен быть полностью заполнен и не может быть пустым. Когда Матрица Ассемблера правильно сформирована и включена, линии на ее кадрах становятся синими.

## <a name="assembler-matrix-core" />Ассемблер Матричное ядро

Существует три различных матричных ядра ассемблера.

- Ядро шаблона матрицы ассемблера

Матрица Ассемблера берет шаблоны только из своих Ядер шаблонов. Каждое ядро ​​шаблонов предоставляет 36 слотов шаблонов для матрицы ассемблера.

- Ассемблер Матрица Крафт Ядро

Матрица Ассемблера распределяет полученные крафтовые задания по своим ремесленным ядрам. Каждое Craft Core может одновременно выполнять восемь крафтовых работ.

- Ассемблер Матрица Скорость Ядро

Он действует как <ItemLink id="ae2:speed_card" /> для матрицы ассемблера. Пять скоростных ядер позволяют матрице ассемблера работать на полной скорости. Установка более пяти ядер скорости не обеспечит дополнительного прироста скорости.

## <a name="gui" />графический интерфейс

Щелчок правой кнопкой мыши по сформированной и онлайн-матрице Ассемблера открывает ее графический интерфейс.

![графический интерфейс](../pic/assembler_matrix.png)

Вы можете вставлять в него выкройки или искать в них выкройки и просматривать, сколько рабочих мест в нем выполняется.
