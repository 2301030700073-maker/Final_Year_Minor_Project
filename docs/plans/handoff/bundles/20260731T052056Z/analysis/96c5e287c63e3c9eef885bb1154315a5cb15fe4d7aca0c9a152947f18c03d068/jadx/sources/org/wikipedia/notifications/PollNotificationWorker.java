package org.wikipedia.notifications;

import android.content.Context;
import androidx.work.CoroutineWorker;
import androidx.work.WorkerParameters;
import kotlin.Metadata;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001:\u0001\bB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\t"}, d2 = {"Lorg/wikipedia/notifications/PollNotificationWorker;", "Landroidx/work/CoroutineWorker;", "Landroid/content/Context;", "appContext", "Landroidx/work/WorkerParameters;", "params", "<init>", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "okio/Okio__JvmOkioKt", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class PollNotificationWorker extends CoroutineWorker {
    public final Context appContext;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PollNotificationWorker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        context.getClass();
        workerParameters.getClass();
        this.appContext = context;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(18:0|1|(2:3|(15:5|6|7|(1:(1:(1:(3:12|13|14)(2:16|17))(4:18|19|20|21))(1:23))(3:70|71|(2:73|66))|24|25|(2:31|(1:33)(13:34|(1:36)(1:68)|(1:38)|39|(7:42|(1:44)(1:54)|(1:46)|47|(3:49|50|51)(1:53)|52|40)|55|(1:57)|58|(1:60)(1:67)|61|(2:63|(2:65|66))|20|21))|69|(0)|58|(0)(0)|61|(0)|20|21))|82|6|7|(0)(0)|24|25|(4:27|29|31|(0)(0))|69|(0)|58|(0)(0)|61|(0)|20|21) */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x0042, code lost:
    
        r9 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x00dd, code lost:
    
        if ((r9 instanceof org.wikipedia.dataclient.mwapi.MwException) != false) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x00df, code lost:
    
        r10 = r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x00ee, code lost:
    
        if (r10.error.getKey().equals("login-required") != false) goto L71;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x00f0, code lost:
    
        r2 = org.wikipedia.csrf.CsrfTokenClient.INSTANCE;
        r2 = org.wikipedia.WikipediaApp.instance;
        r2 = org.jsoup.Jsoup.getInstance().getWikiSite();
        r0.L$0 = r10;
        r0.label = 3;
        r10 = org.wikipedia.csrf.CsrfTokenClient.INSTANCE.getToken(r2, "csrf", r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x0104, code lost:
    
        if (r10 == r1) goto L73;
     */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0081 A[Catch: all -> 0x0042, TryCatch #0 {all -> 0x0042, blocks: (B:19:0x003d, B:20:0x00d6, B:23:0x0045, B:24:0x0066, B:27:0x006e, B:29:0x0072, B:31:0x0076, B:34:0x0081, B:36:0x008b, B:40:0x0092, B:42:0x0098, B:44:0x00a2, B:47:0x00a9, B:58:0x00b5, B:61:0x00c2, B:63:0x00c8, B:71:0x004c), top: B:7:0x0024 }] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00b4  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00c8 A[Catch: all -> 0x0042, TryCatch #0 {all -> 0x0042, blocks: (B:19:0x003d, B:20:0x00d6, B:23:0x0045, B:24:0x0066, B:27:0x006e, B:29:0x0072, B:31:0x0076, B:34:0x0081, B:36:0x008b, B:40:0x0092, B:42:0x0098, B:44:0x00a2, B:47:0x00a9, B:58:0x00b5, B:61:0x00c2, B:63:0x00c8, B:71:0x004c), top: B:7:0x0024 }] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0026  */
    @Override // androidx.work.CoroutineWorker
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object doWork(kotlin.coroutines.Continuation r10) {
        /*
            Method dump skipped, instructions count: 272
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.notifications.PollNotificationWorker.doWork(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00da  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object retrieveNotifications(kotlin.coroutines.jvm.internal.ContinuationImpl r13) {
        /*
            Method dump skipped, instructions count: 281
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.notifications.PollNotificationWorker.retrieveNotifications(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}
