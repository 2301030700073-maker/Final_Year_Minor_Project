package androidx.work.impl.utils;

import android.content.Context;
import android.os.PowerManager;
import androidx.work.Logger$LogcatLogger;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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
