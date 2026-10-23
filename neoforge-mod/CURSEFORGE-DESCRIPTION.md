# FTB Evolution 2 - Russian Localization

Unofficial Russian localization for **FTB Evolution 2 1.4.0** on **Minecraft 26.1.2 / NeoForge 26.1.2.121**.

This is a localization add-on, not a modpack. Install the original FTB Evolution 2 modpack first. Other pack versions and Minecraft versions are not supported.

## Included translations

- All 4,178 source FTB Quests language entries, including quest descriptions, chapter titles and reward labels.
- Mod item names, tooltips and interfaces through bundled language resources.
- Patchouli books, GuideME documentation (including Nodeworks and Applied Energistics 2), and Oracle Index guides.
- Additional Modonomicon strings and the Stellaris wiki.

Chisel resources are intentionally excluded. Most new text was machine translated with selected manual corrections and structural checks. A complete human editorial review has not been performed; awkward wording and terminology errors may remain. Source code examples, API identifiers, text inside images, external documentation and some hard-coded messages remain unchanged.

## Installation

Place the main mod JAR in the **mods** folder of the FTB Evolution 2 client. Install the same JAR on a dedicated server for the Stellaris wiki translation. For single-player, the client installation is sufficient. Select **Russian (Russia)** in Minecraft's language settings. Bundled resources are active automatically; no separate resource pack or installer is required.

If upgrading from the older script-based localization package, disable its resource pack and use that package's rollback script before installing this mod. Existing Russian quest files and separately enabled resource packs can override the bundled translations.

FTB Quests translations are applied as a read-only display overlay. Changed English entries are not replaced, and existing configured Russian text is respected. Quest definitions, rewards, progress, recipes, gameplay and player settings are not modified.

The Stellaris wiki uses server-synchronized text. Its pages will be Russian for all players on a server running this add-on, regardless of their client language.

## Removal

Stop the game/server and remove this add-on JAR. The mod does not install translation files into config, KubeJS or world folders.

## Credits

Original modpack: FTB Team. Original mods and documentation: their respective authors; see the bundled third-party notices and project source. Localization integration: trickititit. This project is not affiliated with or endorsed by FTB or the original mod authors.

For the exact validation performed on this release, see the accompanying release notes. Server startup testing does not imply that every client screen has been visually tested.
