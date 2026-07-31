package org.schabi.newpipe.local.subscription.workers;

import android.app.Notification;
import android.content.Context;
import android.os.Build;
import androidx.core.app.NotificationCompat$Builder;
import androidx.work.CoroutineWorker;
import androidx.work.ForegroundInfo;
import androidx.work.WorkerParameters;
import org.schabi.newpipe.R;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class SubscriptionExportWorker extends CoroutineWorker {
    public static final Companion Companion = new Companion();

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Companion {
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SubscriptionExportWorker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        context.getClass();
        workerParameters.getClass();
    }

    public final ForegroundInfo createForegroundInfo(String str) {
        NotificationCompat$Builder notificationCompat$Builder = new NotificationCompat$Builder(this.mAppContext, "newpipe");
        notificationCompat$Builder.mNotification.icon = R.drawable.ic_newpipe_triangle_white;
        notificationCompat$Builder.setFlag(2, true);
        notificationCompat$Builder.setProgress(-1, -1, true);
        notificationCompat$Builder.mVisibility = 1;
        notificationCompat$Builder.mFgsDeferBehavior = 1;
        notificationCompat$Builder.mContentTitle = NotificationCompat$Builder.limitCharSequenceLength(str);
        Notification build = notificationCompat$Builder.build();
        build.getClass();
        return new ForegroundInfo(4567, build, Build.VERSION.SDK_INT < 29 ? 0 : 1);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(13:0|1|(2:3|(9:5|6|7|(1:(1:(1:(1:(1:(3:14|15|16)(2:18|19))(4:20|21|22|23))(6:24|25|26|(2:28|29)|22|23))(8:30|31|32|(2:34|29)|26|(0)|22|23))(3:35|36|37))(3:56|57|(2:59|(2:61|29)(1:62))(2:63|64))|38|(7:41|42|(1:44)|45|(2:47|48)(1:50)|49|39)|51|52|(2:54|29)(7:55|32|(0)|26|(0)|22|23)))|68|6|7|(0)(0)|38|(1:39)|51|52|(0)(0)|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x005e, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x01be, code lost:
    
        android.util.Log.e("SubscriptionExportWork", "Error while exporting subscriptions", r0);
        r0 = kotlinx.coroutines.Dispatchers.Default;
        r0 = kotlinx.coroutines.internal.MainDispatcherLoader.dispatcher;
        r3 = new org.schabi.newpipe.local.subscription.workers.SubscriptionExportWorker$doWork$4(r18, null);
        r2.L$0 = null;
        r2.L$1 = null;
        r2.L$2 = null;
        r2.L$3 = null;
        r2.label = 5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x01db, code lost:
    
        if (kotlinx.coroutines.JobKt.withContext(r0, r3, r2) != r13) goto L67;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:28:0x01b4  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x017e  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x010d A[Catch: Exception -> 0x005e, TRY_LEAVE, TryCatch #0 {Exception -> 0x005e, blocks: (B:21:0x0059, B:22:0x01b5, B:25:0x0073, B:26:0x017f, B:31:0x008a, B:32:0x0163, B:36:0x0097, B:38:0x00f3, B:39:0x0107, B:41:0x010d, B:45:0x011f, B:49:0x0125, B:52:0x012e, B:57:0x00a0, B:59:0x00dc, B:63:0x01bb, B:64:0x01bd), top: B:7:0x002e }] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x015f  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0161  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0030  */
    /* JADX WARN: Type inference failed for: r18v0, types: [androidx.work.CoroutineWorker, androidx.work.ListenableWorker, org.schabi.newpipe.local.subscription.workers.SubscriptionExportWorker] */
    /* JADX WARN: Type inference failed for: r4v10, types: [java.util.List] */
    @Override // androidx.work.CoroutineWorker
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object doWork(kotlin.coroutines.Continuation r19) {
        /*
            Method dump skipped, instructions count: 484
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.schabi.newpipe.local.subscription.workers.SubscriptionExportWorker.doWork(kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // androidx.work.CoroutineWorker
    public final Object getForegroundInfo() {
        String string = this.mAppContext.getString(R.string.export_ongoing);
        string.getClass();
        return createForegroundInfo(string);
    }
}
