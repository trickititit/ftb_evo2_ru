package ru.trickititit.ftbevo2ru;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.mojang.datafixers.util.Either;
import dev.ftb.mods.ftbquests.quest.translation.TranslationTable;
import java.io.InputStreamReader;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HexFormat;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.atomic.AtomicBoolean;

/** Read-only quest text overlay, independent of the quest save and progress format. */
public final class QuestTranslations {
    private QuestTranslations() {}

    private record Entry(String sourceHash, Either<String, List<String>> text) {}
    private record Cached(Either<String, List<String>> source, Either<String, List<String>> text) {}
    private static final Map<TranslationTable, Map<String, Cached>> CACHE = new WeakHashMap<>();
    private static final AtomicBoolean MISMATCH_REPORTED = new AtomicBoolean();

    private static final class Holder {
        private static final Map<String, Entry> ENTRIES = readEntries();
    }

    public static void load() {
        RussianLocalization.LOGGER.info("Bundled Russian quest entries: {}", Holder.ENTRIES.size());
    }

    /**
     * Return an overlay only for a known, unchanged English entry. Existing Russian configuration
     * takes precedence, including edits received from the server. No translation table is mutated.
     */
    public static Either<String, List<String>> lookup(Map<String, TranslationTable> tables,
                                                      String locale, String key) {
        if (!"ru_ru".equals(locale)) return null;
        Entry bundled = Holder.ENTRIES.get(key);
        if (bundled == null) return null;
        TranslationTable russian = tables.get("ru_ru");
        if (russian != null && russian.contains(key)) return null;
        TranslationTable english = tables.get("en_us");
        if (english == null) return null;
        Either<String, List<String>> source = english.getEntry(key, null);
        if (source == null) return null;
        synchronized (CACHE) {
            Map<String, Cached> entries = CACHE.computeIfAbsent(english, ignored -> new HashMap<>());
            Cached cached = entries.get(key);
            if (cached != null && cached.source == source) return cached.text;
            Either<String, List<String>> result = bundled.sourceHash.equals(fingerprint(source))
                    ? bundled.text : null;
            entries.put(key, new Cached(source, result));
            if (result == null && MISMATCH_REPORTED.compareAndSet(false, true)) {
                RussianLocalization.LOGGER.warn("Quest source differs from FTB Evolution 2 1.4.0; "
                        + "changed entries will retain their original text. First mismatch: {}", key);
            }
            return result;
        }
    }

    private static String fingerprint(Either<String, List<String>> text) {
        String canonical = text.map(value -> "S\n" + value,
                values -> "L\n" + String.join("\u0000", values));
        try {
            return HexFormat.of().formatHex(MessageDigest.getInstance("SHA-256")
                    .digest(canonical.getBytes(StandardCharsets.UTF_8)));
        } catch (NoSuchAlgorithmException impossible) {
            throw new IllegalStateException(impossible);
        }
    }

    private static Map<String, Entry> readEntries() {
        var stream = QuestTranslations.class.getResourceAsStream("/ftbevo2ru/quests.json");
        if (stream == null) throw new IllegalStateException("Missing bundled quest translations");
        try (var reader = new InputStreamReader(stream, StandardCharsets.UTF_8)) {
            JsonObject root = JsonParser.parseReader(reader).getAsJsonObject();
            Map<String, Entry> result = new HashMap<>();
            root.entrySet().forEach(item -> {
                JsonObject entry = item.getValue().getAsJsonObject();
                JsonElement text = entry.get("text");
                Either<String, List<String>> translated;
                if (text.isJsonArray()) {
                    List<String> lines = new ArrayList<>();
                    text.getAsJsonArray().forEach(line -> lines.add(line.getAsString()));
                    translated = Either.right(List.copyOf(lines));
                } else {
                    translated = Either.left(text.getAsString());
                }
                result.put(item.getKey(), new Entry(entry.get("source_sha256").getAsString(), translated));
            });
            if (result.size() != 4178) throw new IllegalStateException("Incomplete quest translation bundle");
            return Collections.unmodifiableMap(result);
        } catch (Exception exception) {
            throw new IllegalStateException("Cannot load bundled Russian quest translations", exception);
        }
    }
}
