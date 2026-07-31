package androidx.work.impl.background.systemalarm;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import androidx.work.Logger$LogcatLogger;
import androidx.work.impl.WorkManagerImpl;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class RescheduleReceiver extends BroadcastReceiver {
    public static final String TAG = Logger$LogcatLogger.tagWithPrefix("RescheduleReceiver");

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        Logger$LogcatLogger.get().debug(TAG, "Received intent " + intent);
        try {
            WorkManagerImpl instance$1 = WorkManagerImpl.getInstance$1(context);
            BroadcastReceiver.PendingResult goAsync = goAsync();
            instance$1.getClass();
            synchronized (WorkManagerImpl.sLock) {
                try {
                    BroadcastReceiver.PendingResult pendingResult = instance$1.mRescheduleReceiverResult;
                    if (pendingResult != null) {
                        pendingResult.finish();
                    }
                    instance$1.mRescheduleReceiverResult = goAsync;
                    if (instance$1.mForceStopRunnableCompleted) {
                        goAsync.finish();
                        instance$1.mRescheduleReceiverResult = null;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        } catch (IllegalStateException e) {
            Logger$LogcatLogger.get().error(TAG, "Cannot reschedule jobs. WorkManager needs to be initialized via a ContentProvider#onCreate() or an Application#onCreate().", e);
        }
    }
}
