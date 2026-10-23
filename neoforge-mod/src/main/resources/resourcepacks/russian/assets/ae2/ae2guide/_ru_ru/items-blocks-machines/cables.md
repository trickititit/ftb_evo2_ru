---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: "Кабели"
  icon: fluix_glass_cable
  position: 110
categories:
- network infrastructure
item_ids:
- ae2:white_glass_cable
- ae2:orange_glass_cable
- ae2:magenta_glass_cable
- ae2:light_blue_glass_cable
- ae2:yellow_glass_cable
- ae2:lime_glass_cable
- ae2:pink_glass_cable
- ae2:gray_glass_cable
- ae2:light_gray_glass_cable
- ae2:cyan_glass_cable
- ae2:purple_glass_cable
- ae2:blue_glass_cable
- ae2:brown_glass_cable
- ae2:green_glass_cable
- ae2:red_glass_cable
- ae2:black_glass_cable
- ae2:fluix_glass_cable
- ae2:white_covered_cable
- ae2:orange_covered_cable
- ae2:magenta_covered_cable
- ae2:light_blue_covered_cable
- ae2:yellow_covered_cable
- ae2:lime_covered_cable
- ae2:pink_covered_cable
- ae2:gray_covered_cable
- ae2:light_gray_covered_cable
- ae2:cyan_covered_cable
- ae2:purple_covered_cable
- ae2:blue_covered_cable
- ae2:brown_covered_cable
- ae2:green_covered_cable
- ae2:red_covered_cable
- ae2:black_covered_cable
- ae2:fluix_covered_cable
- ae2:white_covered_dense_cable
- ae2:orange_covered_dense_cable
- ae2:magenta_covered_dense_cable
- ae2:light_blue_covered_dense_cable
- ae2:yellow_covered_dense_cable
- ae2:lime_covered_dense_cable
- ae2:pink_covered_dense_cable
- ae2:gray_covered_dense_cable
- ae2:light_gray_covered_dense_cable
- ae2:cyan_covered_dense_cable
- ae2:purple_covered_dense_cable
- ae2:blue_covered_dense_cable
- ae2:brown_covered_dense_cable
- ae2:green_covered_dense_cable
- ae2:red_covered_dense_cable
- ae2:black_covered_dense_cable
- ae2:fluix_covered_dense_cable
- ae2:white_smart_cable
- ae2:orange_smart_cable
- ae2:magenta_smart_cable
- ae2:light_blue_smart_cable
- ae2:yellow_smart_cable
- ae2:lime_smart_cable
- ae2:pink_smart_cable
- ae2:gray_smart_cable
- ae2:light_gray_smart_cable
- ae2:cyan_smart_cable
- ae2:purple_smart_cable
- ae2:blue_smart_cable
- ae2:brown_smart_cable
- ae2:green_smart_cable
- ae2:red_smart_cable
- ae2:black_smart_cable
- ae2:fluix_smart_cable
- ae2:white_smart_dense_cable
- ae2:orange_smart_dense_cable
- ae2:magenta_smart_dense_cable
- ae2:light_blue_smart_dense_cable
- ae2:yellow_smart_dense_cable
- ae2:lime_smart_dense_cable
- ae2:pink_smart_dense_cable
- ae2:gray_smart_dense_cable
- ae2:light_gray_smart_dense_cable
- ae2:cyan_smart_dense_cable
- ae2:purple_smart_dense_cable
- ae2:blue_smart_dense_cable
- ae2:brown_smart_dense_cable
- ae2:green_smart_dense_cable
- ae2:red_smart_dense_cable
- ae2:black_smart_dense_cable
- ae2:fluix_smart_dense_cable
---

# <a name="cables" />Кабели

<GameScene zoom="3" background="transparent">
  <ImportStructure src="../assets/assemblies/cables.snbt" />
  <IsometricCamera yaw="180" pitch="30" />
</GameScene>

Хотя сети ME также создаются соседними машинами с поддержкой ME, кабели являются основным способом расширения сети ME на большие территории.

Можно использовать кабели разного цвета, чтобы соседние кабели не соединялись друг с другом, что позволяет более эффективно распределять [каналы](../ae2-mechanics/channels.md). Они также влияют на цвет подключенных к ним терминалов, поэтому вам не обязательно, чтобы все ваши терминалы были фиолетовыми. Кабели Fluix подключаются к кабелям любого другого цвета.

Следует отметить, что **КАНАЛЫ НЕ ИМЕЮТ НИКАКОГО ОБЩЕГО СВЯЗИ С ЦВЕТОМ КАБЕЛЯ**. Все, что делает цвет кабеля, — это предотвращает соединение кабелей.

## <a name="an-important-note" />Важное примечание

**Если вы новичок в AE2 и не знакомы с каналами, используйте Smart Cable и Dense Smart Cable везде, где это возможно. Он покажет, как каналы проходят через вашу сеть, что сделает их поведение более понятным.**

## <a name="another-note" />Еще одно примечание

**Это не трубы для предметов, жидкости, энергии и т.п.** У них нет внутреннего инвентаря, в них не «заталкиваются» поставщики лекал и машины; все, что они делают, это соединяют AE2 [устройства](../ae2-mechanics/devices.md) вместе в сеть.

## <a name="glass-cable" />Стеклянный кабель

<GameScene zoom="6" background="transparent">
<ImportStructure src="../assets/assemblies/fluix_glass_cable.snbt" />
<IsometricCamera yaw="195" pitch="30" />
</GameScene>

<ItemLink id="fluix_glass_cable" /> — самый простой в изготовлении кабель, передающий мощность.
и до 8 [каналы](../ae2-mechanics/channels.md). Он выпускается в 17 различных цветах (по умолчанию используется Fluix), и его можно покрасить в любой цвет с помощью любого из 16 красителей.

Для изготовления цветных кабелей окружите краситель любого типа 8 кабелями одного типа (цвет кабелей не имеет значения, но они должны быть одного типа: Glass, Smart и т. д.). Вы также можете красить кабели любой Forge-совместимой кистью в мире.

Вы можете изготовить любой цветной кабель, используя ведро с водой, чтобы удалить краску.

Вы можете покрыть кабель шерстью, чтобы создать <ItemLink id="fluix_covered_cable" />, и создать <ItemLink id="fluix_smart_cable" />, чтобы лучше понять, что происходит с вашим [каналы](../ae2-mechanics/channels.md).

<RecipeFor id="fluix_glass_cable" />

<RecipeFor id="blue_glass_cable" />

## <a name="covered-cable" />Покрытый кабель

<GameScene zoom="6" background="transparent">
  <ImportStructure src="../assets/assemblies/fluix_covered_cable.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

Вариант с закрытым кабелем не дает никаких игровых преимуществ по сравнению со своим аналогом <ItemLink id="fluix_glass_cable" />. Однако его можно использовать в качестве альтернативного эстетического варианта, если вы предпочитаете закрытый вид.

Можно раскрасить так же, как <ItemLink id="fluix_glass_cable" />. Четыре <ItemLink id="fluix_covered_cable" /> можно создать из красного камня и светящегося камня, чтобы получить <ItemLink id="fluix_covered_dense_cable" />.

<Recipe id="network/cables/covered_fluix" />

<RecipeFor id="blue_covered_cable" />

## <a name="dense-cable" />Плотный кабель

<GameScene zoom="6" background="transparent">
  <ImportStructure src="../assets/assemblies/fluix_covered_dense_cable.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

Кабель повышенной емкости. Может передавать 32 канала, в отличие от стандартных кабелей, которые могут передавать только 8. Однако он не поддерживает шины, поэтому перед использованием шин или панелей необходимо сначала перейти от плотного кабеля к меньшему (например, <ItemLink id="fluix_glass_cable" /> или <ItemLink id="fluix_smart_cable" />).

Плотные кабели немного переопределяют поведение каналов по принципу «кратчайшего пути»: каналы пройдут кратчайший путь к плотному кабелю, а затем кратчайший путь через этот плотный кабель к контроллеру.

<Recipe id="network/cables/dense_covered_fluix" />

<RecipeFor id="blue_covered_dense_cable" />

## <a name="smart-cable" />Умный кабель

<Row>
<GameScene zoom="6" background="transparent">
  <ImportStructure src="../assets/assemblies/fluix_smart_cable.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>
<GameScene zoom="6" background="transparent">
  <ImportStructure src="../assets/assemblies/fluix_smart_dense_cable.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>
</Row>

Имея некоторое сходство с <ItemLink id="fluix_covered_cable" /> по внешнему виду, они выполняют диагностическую функцию, визуализируя использование каналов на кабелях. Каналы отображаются в виде светящихся цветных линий, идущих вдоль черной полосы на кабелях, что дает вам представление о том, как ваши каналы используются в вашей сети. Для обычных смарт-кабелей первые четыре канала отображаются в виде линий, соответствующих цвету кабеля, а следующие четыре — в виде белых линий. Для плотного смарт-кабеля каждая полоса соответствует 4 каналам.

В сетях с <ItemLink id="controller" /> линии на кабелях показывают точный путь, по которому проходят каналы.

Вместо этого интеллектуальные кабели в одноранговых сетях будут показывать количество каналов, используемых во всей сети, а не количество каналов, проходящих через этот конкретный кабель.

Их также можно раскрасить так же, как <ItemLink id="fluix_glass_cable" />.

<Recipe id="network/cables/smart_fluix" />

<Recipe id="network/cables/dense_smart_fluix" />

<RecipeFor id="blue_smart_cable" />
