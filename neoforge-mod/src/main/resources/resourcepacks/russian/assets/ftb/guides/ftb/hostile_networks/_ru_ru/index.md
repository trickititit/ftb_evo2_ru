---
navigation:
  title: "Hostile Neural Networks"
  icon: hostilenetworks:deep_learner
  position: 0
item_ids:
  - hostilenetworks:deep_learner
  - hostilenetworks:blank_data_model
  - hostilenetworks:sim_chamber
  - hostilenetworks:prediction_matrix
---

<Column alignItems="center" fullWidth={true}>
  # <Color id="gold">Hostile Neural Networks</Color>

  <ItemImage id="hostilenetworks:deep_learner" scale="2"/>

  Научите модель данных тому, как сражается толпа или как формируется руда, а затем позвольте центру обработки данных превратить эти знания в добычу и руду.
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Петля</Color>
</Column>

1. Щелкните правой кнопкой мыши моба или блок руды со знаком <ItemLink id="hostilenetworks:blank_data_model"/>, чтобы настроить его. Настраивать можно только мобов и руд с моделью; [Модели данных](data_models.md) перечисляет те, которые добавляет этот пакет.
2. Поместите модель в <ItemLink id="hostilenetworks:deep_learner"/> (4 слота). Учащийся засчитывается, пока он находится где-нибудь в вашем основном инвентаре, в левой руке или в слоте для сувениров.
3. Убейте моба или добудьте руду без Silk Touch. Каждое убийство или разрушение руды добавляет данные к каждой соответствующей модели в учащемся.
4. Как только модель достигнет <Color id="green">Basic</Color> (6 данных), <ItemLink id="hostilenetworks:sim_chamber"/> сможет тренировать ее дальше, не сражаясь. Чемберсы отказываются от неисправных моделей.
5. Как только модель достигнет <Color id="gold">Self Aware</Color>, переместите ее в [Дата-центр](data_center.md). Вот откуда берутся ресурсы.

<ItemImage id="minecraft:air" scale="0.25"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Уровни модели</Color>
</Column>

| Уровень | Необходимые данные | Данные на убийство или руду |
|---|:---:|:---:|
| <Color id="dark_gray">Неисправен</Color> | 0 | 1 |
| <Color id="green">Базовый</Color> | 6 | 4 |
| <Color id="blue">Продвинутый</Color> | 54 | 10 |
| <Color id="light_purple">Улучшенный</Color> | 354 | 18 |
| <Color id="gold">Самосознание</Color> | 1,254 | максимизированный |

Боссы следуют той же таблице, что и любой другой моб. Подсказка модели показывает, сколько еще убийств ей нужно.

<ItemImage id="minecraft:air" scale="0.25"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Симуляторная камера</Color>
</Column>

<Row>
  <ItemImage id="hostilenetworks:sim_chamber"/>
  ### <Color id="aqua">Только обучение</Color>
</Row>

В FTB Evolution 2 камера работает в режиме <Color id="aqua">Обучение</Color> и ее нельзя переключить. Каждый 15-секундный запуск использует один <ItemLink id="hostilenetworks:prediction_matrix"/>, добавляет в модель 1 данные и ничего не создает. Мощность на тик равна стоимости моделирования модели плюс 20%.

Обучение само по себе идет медленно: базовой модели требуется еще 1248 прогонов, около 5,2 часа, чтобы достичь Самосознания. Убейте или добудьте с помощью Глубокий обучатель, чтобы добраться туда быстрее. Камера останавливается, как только модель обретает самосознание.

> <Color id="yellow">Примечание</Color>: Изготовитель добычи и Директива о изготовлении в этом пакете отключены. Центр обработки данных сам выбирает результаты.
