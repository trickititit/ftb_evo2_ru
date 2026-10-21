---
navigation:
  title: "Обзор"
  position: 0
item_ids:
- nodeworks:nodeworks_book
---

# Nodeworks

Программируемая сеть логистики и автоматизации.

<GameScene zoom="3" interactive={false} paddingTop="30" paddingRight="30" paddingLeft="10">
  <ImportStructure src="assets/assemblies/subnet.snbt" />
  <IsometricCamera yaw="200" pitch="20" />
  <RemoveBlocks id="minecraft:sandstone" />
</GameScene>

## <a name="sections" />Разделы

- [С чего начать](./getting-started.md)
- [Справочник по скриптам](./lua-api/index.md)
- [Механики Nodeworks](./nodeworks-mechanics/index.md)
- [Предметы/Блоки](./items-blocks/index.md)
- [Примеры сетей](./example-setups/index.md)

В редакторе скриптового терминала наведите курсор на документированный идентификатор, чтобы увидеть его сигнатуру и краткое описание. Нажмите <Color id="green">[ <KeyBind id="key.nodeworks.open_docs" /> ]</Color>, не убирая курсор, чтобы открыть соответствующую страницу руководства.

О добавлении собственных страниц читайте в [docs/authoring.md](https://github.com/damienfamed75/nodeworks/blob/main/docs/authoring.md).
