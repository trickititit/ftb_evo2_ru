---
navigation:
  parent: aae_intro/aae_intro-index.md
  title: "Квантовый компьютер"
  icon: advanced_ae:quantum_core
categories:
  - advanced devices
item_ids:
  - advanced_ae:quantum_unit
  - advanced_ae:quantum_core
  - advanced_ae:quantum_structure
  - advanced_ae:quantum_accelerator
  - advanced_ae:quantum_multi_threader
  - advanced_ae:quantum_storage_128
  - advanced_ae:quantum_storage_256
  - advanced_ae:data_entangler
---

# <a name="quantum-computer" />Квантовый компьютер

Квантовый компьютер — это особый вид творческого компьютера. Он способен выполнять неограниченное количество запросов на крафт, если у него достаточно места для крафта.

<GameScene zoom="2" background="transparent">
  <ImportStructure src="../structure/quantum_computer_multiblock.snbt"></ImportStructure>
</GameScene>

## <a name="quantum-core" />Квантовое ядро

<BlockImage id="advanced_ae:quantum_core" p:powered="true" p:formed="true" scale="4"></BlockImage>

Квантовое ядро — это сердце квантового компьютера. Он имеет 256 МБ памяти для крафта и 8 потоков сопроцессора. Это единственный блок, который может сам по себе создать сформированный квантовый компьютер и предоставить все преимущества квантового компьютера. Однако, если использовать его для создания мультиблока, можно создать гораздо более мощный компьютер. При использовании в качестве автономного компьютера питание должно подаваться через верхнюю или нижнюю стороны, где находятся разъемы.

## <a name="quantum-storages" />Квантовые хранилища

<Row gap="20">
<BlockImage id="advanced_ae:quantum_storage_128" scale="4"></BlockImage>
<BlockImage id="advanced_ae:quantum_storage_256" scale="4"></BlockImage>
</Row>

Эти блоки расширяют хранилище квантового ядра. Они эффективно увеличивают количество параллельных задач, которые может выполнять квантовый компьютер. Существует два варианта: емкостью 128 М и 256 М.

## <a name="quantum-data-entangler" />Квантовый запутчик данных

<BlockImage id="advanced_ae:data_entangler" scale="4"></BlockImage>

Data Entanglers — это специальный блок, который влияет на все блоки хранения, присутствующие в мультиблоке. Они позволяют блокам хранения хранить данные в нескольких измерениях, эффективно увеличивая их объем в 4 раза. В каждый мультиблок квантового компьютера можно поместить только один из них.

## <a name="quantum-accelerator" />Квантовый ускоритель

<BlockImage id="advanced_ae:quantum_accelerator" scale="4"></BlockImage>

Квантовые ускорители добавляют к мультиблоку «Квантовый компьютер» 8 сопроцессоров. Важно отметить, что все модели крафта, выполняемые квантовым компьютером, могут использовать все сопроцессоры, поэтому, вероятно, будет хорошей идеей инвестировать в их большое количество.

## <a name="quantum-multi-threader" />Квантовый многопоточный процессор

<BlockImage id="advanced_ae:quantum_multi_threader" scale="4"></BlockImage>

Подобно запутывателям данных, многопоточные устройства позволяют ускорителям запускать дополнительные потоки в отдельных измерениях, умножая их мощность совместной обработки на 4. В каждый мультиблок квантового компьютера можно поместить только один из них.

## <a name="quantum-structure" />Квантовая структура

<Row gap="20">
<BlockImage id="advanced_ae:quantum_structure" scale="4"></BlockImage>
<BlockImage id="advanced_ae:quantum_structure" p:formed="true" p:powered="true" scale="4"></BlockImage>
</Row>

Эти блоки составляют основу квантового компьютера. Они используются в качестве строительного блока для квантового компьютера и соединяют все вместе.

## <a name="the-multiblock" />Мультиблок

Для создания многоблочного квантового компьютера необходимо соблюдать некоторые правила:
- Максимальный размер 7х7х7 (внешние размеры);
- Внутри мультиблока не должно быть пустых мест. Их можно заполнить <ItemLink id="advanced_ae:quantum_unit" />
без дополнительных льгот;
- Ровно один <ItemLink id="advanced_ae:quantum_core" />;
- Не более одного <ItemLink id="advanced_ae:data_entangler" />;
- Не более одного <ItemLink id="advanced_ae:quantum_multi_threader" />;
- Все блоки внешнего слоя должны быть <ItemLink id="advanced_ae:quantum_structure" />;
- Ни один блок внутри не может иметь значение <ItemLink id="advanced_ae:quantum_structure" />.

## <a name="server-configs" />Конфигурации сервера

Некоторые значения могут быть изменены конфигурациями сервера. Такие как:
- Максимальный размер мультиблока;
- Сопроцессоры в каждом квантовом ускорителе;
- Максимальное количество квантовых многопоточников;
- Значение умножения потока многопоточности;
- Максимальное количество Data Enanglers;
- Значение умножения хранилища Data Entangler;

Ограничения для вашего экземпляра можно проверить с помощью всплывающих подсказок к элементу.
