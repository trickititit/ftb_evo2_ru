---
navigation:
    title: "Газовая турбина"
    icon: gas_turbine
    parent: energy/index.md
    position: 12
item_ids:
  - gas_turbine
---

# <a name="gas-turbine" />Газовая турбина

<GameScene zoom={4} interactive={false}>
<Block id="gas_turbine" />
<Block id="mesh_block" x="1" z="1" />
<Block id="mesh_block" x="1" y="1" z="1" />
<Block id="mesh_block" x="-1" y="1" z="2" />

<BoxAnnotation min="1 0 1" max="2 2 2" color="#8bd1f0">
К этим двум портам подключаются жидкости и энергетические кабели. Энергия выводится автоматически каждый тик, а жидкости нужно подавать извне.
</BoxAnnotation>
</GameScene>

Переносные генераторы и солнечные панели обеспечат энергией небольшую базу на старте, но со временем понадобится более мощный постоянный источник. [Метан](../resources/elements_compound.md#methane) хранит много энергии, однако для её эффективного использования нужны серьёзные технологии.

Газовая турбина заметно дороже небольших генераторов, [изготавливается в специальной машине](../machines/processing/fabricators.md) и занимает больше места. Зато её выработка и эффективность значительно выше.
