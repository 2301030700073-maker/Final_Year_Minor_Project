package androidx.work.impl.diagnostics;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import androidx.compose.runtime.Latch;
import androidx.work.Logger$LogcatLogger;
import androidx.work.impl.WorkManagerImpl;
import androidx.work.impl.workers.DiagnosticsWorker;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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
            WorkManagerImpl.getInstance$1(context).enqueue(new Latch(DiagnosticsWorker.class).build());
        } catch (IllegalStateException e) {
            Logger$LogcatLogger.get().error(str, "WorkManager is not initialized", e);
        }
    }
}
