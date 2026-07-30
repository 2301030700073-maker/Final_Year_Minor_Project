package b.e.g;

import android.os.Handler;
import android.os.HandlerThread;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;

/* loaded from: classes.dex */
public class o {

    /* renamed from: b, reason: collision with root package name */
    public HandlerThread f737b;

    /* renamed from: c, reason: collision with root package name */
    public Handler f738c;
    public final int f;
    public final int g;
    public final String h;

    /* renamed from: a, reason: collision with root package name */
    public final Object f736a = new Object();
    public Handler.Callback e = new j(this);

    /* renamed from: d, reason: collision with root package name */
    public int f739d = 0;

    public o(String str, int i, int i2) {
        this.h = str;
        this.g = i;
        this.f = i2;
    }

    public final void a(Runnable runnable) {
        synchronized (this.f736a) {
            if (this.f737b == null) {
                HandlerThread handlerThread = new HandlerThread(this.h, this.g);
                this.f737b = handlerThread;
                handlerThread.start();
                this.f738c = new Handler(this.f737b.getLooper(), this.e);
                this.f739d++;
            }
            this.f738c.removeMessages(0);
            this.f738c.sendMessage(this.f738c.obtainMessage(1, runnable));
        }
    }

    public Object b(Callable callable, int i) {
        ReentrantLock reentrantLock = new ReentrantLock();
        Condition newCondition = reentrantLock.newCondition();
        AtomicReference atomicReference = new AtomicReference();
        AtomicBoolean atomicBoolean = new AtomicBoolean(true);
        a(new m(this, atomicReference, callable, reentrantLock, atomicBoolean, newCondition));
        reentrantLock.lock();
        try {
            if (!atomicBoolean.get()) {
                return atomicReference.get();
            }
            long nanos = TimeUnit.MILLISECONDS.toNanos(i);
            do {
                try {
                    nanos = newCondition.awaitNanos(nanos);
                } catch (InterruptedException unused) {
                }
                if (!atomicBoolean.get()) {
                    return atomicReference.get();
                }
            } while (nanos > 0);
            throw new InterruptedException("timeout");
        } finally {
            reentrantLock.unlock();
        }
    }

    public int getGeneration() {
        int i;
        synchronized (this.f736a) {
            i = this.f739d;
        }
        return i;
    }

    public boolean isRunning() {
        boolean z;
        synchronized (this.f736a) {
            z = this.f737b != null;
        }
        return z;
    }
}
