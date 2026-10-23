---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: "Контроллер"
  icon: controller
  position: 110
categories:
- network infrastructure
item_ids:
- ae2:controller
---

# <a name="the-controller" />Контроллер

<BlockImage id="controller" p:state="online" scale="8" />

Контроллер является концентратором маршрутизации [ME сеть](../ae2-mechanics/me-network-connections.md). Без него сеть является «специальной» и может иметь максимум 8 каналов, используя всего [устройства](../ae2-mechanics/devices.md).

Невозможно иметь два контроллера в одном [ME сеть](../ae2-mechanics/me-network-connections.md).

Контроллер обеспечивает 32 [Каналы](../ae2-mechanics/channels.md) на лицо.

Для работы контроллера требуется 6 AE/t на каждый блок контроллера. Каждый блок контроллера может хранить 8000 АЭ, поэтому для более крупных сетей может потребоваться дополнительное хранилище энергии. Подробности смотрите [энергия](../ae2-mechanics/energy.md).

Мультиблочные контроллеры могут быть построены в достаточно свободной форме.

<GameScene zoom="2" background="transparent">
  <ImportStructure src="../assets/assemblies/controllers.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

Однако есть несколько правил, которые необходимо соблюдать:

1.  Все блоки контроллера на [ME сеть](../ae2-mechanics/me-network-connections.md) должны быть подключены; иначе блоки станут красными.
2.  Размер контроллера должен быть в пределах 7х7х7; иначе он станет красным.
3.  Контроллер может иметь два соседних блока максимум по одной оси; если блок нарушает это правило, он отключится и станет красным.

<GameScene zoom="2" background="transparent">
  <ImportStructure src="../assets/assemblies/controller_rules.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

При соблюдении всех правил и включении питания контроллер должен светиться и менять цвета.

Вы можете щелкнуть правой кнопкой мыши по контроллеру, чтобы получить тот же графический интерфейс, что и <ItemLink id="network_tool" />.

## <a name="recipe" />Рецепт

<RecipeFor id="controller" />
