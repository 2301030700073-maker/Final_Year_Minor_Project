package com.fsck.k9.power;

import android.os.PowerManager;
import android.os.SystemClock;
import java.util.concurrent.atomic.AtomicInteger;
import net.thunderbird.core.logging.legacy.Log;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AndroidPowerManager {
    public static final AtomicInteger wakeLockId = new AtomicInteger(0);
    public final PowerManager systemPowerManager;

    public AndroidPowerManager(PowerManager powerManager) {
        this.systemPowerManager = powerManager;
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class AndroidWakeLock {
        public final int id;
        public volatile Long startTime;
        public final String tag;
        public volatile Long timeout;
        public final PowerManager.WakeLock wakeLock;

        public AndroidWakeLock(AndroidPowerManager androidPowerManager, String str) {
            this.tag = str;
            PowerManager.WakeLock newWakeLock = androidPowerManager.systemPowerManager.newWakeLock(1, str);
            newWakeLock.getClass();
            this.wakeLock = newWakeLock;
            int andIncrement = AndroidPowerManager.wakeLockId.getAndIncrement();
            this.id = andIncrement;
            Log.v("AndroidWakeLock for tag %s / id %d: Create", str, Integer.valueOf(andIncrement));
        }

        public final void acquire(long j) {
            synchronized (this.wakeLock) {
                this.wakeLock.acquire(j);
            }
            Log.v("AndroidWakeLock for tag %s / id %d for %d ms: acquired", this.tag, Integer.valueOf(this.id), Long.valueOf(j));
            if (this.startTime == null) {
                this.startTime = Long.valueOf(SystemClock.elapsedRealtime());
            }
            this.timeout = Long.valueOf(j);
        }

        public final void release() {
            Long l = this.startTime;
            if (l != null) {
                Log.v("AndroidWakeLock for tag %s / id %d: releasing after %d ms, timeout = %d ms", this.tag, Integer.valueOf(this.id), Long.valueOf(SystemClock.elapsedRealtime() - l.longValue()), this.timeout);
            } else {
                Log.v("AndroidWakeLock for tag %s / id %d, timeout = %d ms: releasing", this.tag, Integer.valueOf(this.id), this.timeout);
            }
            synchronized (this.wakeLock) {
                this.wakeLock.release();
            }
            this.startTime = null;
        }

        public final void acquire() {
            synchronized (this.wakeLock) {
                this.wakeLock.acquire();
            }
            Log.v("AndroidWakeLock for tag %s / id %d: acquired with no timeout.", this.tag, Integer.valueOf(this.id));
            if (this.startTime == null) {
                this.startTime = Long.valueOf(SystemClock.elapsedRealtime());
            }
            this.timeout = null;
        }
    }
}
