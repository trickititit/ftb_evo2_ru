---
navigation:
  title: "Конфигурация"
  icon: minecraft:writable_book
  parent: index.md
  position: 8
---

# <Color id="light_purple">Конфигурация</Color>

Конфигурационный файл — `config/neosync-common.toml`. Варианты, о которых игроки спрашивают больше всего:

| Ключ | По умолчанию | Эффект |
| --- | --- | --- |
| `enableInstantShellConstruction` | `false` | Для творческих игроков снаряды заканчиваются мгновенно |
| `warnPlayerInsteadOfKilling` | `false` | Отказаться от образца вместо того, чтобы убить игрока с низким уровнем здоровья |
| `fingerstickDamage` | `20` | Здоровье взято за образец |
| `hardcoreFingerstickDamage` | `40` | Здоровье взято за образец в хардкоре |
| `shellConstructorCapacity` | `256000` | FE необходимо для полной оболочки |
| `shellConstructionSpeed` | `2.5` | Множитель скорости сборки |
| `shellStorageCapacity` | `320` | FE буфер хранилища |
| `shellStorageConsumption` | `16` | FE сливается за тик, чтобы сохранить раковину живой |
| `acceptsRedstone` | `true` | Хранилища принимают сигнал красного камня в качестве энергии |
| `maxUnpoweredLifespan` | `20` | Помечает, что хранилище сохраняет работоспособность своей оболочки без питания |
| `energyMap` | см. ниже | FE за тик для каждого объекта на беговой дорожке |
| `syncPriority` | `NATURAL` | Приказать, чтобы снаряды собирались после смерти |
| `autoSyncOnDeath` | `true` | Синхронизация с другой оболочкой, когда оболочка умирает |
| `wrench` | `minecraft:stick` | Элемент, который переключает вывод компаратора контейнера |

По умолчанию `energyMap` — курица 2, свинья 16, игрок 20, волк 22, сельский житель 25, крипер 80 и странник Края 160. Записи принимают форму `entity_id:energy_per_tick`, поэтому `minecraft:horse:30` добавляет лошадей по 30 FE за такт.

`syncPriority` принимает `NATURAL`, `NEAREST` или любое название цвета красителя, написанное заглавными буквами, например `RED` или `LIGHT_BLUE`. См. [Синхронизация](syncing.md) о том, как используется порядок.
