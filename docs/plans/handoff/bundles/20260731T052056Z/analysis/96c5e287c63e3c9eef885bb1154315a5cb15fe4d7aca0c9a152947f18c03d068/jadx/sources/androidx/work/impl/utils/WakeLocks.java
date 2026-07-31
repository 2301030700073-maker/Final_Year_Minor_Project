package androidx.work.impl.utils;

import android.content.Context;
import android.os.PowerManager;
import androidx.work.Logger$LogcatLogger;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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
