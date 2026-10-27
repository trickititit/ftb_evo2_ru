---
navigation:
  parent: lua-api/index.md
  title: "Работа"
  icon: minecraft:paper
categories:
  - api_types
description: "первый аргумент передается в [network:handle обратный вызов](network.md#handle) и представляет задание обработки в реальном времени, за создание выходных данных для которого отвечает обработчик."
---

# <a name="job" />Работа

`Job` — это первый аргумент, который получает ваша функция [`network:handle`](network.md#handle). Каждый раз, когда сети необходимо запустить рецепт в вашем наборе обработки, она вызывает ваш обработчик со свежими `Job` и [предметы](input-items.md), полученными из хранилища. Ваш обработчик помещает эти предметы в машину, а затем вызывает `job:pull(card)`, чтобы сообщить сети, где будут выходить готовые предметы.

## <a name="pull" />тянуть

Сообщает сети, где выйдут готовые изделия. Передайте один или несколько [КартаРучка](card-handle.md), и сеть будет наблюдать за ними, пока не будет собрано полное количество выходных данных.

Если на одной из карточек уже есть результаты (мгновенные рецепты, бесформенные поделки), поделка завершается в тот же тик. В противном случае сеть продолжает проверять каждый тик и захватывает все, что находится на карте, поэтому печь, из которой вытекает по одному слитку, по-прежнему работает нормально.

<LuaCode>
```lua
local furnace = network:get("furnace")
network:handle("...", function(job: Job, items: InputItems)
  furnace:face("top"):insert(items.rawIron)
  -- pull from the bottom face once the smelt completes
  job:pull(furnace:face("bottom"))
end)
```
</LuaCode>

### <a name="multiple-source-cards" />Несколько исходных карт

Передайте более одной карты, если готовые предметы могут оказаться в любом из нескольких мест. Сеть проверяет каждую карту по порядку и выбирает ту, на которой есть элементы. Полезно, если у вас есть расположенные ниже трубы или бункеры, которые направляют продукцию в разные сундуки в зависимости от предмета.

<LuaCode>
```lua
local furnace = network:get("furnace")
local outboxA = network:get("outbox_a")
local outboxB = network:get("outbox_b")
network:handle("...", function(job: Job, items: InputItems)
  furnace:face("top"):insert(items.rawIron)
  -- finished ingots get sorted into one of two chests, pull from either
  job:pull(outboxA, outboxB)
end)
```
</LuaCode>

### <a name="put-items-in-first" />Сначала положите предметы

`:pull` обрабатывает только выходную сторону. Вам все равно придется вставить [Инпутитемс](input-items.md) в машину самостоятельно. Если что-то останется в `items.<slot>`, когда ваш обработчик вернется, поделка считается незавершенной, и сеть попробует рецепт еще раз.

### <a name="timeout" />Тайм-аут

Если выходные данные никогда не появляются, время ожидания корабля в конечном итоге истекает, и входные данные возвращаются в хранилище. Каждый набор обработки имеет свой собственный тайм-аут (в тиках), который вы можете настроить в его графическом интерфейсе, по умолчанию он равен 15 секундам. Увеличьте скорость для медленных машин, таких как большие партии плавки или модифицированные многосекундные рецепты.

> **Примечание.** Ошибка внутри вашего обработчика останавливает *эту работу*, но не приводит к удалению остальной части вашего скрипта. Если крафт неожиданно зависнет, проверьте журнал терминала, там будет ошибка.

## <a name="recipe" />рецепт

`Job` также указывает, какой набор обработки он выполняет, поэтому один обработчик для многих рецептов, например обработчик [`network:recipes`](network.md#recipes), может обрабатывать некоторые из них по-разному.

- `job.name` — название набора, то же самое, что и `network:handle`.
- `job.inputs` перечисляет входы набора в порядке слотов. Каждая запись имеет `id` и `count` плюс `tag`, когда входные данные берут любой элемент из тега.
- `job.outputs` перечисляет, что делает набор. Каждая запись имеет `id`, `count` и `optional`, что справедливо для случайного результата.

<LuaCode>
```lua
local furnace = network:get("furnace")
local blast = network:get("blast_furnace")
network:recipes("#c:raw_materials"):handle(function(job: Job, items: InputItems)
  -- Iron goes to the blast furnace, everything else to the plain furnace.
  local machine = furnace
  if job.outputs[1].id == "minecraft:iron_ingot" then machine = blast end
  for _, input in ipairs(items:all()) do
    machine:face("top"):insert(input)
  end
  job:pull(machine:face("bottom"))
end)
```
</LuaCode>
