---
navigation:
  parent: ae2wtlib/ae2wtlib-index.md
  title: "Беспроводные терминалы AE2WTLib"
  icon: ae2wtlib:wireless_universal_terminal
  position: 10
categories:
- ae2wtlib
item_ids:
  - ae2wtlib:wireless_pattern_encoding_terminal
  - ae2wtlib:wireless_pattern_access_terminal
---

# <a name="wireless-terminals" />Беспроводные терминалы

<ItemGrid>
  <ItemIcon id="ae2wtlib:wireless_universal_terminal" />
  <ItemIcon id="ae2:wireless_crafting_terminal" />
  <ItemIcon id="ae2wtlib:wireless_pattern_encoding_terminal" />
  <ItemIcon id="ae2wtlib:wireless_pattern_access_terminal" />
</ItemGrid>

Помимо <ItemLink id="ae2:energy_card" />, все беспроводные терминалы AE2WTLib можно обновить с помощью <ItemLink id="ae2wtlib:quantum_bridge_card" /> и объединить в <ItemLink id="ae2wtlib:wireless_universal_terminal" />.

Как и <ItemLink id="ae2:wireless_terminal" /> из AE2, к нему можно получить доступ с помощью привязки клавиш и поместить его в слот для сувениров (если установлен какой-либо мод, реализующий API-интерфейс Curio).

Беспроводные терминалы также можно соединить, как обычный <ItemLink id="ae2:wireless_terminal" />, используя <ItemLink id="ae2:wireless_access_point" />.

## <a name="wireless-universal-terminal" />Беспроводной универсальный терминал

<ItemImage id="ae2wtlib:wireless_universal_terminal" scale="3" />

<ItemLink id="ae2wtlib:wireless_universal_terminal" /> — это комбинация нескольких беспроводных терминалов в один элемент.

## <a name="wireless-crafting-terminal" />Беспроводной терминал для крафта

<ItemImage id="ae2:wireless_crafting_terminal" scale="3" />

<ItemLink id="ae2:wireless_crafting_terminal" /> — это беспроводная версия терминала для крафта. В нем немного [дополнительный функционал](wireless_crafting_terminal.md) по сравнению с ванильным AE2.

## <a name="wireless-pattern-encoding-terminal" />Терминал кодирования беспроводных шаблонов

<ItemImage id="ae2wtlib:wireless_pattern_encoding_terminal" scale="3" />

Беспроводная версия <ItemLink id="ae2:pattern_encoding_terminal" />

<RecipeFor id="ae2wtlib:wireless_pattern_encoding_terminal" />

## <a name="wireless-pattern-access-terminal" />Терминал доступа к беспроводной сети

<ItemImage id="ae2wtlib:wireless_pattern_access_terminal" scale="3" />

Беспроводная версия <ItemLink id="ae2:pattern_access_terminal" />

<RecipeFor id="ae2wtlib:wireless_pattern_access_terminal" />

## <a name="addon-terminals" />Дополнительные терминалы

Большинство беспроводных терминалов из других дополнений также работают с <ItemLink id="ae2wtlib:wireless_universal_terminal" />.

## <a name="terminals-that-don&#x27;t-work-in-the-universal-terminal" />Терминалы, которые не работают в универсальном терминале

<ItemLink id="ae2:wireless_terminal" /> нельзя использовать в <ItemLink id="ae2wtlib:wireless_universal_terminal" />, так как это не даст никаких преимуществ перед <ItemLink id="ae2:wireless_crafting_terminal" />. Он также не может использовать <ItemLink id="ae2wtlib:quantum_bridge_card" />
