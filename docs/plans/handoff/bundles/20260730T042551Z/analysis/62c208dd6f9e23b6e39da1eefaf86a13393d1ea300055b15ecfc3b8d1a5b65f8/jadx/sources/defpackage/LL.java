package defpackage;

import android.content.Context;
import android.os.PowerManager;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class LL {

    /* renamed from: do, reason: not valid java name */
    public static final WeakHashMap<PowerManager.WakeLock, String> f1946do;

    static {
        AbstractC0614Xq.m2870try("WakeLocks");
        f1946do = new WeakHashMap<>();
    }

    /* renamed from: do, reason: not valid java name */
    public static PowerManager.WakeLock m1324do(Context context, String str) {
        PowerManager powerManager = (PowerManager) context.getApplicationContext().getSystemService("power");
        String m8824for = C4122zt.m8824for("WorkManager: ", str);
        PowerManager.WakeLock newWakeLock = powerManager.newWakeLock(1, m8824for);
        WeakHashMap<PowerManager.WakeLock, String> weakHashMap = f1946do;
        synchronized (weakHashMap) {
            weakHashMap.put(newWakeLock, m8824for);
        }
        return newWakeLock;
    }
}
