package defpackage;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public class M2 extends C3675sH {

    /* renamed from: if, reason: not valid java name */
    public static M2 f2079if;

    /* renamed from: new, reason: not valid java name */
    public static final long f2080new;

    /* renamed from: try, reason: not valid java name */
    public static final long f2081try;

    /* renamed from: do, reason: not valid java name */
    public M2 f2082do;

    /* renamed from: for, reason: not valid java name */
    public long f2083for;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public boolean f2084if;

    /* renamed from: M2$do, reason: invalid class name */
    public static final class Cdo extends Thread {
        public Cdo() {
            super("Okio Watchdog");
            setDaemon(true);
        }

        /* JADX WARN: Code restructure failed: missing block: B:19:0x0015, code lost:
        
            r1.mo1384final();
         */
        @Override // java.lang.Thread, java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void run() {
            /*
                r3 = this;
            L0:
                java.lang.Class<M2> r0 = defpackage.M2.class
                monitor-enter(r0)     // Catch: java.lang.InterruptedException -> L0
                M2 r1 = defpackage.M2.m1379goto()     // Catch: java.lang.Throwable -> L19
                if (r1 != 0) goto Lb
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L19
                goto L0
            Lb:
                M2 r2 = defpackage.M2.f2079if     // Catch: java.lang.Throwable -> L19
                if (r1 != r2) goto L14
                r1 = 0
                defpackage.M2.f2079if = r1     // Catch: java.lang.Throwable -> L19
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L19
                return
            L14:
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L19
                r1.mo1384final()     // Catch: java.lang.InterruptedException -> L0
                goto L0
            L19:
                r1 = move-exception
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L19
                throw r1     // Catch: java.lang.InterruptedException -> L0
            */
            throw new UnsupportedOperationException("Method not decompiled: defpackage.M2.Cdo.run():void");
        }
    }

    static {
        long millis = TimeUnit.SECONDS.toMillis(60L);
        f2080new = millis;
        f2081try = TimeUnit.MILLISECONDS.toNanos(millis);
    }

    /* renamed from: goto, reason: not valid java name */
    public static M2 m1379goto() {
        M2 m2 = f2079if.f2082do;
        if (m2 == null) {
            long nanoTime = System.nanoTime();
            M2.class.wait(f2080new);
            if (f2079if.f2082do != null || System.nanoTime() - nanoTime < f2081try) {
                return null;
            }
            return f2079if;
        }
        long nanoTime2 = m2.f2083for - System.nanoTime();
        if (nanoTime2 > 0) {
            long j = nanoTime2 / 1000000;
            M2.class.wait(j, (int) (nanoTime2 - (1000000 * j)));
            return null;
        }
        f2079if.f2082do = m2.f2082do;
        m2.f2082do = null;
        return m2;
    }

    /* renamed from: break, reason: not valid java name */
    public final IOException m1380break(IOException iOException) {
        return !m1382class() ? iOException : mo1383const(iOException);
    }

    /* renamed from: catch, reason: not valid java name */
    public final void m1381catch(boolean z) {
        if (m1382class() && z) {
            throw mo1383const(null);
        }
    }

    /* renamed from: class, reason: not valid java name */
    public final boolean m1382class() {
        if (!this.f2084if) {
            return false;
        }
        this.f2084if = false;
        synchronized (M2.class) {
            M2 m2 = f2079if;
            while (m2 != null) {
                M2 m22 = m2.f2082do;
                if (m22 == this) {
                    m2.f2082do = this.f2082do;
                    this.f2082do = null;
                    return false;
                }
                m2 = m22;
            }
            return true;
        }
    }

    /* renamed from: const, reason: not valid java name */
    public IOException mo1383const(IOException iOException) {
        InterruptedIOException interruptedIOException = new InterruptedIOException("timeout");
        if (iOException != null) {
            interruptedIOException.initCause(iOException);
        }
        return interruptedIOException;
    }

    /* renamed from: final, reason: not valid java name */
    public void mo1384final() {
    }

    /* renamed from: this, reason: not valid java name */
    public final void m1385this() {
        M2 m2;
        if (this.f2084if) {
            throw new IllegalStateException("Unbalanced enter/exit");
        }
        long j = super.f15430if;
        boolean z = ((C3675sH) this).f15429do;
        if (j != 0 || z) {
            this.f2084if = true;
            synchronized (M2.class) {
                if (f2079if == null) {
                    f2079if = new M2();
                    new Cdo().start();
                }
                long nanoTime = System.nanoTime();
                if (j != 0 && z) {
                    this.f2083for = Math.min(j, mo8084for() - nanoTime) + nanoTime;
                } else if (j != 0) {
                    this.f2083for = j + nanoTime;
                } else {
                    if (!z) {
                        throw new AssertionError();
                    }
                    this.f2083for = mo8084for();
                }
                long j2 = this.f2083for - nanoTime;
                M2 m22 = f2079if;
                while (true) {
                    m2 = m22.f2082do;
                    if (m2 == null || j2 < m2.f2083for - nanoTime) {
                        break;
                    } else {
                        m22 = m2;
                    }
                }
                this.f2082do = m2;
                m22.f2082do = this;
                if (m22 == f2079if) {
                    M2.class.notify();
                }
            }
        }
    }
}
