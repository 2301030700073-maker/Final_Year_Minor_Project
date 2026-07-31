package org.wikipedia.dataclient.donate;

import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class CampaignCollection {
    public static final CampaignCollection INSTANCE = new CampaignCollection();
    public static final CampaignCollection INSTANCE$1 = new CampaignCollection();

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class CampaignProto {
        public static final Companion Companion = new Companion();
        public final int version;

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return CampaignCollection$CampaignProto$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ CampaignProto(int i, int i2) {
            if ((i & 1) == 0) {
                this.version = 0;
            } else {
                this.version = i2;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x002b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String getFormattedCampaignId(java.lang.String r3) {
        /*
            r3.getClass()
            org.wikipedia.WikipediaApp r0 = org.wikipedia.WikipediaApp.instance
            org.wikipedia.WikipediaApp r0 = org.jsoup.Jsoup.getInstance()
            java.lang.String r0 = r0.getAppOrSystemLanguageCode()
            org.wikipedia.settings.Prefs r1 = org.wikipedia.settings.Prefs.INSTANCE     // Catch: java.lang.IllegalArgumentException -> L28
            java.lang.String r1 = org.wikipedia.settings.Prefs.getGeoIPCountryOverride()     // Catch: java.lang.IllegalArgumentException -> L28
            if (r1 == 0) goto L21
            int r1 = r1.length()     // Catch: java.lang.IllegalArgumentException -> L28
            if (r1 != 0) goto L1c
            goto L21
        L1c:
            java.lang.String r1 = org.wikipedia.settings.Prefs.getGeoIPCountryOverride()     // Catch: java.lang.IllegalArgumentException -> L28
            goto L29
        L21:
            kotlinx.coroutines.internal.Symbol r1 = org.jsoup.Jsoup.unmarshal()     // Catch: java.lang.IllegalArgumentException -> L28
            java.lang.String r1 = r1.symbol     // Catch: java.lang.IllegalArgumentException -> L28
            goto L29
        L28:
            r1 = 0
        L29:
            if (r1 != 0) goto L2d
            java.lang.String r1 = ""
        L2d:
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            r2.append(r0)
            r2.append(r1)
            java.lang.String r0 = "_"
            r2.append(r0)
            r2.append(r3)
            java.lang.String r3 = "_Android"
            r2.append(r3)
            java.lang.String r3 = r2.toString()
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.dataclient.donate.CampaignCollection.getFormattedCampaignId(java.lang.String):java.lang.String");
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0030  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String replaceParams(java.lang.String r2, java.lang.String r3) {
        /*
            java.lang.String r0 = "$platform;"
            java.lang.String r1 = "Android"
            java.lang.String r2 = kotlin.text.StringsKt__StringsJVMKt.replace$default(r2, r0, r1)
            java.lang.String r0 = "$formattedId;"
            java.lang.String r3 = getFormattedCampaignId(r3)
            java.lang.String r2 = kotlin.text.StringsKt__StringsJVMKt.replace$default(r2, r0, r3)
            org.wikipedia.settings.Prefs r3 = org.wikipedia.settings.Prefs.INSTANCE     // Catch: java.lang.IllegalArgumentException -> L2d
            java.lang.String r3 = org.wikipedia.settings.Prefs.getGeoIPCountryOverride()     // Catch: java.lang.IllegalArgumentException -> L2d
            if (r3 == 0) goto L26
            int r3 = r3.length()     // Catch: java.lang.IllegalArgumentException -> L2d
            if (r3 != 0) goto L21
            goto L26
        L21:
            java.lang.String r3 = org.wikipedia.settings.Prefs.getGeoIPCountryOverride()     // Catch: java.lang.IllegalArgumentException -> L2d
            goto L2e
        L26:
            kotlinx.coroutines.internal.Symbol r3 = org.jsoup.Jsoup.unmarshal()     // Catch: java.lang.IllegalArgumentException -> L2d
            java.lang.String r3 = r3.symbol     // Catch: java.lang.IllegalArgumentException -> L2d
            goto L2e
        L2d:
            r3 = 0
        L2e:
            if (r3 != 0) goto L32
            java.lang.String r3 = ""
        L32:
            java.lang.String r0 = "$country;"
            java.lang.String r2 = kotlin.text.StringsKt__StringsJVMKt.replace$default(r2, r0, r3)
            org.wikipedia.WikipediaApp r3 = org.wikipedia.WikipediaApp.instance
            org.wikipedia.WikipediaApp r3 = org.jsoup.Jsoup.getInstance()
            java.lang.String r3 = r3.getAppOrSystemLanguageCode()
            java.lang.String r0 = "$language;"
            java.lang.String r2 = kotlin.text.StringsKt__StringsJVMKt.replace$default(r2, r0, r3)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.dataclient.donate.CampaignCollection.replaceParams(java.lang.String, java.lang.String):java.lang.String");
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object getActiveCampaigns(kotlin.coroutines.jvm.internal.ContinuationImpl r6) {
        /*
            r5 = this;
            boolean r0 = r6 instanceof org.wikipedia.dataclient.donate.CampaignCollection$getActiveCampaigns$1
            if (r0 == 0) goto L13
            r0 = r6
            org.wikipedia.dataclient.donate.CampaignCollection$getActiveCampaigns$1 r0 = (org.wikipedia.dataclient.donate.CampaignCollection$getActiveCampaigns$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            org.wikipedia.dataclient.donate.CampaignCollection$getActiveCampaigns$1 r0 = new org.wikipedia.dataclient.donate.CampaignCollection$getActiveCampaigns$1
            r0.<init>(r5, r6)
        L18:
            java.lang.Object r5 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r6 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r0.label
            r2 = 0
            r3 = 1
            if (r1 == 0) goto L30
            if (r1 != r3) goto L2a
            java.util.ArrayList r6 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r5)
            return r6
        L2a:
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r5)
            return r2
        L30:
            kotlin.ResultKt.throwOnFailure(r5)
            java.util.ArrayList r5 = new java.util.ArrayList
            r5.<init>()
            kotlinx.coroutines.scheduling.DefaultScheduler r1 = kotlinx.coroutines.Dispatchers.Default
            kotlinx.coroutines.scheduling.DefaultIoScheduler r1 = kotlinx.coroutines.scheduling.DefaultIoScheduler.INSTANCE
            org.wikipedia.dataclient.donate.DonationConfigHelper$getConfig$2 r4 = new org.wikipedia.dataclient.donate.DonationConfigHelper$getConfig$2
            r4.<init>(r5, r2, r3)
            r0.L$0 = r5
            r0.label = r3
            java.lang.Object r0 = kotlinx.coroutines.AwaitKt.withContext(r1, r4, r0)
            if (r0 != r6) goto L4c
            return r6
        L4c:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.dataclient.donate.CampaignCollection.getActiveCampaigns(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object getConfig(kotlin.coroutines.jvm.internal.ContinuationImpl r7) {
        /*
            r6 = this;
            boolean r0 = r7 instanceof org.wikipedia.dataclient.donate.DonationConfigHelper$getConfig$1
            if (r0 == 0) goto L13
            r0 = r7
            org.wikipedia.dataclient.donate.DonationConfigHelper$getConfig$1 r0 = (org.wikipedia.dataclient.donate.DonationConfigHelper$getConfig$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            org.wikipedia.dataclient.donate.DonationConfigHelper$getConfig$1 r0 = new org.wikipedia.dataclient.donate.DonationConfigHelper$getConfig$1
            r0.<init>(r6, r7)
        L18:
            java.lang.Object r6 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r7 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r0.label
            r2 = 0
            r3 = 1
            if (r1 == 0) goto L30
            if (r1 != r3) goto L2a
            java.util.ArrayList r7 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r6)
            goto L4e
        L2a:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r6)
            return r2
        L30:
            kotlin.ResultKt.throwOnFailure(r6)
            java.util.ArrayList r6 = new java.util.ArrayList
            r6.<init>()
            kotlinx.coroutines.scheduling.DefaultScheduler r1 = kotlinx.coroutines.Dispatchers.Default
            kotlinx.coroutines.scheduling.DefaultIoScheduler r1 = kotlinx.coroutines.scheduling.DefaultIoScheduler.INSTANCE
            org.wikipedia.dataclient.donate.DonationConfigHelper$getConfig$2 r4 = new org.wikipedia.dataclient.donate.DonationConfigHelper$getConfig$2
            r5 = 0
            r4.<init>(r6, r2, r5)
            r0.L$0 = r6
            r0.label = r3
            java.lang.Object r0 = kotlinx.coroutines.AwaitKt.withContext(r1, r4, r0)
            if (r0 != r7) goto L4d
            return r7
        L4d:
            r7 = r6
        L4e:
            java.lang.Object r6 = kotlin.collections.CollectionsKt.firstOrNull(r7)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.dataclient.donate.CampaignCollection.getConfig(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}
