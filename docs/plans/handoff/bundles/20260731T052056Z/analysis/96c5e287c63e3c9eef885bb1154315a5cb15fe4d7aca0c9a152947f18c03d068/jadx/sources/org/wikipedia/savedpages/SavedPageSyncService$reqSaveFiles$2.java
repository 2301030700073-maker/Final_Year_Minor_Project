package org.wikipedia.savedpages;

import java.util.Iterator;
import java.util.Set;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$FloatRef;
import kotlinx.coroutines.CoroutineScope;
import org.wikipedia.page.PageTitle;
import org.wikipedia.readinglist.database.ReadingListPage;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SavedPageSyncService$reqSaveFiles$2 extends SuspendLambda implements Function2 {
    public final /* synthetic */ ReadingListPage $page;
    public final /* synthetic */ PageTitle $pageTitle;
    public final /* synthetic */ Ref$FloatRef $percentage;
    public final /* synthetic */ float $updateRate;
    public final /* synthetic */ Set $urls;
    public Iterator L$0;
    public int label;
    public final /* synthetic */ SavedPageSyncService this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SavedPageSyncService$reqSaveFiles$2(Set set, SavedPageSyncService savedPageSyncService, PageTitle pageTitle, ReadingListPage readingListPage, Ref$FloatRef ref$FloatRef, float f, Continuation continuation) {
        super(2, continuation);
        this.$urls = set;
        this.this$0 = savedPageSyncService;
        this.$pageTitle = pageTitle;
        this.$page = readingListPage;
        this.$percentage = ref$FloatRef;
        this.$updateRate = f;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new SavedPageSyncService$reqSaveFiles$2(this.$urls, this.this$0, this.$pageTitle, this.$page, this.$percentage, this.$updateRate, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((SavedPageSyncService$reqSaveFiles$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x002a  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0081  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x004a -> B:7:0x004d). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r7) {
        /*
            r6 = this;
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r6.label
            r2 = 1
            org.wikipedia.readinglist.database.ReadingListPage r3 = r6.$page
            if (r1 == 0) goto L1a
            if (r1 != r2) goto L13
            java.util.Iterator r1 = r6.L$0
            kotlin.ResultKt.throwOnFailure(r7)     // Catch: java.lang.Exception -> L11 java.util.concurrent.CancellationException -> L77
            goto L4d
        L11:
            r7 = move-exception
            goto L64
        L13:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r6)
            r6 = 0
            return r6
        L1a:
            kotlin.ResultKt.throwOnFailure(r7)
            java.util.Set r7 = r6.$urls
            java.util.Iterator r7 = r7.iterator()
            r1 = r7
        L24:
            boolean r7 = r1.hasNext()
            if (r7 == 0) goto L81
            java.lang.Object r7 = r1.next()
            java.lang.String r7 = (java.lang.String) r7
            org.wikipedia.savedpages.SavedPageSyncService r4 = r6.this$0
            org.wikipedia.savedpages.SavedPageSyncNotification r4 = r4.savedPageSyncNotification
            org.wikipedia.views.NotificationWithProgressBar r4 = r4.notification
            boolean r5 = r4.isPaused
            if (r5 != 0) goto L79
            boolean r4 = r4.isCanceled
            if (r4 != 0) goto L79
            org.wikipedia.page.PageTitle r4 = r6.$pageTitle     // Catch: java.lang.Exception -> L11 java.util.concurrent.CancellationException -> L77
            org.wikipedia.dataclient.WikiSite r5 = r3.wiki     // Catch: java.lang.Exception -> L11 java.util.concurrent.CancellationException -> L77
            r6.L$0 = r1     // Catch: java.lang.Exception -> L11 java.util.concurrent.CancellationException -> L77
            r6.label = r2     // Catch: java.lang.Exception -> L11 java.util.concurrent.CancellationException -> L77
            java.lang.Object r7 = org.wikipedia.savedpages.SavedPageSyncService.reqSaveUrl(r4, r5, r7, r6)     // Catch: java.lang.Exception -> L11 java.util.concurrent.CancellationException -> L77
            if (r7 != r0) goto L4d
            return r0
        L4d:
            kotlin.jvm.internal.Ref$FloatRef r7 = r6.$percentage     // Catch: java.lang.Exception -> L11 java.util.concurrent.CancellationException -> L77
            float r4 = r7.element     // Catch: java.lang.Exception -> L11 java.util.concurrent.CancellationException -> L77
            float r5 = r6.$updateRate     // Catch: java.lang.Exception -> L11 java.util.concurrent.CancellationException -> L77
            float r4 = r4 + r5
            r7.element = r4     // Catch: java.lang.Exception -> L11 java.util.concurrent.CancellationException -> L77
            int r7 = (int) r4     // Catch: java.lang.Exception -> L11 java.util.concurrent.CancellationException -> L77
            r3.downloadProgress = r7     // Catch: java.lang.Exception -> L11 java.util.concurrent.CancellationException -> L77
            kotlinx.coroutines.flow.SharedFlowImpl r7 = org.wikipedia.concurrency.FlowEventBus._events     // Catch: java.lang.Exception -> L11 java.util.concurrent.CancellationException -> L77
            org.wikipedia.events.PageDownloadEvent r7 = new org.wikipedia.events.PageDownloadEvent     // Catch: java.lang.Exception -> L11 java.util.concurrent.CancellationException -> L77
            r7.<init>(r3)     // Catch: java.lang.Exception -> L11 java.util.concurrent.CancellationException -> L77
            org.wikipedia.concurrency.FlowEventBus.post(r7)     // Catch: java.lang.Exception -> L11 java.util.concurrent.CancellationException -> L77
            goto L24
        L64:
            boolean r4 = r7 instanceof java.lang.IllegalArgumentException
            if (r4 != 0) goto L24
            boolean r4 = r7 instanceof org.wikipedia.dataclient.okhttp.HttpStatusException
            if (r4 == 0) goto L76
            r4 = r7
            org.wikipedia.dataclient.okhttp.HttpStatusException r4 = (org.wikipedia.dataclient.okhttp.HttpStatusException) r4
            int r4 = r4.code
            r5 = 404(0x194, float:5.66E-43)
            if (r4 != r5) goto L76
            goto L24
        L76:
            throw r7
        L77:
            r6 = move-exception
            throw r6
        L79:
            java.lang.InterruptedException r6 = new java.lang.InterruptedException
            java.lang.String r7 = "Sync paused or cancelled."
            r6.<init>(r7)
            throw r6
        L81:
            r6 = 100
            r3.downloadProgress = r6
            kotlinx.coroutines.flow.SharedFlowImpl r6 = org.wikipedia.concurrency.FlowEventBus._events
            org.wikipedia.events.PageDownloadEvent r6 = new org.wikipedia.events.PageDownloadEvent
            r6.<init>(r3)
            org.wikipedia.concurrency.FlowEventBus.post(r6)
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.savedpages.SavedPageSyncService$reqSaveFiles$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
