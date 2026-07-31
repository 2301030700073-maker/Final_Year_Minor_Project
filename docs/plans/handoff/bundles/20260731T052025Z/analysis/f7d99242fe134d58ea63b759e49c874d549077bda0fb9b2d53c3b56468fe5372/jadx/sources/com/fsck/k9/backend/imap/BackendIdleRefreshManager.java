package com.fsck.k9.backend.imap;

import android.os.SystemClock;
import androidx.room.RoomDatabase$closeBarrier$1;
import com.fsck.k9.backends.AndroidAlarmManager;
import com.fsck.k9.mail.store.imap.IdleRefreshManager;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class BackendIdleRefreshManager implements IdleRefreshManager {
    public final AndroidAlarmManager alarmManager;
    public long currentTriggerTime;
    public long minTimeoutTimestamp;
    public final LinkedHashSet timers = new LinkedHashSet();
    public long minTimeout = Long.MAX_VALUE;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class BackendIdleRefreshTimer {
        public final Function0 callback;
        public boolean isWaiting = true;
        public final long triggerTime;

        public BackendIdleRefreshTimer(long j, Function0 function0) {
            this.triggerTime = j;
            this.callback = function0;
        }

        public final synchronized void cancel() {
            if (this.isWaiting) {
                this.isWaiting = false;
                BackendIdleRefreshManager.access$removeTimer(BackendIdleRefreshManager.this, this);
            }
        }

        public final void onTimeout$tfa_backend_imap() {
            synchronized (this) {
                this.isWaiting = false;
            }
            this.callback.invoke();
        }
    }

    public BackendIdleRefreshManager(AndroidAlarmManager androidAlarmManager) {
        this.alarmManager = androidAlarmManager;
    }

    public static final void access$removeTimer(BackendIdleRefreshManager backendIdleRefreshManager, BackendIdleRefreshTimer backendIdleRefreshTimer) {
        synchronized (backendIdleRefreshManager) {
            backendIdleRefreshManager.timers.remove(backendIdleRefreshTimer);
            if (backendIdleRefreshManager.timers.isEmpty()) {
                backendIdleRefreshManager.currentTriggerTime = 0L;
                AndroidAlarmManager androidAlarmManager = backendIdleRefreshManager.alarmManager;
                androidAlarmManager.callback.set(null);
                androidAlarmManager.alarmManager.cancel(androidAlarmManager.pendingIntent);
            }
        }
    }

    public final void onTimeout() {
        BackendIdleRefreshManager backendIdleRefreshManager;
        Long l;
        synchronized (this) {
            try {
                this.currentTriggerTime = 0L;
                if (!this.timers.isEmpty()) {
                    long elapsedRealtime = SystemClock.elapsedRealtime() + this.minTimeout;
                    LinkedHashSet linkedHashSet = this.timers;
                    ArrayList arrayList = new ArrayList();
                    for (Object obj : linkedHashSet) {
                        if (((BackendIdleRefreshTimer) obj).triggerTime < elapsedRealtime - 60000) {
                            arrayList.add(obj);
                        }
                    }
                    this.timers.removeAll(arrayList);
                    Iterator it = this.timers.iterator();
                    if (it.hasNext()) {
                        Long valueOf = Long.valueOf(((BackendIdleRefreshTimer) it.next()).triggerTime);
                        while (it.hasNext()) {
                            Long valueOf2 = Long.valueOf(((BackendIdleRefreshTimer) it.next()).triggerTime);
                            if (valueOf.compareTo(valueOf2) > 0) {
                                valueOf = valueOf2;
                            }
                        }
                        l = valueOf;
                    } else {
                        l = null;
                    }
                    if (l != null) {
                        long longValue = l.longValue();
                        try {
                            this.currentTriggerTime = longValue;
                            try {
                                AndroidAlarmManager androidAlarmManager = this.alarmManager;
                                backendIdleRefreshManager = this;
                                try {
                                    androidAlarmManager.callback.set(new RoomDatabase$closeBarrier$1(0, backendIdleRefreshManager, BackendIdleRefreshManager.class, "onTimeout", "onTimeout()V", 0, 17));
                                    androidAlarmManager.alarmManager.setExactAndAllowWhileIdle(2, longValue, androidAlarmManager.pendingIntent);
                                } catch (Throwable th) {
                                    th = th;
                                    th = th;
                                    throw th;
                                }
                            } catch (Throwable th2) {
                                th = th2;
                                backendIdleRefreshManager = this;
                            }
                        } catch (Throwable th3) {
                            th = th3;
                            backendIdleRefreshManager = this;
                        }
                    } else {
                        backendIdleRefreshManager = this;
                    }
                    Iterator it2 = arrayList.iterator();
                    while (it2.hasNext()) {
                        ((BackendIdleRefreshTimer) it2.next()).onTimeout$tfa_backend_imap();
                    }
                }
            } catch (Throwable th4) {
                th = th4;
                backendIdleRefreshManager = this;
            }
        }
    }

    public final synchronized BackendIdleRefreshTimer startTimer(long j, Function0 function0) {
        BackendIdleRefreshTimer backendIdleRefreshTimer;
        if (j <= 60000) {
            throw new IllegalArgumentException("Timeout needs to be greater than 60000 ms");
        }
        long elapsedRealtime = SystemClock.elapsedRealtime();
        long j2 = elapsedRealtime + j;
        if ((this.minTimeout * 2) + this.minTimeoutTimestamp < elapsedRealtime) {
            this.minTimeout = Long.MAX_VALUE;
        }
        if (j <= this.minTimeout) {
            this.minTimeout = j;
            this.minTimeoutTimestamp = elapsedRealtime;
        }
        long j3 = this.currentTriggerTime;
        if (j3 == 0) {
            this.currentTriggerTime = j2;
            AndroidAlarmManager androidAlarmManager = this.alarmManager;
            androidAlarmManager.callback.set(new RoomDatabase$closeBarrier$1(0, this, BackendIdleRefreshManager.class, "onTimeout", "onTimeout()V", 0, 17));
            androidAlarmManager.alarmManager.setExactAndAllowWhileIdle(2, j2, androidAlarmManager.pendingIntent);
        } else if (j3 - j2 > 60000) {
            this.currentTriggerTime = j2;
            AndroidAlarmManager androidAlarmManager2 = this.alarmManager;
            androidAlarmManager2.callback.set(null);
            androidAlarmManager2.alarmManager.cancel(androidAlarmManager2.pendingIntent);
            androidAlarmManager2.callback.set(new RoomDatabase$closeBarrier$1(0, this, BackendIdleRefreshManager.class, "onTimeout", "onTimeout()V", 0, 16));
            androidAlarmManager2.alarmManager.setExactAndAllowWhileIdle(2, j2, androidAlarmManager2.pendingIntent);
        }
        backendIdleRefreshTimer = new BackendIdleRefreshTimer(j2, function0);
        this.timers.add(backendIdleRefreshTimer);
        return backendIdleRefreshTimer;
    }
}
