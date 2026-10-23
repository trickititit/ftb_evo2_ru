---
navigation:
  title: "Жизнь в глубине"
  icon: nautec:luminous_membrane
  position: 12
  parent: getting_started/getting_started-index.md
item_ids:
  - nautec:deep_kelp
  - nautec:luminescent_algae
  - nautec:glow_polyp
  - nautec:prismarine_frond
  - nautec:vent_tubeworm
  - nautec:abyssal_coral
  - nautec:silt_skipper
  - nautec:silt_skipper_bucket
  - nautec:silt_skipper_spawn_egg
  - nautec:lantern_jelly_spawn_egg
  - nautec:vent_crawler_spawn_egg
  - nautec:abyssal_maw_spawn_egg
---

# <Color id="light_purple">Жизнь в глубинах</Color>

<Column alignItems="center" fullWidth={true}>
  <ItemImage id="luminous_membrane" scale="2"/>
  Шесть растений и четыре существа океанов NauTec.
</Column>

## <Color id="gold">Растения</Color>

Соберите все шесть с помощью ножниц; любой другой инструмент их зря ломает. К каждому из них можно привить бактерии с <ItemLink id="grafting_tool"/>; [Прививка бактерий](nautec:aquatic_biology/bacteria_grafting.md) перечисляет какие.

| Завод | Биом | Свет |
|---|---|---|
| <ItemLink id="deep_kelp"/> | Биолюминесцентная роща | нет |
| <ItemLink id="luminescent_algae"/> | Биолюминесцентная роща | 9 |
| <ItemLink id="glow_polyp"/> | Биолюминесцентная роща | 7 |
| <ItemLink id="prismarine_frond"/> | Призмариновый риф | нет |
| <ItemLink id="vent_tubeworm"/> | Гидротермальные источники | 3 |
| <ItemLink id="abyssal_coral"/> | Бездонный желоб | нет |

Глубокие водоросли растут вверх в воде, как водоросли, до 40 блоков в высоту (`kelpHeight` в `config/nautec-common.toml`). Опускается только верхняя часть пряди, поэтому состригите кончик. Светящийся полип прилипает к любой грани блока, как светящийся лишайник, а костная мука распространяет его. Остальные четыре — одиночные подводные растения.

В удачных рыболовных зонах в каждом биоме также встречаются растения этого биома. См. [Рыбалка](fishing.md).

***

## <Color id="gold">Иловой шкипер</Color>

<GameScene zoom="3.2" background="#333333" interactive={true}>
  <Entity id="nautec:silt_skipper"/>
</GameScene>

Маленькая пассивная рыбка, плавающая стаями до восьми человек в Абиссальной впадине, Биолюминесцентной роще и Призмариновом рифе.

* Убейте его, чтобы получить предмет <ItemLink id="silt_skipper"/>, который можно съесть.
* Щелкните правой кнопкой мыши по одному из них с помощью ведра с водой, чтобы вычерпать его в <ItemLink id="silt_skipper_bucket"/>, и опорожните ведро, чтобы снова выпустить его.

***

## <Color id="gold">Фонарное желе</Color>

<GameScene zoom="2.4" background="#333333" interactive={true}>
  <Entity id="nautec:lantern_jelly"/>
</GameScene>

Медленная светящаяся медуза, дрейфующая по Биолюминесцентной роще. Он пассивен и имеет мало здоровья.

Выпадает от 1 до 2 <ItemLink id="luminous_membrane"/> (больше при добыче), используется для улучшения скина Фотофор.

***

## <Color id="gold">Вентиляционный гусеничный ход</Color>

<GameScene zoom="2.4" background="#333333" interactive={true}>
  <Entity id="nautec:vent_crawler"/>
</GameScene>

Бронированное существо, ходящее по полу Гидротермальных источников. При ранении он убегает, вместо того чтобы сопротивляться, игнорирует половину любого отбрасывания и не получает урона от огня.

Выпадает от 1 до 3 <ItemLink id="chitin_plate"/> (больше при грабеже). Четыре пластины усиливают вентиляционный панцирь.

***

## <Color id="gold">Бездная пасть</Color>

<GameScene zoom="1.8" background="#333333" interactive={true}>
  <Entity id="nautec:abyssal_maw"/>
</GameScene>

Враждебный хищник Бездонной впадины. Он появляется только в темной воде ниже y 40, атакует игроков на расстоянии до 24 блоков и преследует вас по воде. У него 24 здоровья и 6 укусов.

Выпадает один <ItemLink id="abyssal_organ"/> (больше при добыче), используемый для улучшения Глаза Бездны.

***

## <Color id="gold">Улучшения</Color>

Каждое из трех существ создает усиление: см. [Улучшения глубокой фауны](nautec:laser_augmentation/deep_fauna_augments.md). Яйца спавна для всех четырех существ находятся в творческом меню.
