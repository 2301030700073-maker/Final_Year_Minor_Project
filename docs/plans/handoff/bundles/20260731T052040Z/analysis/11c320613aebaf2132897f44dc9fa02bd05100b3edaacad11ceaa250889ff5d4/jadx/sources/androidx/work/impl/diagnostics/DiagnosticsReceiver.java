package androidx.work.impl.diagnostics;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import androidx.work.Logger$LogcatLogger;
import androidx.work.OneTimeWorkRequest;
import androidx.work.impl.WorkManagerImpl;
import androidx.work.impl.workers.DiagnosticsWorker;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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
            WorkManagerImpl.getInstance$1(context).enqueue((OneTimeWorkRequest) new OneTimeWorkRequest.Builder(0, DiagnosticsWorker.class).build());
        } catch (IllegalStateException e) {
            Logger$LogcatLogger.get().error(str, "WorkManager is not initialized", e);
        }
    }
}
