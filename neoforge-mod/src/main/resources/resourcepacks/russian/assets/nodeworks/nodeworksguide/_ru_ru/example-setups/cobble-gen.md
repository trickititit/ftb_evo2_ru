---
navigation:
  parent: example-setups/index.md
  icon: minecraft:cobblestone
  title: "Генератор булыжника"
categories:
  - example
---

# <a name="cobblestone-generator" />Генератор булыжника

Генераторы булыжника — это самый простой способ использовать <ItemLink id="breaker" />. Поместите выключатель перед генератором из булыжника, как показано ниже.

<GameScene zoom="5" interactive={true} paddingLeft="60" paddingRight="30">
  <ImportStructure src="../assets/assemblies/cobble_gen.snbt" />
  <IsometricCamera yaw="200" pitch="30" />
  <RemoveBlocks id="minecraft:sandstone" />
  <RemoveBlocks id="minecraft:sandstone" />
  <RemoveBlocks id="minecraft:stone" />
</GameScene>

Затем вы настраиваете выключатель на разрыв `minecraft:cobblestone` с режимом красного камня, установленным на **Низкий**, чтобы он всегда был активен.

![изображение графического интерфейса выключателя с булыжником, установленным в качестве фильтра для разрушения](../assets/images/breaker_cobblestone.png)

Или, если в вашей сети есть <ItemLink id="terminal" />, вы можете использовать следующий скрипт для достижения того же самого, но для многих выключателей.

<LuaCode>
```lua
local breaker_1 = network:get("breaker_1")
scheduler:second(function()
    breaker_1:mine() -- always mine
end)
```
</LuaCode>
