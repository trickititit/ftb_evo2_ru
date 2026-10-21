---
navigation:
  parent: example-setups/example-setups-index.md
  title: "Автоматизация зарядного устройства"
  icon: charger
---

# <a name="charger-automation" />Автоматизация зарядного устройства

Обратите внимание: поскольку здесь используется <ItemLink id="pattern_provider" />, он предназначен для интеграции с вашей настройкой [автокрафтинг](../ae2-mechanics/autocrafting.md). Если вы просто хотите автоматизировать автономную версию <ItemLink id="charger" />, используйте бункеры, сундуки и тому подобное.

Автоматизация <ItemLink id="charger" /> довольно проста. <ItemLink id="pattern_provider" /> передает ингредиент в зарядное устройство, затем [трубная подсеть](pipe-subnet.md) или другой элемент передает результат обратно поставщику.

<GameScene zoom="6" interactive={true}>
  <ImportStructure src="../assets/assemblies/charger_automation.snbt" />

<BoxAnnotation color="#dddddd" min="1 0 0" max="2 1 1">
        (1) Поставщик шаблонов: в конфигурации по умолчанию, с соответствующими шаблонами обработки. Также обеспечивает зарядное устройство питанием.

        ![Схема зарядного устройства](../assets/diagrams/charger_pattern_small.png)
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="0 1 0" max="1 1.3 1">
        (2) Импортная шина: в конфигурации по умолчанию.
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="1 1 0" max="2 1.3 1">
        (3) Шина хранения: в конфигурации по умолчанию.
  </BoxAnnotation>

<DiamondAnnotation pos="4 0.5 0.5" color="#00ff00">
        В основную сеть
    </DiamondAnnotation>

  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

## <a name="configurations" />Конфигурации

* <ItemLink id="pattern_provider" /> (1) имеет конфигурацию по умолчанию с соответствующими <ItemLink id="processing_pattern" />. Он также снабжает <ItemLink id="charger" /> [энергия](../ae2-mechanics/energy.md), поскольку действует как [кабель](../items-blocks-machines/cables.md).
  
    ![Схема зарядного устройства](../assets/diagrams/charger_pattern.png)

* <ItemLink id="import_bus" /> (2) имеет конфигурацию по умолчанию.
* <ItemLink id="storage_bus" /> (3) имеет конфигурацию по умолчанию.

## <a name="how-it-works" />Как это работает

1. <ItemLink id="pattern_provider" /> помещает ингредиенты в <ItemLink id="charger" />.
2. Зарядное устройство делает свое дело.
3. <ItemLink id="import_bus" /> в зеленой подсети извлекает результат из зарядного устройства и пытается сохранить его в
   [сетевое хранилище](../ae2-mechanics/import-export-storage.md).
4. Единственное хранилище в зеленой подсети — это <ItemLink id="storage_bus" />, которое сохраняет полученные элементы в поставщике шаблонов, возвращая их в основную сеть.
