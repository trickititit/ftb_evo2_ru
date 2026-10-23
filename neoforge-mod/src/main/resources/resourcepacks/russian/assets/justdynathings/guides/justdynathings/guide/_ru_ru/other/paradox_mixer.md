---
navigation:
  title: "Парадоксальный миксер"
  icon: "justdynathings:paradox_mixer"
  position: 7
  parent: justdynathings:other.md
item_ids:
  - justdynathings:paradox_mixer
---

# Парадоксальный миксер

Нестабильный блок, позволяющий массово создавать рецепты капель жидкости.

<BlockImage id="justdynathings:paradox_mixer" scale="4.0" p:alive="false"/>
<BlockImage id="justdynathings:paradox_mixer" scale="4.0" p:alive="true"/>

Чтобы остаться в живых, требуется хотя бы один стабилизатор, включенный под напряжение.

<GameScene zoom="4" interactive={true}>
  <Block id="justdynathings:stabilizer" p:active="true" p:facing="down" p:goo_found="true" p:energized="true"/>
  <Block y="1" id="justdynathings:paradox_mixer" p:alive="true"/>
</GameScene>

<Recipe id="justdynathings:paradox_mixer" />
