---
navigation:
  title: "Стабилизатор"
  icon: "justdynathings:stabilizer"
  position: 3
  parent: justdynathings:other.md
item_ids:
  - justdynathings:stabilizer
---

# Стабилизатор

Он может оживить любую слизь, находящуюся на нем, используя Forge Энергию.

<BlockImage id="justdynathings:stabilizer" scale="4.0" p:active="false" p:facing="down" p:goo_found="false"/>

Пример стабилизатора Goo, работающего под обновленным BlazeBloom Goo.

<GameScene zoom="4" interactive={true}>
  <Block id="justdynathings:stabilizer" p:active="true" p:facing="down" p:goo_found="true"/>
  <Block y="1" id="justdirethings:gooblock_tier2" p:alive="true"/>
</GameScene>

Также его можно использовать для поддержания работоспособности микшера Paradox, когда он находится под напряжением (с использованием жидкости времени).

<GameScene zoom="4" interactive={true}>
  <Block id="justdynathings:stabilizer" p:active="true" p:facing="down" p:goo_found="true" p:energized="true"/>
  <Block y="1" id="justdynathings:paradox_mixer" p:alive="true"/>
</GameScene>

<Recipe id="justdynathings:stabilizer" />
