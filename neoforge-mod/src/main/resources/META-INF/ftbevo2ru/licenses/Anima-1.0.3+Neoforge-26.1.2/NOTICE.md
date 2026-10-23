# Attribution and provenance

Anima is a Minecraft mod by **TechnoVision** and a spiritual successor to **Intangible**, created by **Emoniph**. The original project is available on [CurseForge](https://www.curseforge.com/minecraft/mc-mods/intangible), with its final 1.8.9 release [0.0.25](https://www.curseforge.com/minecraft/mc-mods/intangible/files/2284654).

Anima is not an official Intangible release and does not claim affiliation with or endorsement by its original creator. Its code, balancing decisions and guide text were created for this project; visual sources and platform-derived assets are identified below. It is not an exact recreation; [the parity audit](docs/parity-status.md) records implemented equivalents, adaptations, missing features, and unverified behavior.

Anima is copyright © 2026 TechnoVision. All Rights Reserved. This notice does not change the rights or licenses of third-party dependencies or assets described below.

## Artwork

The original Anima inventory and material atlases were generated using the **built-in ImageGen tool** without supplying any original Intangible artwork. The files, exact prompts, import process, and previews are retained here:

- [Art provenance and exact generation prompts](art/README.md)
- [Original inventory atlas](art/source/item-atlas.png) (now used only for the Spirit Construct's core)
- [Original block-material atlas](art/source/block-atlas.png) (now used only for entity skins)
- [Original deity-seed and turret atlas](art/source/advanced-atlas.png) (retired; kept for provenance)
- [Original molten-crystal sprite](art/source/molten-crystal.png) (retired; kept for provenance)
- [Original neutral crystal material](art/source/neutral-crystal.png) (retired; kept for provenance)
- [Original armor, chariot, reaper, mold and golem-part atlas](art/source/catalog-atlas.png) (retired; kept for provenance)
- [Item sprite preview](art/item-preview.png)
- [Worn equipment preview](art/equipment-preview.png)
- [Block model and texture preview](art/block-preview.png)
- [Resource import and validation tool](tools/generate_resources.py)

Entity skins are extracted and resized from those sheets, preserving transparency. The Free Soul maps original crystal and rune imagery to the platform Allay geometry. The Spirit Construct skin maps original bone, brass, steel, and crystal imagery to the platform's iron-golem geometry; no vanilla skin pixels are copied. Block models are project-authored Minecraft model JSON that reference vanilla model templates such as `cube` and `orientable_with_bottom`. Original Intangible code, textures, models, sound files, and guide prose are not included.

Placed-block textures, block models and blockstates are hand-authored 16×16 pixel art and model JSON written in [tools/block_assets.py](tools/block_assets.py). Preserved soul, gem and focus art is in [tools/item_assets.py](tools/item_assets.py). Original replacement sprites are in [tools/icecrown_items.py](tools/icecrown_items.py), Saronite armor geometry and textures are in [tools/armor_assets.py](tools/armor_assets.py), and historical scythe artwork is retained in [tools/scythe_assets.py](tools/scythe_assets.py); the Reaping Scythe is no longer a runtime item.

At the user's request, eleven inventory textures now derive directly from Minecraft 26.1.2 assets: Soulbone recolors the vanilla bone; Blue Crystal recolors the amethyst shard; Crystal armor icons recolor diamond armor; and Saronite tools recolor diamond tools while retaining their wooden handles. Worn Crystal armor uses vanilla diamond armor geometry and textures with reduced opacity. [tools/vanilla_art.py](tools/vanilla_art.py) reads these pixels from the locally installed, version-pinned Minecraft client archive. These vanilla-derived pixels and geometry remain attributable to Mojang/Microsoft and are not claimed as original Anima artwork. No Intangible assets are used.

The Molten Crystal Bucket also uses the vanilla water-bucket sprite: its metal pixels and alpha are unchanged, while its water is recolored dark blue. The Circuit Stamper uses the vanilla anvil texture. These are read from the same pinned Minecraft archive and remain attributable to Mojang/Microsoft. The eight cutout mold silhouettes, their plate geometry and the stamper geometry are project-authored in `tools/glassworking_assets.py`.

## Dependencies and references

The guidebook uses [Modonomicon](https://github.com/klikli-dev/modonomicon); its dependencies and attribution remain with their respective projects. Minecraft and NeoForge remain the work of their respective creators. References to Minecraft identifiers or platform APIs describe compatibility.

Anima's factual research notes and primary-source links are in [Intangible reference](docs/intangible-reference.md). The original project's listing identifies a custom Intangible Mod License; readable full terms were not recovered during this research. No claim about the scope of those unavailable terms is made here.

Bone machinery icons and the four-bottle mold are project-authored in `tools/bone_tech_assets.py` and `tools/glassworking_assets.py`. Yellow Crystal uses the same vanilla amethyst-shard pixels and shade boundaries as Blue Crystal, recolored yellow. Both Soulbone Spear textures recolor the vanilla iron-spear silhouettes using the existing Soulbone palette and native held model. The yellow molten bucket preserves vanilla water-bucket metal, recoloring only the water. These platform-derived assets retain Mojang/Microsoft attribution.

At the user’s request, the latest bone machinery icons were redrawn after viewing matching Intangible 0.0.25 textures from their supplied local folder. Those images informed the dark bindings, compact mechanical forms and saturated crystal cores. A later cleanup uses the existing Soulbone blue-white palette for consistency and simplifies the frames, openings and shading. The revised item sprites have original pixel layouts and details; the supplied Intangible files are not embedded in the mod or source distribution. The [reference mapping](docs/bone-tech-texture-reference.md) records each match and its new interpretation.
