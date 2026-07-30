package defpackage;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.SocketTimeoutException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.concurrent.RejectedExecutionException;

/* renamed from: xm, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3997xm {

    /* renamed from: do, reason: not valid java name */
    public final int f16598do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public long f16599do = 0;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ArrayDeque f16600do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C3408nm f16601do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cdo f16602do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cfor f16603do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cif f16604do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f16605do;

    /* renamed from: if, reason: not valid java name */
    public int f16606if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public long f16607if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final Cfor f16608if;

    /* renamed from: xm$do, reason: invalid class name */
    public final class Cdo implements InterfaceC3908wE {

        /* renamed from: do, reason: not valid java name */
        public final U5 f16609do = new U5();

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public boolean f16611do;

        /* renamed from: if, reason: not valid java name */
        public boolean f16612if;

        public Cdo() {
        }

        @Override // defpackage.InterfaceC3908wE, java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            synchronized (C3997xm.this) {
                if (this.f16611do) {
                    return;
                }
                C3997xm c3997xm = C3997xm.this;
                if (!c3997xm.f16602do.f16612if) {
                    if (this.f16609do.f3826do > 0) {
                        while (this.f16609do.f3826do > 0) {
                            m8669do(true);
                        }
                    } else {
                        c3997xm.f16601do.m7606class(c3997xm.f16598do, true, null, 0L);
                    }
                }
                synchronized (C3997xm.this) {
                    this.f16611do = true;
                }
                C3997xm.this.f16601do.flush();
                C3997xm.this.m8661do();
            }
        }

        /* renamed from: do, reason: not valid java name */
        public final void m8669do(boolean z) {
            C3997xm c3997xm;
            long min;
            C3997xm c3997xm2;
            synchronized (C3997xm.this) {
                C3997xm.this.f16608if.m1385this();
                while (true) {
                    try {
                        c3997xm = C3997xm.this;
                        if (c3997xm.f16607if > 0 || this.f16612if || this.f16611do || c3997xm.f16606if != 0) {
                            break;
                        } else {
                            c3997xm.m8659break();
                        }
                    } finally {
                    }
                }
                c3997xm.f16608if.m8670super();
                C3997xm.this.m8665if();
                min = Math.min(C3997xm.this.f16607if, this.f16609do.f3826do);
                c3997xm2 = C3997xm.this;
                c3997xm2.f16607if -= min;
            }
            c3997xm2.f16608if.m1385this();
            try {
                C3997xm c3997xm3 = C3997xm.this;
                c3997xm3.f16601do.m7606class(c3997xm3.f16598do, z && min == this.f16609do.f3826do, this.f16609do, min);
            } finally {
            }
        }

        @Override // defpackage.InterfaceC3908wE, java.io.Flushable
        public final void flush() {
            synchronized (C3997xm.this) {
                C3997xm.this.m8665if();
            }
            while (this.f16609do.f3826do > 0) {
                m8669do(false);
                C3997xm.this.f16601do.flush();
            }
        }

        @Override // defpackage.InterfaceC3908wE
        /* renamed from: super */
        public final void mo1111super(U5 u5, long j) {
            U5 u52 = this.f16609do;
            u52.mo1111super(u5, j);
            while (u52.f3826do >= 16384) {
                m8669do(false);
            }
        }

        @Override // defpackage.InterfaceC3908wE
        /* renamed from: try */
        public final C3675sH mo1112try() {
            return C3997xm.this.f16608if;
        }
    }

    /* renamed from: xm$for, reason: invalid class name */
    public class Cfor extends M2 {
        public Cfor() {
        }

        @Override // defpackage.M2
        /* renamed from: const */
        public final IOException mo1383const(IOException iOException) {
            SocketTimeoutException socketTimeoutException = new SocketTimeoutException("timeout");
            if (iOException != null) {
                socketTimeoutException.initCause(iOException);
            }
            return socketTimeoutException;
        }

        @Override // defpackage.M2
        /* renamed from: final */
        public final void mo1384final() {
            C3997xm c3997xm = C3997xm.this;
            if (c3997xm.m8666new(6)) {
                c3997xm.f16601do.m7607const(c3997xm.f16598do, 6);
            }
            C3408nm c3408nm = C3997xm.this.f16601do;
            synchronized (c3408nm) {
                long j = c3408nm.f14579new;
                long j2 = c3408nm.f14574for;
                if (j < j2) {
                    return;
                }
                c3408nm.f14574for = j2 + 1;
                c3408nm.f14580try = System.nanoTime() + 1000000000;
                try {
                    c3408nm.f14566do.execute(new C3467om(c3408nm, c3408nm.f14558break));
                } catch (RejectedExecutionException unused) {
                }
            }
        }

        /* renamed from: super, reason: not valid java name */
        public final void m8670super() {
            if (m1382class()) {
                throw mo1383const(null);
            }
        }
    }

    /* renamed from: xm$if, reason: invalid class name */
    public final class Cif implements KE {

        /* renamed from: do, reason: not valid java name */
        public final long f16614do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public boolean f16617do;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public boolean f16619if;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final U5 f16615do = new U5();

        /* renamed from: if, reason: not valid java name */
        public final U5 f16618if = new U5();

        public Cif(long j) {
            this.f16614do = j;
        }

        @Override // defpackage.KE, java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            long j;
            synchronized (C3997xm.this) {
                this.f16617do = true;
                U5 u5 = this.f16618if;
                j = u5.f3826do;
                u5.m2330do();
                if (!C3997xm.this.f16600do.isEmpty()) {
                    C3997xm.this.getClass();
                }
                C3997xm.this.notifyAll();
            }
            if (j > 0) {
                C3997xm.this.f16601do.m7604break(j);
            }
            C3997xm.this.m8661do();
        }

        /* JADX WARN: Code restructure failed: missing block: B:26:0x0077, code lost:
        
            r12 = -1;
         */
        @Override // defpackage.KE
        /* renamed from: throw */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final long mo631throw(defpackage.U5 r12, long r13) {
            /*
                r11 = this;
                r0 = 0
                int r2 = (r13 > r0 ? 1 : (r13 == r0 ? 0 : -1))
                if (r2 < 0) goto La9
            L6:
                xm r2 = defpackage.C3997xm.this
                monitor-enter(r2)
                xm r3 = defpackage.C3997xm.this     // Catch: java.lang.Throwable -> La6
                xm$for r3 = r3.f16603do     // Catch: java.lang.Throwable -> La6
                r3.m1385this()     // Catch: java.lang.Throwable -> La6
                xm r3 = defpackage.C3997xm.this     // Catch: java.lang.Throwable -> L9d
                int r4 = r3.f16606if     // Catch: java.lang.Throwable -> L9d
                if (r4 == 0) goto L17
                goto L18
            L17:
                r4 = 0
            L18:
                boolean r5 = r11.f16617do     // Catch: java.lang.Throwable -> L9d
                if (r5 != 0) goto L95
                java.util.ArrayDeque r3 = r3.f16600do     // Catch: java.lang.Throwable -> L9d
                boolean r3 = r3.isEmpty()     // Catch: java.lang.Throwable -> L9d
                if (r3 != 0) goto L29
                xm r3 = defpackage.C3997xm.this     // Catch: java.lang.Throwable -> L9d
                r3.getClass()     // Catch: java.lang.Throwable -> L9d
            L29:
                U5 r3 = r11.f16618if     // Catch: java.lang.Throwable -> L9d
                long r5 = r3.f3826do     // Catch: java.lang.Throwable -> L9d
                r7 = -1
                int r9 = (r5 > r0 ? 1 : (r5 == r0 ? 0 : -1))
                if (r9 <= 0) goto L63
                long r13 = java.lang.Math.min(r13, r5)     // Catch: java.lang.Throwable -> L9d
                long r12 = r3.mo631throw(r12, r13)     // Catch: java.lang.Throwable -> L9d
                xm r14 = defpackage.C3997xm.this     // Catch: java.lang.Throwable -> L9d
                long r5 = r14.f16599do     // Catch: java.lang.Throwable -> L9d
                long r5 = r5 + r12
                r14.f16599do = r5     // Catch: java.lang.Throwable -> L9d
                if (r4 != 0) goto L78
                nm r14 = r14.f16601do     // Catch: java.lang.Throwable -> L9d
                M4 r14 = r14.f14562do     // Catch: java.lang.Throwable -> L9d
                int r14 = r14.m1391do()     // Catch: java.lang.Throwable -> L9d
                int r14 = r14 / 2
                long r9 = (long) r14     // Catch: java.lang.Throwable -> L9d
                int r14 = (r5 > r9 ? 1 : (r5 == r9 ? 0 : -1))
                if (r14 < 0) goto L78
                xm r14 = defpackage.C3997xm.this     // Catch: java.lang.Throwable -> L9d
                nm r3 = r14.f16601do     // Catch: java.lang.Throwable -> L9d
                int r5 = r14.f16598do     // Catch: java.lang.Throwable -> L9d
                long r9 = r14.f16599do     // Catch: java.lang.Throwable -> L9d
                r3.m7613public(r5, r9)     // Catch: java.lang.Throwable -> L9d
                xm r14 = defpackage.C3997xm.this     // Catch: java.lang.Throwable -> L9d
                r14.f16599do = r0     // Catch: java.lang.Throwable -> L9d
                goto L78
            L63:
                boolean r3 = r11.f16619if     // Catch: java.lang.Throwable -> L9d
                if (r3 != 0) goto L77
                if (r4 != 0) goto L77
                xm r3 = defpackage.C3997xm.this     // Catch: java.lang.Throwable -> L9d
                r3.m8659break()     // Catch: java.lang.Throwable -> L9d
                xm r3 = defpackage.C3997xm.this     // Catch: java.lang.Throwable -> La6
                xm$for r3 = r3.f16603do     // Catch: java.lang.Throwable -> La6
                r3.m8670super()     // Catch: java.lang.Throwable -> La6
                monitor-exit(r2)     // Catch: java.lang.Throwable -> La6
                goto L6
            L77:
                r12 = r7
            L78:
                xm r14 = defpackage.C3997xm.this     // Catch: java.lang.Throwable -> La6
                xm$for r14 = r14.f16603do     // Catch: java.lang.Throwable -> La6
                r14.m8670super()     // Catch: java.lang.Throwable -> La6
                monitor-exit(r2)     // Catch: java.lang.Throwable -> La6
                int r14 = (r12 > r7 ? 1 : (r12 == r7 ? 0 : -1))
                if (r14 == 0) goto L8c
                xm r14 = defpackage.C3997xm.this
                nm r14 = r14.f16601do
                r14.m7604break(r12)
                return r12
            L8c:
                if (r4 != 0) goto L8f
                return r7
            L8f:
                uF r12 = new uF
                r12.<init>(r4)
                throw r12
            L95:
                java.io.IOException r12 = new java.io.IOException     // Catch: java.lang.Throwable -> L9d
                java.lang.String r13 = "stream closed"
                r12.<init>(r13)     // Catch: java.lang.Throwable -> L9d
                throw r12     // Catch: java.lang.Throwable -> L9d
            L9d:
                r12 = move-exception
                xm r13 = defpackage.C3997xm.this     // Catch: java.lang.Throwable -> La6
                xm$for r13 = r13.f16603do     // Catch: java.lang.Throwable -> La6
                r13.m8670super()     // Catch: java.lang.Throwable -> La6
                throw r12     // Catch: java.lang.Throwable -> La6
            La6:
                r12 = move-exception
                monitor-exit(r2)     // Catch: java.lang.Throwable -> La6
                throw r12
            La9:
                java.lang.IllegalArgumentException r12 = new java.lang.IllegalArgumentException
                java.lang.String r0 = "byteCount < 0: "
                java.lang.String r13 = defpackage.Cpublic.m7828try(r0, r13)
                r12.<init>(r13)
                throw r12
            */
            throw new UnsupportedOperationException("Method not decompiled: defpackage.C3997xm.Cif.mo631throw(U5, long):long");
        }

        @Override // defpackage.KE
        /* renamed from: try */
        public final C3675sH mo632try() {
            return C3997xm.this.f16603do;
        }
    }

    public C3997xm(int i, C3408nm c3408nm, boolean z, boolean z2, C0587Wl c0587Wl) {
        ArrayDeque arrayDeque = new ArrayDeque();
        this.f16600do = arrayDeque;
        this.f16603do = new Cfor();
        this.f16608if = new Cfor();
        this.f16606if = 0;
        if (c3408nm == null) {
            throw new NullPointerException("connection == null");
        }
        this.f16598do = i;
        this.f16601do = c3408nm;
        this.f16607if = c3408nm.f14576if.m1391do();
        Cif cif = new Cif(c3408nm.f14562do.m1391do());
        this.f16604do = cif;
        Cdo cdo = new Cdo();
        this.f16602do = cdo;
        cif.f16619if = z2;
        cdo.f16612if = z;
        if (c0587Wl != null) {
            arrayDeque.add(c0587Wl);
        }
        if (m8668try() && c0587Wl != null) {
            throw new IllegalStateException("locally-initiated streams shouldn't have headers yet");
        }
        if (!m8668try() && c0587Wl == null) {
            throw new IllegalStateException("remotely-initiated streams should have headers");
        }
    }

    /* renamed from: break, reason: not valid java name */
    public final void m8659break() {
        try {
            wait();
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
            throw new InterruptedIOException();
        }
    }

    /* renamed from: case, reason: not valid java name */
    public final synchronized boolean m8660case() {
        if (this.f16606if != 0) {
            return false;
        }
        Cif cif = this.f16604do;
        if (cif.f16619if || cif.f16617do) {
            Cdo cdo = this.f16602do;
            if (cdo.f16612if || cdo.f16611do) {
                if (this.f16605do) {
                    return false;
                }
            }
        }
        return true;
    }

    /* renamed from: do, reason: not valid java name */
    public final void m8661do() {
        boolean z;
        boolean m8660case;
        synchronized (this) {
            Cif cif = this.f16604do;
            if (!cif.f16619if && cif.f16617do) {
                Cdo cdo = this.f16602do;
                if (cdo.f16612if || cdo.f16611do) {
                    z = true;
                    m8660case = m8660case();
                }
            }
            z = false;
            m8660case = m8660case();
        }
        if (z) {
            m8663for(6);
        } else {
            if (m8660case) {
                return;
            }
            this.f16601do.m7610goto(this.f16598do);
        }
    }

    /* renamed from: else, reason: not valid java name */
    public final void m8662else() {
        boolean m8660case;
        synchronized (this) {
            this.f16604do.f16619if = true;
            m8660case = m8660case();
            notifyAll();
        }
        if (m8660case) {
            return;
        }
        this.f16601do.m7610goto(this.f16598do);
    }

    /* renamed from: for, reason: not valid java name */
    public final void m8663for(int i) {
        if (m8666new(i)) {
            this.f16601do.f14570do.m8775this(this.f16598do, i);
        }
    }

    /* renamed from: goto, reason: not valid java name */
    public final void m8664goto(ArrayList arrayList) {
        boolean m8660case;
        synchronized (this) {
            this.f16605do = true;
            this.f16600do.add(SJ.m2144return(arrayList));
            m8660case = m8660case();
            notifyAll();
        }
        if (m8660case) {
            return;
        }
        this.f16601do.m7610goto(this.f16598do);
    }

    /* renamed from: if, reason: not valid java name */
    public final void m8665if() {
        Cdo cdo = this.f16602do;
        if (cdo.f16611do) {
            throw new IOException("stream closed");
        }
        if (cdo.f16612if) {
            throw new IOException("stream finished");
        }
        if (this.f16606if != 0) {
            throw new C3791uF(this.f16606if);
        }
    }

    /* renamed from: new, reason: not valid java name */
    public final boolean m8666new(int i) {
        synchronized (this) {
            if (this.f16606if != 0) {
                return false;
            }
            if (this.f16604do.f16619if && this.f16602do.f16612if) {
                return false;
            }
            this.f16606if = i;
            notifyAll();
            this.f16601do.m7610goto(this.f16598do);
            return true;
        }
    }

    /* renamed from: this, reason: not valid java name */
    public final synchronized void m8667this(int i) {
        if (this.f16606if == 0) {
            this.f16606if = i;
            notifyAll();
        }
    }

    /* renamed from: try, reason: not valid java name */
    public final boolean m8668try() {
        return this.f16601do.f14571do == ((this.f16598do & 1) == 1);
    }
}
