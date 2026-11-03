# 1.2.1 — FTB Evolution 2 1.6.3

## 1.3.0 — FTB Evolution 2 1.7.0

- Minecraft 26.1.2, NeoForge 26.1.2.126, FTB Library 26.1.2.11, FTB Quests 26.1.2.9, Stellaris 2.0.10; Java 25.
- Обновлены вручную 3 описания FTB Quests: фортрон, каналы AE2 и сбор крови. Удалены 6 отсутствующих в исходниках строк; актуальны все 4 188 записей.
- Обработана 261 языковая строка и одна буквальная строка Modonomicon. Выборочная ручная редактура 210 записей, включая Neo Vitae, FTB Teams и Applied Oritech.
- Добавлены/обновлены 15 страниц GuideME: Applied Replicatics, Applied Oritech, ME Requester, Colossal Reactors, Energy Meter, LaserTech Industries и Nautec. Остальные книги и вики сохранены.
- Удалены переводы ресурсов отсутствующих модов Better Fish Tanks, Mint Lib и Replication AE2 Bridge. Chisel по-прежнему исключён.
- Установщик проверяет Minecraft и NeoForge по манифесту выпуска. Поддержаны обновления с управляемых 1.1.0, 1.2.0 и 1.2.1 с сохранением полной цепочки резервных копий и отката.

- Updated compatibility to pack 135 / version 100583 and FTB Library 26.1.2.11.
- Manually reviewed/updated five quest entries: Jeweler naming, tavern shopkeepers, Argon task submission, Crystal Assembler energy supply and Awakened Supremium. All 4,194 entries have current English fingerprints.
- Manually translated four language strings: Jeweler, remote projector range, fish size and weight. Removed 17 obsolete Better Fish Tanks keys absent from current English resources.
- GuideME, Patchouli, Oracle Index and Stellaris documentation sources are unchanged from 1.6.1; their translations are retained.
- Added direct managed upgrades from 1.2.0 alongside 1.1.0, with recursive backup validation and restoration of previous installer state for a full rollback chain.
- Chisel remains excluded. See VALIDATION.md for actual checks; client rendering was not tested.

# 1.2.0 — FTB Evolution 2 1.6.1

- Updated compatibility to pack 135 / version 100580 and FTB Library 26.1.2.10. Minecraft 26.1.2, NeoForge 26.1.2.121, FTB Quests 26.1.2.9 and Stellaris 2.0.9 remain unchanged.
- Manually translated one added quest entry and five changed descriptions: router security, Replicator Motor, Gravity Manipulator, cans and necromancy. All 4,194 source entries have current English fingerprints.
- Updated 637 mod language entries, 16 GuideME pages and 29 Patchouli files, including the Building Gadgets 2 book. Added selected manual corrections for Witchery infusion charging terminology.
- Added direct installer upgrades from managed localization 1.1.0. Rollback restores the previous JAR and installer state; the old installer can still restore its original r4 backups. Modified files and damaged backups are preserved/refused safely.
- Unchanged translations and the Chisel exclusion are retained. See VALIDATION.md for actual checks and client rendering limitations.

# 1.1.0 — FTB Evolution 2 1.5.1

- Updated compatibility to pack 135 / version 100577, Stellaris 2.0.9. Minecraft 26.1.2, NeoForge 26.1.2.121 and FTB Quests / Library 26.1.2.9 remain unchanged.
- Manually translated 15 added and 8 changed quest language entries. The complete bundle now contains 4,193 entries with fingerprints from the 1.5.1 English source.
- Updated 518 mod language entries and 49 GuideME pages, including Nodeworks, Nautec and LTX Industries. Removed the obsolete Nodeworks page at its old path.
- Updated the Stellaris cans and fluid-cell wiki pages and corrected their plain-text metadata format.
- Corrected selected Nodeworks, Nautec and Stellaris names, two quest rank titles and eight interface tooltips. Empty language overrides and the removed Wakes namespace are omitted.
- Added portable Windows client/server installers with compatibility checks, verified backups, migration from the previous JAR and tracked r1–r4 files, repeat-install protection and rollback.
- Preserved the existing translations of Patchouli, Oracle Index and other unchanged guides. Chisel remains excluded.

See `VALIDATION.md` for the checks actually performed. Client rendering was not tested; the translation remains largely machine drafted with selected manual corrections.
