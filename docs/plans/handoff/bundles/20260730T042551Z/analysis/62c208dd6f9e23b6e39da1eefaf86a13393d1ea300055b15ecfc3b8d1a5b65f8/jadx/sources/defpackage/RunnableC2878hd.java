package defpackage;

import defpackage.AbstractC3932wg;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.LockSupport;

/* renamed from: hd, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class RunnableC2878hd extends AbstractC3932wg implements Runnable {
    private static volatile Thread _thread;
    private static volatile int debugStatus;

    /* renamed from: do, reason: not valid java name */
    public static final RunnableC2878hd f13336do;

    /* renamed from: if, reason: not valid java name */
    public static final long f13337if;

    static {
        Long l;
        RunnableC2878hd runnableC2878hd = new RunnableC2878hd();
        f13336do = runnableC2878hd;
        runnableC2878hd.t(false);
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        try {
            l = Long.getLong("kotlinx.coroutines.DefaultExecutor.keepAlive", 1000L);
        } catch (SecurityException unused) {
            l = 1000L;
        }
        f13337if = timeUnit.toNanos(l.longValue());
    }

    public final synchronized void D() {
        int i = debugStatus;
        if (i == 2 || i == 3) {
            debugStatus = 3;
            AbstractC3932wg.f16378do.set(this, null);
            AbstractC3932wg.f16379if.set(this, null);
            notifyAll();
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z;
        C2801gH.f13085do.set(this);
        try {
            synchronized (this) {
                int i = debugStatus;
                if (i == 2 || i == 3) {
                    z = false;
                } else {
                    debugStatus = 1;
                    notifyAll();
                    z = true;
                }
            }
            if (!z) {
                _thread = null;
                D();
                if (B()) {
                    return;
                }
                w();
                return;
            }
            long j = Long.MAX_VALUE;
            while (true) {
                Thread.interrupted();
                long u = u();
                if (u == Long.MAX_VALUE) {
                    long nanoTime = System.nanoTime();
                    if (j == Long.MAX_VALUE) {
                        j = f13337if + nanoTime;
                    }
                    long j2 = j - nanoTime;
                    if (j2 <= 0) {
                        _thread = null;
                        D();
                        if (B()) {
                            return;
                        }
                        w();
                        return;
                    }
                    if (u > j2) {
                        u = j2;
                    }
                } else {
                    j = Long.MAX_VALUE;
                }
                if (u > 0) {
                    int i2 = debugStatus;
                    if (i2 == 2 || i2 == 3) {
                        _thread = null;
                        D();
                        if (B()) {
                            return;
                        }
                        w();
                        return;
                    }
                    LockSupport.parkNanos(this, u);
                }
            }
        } catch (Throwable th) {
            _thread = null;
            D();
            if (!B()) {
                w();
            }
            throw th;
        }
    }

    @Override // defpackage.AbstractC3932wg, defpackage.AbstractC3873vg
    public final void shutdown() {
        debugStatus = 4;
        super.shutdown();
    }

    @Override // defpackage.AbstractC3991xg
    public final Thread w() {
        Thread thread = _thread;
        if (thread == null) {
            synchronized (this) {
                thread = _thread;
                if (thread == null) {
                    thread = new Thread(this, "kotlinx.coroutines.DefaultExecutor");
                    _thread = thread;
                    thread.setDaemon(true);
                    thread.start();
                }
            }
        }
        return thread;
    }

    @Override // defpackage.AbstractC3991xg
    public final void x(long j, AbstractC3932wg.Cdo cdo) {
        throw new RejectedExecutionException("DefaultExecutor was shut down. This error indicates that Dispatchers.shutdown() was invoked prior to completion of exiting coroutines, leaving coroutines in incomplete state. Please refer to Dispatchers.shutdown documentation for more details");
    }

    @Override // defpackage.AbstractC3932wg
    public final void z(Runnable runnable) {
        if (debugStatus == 4) {
            throw new RejectedExecutionException("DefaultExecutor was shut down. This error indicates that Dispatchers.shutdown() was invoked prior to completion of exiting coroutines, leaving coroutines in incomplete state. Please refer to Dispatchers.shutdown documentation for more details");
        }
        super.z(runnable);
    }
}
