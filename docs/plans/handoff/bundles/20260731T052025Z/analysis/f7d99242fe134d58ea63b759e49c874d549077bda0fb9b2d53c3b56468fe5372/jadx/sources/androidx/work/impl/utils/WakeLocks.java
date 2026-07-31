package androidx.work.impl.utils;

import android.content.Context;
import android.os.PowerManager;
import androidx.work.Logger$LogcatLogger;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class WakeLocks {
    static {
        Logger$LogcatLogger.tagWithPrefix("WakeLocks");
    }

    public static final PowerManager.WakeLock newWakeLock(Context context) {
        context.getClass();
        Object systemService = context.getApplicationContext().getSystemService("power");
        systemService.getClass();
        String concat = "WorkManager: ".concat("ProcessorForegroundLck");
        PowerManager.WakeLock newWakeLock = ((PowerManager) systemService).newWakeLock(1, concat);
        synchronized (WakeLocksHolder.INSTANCE) {
        }
        newWakeLock.getClass();
        return newWakeLock;
    }
}
