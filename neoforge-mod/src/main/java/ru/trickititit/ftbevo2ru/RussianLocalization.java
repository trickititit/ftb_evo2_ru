package ru.trickititit.ftbevo2ru;

import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import net.neoforged.fml.common.Mod;
import net.neoforged.fml.loading.FMLPaths;
import net.neoforged.bus.api.IEventBus;
import net.neoforged.neoforge.event.AddPackFindersEvent;
import net.minecraft.network.chat.Component;
import net.minecraft.resources.Identifier;
import net.minecraft.server.packs.PackType;
import net.minecraft.server.packs.repository.Pack;
import net.minecraft.server.packs.repository.PackSource;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;

/** Entry point. Resources are provided by the mod JAR; no installation files are written. */
@Mod(RussianLocalization.MOD_ID)
public final class RussianLocalization {
    public static final String MOD_ID = "ftbevo2ru";
    public static final Logger LOGGER = LoggerFactory.getLogger(MOD_ID);

    public RussianLocalization(IEventBus modBus) {
        Path metadata = FMLPaths.GAMEDIR.get().resolve("config/metadata.json");
        try (var reader = Files.newBufferedReader(metadata, StandardCharsets.UTF_8)) {
            JsonObject pack = JsonParser.parseReader(reader).getAsJsonObject();
            if (pack.get("id").getAsInt() != 135
                    || !"FTB Evolution 2".equals(pack.get("name").getAsString())
                    || !"1.4.0".equals(pack.getAsJsonObject("version").get("name").getAsString())) {
                throw new IllegalStateException("Unsupported modpack. Requires FTB Evolution 2 1.4.0 (pack 135).");
            }
        } catch (IOException | RuntimeException exception) {
            throw new IllegalStateException("FTB Evolution 2 Russian Localization requires FTB Evolution 2 1.4.0. "
                    + "Check config/metadata.json. This JAR does not support other modpacks or versions.", exception);
        }
        QuestTranslations.load();
        // An always-active built-in pack gives corrections priority over original mod resources.
        // Registration does not edit options.txt or any player's resource-pack selection.
        modBus.addListener(RussianLocalization::addTranslationPack);
        LOGGER.info("FTB Evolution 2 Russian Localization 1.0.0: translation resources loaded; no config files modified.");
    }

    public static void addTranslationPack(AddPackFindersEvent event) {
        if (event.getPackType() == PackType.CLIENT_RESOURCES) {
            event.addPackFinders(Identifier.fromNamespaceAndPath(MOD_ID, "resourcepacks/russian"),
                    PackType.CLIENT_RESOURCES, Component.literal("FTB Evolution 2 — Русский перевод"),
                    PackSource.BUILT_IN, true, Pack.Position.TOP);
        }
    }
}
