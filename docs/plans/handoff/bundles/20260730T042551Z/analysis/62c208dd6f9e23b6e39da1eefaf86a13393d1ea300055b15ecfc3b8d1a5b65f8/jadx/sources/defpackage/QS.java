package defpackage;

import com.google.android.gms.common.internal.Preconditions;
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.Semaphore;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public final class QS extends AbstractC3570qT {

    /* renamed from: do, reason: not valid java name */
    public static final AtomicLong f2940do = new AtomicLong(Long.MIN_VALUE);

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final SS f2941do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public US f2942do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final LinkedBlockingQueue f2943do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final PriorityBlockingQueue<RS<?>> f2944do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Semaphore f2945do;

    /* renamed from: if, reason: not valid java name */
    public final SS f2946if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public US f2947if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final Object f2948if;

    public QS(TS ts) {
        super(ts);
        this.f2948if = new Object();
        this.f2945do = new Semaphore(2);
        this.f2944do = new PriorityBlockingQueue<>();
        this.f2943do = new LinkedBlockingQueue();
        this.f2941do = new SS(this, "Thread death: Uncaught exception on worker thread");
        this.f2946if = new SS(this, "Thread death: Uncaught exception on network thread");
    }

    @Override // defpackage.C3393nT
    /* renamed from: catch, reason: not valid java name */
    public final void mo1960catch() {
        if (Thread.currentThread() != this.f2942do) {
            throw new IllegalStateException("Call expected from worker thread");
        }
    }

    @Override // defpackage.AbstractC3570qT
    /* renamed from: final, reason: not valid java name */
    public final boolean mo1961final() {
        return false;
    }

    /* renamed from: import, reason: not valid java name */
    public final void m1962import(RS<?> rs) {
        synchronized (this.f2948if) {
            this.f2944do.add(rs);
            US us = this.f2942do;
            if (us == null) {
                US us2 = new US(this, "Measurement Worker", this.f2944do);
                this.f2942do = us2;
                us2.setUncaughtExceptionHandler(this.f2941do);
                this.f2942do.start();
            } else {
                us.m2420do();
            }
        }
    }

    /* renamed from: native, reason: not valid java name */
    public final RS m1963native(Callable callable) {
        m7886class();
        Preconditions.checkNotNull(callable);
        RS<?> rs = new RS<>(this, callable, true);
        if (Thread.currentThread() == this.f2942do) {
            rs.run();
        } else {
            m1962import(rs);
        }
        return rs;
    }

    /* renamed from: public, reason: not valid java name */
    public final void m1964public(Runnable runnable) {
        m7886class();
        Preconditions.checkNotNull(runnable);
        m1962import(new RS<>(this, runnable, false, "Task exception on worker thread"));
    }

    /* renamed from: return, reason: not valid java name */
    public final void m1965return(Runnable runnable) {
        m7886class();
        Preconditions.checkNotNull(runnable);
        m1962import(new RS<>(this, runnable, true, "Task exception on worker thread"));
    }

    /* renamed from: static, reason: not valid java name */
    public final boolean m1966static() {
        return Thread.currentThread() == this.f2942do;
    }

    /* renamed from: super, reason: not valid java name */
    public final <T> T m1967super(AtomicReference<T> atomicReference, long j, String str, Runnable runnable) {
        synchronized (atomicReference) {
            mo2253do().m1964public(runnable);
            try {
                atomicReference.wait(j);
            } catch (InterruptedException unused) {
                mo2249case().f13722new.m7369if("Interrupted waiting for ".concat(str));
                return null;
            }
        }
        T t = atomicReference.get();
        if (t == null) {
            mo2249case().f13722new.m7369if("Timed out waiting for ".concat(str));
        }
        return t;
    }

    /* renamed from: switch, reason: not valid java name */
    public final void m1968switch() {
        if (Thread.currentThread() != this.f2947if) {
            throw new IllegalStateException("Call expected from network thread");
        }
    }

    /* renamed from: throw, reason: not valid java name */
    public final RS m1969throw(Callable callable) {
        m7886class();
        Preconditions.checkNotNull(callable);
        RS<?> rs = new RS<>(this, callable, false);
        if (Thread.currentThread() == this.f2942do) {
            if (!this.f2944do.isEmpty()) {
                mo2249case().f13722new.m7369if("Callable skipped the worker queue.");
            }
            rs.run();
        } else {
            m1962import(rs);
        }
        return rs;
    }

    /* renamed from: while, reason: not valid java name */
    public final void m1970while(Runnable runnable) {
        m7886class();
        Preconditions.checkNotNull(runnable);
        RS rs = new RS(this, runnable, false, "Task exception on network thread");
        synchronized (this.f2948if) {
            this.f2943do.add(rs);
            US us = this.f2947if;
            if (us == null) {
                US us2 = new US(this, "Measurement Network", this.f2943do);
                this.f2947if = us2;
                us2.setUncaughtExceptionHandler(this.f2946if);
                this.f2947if.start();
            } else {
                us.m2420do();
            }
        }
    }
}
