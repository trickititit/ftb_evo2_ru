---
navigation:
    title: "Лазер"
    icon: 'dimresources:laser'
    parent: index.md
    position: 5
item_ids:
    - 'dimresources:laser'
---

# Лазер

## Настройка лазера

Межпространственный лазер используется для добычи блоков с других планет. Лазер необходимо разместить на конструкции, состоящей из Пространственного камня и Пространственных каменных кирпичей. Пример показан ниже

<GameScene zoom="1" interactive={true}>
  <ImportStructure src="assets/structures/laser.nbt" />
</GameScene>

Лазеру требуется локатор планет внутри графического интерфейса, чтобы знать, с какой планеты следует добывать

Некоторые Планеты требуют более высокого уровня Лазерного Мультиблока. Уровни планет могут варьироваться от 1 до 12. Для каждого уровня мультиблок должен быть на блок выше.

<GameScene zoom="1" interactive={true}>
  <ImportStructure src="assets/structures/lasermax.nbt" />
</GameScene>
