package androidx.work.impl.diagnostics;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import androidx.work.Logger$LogcatLogger;
import androidx.work.OneTimeWorkRequest;
import androidx.work.impl.WorkManagerImpl;
import androidx.work.impl.workers.DiagnosticsWorker;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class DiagnosticsReceiver extends BroadcastReceiver {
    public static final String TAG = Logger$LogcatLogger.tagWithPrefix("DiagnosticsRcvr");

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if (intent == null) {
            return;
        }
        Logger$LogcatLogger logger$LogcatLogger = Logger$LogcatLogger.get();
        String str = TAG;
        logger$LogcatLogger.debug(str, "Requesting diagnostics");
        try {
            context.getClass();
            WorkManagerImpl instance$1 = WorkManagerImpl.getInstance$1(context);
            instance$1.getClass();
            instance$1.enqueue((OneTimeWorkRequest) new OneTimeWorkRequest.Builder(DiagnosticsWorker.class).build());
        } catch (IllegalStateException e) {
            Logger$LogcatLogger.get().error(str, "WorkManager is not initialized", e);
        }
    }
}
