---
navigation:
  title: "КомпьютерКрафт"
  parent: integrations/index.md
  position: 1
---

# КомпьютерКрафт

При установке [СС: изменено](https://modrinth.com/mod/cc-tweaked) компьютер выполняет функцию периферийного устройства. Скрипты могут считывать все, что отображается на экранах компьютеров — сети, каналы, узлы, граф узлов и телеметрию ввода-вывода в реальном времени — и отображать это на мониторах.

## Подключение

Разместите компьютер CC рядом с компьютером или соедините их с помощью проводного модема. Периферийный тип — `logistics_computer`:

```lua
local lc = peripheral.find("logistics_computer")
```

## Право собственности

Компьютер принадлежит игроку, который его разместил. Скрипты видят именно те сети, которые игрок может открыть, следуя правилам доступа к узлам сервера и командам FTB. Любой, кто подключает к нему компьютер CC, может читать эти сети, поэтому держите его там, где только вы можете до него добраться.

Компьютер, установленный до этого обновления, не имеет владельца. Разбейте его и поместите снова, чтобы использовать с ComputerCraft.

## Методы

`net` — идентификатор сети или ее точное имя. Списки каналов расположены в порядке отображения, и `index` каждой записи — это номер `CH`, показанный в [Монитор ввода-вывода](../computer/io-monitor.md), который начинается с 0 — таким образом, CH0 — это `channels[1]`. Ребро графа `channels` также содержит номера CH.

| Метод | Возврат |
|---|---|
| `listNetworks()` | `{ {id, name, nodeCount, starred, color, createdAt}, ... }` |
| `getChannels(net)` | `{ {index, name, type, nodeCount}, ... }` — `type` равно нулю, если в канале нет включенных узлов |
| `getNodes(net)` | `{ {id, label, block, pos, attachedPos, dimension, visible, highlighted}, ... }` — только загруженные узлы |
| `getGraph(net)` | `{ name, totalNodes, vertices, edges }` — вершины имеют `key, label, x, y, nodes`; края имеют `from, to, type, channels` |
| `watch(net)` | Запускает телеметрию в реальном времени для этого компьютера |
| `unwatch(net)` | Остановит это |
| `getFlow(net)` | Последняя выборка телеметрии или ноль перед первой секундой; ошибки, если сеть не просматривается |

Типы: `item`, `fluid` и `energy`.

## Живая телеметрия

После `watch` каждую секунду приходит событие `logistics_flow`:

```lua
local _, side, networkId, sample = os.pullEvent("logistics_flow")
-- sample.channels[1].total, sample.channels[1].resources[1].displayName
```

Каждый канал имеет `index`, `type`, `total` (количество, перемещенное за эту секунду, в единицах монитора ввода-вывода) и `resources` — 16 верхних элементов или жидкостей с `kind`, `name`, `displayName` и `amount`. Энергетические каналы имеют пустой список ресурсов.

Часы заканчиваются, когда компьютер перезагружается или отключается, поэтому вызовите `watch` из вашего сценария `startup`. Они также без ошибок останавливаются, если владелец теряет доступ к сети или сеть удаляется.

## Пример

Показывает прямую трансляцию каждого канала на подключенном мониторе:

```lua
local lc = peripheral.find("logistics_computer")
local mon = peripheral.find("monitor")
local net = "Main Base"

mon.setTextScale(0.5)
lc.watch(net)
while true do
  local _, _, _, sample = os.pullEvent("logistics_flow")
  mon.clear()
  for i, ch in ipairs(sample.channels) do
    mon.setCursorPos(1, i)
    mon.write(("CH%d %-8s %d/s"):format(ch.index, ch.type or "-", ch.total))
  end
end
```
