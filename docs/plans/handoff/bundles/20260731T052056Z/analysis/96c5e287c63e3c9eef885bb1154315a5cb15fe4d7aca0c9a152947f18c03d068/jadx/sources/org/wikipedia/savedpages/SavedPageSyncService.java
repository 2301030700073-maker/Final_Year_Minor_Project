package org.wikipedia.savedpages;

import android.content.Context;
import androidx.compose.foundation.MutatorMutex$mutateWith$2;
import androidx.work.CoroutineWorker;
import androidx.work.WorkerParameters;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import okhttp3.Headers;
import okhttp3.Request;
import org.jsoup.Jsoup;
import org.wikipedia.WikipediaApp;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.dataclient.okhttp.OkHttpConnectionFactory;
import org.wikipedia.page.PageTitle;
import org.wikipedia.readinglist.database.ReadingListPage;
import org.wikipedia.util.UriUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001:\u0001\bB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\t"}, d2 = {"Lorg/wikipedia/savedpages/SavedPageSyncService;", "Landroidx/work/CoroutineWorker;", "Landroid/content/Context;", "context", "Landroidx/work/WorkerParameters;", "params", "<init>", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "MultiSelectCallback", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class SavedPageSyncService extends CoroutineWorker {
    public final SavedPageSyncNotification savedPageSyncNotification;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SavedPageSyncService(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        context.getClass();
        workerParameters.getClass();
        SavedPageSyncNotification savedPageSyncNotification = SavedPageSyncNotification.instance;
        this.savedPageSyncNotification = SavedPageSyncNotification.instance;
    }

    public static Request.Builder makeUrlRequest(WikiSite wikiSite, String str, PageTitle pageTitle) {
        Request.Builder builder = new Request.Builder(0);
        builder.cacheControl(OkHttpConnectionFactory.CACHE_CONTROL_FORCE_NETWORK);
        builder.url(UriUtil.resolveProtocolRelativeUrl(str, wikiSite));
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        ((Headers.Builder) builder.headers).add("Accept-Language", Jsoup.getInstance().getAcceptLanguage(pageTitle.wikiSite));
        ((Headers.Builder) builder.headers).add("X-Offline-Save", "save");
        String str2 = pageTitle.wikiSite.languageCode;
        str2.getClass();
        ((Headers.Builder) builder.headers).add("X-Offline-Lang", str2);
        ((Headers.Builder) builder.headers).add("X-Offline-Title", UriUtil.encodeURL(pageTitle.getPrefixedText()));
        return builder;
    }

    public static Object reqSaveUrl(PageTitle pageTitle, WikiSite wikiSite, String str, SavedPageSyncService$reqSaveFiles$2 savedPageSyncService$reqSaveFiles$2) {
        Request request = new Request(makeUrlRequest(wikiSite, str, pageTitle));
        DefaultScheduler defaultScheduler = Dispatchers.Default;
        Object withContext = AwaitKt.withContext(DefaultIoScheduler.INSTANCE, new SavedPageSyncService$reqSaveUrl$2(request, null, 0), savedPageSyncService$reqSaveFiles$2);
        return withContext == CoroutineSingletons.COROUTINE_SUSPENDED ? withContext : Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
    @Override // androidx.work.CoroutineWorker
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object doWork(kotlin.coroutines.Continuation r6) {
        /*
            r5 = this;
            boolean r0 = r6 instanceof org.wikipedia.savedpages.SavedPageSyncService$doWork$1
            if (r0 == 0) goto L13
            r0 = r6
            org.wikipedia.savedpages.SavedPageSyncService$doWork$1 r0 = (org.wikipedia.savedpages.SavedPageSyncService$doWork$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L1a
        L13:
            org.wikipedia.savedpages.SavedPageSyncService$doWork$1 r0 = new org.wikipedia.savedpages.SavedPageSyncService$doWork$1
            kotlin.coroutines.jvm.internal.ContinuationImpl r6 = (kotlin.coroutines.jvm.internal.ContinuationImpl) r6
            r0.<init>(r5, r6)
        L1a:
            java.lang.Object r6 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 0
            r4 = 1
            if (r2 == 0) goto L30
            if (r2 != r4) goto L2a
            kotlin.ResultKt.throwOnFailure(r6)
            goto L45
        L2a:
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r5)
            return r3
        L30:
            kotlin.ResultKt.throwOnFailure(r6)
            kotlinx.coroutines.scheduling.DefaultScheduler r6 = kotlinx.coroutines.Dispatchers.Default
            kotlinx.coroutines.scheduling.DefaultIoScheduler r6 = kotlinx.coroutines.scheduling.DefaultIoScheduler.INSTANCE
            org.wikipedia.savedpages.SavedPageSyncService$doWork$2 r2 = new org.wikipedia.savedpages.SavedPageSyncService$doWork$2
            r2.<init>(r5, r3)
            r0.label = r4
            java.lang.Object r6 = kotlinx.coroutines.AwaitKt.withContext(r6, r2, r0)
            if (r6 != r1) goto L45
            return r1
        L45:
            r6.getClass()
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.savedpages.SavedPageSyncService.doWork(kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final Object savePageFor(ReadingListPage readingListPage, SavedPageSyncService$savePages$2 savedPageSyncService$savePages$2) {
        DefaultScheduler defaultScheduler = Dispatchers.Default;
        return AwaitKt.withContext(DefaultIoScheduler.INSTANCE, new MutatorMutex$mutateWith$2(readingListPage, this, null), savedPageSyncService$savePages$2);
    }
}
