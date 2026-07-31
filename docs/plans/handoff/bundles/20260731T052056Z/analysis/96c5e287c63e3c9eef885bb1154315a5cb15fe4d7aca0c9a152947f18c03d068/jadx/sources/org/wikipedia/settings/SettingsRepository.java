package org.wikipedia.settings;

import androidx.datastore.core.DataStore;
import androidx.datastore.preferences.core.Preferences$Key;
import org.jsoup.Jsoup;
import org.wikipedia.WikipediaApp;
import org.wikipedia.extensions.ContextKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SettingsRepository {
    public static final DataStore dataStore;
    public static final SettingsRepository$special$$inlined$map$1 hiddenCards;
    public static final SettingsRepository$special$$inlined$map$1 hiddenModules;
    public static final SettingsRepository INSTANCE = new SettingsRepository();
    public static final Preferences$Key hiddenModulesKey = new Preferences$Key("home_hidden_modules");
    public static final Preferences$Key hiddenCardsKey = new Preferences$Key("home_hidden_cards");

    static {
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        DataStore dataStore2 = (DataStore) ContextKt.dataStore$delegate.getValue(Jsoup.getInstance(), ContextKt.$$delegatedProperties[0]);
        dataStore = dataStore2;
        hiddenModules = new SettingsRepository$special$$inlined$map$1(dataStore2.getData(), 0);
        hiddenCards = new SettingsRepository$special$$inlined$map$1(dataStore2.getData(), 3);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(11:0|1|(2:3|(8:5|6|(1:(1:9)(2:19|20))(7:21|(6:25|26|27|(1:29)|30|(1:32)(2:33|(1:35)))|39|27|(0)|30|(0)(0))|10|11|12|13|14))|40|6|(0)(0)|10|11|12|13|14) */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x009c, code lost:
    
        r9 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x009d, code lost:
    
        org.wikipedia.util.log.L.w(r9);
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0070 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0029  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object migrateLegacyHiddenCards(kotlin.coroutines.jvm.internal.ContinuationImpl r10) {
        /*
            r9 = this;
            boolean r0 = r10 instanceof org.wikipedia.settings.SettingsRepository$migrateLegacyHiddenCards$1
            if (r0 == 0) goto L13
            r0 = r10
            org.wikipedia.settings.SettingsRepository$migrateLegacyHiddenCards$1 r0 = (org.wikipedia.settings.SettingsRepository$migrateLegacyHiddenCards$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            org.wikipedia.settings.SettingsRepository$migrateLegacyHiddenCards$1 r0 = new org.wikipedia.settings.SettingsRepository$migrateLegacyHiddenCards$1
            r0.<init>(r9, r10)
        L18:
            java.lang.Object r9 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r10 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r0.label
            kotlin.Unit r2 = kotlin.Unit.INSTANCE
            kotlin.collections.EmptyList r3 = kotlin.collections.EmptyList.INSTANCE
            r4 = 2131887621(0x7f120605, float:1.9409854E38)
            r5 = 1
            r6 = 0
            if (r1 == 0) goto L35
            if (r1 != r5) goto L2f
            kotlin.ResultKt.throwOnFailure(r9)
            goto L89
        L2f:
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r9)
            return r6
        L35:
            kotlin.ResultKt.throwOnFailure(r9)
            org.wikipedia.settings.Prefs r9 = org.wikipedia.settings.Prefs.INSTANCE
            kotlinx.serialization.json.JsonImpl r9 = org.wikipedia.json.JsonUtil.json
            java.lang.String r9 = org.wikipedia.settings.PrefsIoUtil.getString(r4, r6)
            if (r9 == 0) goto L64
            int r1 = r9.length()
            if (r1 != 0) goto L49
            goto L64
        L49:
            kotlinx.serialization.json.JsonImpl r1 = org.wikipedia.json.JsonUtil.json     // Catch: java.lang.Exception -> L60
            r1.getClass()     // Catch: java.lang.Exception -> L60
            kotlinx.serialization.internal.HashSetSerializer r7 = new kotlinx.serialization.internal.HashSetSerializer     // Catch: java.lang.Exception -> L60
            kotlinx.serialization.internal.StringSerializer r8 = kotlinx.serialization.internal.StringSerializer.INSTANCE     // Catch: java.lang.Exception -> L60
            r7.<init>(r8, r5)     // Catch: java.lang.Exception -> L60
            kotlinx.serialization.KSerializer r7 = kotlin.UnsignedKt.getNullable(r7)     // Catch: java.lang.Exception -> L60
            kotlinx.serialization.KSerializer r7 = (kotlinx.serialization.KSerializer) r7     // Catch: java.lang.Exception -> L60
            java.lang.Object r9 = r1.decodeFromString(r9, r7)     // Catch: java.lang.Exception -> L60
            goto L65
        L60:
            r9 = move-exception
            org.wikipedia.util.log.L.w(r9)
        L64:
            r9 = r6
        L65:
            java.util.List r9 = (java.util.List) r9
            if (r9 != 0) goto L6a
            r9 = r3
        L6a:
            boolean r1 = r9.isEmpty()
            if (r1 == 0) goto L71
            return r2
        L71:
            org.wikipedia.donate.DonateDialog$onCreateView$3$1 r1 = new org.wikipedia.donate.DonateDialog$onCreateView$3$1
            r7 = 25
            r1.<init>(r7, r9, r6)
            r0.label = r5
            androidx.paging.SimpleChannelFlowKt$simpleChannelFlow$1 r9 = new androidx.paging.SimpleChannelFlowKt$simpleChannelFlow$1
            r7 = 3
            r9.<init>(r1, r6, r7)
            androidx.datastore.core.DataStore r1 = org.wikipedia.settings.SettingsRepository.dataStore
            java.lang.Object r9 = r1.updateData(r9, r0)
            if (r9 != r10) goto L89
            return r10
        L89:
            org.wikipedia.settings.Prefs r9 = org.wikipedia.settings.Prefs.INSTANCE
            kotlinx.serialization.json.JsonImpl r9 = org.wikipedia.json.JsonUtil.json     // Catch: java.lang.Exception -> L9c
            r9.getClass()     // Catch: java.lang.Exception -> L9c
            kotlinx.serialization.internal.HashSetSerializer r10 = new kotlinx.serialization.internal.HashSetSerializer     // Catch: java.lang.Exception -> L9c
            kotlinx.serialization.internal.StringSerializer r0 = kotlinx.serialization.internal.StringSerializer.INSTANCE     // Catch: java.lang.Exception -> L9c
            r10.<init>(r0, r5)     // Catch: java.lang.Exception -> L9c
            java.lang.String r6 = r9.encodeToString(r10, r3)     // Catch: java.lang.Exception -> L9c
            goto La0
        L9c:
            r9 = move-exception
            org.wikipedia.util.log.L.w(r9)
        La0:
            org.wikipedia.settings.PrefsIoUtil.setString(r4, r6)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.settings.SettingsRepository.migrateLegacyHiddenCards(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}
