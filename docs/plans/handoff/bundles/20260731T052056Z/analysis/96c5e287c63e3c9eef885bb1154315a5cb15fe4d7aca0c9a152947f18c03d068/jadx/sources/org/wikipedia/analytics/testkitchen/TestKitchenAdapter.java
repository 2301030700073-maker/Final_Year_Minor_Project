package org.wikipedia.analytics.testkitchen;

import android.os.Build;
import kotlin.collections.CollectionsKt;
import kotlin.text.StringsKt;
import okhttp3.Headers;
import okio.ByteString;
import org.jsoup.Jsoup;
import org.wikimedia.testkitchen.SessionController;
import org.wikimedia.testkitchen.TestKitchenClient;
import org.wikimedia.testkitchen.context.AgentData;
import org.wikimedia.testkitchen.context.PageData;
import org.wikimedia.testkitchen.context.PerformerData;
import org.wikipedia.WikipediaApp;
import org.wikipedia.page.Namespace;
import org.wikipedia.page.PageTitle;
import org.wikipedia.util.DeviceUtil$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TestKitchenAdapter {
    public static final TestKitchenClient client;
    public static final DeviceUtil$$ExternalSyntheticLambda1 flushEventsRunnable;

    static {
        TestKitchenAdapter testKitchenAdapter = new TestKitchenAdapter();
        ByteString.Companion companion = new ByteString.Companion(13);
        DeviceUtil$$ExternalSyntheticLambda1 deviceUtil$$ExternalSyntheticLambda1 = new DeviceUtil$$ExternalSyntheticLambda1(2);
        flushEventsRunnable = deviceUtil$$ExternalSyntheticLambda1;
        client = new TestKitchenClient(testKitchenAdapter, testKitchenAdapter, companion);
        deviceUtil$$ExternalSyntheticLambda1.run();
    }

    public static AgentData getAgentData() {
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        Jsoup.getInstance();
        String appInstallID = WikipediaApp.getAppInstallID();
        String obj = Jsoup.getInstance().currentTheme.toString();
        Jsoup.getInstance();
        String str = Build.BRAND + " " + Build.MODEL;
        String systemLanguageCode = Jsoup.getInstance().getLanguageState().getSystemLanguageCode();
        String str2 = "dev";
        if (!StringsKt.contains("org.wikipedia", "beta", false) && !StringsKt.contains("org.wikipedia", "alpha", false) && !StringsKt.contains("org.wikipedia", "dev", false)) {
            str2 = "prod";
        }
        AgentData agentData = new AgentData();
        agentData.appFlavor = "fdroidrelease";
        agentData.appInstallId = appInstallID;
        agentData.appTheme = obj;
        agentData.appVersion = 598;
        agentData.appVersionName = "WikipediaApp/r/50598-r-2026-07-13";
        agentData.clientPlatform = "android";
        agentData.clientPlatformFamily = "app";
        agentData.deviceFamily = str;
        agentData.deviceLanguage = systemLanguageCode;
        agentData.releaseStatus = str2;
        return agentData;
    }

    public static PageData getPageData$default(PageTitle pageTitle) {
        if (pageTitle == null) {
            return null;
        }
        String prefixedText = pageTitle.getPrefixedText();
        Integer valueOf = Integer.valueOf(pageTitle.namespace().code());
        Namespace.Companion companion = Namespace.Companion;
        int code = pageTitle.namespace().code();
        companion.getClass();
        String obj = Namespace.Companion.of(code).toString();
        String str = pageTitle.wikiSite.languageCode;
        PageData pageData = new PageData();
        pageData.id = null;
        pageData.title = prefixedText;
        pageData.namespaceId = valueOf;
        pageData.namespaceName = obj;
        pageData.revisionId = null;
        pageData.wikidataItemQid = null;
        pageData.contentLanguage = str;
        return pageData;
    }

    public static PerformerData getPerformerData() {
        String str;
        Boolean valueOf = Boolean.valueOf(Headers.Companion.isLoggedIn());
        Boolean valueOf2 = Boolean.valueOf(Headers.Companion.isTemporaryAccount());
        SessionController sessionController = client.sessionController;
        synchronized (sessionController) {
            str = sessionController.sessionId;
        }
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        String joinToString$default = CollectionsKt.joinToString$default(CollectionsKt.take(Jsoup.getInstance().getLanguageState().getAppLanguageCodes(), 10), ",", null, null, null, 62);
        String appOrSystemLanguageCode = Jsoup.getInstance().getAppOrSystemLanguageCode();
        PerformerData performerData = new PerformerData();
        performerData.id = null;
        performerData.name = null;
        performerData.isLoggedIn = valueOf;
        performerData.isTemp = valueOf2;
        performerData.sessionId = str;
        performerData.pageviewId = null;
        performerData.groups = null;
        performerData.languageGroups = joinToString$default;
        performerData.languagePrimary = appOrSystemLanguageCode;
        performerData.registrationDt = null;
        return performerData;
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x0067, code lost:
    
        if (r5 == r8) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x007b, code lost:
    
        if (r5 == r8) goto L30;
     */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0039  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object sendEvents(org.wikimedia.testkitchen.config.DestinationEventService r6, java.util.List r7, kotlin.coroutines.jvm.internal.ContinuationImpl r8) {
        /*
            r5 = this;
            boolean r0 = r8 instanceof org.wikipedia.analytics.testkitchen.TestKitchenAdapter$sendEvents$1
            if (r0 == 0) goto L13
            r0 = r8
            org.wikipedia.analytics.testkitchen.TestKitchenAdapter$sendEvents$1 r0 = (org.wikipedia.analytics.testkitchen.TestKitchenAdapter$sendEvents$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            org.wikipedia.analytics.testkitchen.TestKitchenAdapter$sendEvents$1 r0 = new org.wikipedia.analytics.testkitchen.TestKitchenAdapter$sendEvents$1
            r0.<init>(r5, r8)
        L18:
            java.lang.Object r5 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r8 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r0.label
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L39
            if (r1 == r3) goto L33
            if (r1 != r2) goto L2c
            java.util.List r7 = r0.L$1
            kotlin.ResultKt.throwOnFailure(r5)
            goto L7e
        L2c:
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r5)
            r5 = 0
            return r5
        L33:
            java.util.List r7 = r0.L$1
            kotlin.ResultKt.throwOnFailure(r5)
            goto L6a
        L39:
            kotlin.ResultKt.throwOnFailure(r5)
            java.lang.String r5 = "beta"
            java.lang.String r1 = "org.wikipedia"
            r4 = 0
            boolean r5 = kotlin.text.StringsKt.contains(r1, r5, r4)
            if (r5 == 0) goto L48
            goto L6d
        L48:
            java.lang.String r5 = "alpha"
            boolean r5 = kotlin.text.StringsKt.contains(r1, r5, r4)
            if (r5 == 0) goto L51
            goto L6d
        L51:
            java.lang.String r5 = "dev"
            boolean r5 = kotlin.text.StringsKt.contains(r1, r5, r4)
            if (r5 == 0) goto L6d
            org.wikipedia.dataclient.ServiceFactory r5 = org.wikipedia.dataclient.ServiceFactory.INSTANCE
            org.wikipedia.analytics.eventplatform.EventService r5 = org.wikipedia.dataclient.ServiceFactory.getAnalyticsRest(r6)
            r0.L$1 = r7
            r0.label = r3
            java.lang.Object r5 = r5.postEventsTk(r7, r0)
            if (r5 != r8) goto L6a
            goto L7d
        L6a:
            retrofit2.Response r5 = (retrofit2.Response) r5
            goto L80
        L6d:
            org.wikipedia.dataclient.ServiceFactory r5 = org.wikipedia.dataclient.ServiceFactory.INSTANCE
            org.wikipedia.analytics.eventplatform.EventService r5 = org.wikipedia.dataclient.ServiceFactory.getAnalyticsRest(r6)
            r0.L$1 = r7
            r0.label = r2
            java.lang.Object r5 = r5.postEventsHastyTk(r7, r0)
            if (r5 != r8) goto L7e
        L7d:
            return r8
        L7e:
            retrofit2.Response r5 = (retrofit2.Response) r5
        L80:
            int r6 = r7.size()
            okhttp3.Response r5 = r5.rawResponse
            int r5 = r5.code
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            r7.<init>()
            r7.append(r6)
            java.lang.String r6 = " events sent successfully ("
            r7.append(r6)
            r7.append(r5)
            java.lang.String r5 = ")"
            r7.append(r5)
            java.lang.String r5 = r7.toString()
            org.wikipedia.util.log.L.d(r5)
            kotlin.Unit r5 = kotlin.Unit.INSTANCE
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.analytics.testkitchen.TestKitchenAdapter.sendEvents(org.wikimedia.testkitchen.config.DestinationEventService, java.util.List, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}
