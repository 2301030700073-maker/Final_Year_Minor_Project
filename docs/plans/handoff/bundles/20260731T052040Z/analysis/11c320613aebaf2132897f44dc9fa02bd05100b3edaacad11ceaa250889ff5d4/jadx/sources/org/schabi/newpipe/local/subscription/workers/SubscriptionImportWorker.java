package org.schabi.newpipe.local.subscription.workers;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import androidx.core.app.NotificationCompat$Action;
import androidx.core.app.NotificationCompat$Builder;
import androidx.work.CoroutineWorker;
import androidx.work.ForegroundInfo;
import androidx.work.WorkerParameters;
import androidx.work.impl.WorkManagerImpl;
import androidx.work.impl.foreground.SystemForegroundDispatcher;
import androidx.work.impl.foreground.SystemForegroundService;
import com.google.android.exoplayer2.C;
import java.util.List;
import java.util.UUID;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.sync.MutexImpl;
import org.schabi.newpipe.R;
import org.schabi.newpipe.local.subscription.SubscriptionManager;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class SubscriptionImportWorker extends CoroutineWorker {
    public static final Companion Companion = new Companion();
    public final Context context;
    public final MutexImpl mutex;
    public final SubscriptionManager subscriptionManager;
    public List subscriptions;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Companion {
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SubscriptionImportWorker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        context.getClass();
        workerParameters.getClass();
        this.context = context;
        this.subscriptionManager = new SubscriptionManager(context);
        this.mutex = new MutexImpl();
    }

    public static /* synthetic */ ForegroundInfo createForegroundInfo$default(SubscriptionImportWorker subscriptionImportWorker, String str, int i, int i2) {
        if ((i2 & 4) != 0) {
            i = 0;
        }
        return subscriptionImportWorker.createForegroundInfo(str, i, null);
    }

    public final ForegroundInfo createForegroundInfo(String str, int i, String str2) {
        List list = this.subscriptions;
        if (list == null) {
            Intrinsics.throwUninitializedPropertyAccessException("subscriptions");
            throw null;
        }
        int size = list.size();
        Context context = this.context;
        NotificationCompat$Builder notificationCompat$Builder = new NotificationCompat$Builder(context, "newpipe");
        notificationCompat$Builder.mNotification.icon = R.drawable.ic_newpipe_triangle_white;
        notificationCompat$Builder.setFlag(2, true);
        notificationCompat$Builder.setProgress(size, i, i == 0);
        notificationCompat$Builder.mFgsDeferBehavior = 1;
        notificationCompat$Builder.mContentTitle = NotificationCompat$Builder.limitCharSequenceLength(str);
        notificationCompat$Builder.mContentText = NotificationCompat$Builder.limitCharSequenceLength(str2);
        String string = context.getString(R.string.cancel);
        WorkManagerImpl instance$1 = WorkManagerImpl.getInstance$1(context);
        UUID uuid = this.mWorkerParams.mId;
        uuid.getClass();
        Context context2 = instance$1.mContext;
        String uuid2 = uuid.toString();
        String str3 = SystemForegroundDispatcher.TAG;
        Intent intent = new Intent(context2, (Class<?>) SystemForegroundService.class);
        intent.setAction("ACTION_CANCEL_WORK");
        intent.setData(Uri.parse("workspec://" + uuid2));
        intent.putExtra("KEY_WORKSPEC_ID", uuid2);
        int i2 = Build.VERSION.SDK_INT;
        notificationCompat$Builder.mActions.add(new NotificationCompat$Action(R.drawable.ic_close, string, PendingIntent.getService(context2, 0, intent, i2 >= 31 ? 167772160 : C.BUFFER_FLAG_FIRST_SAMPLE)));
        if (i > 0 && size > 0) {
            String str4 = i + "/" + size;
            if (i2 >= 24) {
                notificationCompat$Builder.mSubText = NotificationCompat$Builder.limitCharSequenceLength(str4);
            } else {
                notificationCompat$Builder.mContentInfo = NotificationCompat$Builder.limitCharSequenceLength(str4);
            }
        }
        Notification build = notificationCompat$Builder.build();
        build.getClass();
        return new ForegroundInfo(4568, build, i2 < 29 ? 0 : 1);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(8:0|1|(2:3|(4:5|6|7|8))|70|6|7|8|(2:(0)|(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x015e, code lost:
    
        if (kotlinx.coroutines.JobKt.withContext(r14, r1, r0) == r10) goto L74;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0149, code lost:
    
        if (setForeground(r14, r0) == r10) goto L74;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x012f, code lost:
    
        if (r14.collect(r3, r0) == r10) goto L74;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x01b5, code lost:
    
        if (kotlinx.coroutines.JobKt.withContext(r14, r1, r0) == r10) goto L74;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0060, code lost:
    
        r14 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x016f, code lost:
    
        android.util.Log.e("SubscriptionImport", "Error while processing subscription data", r14);
        r14 = kotlinx.coroutines.Dispatchers.Default;
        r14 = kotlinx.coroutines.internal.MainDispatcherLoader.dispatcher;
        r1 = new org.schabi.newpipe.local.subscription.workers.SubscriptionImportWorker$doWork$5(r13, null);
        r0.L$0 = null;
        r0.L$1 = null;
        r0.label = 5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x0188, code lost:
    
        if (kotlinx.coroutines.JobKt.withContext(r14, r1, r0) != r10) goto L63;
     */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0063  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00ff A[Catch: Exception -> 0x0060, TRY_LEAVE, TryCatch #0 {Exception -> 0x0060, blocks: (B:23:0x005b, B:31:0x00f4, B:33:0x00ff, B:35:0x016b, B:36:0x016e), top: B:7:0x002b }] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x016b A[Catch: Exception -> 0x0060, TRY_ENTER, TryCatch #0 {Exception -> 0x0060, blocks: (B:23:0x005b, B:31:0x00f4, B:33:0x00ff, B:35:0x016b, B:36:0x016e), top: B:7:0x002b }] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0079  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00c2  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0195  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x002e  */
    @Override // androidx.work.CoroutineWorker
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object doWork(kotlin.coroutines.Continuation r14) {
        /*
            Method dump skipped, instructions count: 466
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.schabi.newpipe.local.subscription.workers.SubscriptionImportWorker.doWork(kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // androidx.work.CoroutineWorker
    public final Object getForegroundInfo() {
        String string = this.context.getString(R.string.import_ongoing);
        string.getClass();
        return createForegroundInfo$default(this, string, 0, 6);
    }
}
