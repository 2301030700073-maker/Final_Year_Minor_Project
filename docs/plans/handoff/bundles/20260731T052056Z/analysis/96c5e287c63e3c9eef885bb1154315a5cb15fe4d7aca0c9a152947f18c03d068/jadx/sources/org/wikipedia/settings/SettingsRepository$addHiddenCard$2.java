package org.wikipedia.settings;

import androidx.datastore.preferences.core.MutablePreferences;
import androidx.datastore.preferences.core.Preferences$Key;
import java.util.Set;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptySet;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.uuid.UuidKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SettingsRepository$addHiddenCard$2 extends SuspendLambda implements Function2 {
    public final /* synthetic */ String $cardKey;
    public final /* synthetic */ int $r8$classId;
    public /* synthetic */ Object L$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ SettingsRepository$addHiddenCard$2(String str, int i, Continuation continuation) {
        super(2, continuation);
        this.$r8$classId = i;
        this.$cardKey = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        switch (this.$r8$classId) {
            case 0:
                SettingsRepository$addHiddenCard$2 settingsRepository$addHiddenCard$2 = new SettingsRepository$addHiddenCard$2(this.$cardKey, 0, continuation);
                settingsRepository$addHiddenCard$2.L$0 = obj;
                return settingsRepository$addHiddenCard$2;
            case 1:
                SettingsRepository$addHiddenCard$2 settingsRepository$addHiddenCard$22 = new SettingsRepository$addHiddenCard$2(this.$cardKey, 1, continuation);
                settingsRepository$addHiddenCard$22.L$0 = obj;
                return settingsRepository$addHiddenCard$22;
            case 2:
                SettingsRepository$addHiddenCard$2 settingsRepository$addHiddenCard$23 = new SettingsRepository$addHiddenCard$2(this.$cardKey, 2, continuation);
                settingsRepository$addHiddenCard$23.L$0 = obj;
                return settingsRepository$addHiddenCard$23;
            default:
                SettingsRepository$addHiddenCard$2 settingsRepository$addHiddenCard$24 = new SettingsRepository$addHiddenCard$2(this.$cardKey, 3, continuation);
                settingsRepository$addHiddenCard$24.L$0 = obj;
                return settingsRepository$addHiddenCard$24;
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        MutablePreferences mutablePreferences = (MutablePreferences) obj;
        Continuation continuation = (Continuation) obj2;
        switch (i) {
            case 0:
                ((SettingsRepository$addHiddenCard$2) create(mutablePreferences, continuation)).invokeSuspend(unit);
                break;
            case 1:
                ((SettingsRepository$addHiddenCard$2) create(mutablePreferences, continuation)).invokeSuspend(unit);
                break;
            case 2:
                ((SettingsRepository$addHiddenCard$2) create(mutablePreferences, continuation)).invokeSuspend(unit);
                break;
            default:
                ((SettingsRepository$addHiddenCard$2) create(mutablePreferences, continuation)).invokeSuspend(unit);
                break;
        }
        return unit;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        String str = this.$cardKey;
        Set set = EmptySet.INSTANCE;
        MutablePreferences mutablePreferences = (MutablePreferences) this.L$0;
        switch (i) {
            case 0:
                ResultKt.throwOnFailure(obj);
                Preferences$Key preferences$Key = SettingsRepository.hiddenCardsKey;
                Set set2 = (Set) mutablePreferences.get(preferences$Key);
                if (set2 != null) {
                    set = set2;
                }
                if (set.size() >= 100) {
                    set = CollectionsKt.toSet(CollectionsKt.drop(set));
                }
                mutablePreferences.setUnchecked$datastore_preferences_core(preferences$Key, UuidKt.plus(set, str));
                break;
            case 1:
                ResultKt.throwOnFailure(obj);
                Preferences$Key preferences$Key2 = SettingsRepository.hiddenModulesKey;
                Set set3 = (Set) mutablePreferences.get(preferences$Key2);
                if (set3 != null) {
                    set = set3;
                }
                mutablePreferences.setUnchecked$datastore_preferences_core(preferences$Key2, UuidKt.plus(set, str));
                break;
            case 2:
                ResultKt.throwOnFailure(obj);
                Preferences$Key preferences$Key3 = SettingsRepository.hiddenCardsKey;
                Set set4 = (Set) mutablePreferences.get(preferences$Key3);
                if (set4 != null) {
                    set = set4;
                }
                mutablePreferences.setUnchecked$datastore_preferences_core(preferences$Key3, UuidKt.minus(set, str));
                break;
            default:
                ResultKt.throwOnFailure(obj);
                Preferences$Key preferences$Key4 = SettingsRepository.hiddenModulesKey;
                Set set5 = (Set) mutablePreferences.get(preferences$Key4);
                if (set5 != null) {
                    set = set5;
                }
                mutablePreferences.setUnchecked$datastore_preferences_core(preferences$Key4, UuidKt.minus(set, str));
                break;
        }
        return unit;
    }
}
