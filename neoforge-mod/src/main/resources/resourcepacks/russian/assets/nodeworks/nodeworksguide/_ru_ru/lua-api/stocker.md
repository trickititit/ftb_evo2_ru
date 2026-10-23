---
navigation:
  parent: lua-api/index.md
  title: "Стокер"
  icon: minecraft:observer
categories:
  - api_types
  - api_preset
description: "поддерживать цель пополненной путем вытягивания, создания или того и другого"
---

# <a name="stocker" />Стокер

Глобальный уровень `stocker` создает сопровождающих уровня. Вы устанавливаете целевой контейнер, водяной знак `:keep(n)` и источник (вытягивание, создание или и то, и другое), и складировщик пополняет целевой объект всякий раз, когда он опускается ниже водяного знака. Он никогда не извлекается после достижения водяного знака. Если игрок добавляет лишние элементы, они остаются.

## <a name="three-source-modes" />Три режима источника

Складская цепочка начинается с одного из трех фабричных методов, в зависимости от того, откуда вы хотите получать товары.

### <a name="from" />из

<LuaCode>
```lua
Stocker:from(...sources: string | CardHandle | network): StockerBuilder
```
</LuaCode>

Извлекайте данные из определенных карт или сетевого пула. Никогда не занимайтесь поделками, если они короткие. Подходит для «вытащить из этого конкретного буферного сундука» или «вытащить из пула, подождать, если он пуст». Соедините с [`:filter`](./stocker.md#filter), чтобы соответствовать только определенному типу товара, без фильтра продавец пополняет целевую сумму до `:keep(n)` для любых предметов.

<LuaCode>
```lua
-- Pull arrows from two specific chests
stocker:from("chest1", "chest2"):filter("$item:arrow"):to("dispenser"):keep(64):start()

-- Pull from the network pool, wait if the pool runs dry
stocker:from(network):filter("$item:arrow"):to("dispenser"):keep(64):start()
```
</LuaCode>

### <a name="ensure" />обеспечить

<LuaCode>
```lua
Stocker:ensure(itemId: string): StockerBuilder
```
</LuaCode>

Сначала извлеките данные из сетевого пула, а затем создайте остальное, если пула недостаточно. Наиболее распространенная форма охватывает шаблон «всегда имейте N этого». Принимает точный идентификатор предмета, поскольку для планирования требуется конкретный результат.

<LuaCode>
```lua
stocker:ensure("minecraft:arrow"):to("dispenser"):keep(64):start()
stocker:ensure("minecraft:iron_ingot"):to(network):keep(256):start()
```
</LuaCode>

### <a name="craft" />ремесло

<LuaCode>
```lua
Stocker:craft(itemId: string): StockerBuilder
```
</LuaCode>

Всегда крафтите, чтобы поддерживать уровень. Никогда не извлекает данные из существующего хранилища. Полезно, когда вы хотите гарантировать свежую продукцию или когда ингредиента не хватает, и вы предпочитаете пополнять его путем создания, а не извлечения из общего сундука.

<LuaCode>
```lua
stocker:craft("minecraft:bread"):to("foodChest"):keep(16):start()
```
</LuaCode>

## <a name="required-methods" />Требуемые методы

### <a name="to" />чтобы

<LuaCode>
```lua
StockerBuilder:to(target: string | CardHandle | network): StockerBuilder
```
</LuaCode>

Устанавливает пункт назначения. Принимает псевдоним карты, объект CardHandle или `network` для «сохранения уровня в самом пуле». Складчик подсчитывает совпадающие элементы в цели, когда вы используете `network`, он учитывается на каждой карте памяти. Целевая карта памяти сохраняет свои собственные правила, поэтому в нее перемещаются только те элементы, которые ей разрешены.

### <a name="keep" />держать

<LuaCode>
```lua
StockerBuilder:keep(amount: number): StockerBuilder
```
</LuaCode>

Целевой уровень запасов. Стокер дополняет этот счет и останавливается. Если текущий счетчик когда-либо превысит это значение (игрок добавил дополнительные материалы, вставил другой скрипт и т. д.), стокер ничего не делает. Он только всегда наполняется, но никогда не сливается.

## <a name="optional-methods" />Дополнительные методы

### <a name="filter" />фильтр

<LuaCode>
```lua
StockerBuilder:filter(pattern: string): StockerBuilder
```
</LuaCode>

Сужает то, что стокер считает, до `:keep(n)` в цели. По умолчанию `*` (любой элемент). Установите его, если вы хотите, чтобы поставщик заботился только об определенном типе товаров, полученных из разнородного источника. **`:ensure` и `:craft` автоматически** устанавливают идентификатор своего предмета, поэтому вам нужно только `:filter` с `:from`.

<LuaCode>
```lua
stocker:from("buffer")
  :filter("$item:arrow")
  :to("dispenser")
  :keep(64)
  :start()
```
</LuaCode>

### <a name="batch" />партия

<LuaCode>
```lua
StockerBuilder:batch(size: number): StockerBuilder
```
</LuaCode>

Объединяет обрабатываемые запросы в пакет этого размера. По умолчанию 0 означает «создать именно то, чего не хватает» (так что нехватка 3 поделки 3, даже если рецепт дешевый). Установка `:batch(64)` делает 64 ремесла склада одновременно, что полезно для рецептов с большими затратами на настройку (многовходные, многоэтапные), где множество крошечных ремесел могут нагружать процессор.

<LuaCode>
```lua
stocker:craft("minecraft:iron_ingot"):to("chest"):keep(64):batch(32):start()
-- Shortfall of 10 crafts a full 32, target may temporarily hold 74 after delivery.
```
</LuaCode>

Целевое значение может временно превышать `:keep(n)` на остаток партии, последующие тики ничего не делают, пока запас снова не упадет ниже водяного знака.

## <a name="example:-arrow-dispenser-with-fallback-crafting" />Пример: дозатор стрел с резервным крафтом

<LuaCode>
```lua
stocker:ensure("minecraft:arrow")
  :to("trapDispenser")
  :keep(64)
  :batch(16)
  :every(20)
  :start()
```
</LuaCode>

Каждую секунду: если в раздатчике меньше 64 стрел, сначала вытащите из пула, если все еще мало, создайте еще 16. Повторяется до тех пор, пока дозатор не заполнится.

## <a name="see-also" />См. также

* [Общие предустановленные методы](presets.md#shared-methods) (`:every`, `:start`, `:stop`, `:isRunning`).
* [Импортер](importer.md) для непрерывного движения от А к Б без цели по уровню.
* [Сеть:крафт](network.md#craft) для основного ремесленного примитива.
