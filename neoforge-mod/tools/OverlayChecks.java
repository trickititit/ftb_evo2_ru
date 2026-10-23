import com.google.gson.*;
import com.mojang.datafixers.util.Either;
import dev.ftb.mods.ftbquests.quest.translation.TranslationTable;
import ru.trickititit.ftbevo2ru.QuestTranslations;
import java.nio.file.*;
import java.util.*;

/** Standalone integration checks against the real FTB classes, without constructing a world. */
public class OverlayChecks {
    static void check(boolean value, String name) {
        if (!value) throw new AssertionError(name);
    }
    static Either<String,List<String>> convert(JsonElement value) {
        if (!value.isJsonArray()) return Either.left(value.getAsString());
        List<String> result=new ArrayList<>();value.getAsJsonArray().forEach(v->result.add(v.getAsString()));
        return Either.right(List.copyOf(result));
    }
    public static void main(String[] args) throws Exception {
        JsonObject source=JsonParser.parseString(Files.readString(Path.of(args[0]))).getAsJsonObject();
        JsonObject ru=JsonParser.parseString(Files.readString(Path.of(args[1]))).getAsJsonObject();
        TranslationTable english=new TranslationTable();
        source.entrySet().forEach(e->convert(e.getValue()).ifLeft(v->english.put(e.getKey(),v)).ifRight(v->english.put(e.getKey(),v)));
        Map<String,TranslationTable> tables=new HashMap<>();tables.put("en_us",english);
        int checked=0;
        for (var item:ru.entrySet()) {
            String key=item.getKey();var expected=convert(item.getValue().getAsJsonObject().get("text"));
            check(expected.equals(QuestTranslations.lookup(tables,"ru_ru",key)),"all entries: "+key);
            check(QuestTranslations.lookup(tables,"en_us",key)==null,"English preserved");
            checked++;
        }
        String key="chapter.31FB8F048EA7FAFE.title";
        english.put(key,"CHANGED_SOURCE");
        check(QuestTranslations.lookup(tables,"ru_ru",key)==null,"changed source/cache invalidation");
        english.put(key,source.get(key).getAsString());
        check(QuestTranslations.lookup(tables,"ru_ru",key)!=null,"restored source/cache invalidation");
        TranslationTable custom=new TranslationTable();custom.put(key,"USER_RUSSIAN");tables.put("ru_ru",custom);
        check(QuestTranslations.lookup(tables,"ru_ru",key)==null,"user Russian priority");
        check("USER_RUSSIAN".equals(custom.getStringTranslation(key).orElseThrow()),"custom value untouched");
        check(QuestTranslations.lookup(tables,"de_de",key)==null,"other locales preserved");
        check(QuestTranslations.lookup(tables,"ru_ru","unknown.key")==null,"unknown keys preserved");
        check(english.size()==source.size(),"English table size untouched");
        System.out.println("OVERLAY_CHECKS_PASS entries="+checked+" source_guard=true user_override=true cache_invalidation=true");
    }
}
