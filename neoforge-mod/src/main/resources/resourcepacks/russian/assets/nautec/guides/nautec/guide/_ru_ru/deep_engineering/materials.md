---
navigation:
  title: "Глубокие материалы"
  icon: nautec:flawless_prismarine_crystal
  position: 4
  parent: deep_engineering/deep_engineering-index.md
item_ids:
  - nautec:resonant_shard
  - nautec:flawless_prismarine_crystal
  - nautec:deep_steel_plating
---

# <Color id="light_purple">Глубокие материалы</Color>

<Column alignItems="center" fullWidth={true}>
  <ItemImage id="flawless_prismarine_crystal" scale="2"/>
  Три материала для крафта, созданные Палатой Resonance и Давлением Бездны Forge.
</Column>

Каждый из них основан ровно на одном рецепте машины. JEI показаны рецепты с указанием требований к чистоте и глубине.

***

<Row>
  <ItemImage id="resonant_shard"/>
  ### <Color id="aqua">Резонирующий осколок</Color>
</Row>

Сделано в [Resonance Палата](resonance_chamber.md) из <ItemLink id="prismarine_crystal_shard"/>, на луче чистоты 3.0 или выше. Один осколок внутри, один Резонирующий осколок снаружи.

Используется в блоках [шлюз](gateway.md), [Давление Бездны Forge](pressure_forge.md), [Трезубец Нептуна](neptunes_trident.md), Лазерном инжекторе [Завод Фьюжн](fusion_plant.md), Спящем кристаллическом семени и блоках [Resonance Сеть](resonance_network.md), а также прессуется в безупречные призмариновые кристаллы.

***

<Row>
  <ItemImage id="flawless_prismarine_crystal"/>
  ### <Color id="aqua">Безупречный призмариновый кристалл</Color>
</Row>

Сделано в [Давление Бездны Forge](pressure_forge.md) из Резонансного осколка. Требуется чистота 2.0, Forge при Y -20 или ниже и 10 секунд на кристалл.

Используется в [Атлантическая винтовка](atlantean_rifle.md), [Трезубец Нептуна](neptunes_trident.md), [шлюз](gateway.md), Контроллере термоядерного синтеза, Кристальной колыбели, Спящем кристаллическом зародыше и Синтезаторе давления.

***

<Row>
  <ItemImage id="deep_steel_plating"/>
  ### <Color id="aqua">Глубокая стальная обшивка</Color>
</Row>

Изготовлен в форме [Давление Бездны Forge](pressure_forge.md) из слитка аквариумной стали. Требуется чистота 2,5, Forge при Y -40 или ниже и 15 секунд на пластину.

Используется в частях [Атлантическая винтовка](atlantean_rifle.md), [Трезубец Нептуна](neptunes_trident.md), [шлюз](gateway.md), большинстве частей [Завод Фьюжн](fusion_plant.md) и Кристальной колыбели.

Он также ремонтирует <ItemLink id="submarine"/> на наковальне. Поместите подобранного Морского разведчика в левый слот, а обшивку - в правый. Каждая пластина восстанавливает 20% корпуса и стоит 2 уровня. Предмет ремонта и сумма за предмет равны `submarineRepairItem` и `submarineRepairPercent` в `config/nautec-common.toml`.
