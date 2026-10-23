package ru.trickititit.ftbevo2ru.mixin;

import com.mojang.datafixers.util.Either;
import dev.ftb.mods.ftbquests.quest.QuestObjectBase;
import dev.ftb.mods.ftbquests.quest.translation.TranslationKey;
import dev.ftb.mods.ftbquests.quest.translation.TranslationManager;
import dev.ftb.mods.ftbquests.quest.translation.TranslationTable;
import org.spongepowered.asm.mixin.Final;
import org.spongepowered.asm.mixin.Mixin;
import org.spongepowered.asm.mixin.Shadow;
import org.spongepowered.asm.mixin.injection.At;
import org.spongepowered.asm.mixin.injection.Inject;
import org.spongepowered.asm.mixin.injection.callback.CallbackInfoReturnable;
import ru.trickititit.ftbevo2ru.QuestTranslations;
import java.util.List;
import java.util.Map;
import java.util.Optional;

/** Intercept display lookups only; saving, synchronization and quest state remain untouched. */
@Mixin(value = TranslationManager.class, remap = false)
public abstract class TranslationManagerMixin {
    @Shadow @Final private Map<String, TranslationTable> map;

    @Shadow
    private static String makeKey(QuestObjectBase object, TranslationKey key) {
        throw new AssertionError("Mixin shadow");
    }

    @Inject(method = "getStringTranslation", at = @At("HEAD"), cancellable = true, remap = false)
    private void ftbevo2ru$string(QuestObjectBase object, String locale, TranslationKey key,
                                  CallbackInfoReturnable<Optional<String>> callback) {
        var text = QuestTranslations.lookup(map, locale, makeKey(object, key));
        if (text != null) callback.setReturnValue(text.left());
    }

    @Inject(method = "getStringListTranslation", at = @At("HEAD"), cancellable = true, remap = false)
    private void ftbevo2ru$list(QuestObjectBase object, String locale, TranslationKey key,
                                CallbackInfoReturnable<Optional<List<String>>> callback) {
        var text = QuestTranslations.lookup(map, locale, makeKey(object, key));
        if (text != null) callback.setReturnValue(text.right());
    }

    @Inject(method = "getEntry", at = @At("HEAD"), cancellable = true, remap = false)
    private void ftbevo2ru$entry(QuestObjectBase object, String locale, TranslationKey key,
                                 CallbackInfoReturnable<Either<String, List<String>>> callback) {
        var text = QuestTranslations.lookup(map, locale, makeKey(object, key));
        if (text != null) callback.setReturnValue(text);
    }
}
