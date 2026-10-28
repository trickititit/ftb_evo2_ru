---
navigation:
    parent: index.md
    title: "Сборщик Материи"
    icon: rep_ae2_bridge:matter_assembler
    position: 20
categories:
- rep_bridge_components
item_ids:
- rep_ae2_bridge:matter_assembler
---

# <a name="matter-assembler" />Сборщик Материи

<Row gap="20">
<BlockImage id="rep_ae2_bridge:matter_assembler" scale="8"></BlockImage>
</Row>

Matter Assembler — это быстрый помощник в вашей **ME-сети**. Вместе с мостом он может выполнять Replication заданий и выполнять их гораздо быстрее, чем обычный репликатор.

## <a name="how-it-works" />Как это работает

- Подключите его к той же сети ME, что и ваш мост.
- Он принимает работу от Replication (например, от терминала Replication) и от AE2, создавая запросы, которые проходят через Bridge.
- Задания, начатые с Replication, доставляют готовые изделия обратно в Replication.
- Задания, начатые с AE2, доставляют готовые изделия в систему ME.

## <a name="upgrades-and-priority" />Обновления и приоритет

Откройте Ассемблер Материи, чтобы вставить **карты ускорения** для большей скорости, и используйте вкладку **приоритет**, если у вас есть несколько Ассемблеров и вы хотите, чтобы некоторые из них приступили к работе первыми.

## <a name="tips" />Советы

- Ему нужен мост в той же сетке ME (схемы чипов и задачи Replication берутся из моста)
- Если в пункте назначения нет места, Ассемблер ждет, пока он не сможет доставить
