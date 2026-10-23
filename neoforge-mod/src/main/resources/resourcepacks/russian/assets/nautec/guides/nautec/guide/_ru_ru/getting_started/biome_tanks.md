---
navigation:
  title: "Биомные танки"
  icon: nautec:biome_tank
  position: 20
  parent: getting_started/getting_started-index.md
item_ids:
  - nautec:biome_tank
---

# <Color id="light_purple">Биомные танки</Color>

<Column alignItems="center" fullWidth={true}>
  <ItemImage id="biome_tank" scale="2"/>
  Запечатанный стеклянный резервуар, в котором находится небольшой кусочек биома.
</Column>

Биомный резервуар выращивает одно растение самостоятельно, без электричества, воды и света, поэтому вы можете выращивать растения из биомов, в которых вы не находитесь.

***

## <Color id="gold">Засев танка</Color>

Щелкните правой кнопкой мыши резервуар с растением, чтобы засеять его. Для этого используется одно из растений, и с этого момента это растение выращивается в аквариуме. Щелкните правой кнопкой мыши по другому растению, чтобы переключиться: все, что оно уже выросло, возвращается к вам в первую очередь.

В разбитом танке растение сохраняется, поэтому его можно взять и переместить, не засевая снова.

<RecipeFor id="biome_tank"/>

***

## <Color id="gold">Растёт</Color>

Засеянный аквариум выращивает одно растение каждые 30 секунд (`biomeTankTicks` в `config/nautec-common.toml`) и сохраняется в стопке. Щелкните правой кнопкой мыши по нему пустой рукой, чтобы взять то, что оно выросло, или вытащите бункером или трубой из любой грани. Ничего нельзя положить. Когда стопка заполнена, резервуар останавливается, пока вы его не опорожните.

***

## <Color id="gold">Растения</Color>

| Завод | Найдено в |
|---|---|
| <ItemImage id="nautec:glow_polyp" scale="0.5"/> Светящийся полип | Биолюминесцентная роща |
| <ItemImage id="nautec:luminescent_algae" scale="0.5"/> Люминесцентные водоросли | Биолюминесцентная роща |
| <ItemImage id="nautec:deep_kelp" scale="0.5"/> Глубокая водоросль | Биолюминесцентная роща |
| <ItemImage id="nautec:prismarine_frond" scale="0.5"/> Призмариновая ветвь | Призмариновый риф |
| <ItemImage id="nautec:abyssal_coral" scale="0.5"/> Абиссальный коралл | Бездонный желоб |
| <ItemImage id="nautec:vent_tubeworm" scale="0.5"/> Вентиляционный червь | Гидротермальные источники |
| <ItemImage id="minecraft:kelp" scale="0.5"/> Келп | Океан |
| <ItemImage id="minecraft:seagrass" scale="0.5"/> Морская трава | Океан |
| <ItemImage id="minecraft:sea_pickle" scale="0.5"/> Морской маринад | Теплый океан |
| <ItemImage id="minecraft:tube_coral" scale="0.5"/> Тюбик Коралл | Теплый океан |
| <ItemImage id="minecraft:brain_coral" scale="0.5"/> Мозговой коралл | Теплый океан |
| <ItemImage id="minecraft:bubble_coral" scale="0.5"/> Пузырьковый коралл | Теплый океан |
| <ItemImage id="minecraft:fire_coral" scale="0.5"/> Огненный коралл | Теплый океан |
| <ItemImage id="minecraft:horn_coral" scale="0.5"/> Роговой коралл | Теплый океан |
| <ItemImage id="minecraft:cactus" scale="0.5"/> Кактус | Пустыня |
| <ItemImage id="minecraft:sugar_cane" scale="0.5"/> Сахарный тростник | Берега реки |
| <ItemImage id="minecraft:bamboo" scale="0.5"/> Бамбук | Джунгли |
| <ItemImage id="minecraft:sweet_berries" scale="0.5"/> Сладкие ягоды | Тайга |
| <ItemImage id="minecraft:glow_berries" scale="0.5"/> Светящиеся ягоды | Пышные пещеры |
| <ItemImage id="minecraft:red_mushroom" scale="0.5"/> Красный гриб | Грибные поля |
| <ItemImage id="minecraft:brown_mushroom" scale="0.5"/> Коричневый гриб | Грибные поля |
| <ItemImage id="minecraft:crimson_fungus" scale="0.5"/> Багровый гриб | Багровый лес |
| <ItemImage id="minecraft:warped_fungus" scale="0.5"/> Искривленный гриб | Искаженный лес |
| <ItemImage id="minecraft:chorus_fruit" scale="0.5"/> Фрукт коруса | Конец |
| <ItemImage id="minecraft:cocoa_beans" scale="0.5"/> Какао-бобы | Джунгли |

***

## <Color id="gold">Для создателей пакетов</Color>

Растения, которые принимает танк, имеют тег `nautec:biome_tank_plants`. Добавьте к нему любой предмет, из любого мода, с датапаком или KubeJS, и танки его вырастят. Танк показывает свое растение внутри стекла, используя собственную модель растения, поэтому модифицированным растениям не нужны дополнительные текстуры. Удаление растения из метки останавливает танки, в которых оно уже растет.
