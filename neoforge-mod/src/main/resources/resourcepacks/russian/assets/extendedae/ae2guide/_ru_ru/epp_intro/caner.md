---
navigation:
    parent: epp_intro/epp_intro-index.md
    title: "МЭ Каннер"
    icon: extendedae:caner
categories:
- extended devices
item_ids:
- extendedae:caner
---

# <a name="me-canner" />МЭ Каннер

<BlockImage id="extendedae:caner" scale="8"></BlockImage>

ME Canner — это машина, которая консервирует различные ресурсы, включая жидкости, газы Mekanism, ману Botania и даже энергию!

В первом слоте хранится ресурс наполнения, а во втором — контейнер, который необходимо заполнить.

Для работы ему требуется энергия, а каждая операция стоит 80 AE.

![графический интерфейс](../pic/caner_gui.png)

По умолчанию он заполняет только жидкости. Вам необходимо установить соответствующее дополнение, чтобы оно заполняло другие ресурсы.

## <a name="supported-add-ons" />Поддерживаемые дополнения

- Прикладной флюс
- Прикладная меканистика
- Аддон «Прикладная ботаника»

## <a name="autocrafting-with-the-me-canner" />Автокрафтинг с помощью ME Canner

Только верхняя и нижняя стороны могут принимать энергию и подключаться к сети.

<GameScene zoom="6" background="transparent">
  <ImportStructure src="../structure/caner_example.snbt"></ImportStructure>
</GameScene>

Простая установка для ME Canner. ME Canner автоматически выбрасывает наполненный предмет, когда получает ингредиенты из <ItemLink id="ae2:pattern_provider" />.

<GameScene zoom="6" background="transparent">
  <ImportStructure src="../structure/caner_auto.snbt"></ImportStructure>
</GameScene>

Шаблон должен содержать только ресурс, используемый для заполнения, и контейнер, подлежащий заполнению. Вот несколько примеров:

Наполните ведро водой:

![P1](../pic/fill_water.png)

Зарядите энергетическую таблетку (требуется Applied Flux):

![P1](../pic/fill_energy.png)


## <a name="uncanning" />Неканонический

ME Canner также может истощать ресурсы из контейнера в пустом режиме. Вам нужно поменять местами входы и выходы в шаблоне.
