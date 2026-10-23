---
navigation:
    parent: epp_intro/epp_intro-index.md
    title: "Шина хранения тегов ME"
    icon: extendedae:tag_storage_bus
categories:
- extended devices
item_ids:
- extendedae:tag_storage_bus
---

# <a name="me-tag-storage-bus" />Шина хранения тегов ME

<GameScene zoom="8" background="transparent">
  <ImportStructure src="../structure/cable_tag_storage_bus.snbt"></ImportStructure>
</GameScene>

Шина хранения тегов ME представляет собой цифру <ItemLink id="ae2:storage_bus" />, которую можно фильтровать по тегам элементов или жидкостей и которая поддерживает основные логические операторы.

Вот несколько примеров:

- Принимайте только сырую руду

`c:raw_materials/*`

- Примите все слитки и драгоценные камни

`c:ingots/* | c:gems/*`

