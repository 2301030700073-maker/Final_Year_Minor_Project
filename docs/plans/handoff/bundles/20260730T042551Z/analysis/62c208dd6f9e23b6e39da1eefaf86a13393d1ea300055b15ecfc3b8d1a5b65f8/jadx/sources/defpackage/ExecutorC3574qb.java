package defpackage;

import com.google.android.gms.common.api.Api;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.locks.LockSupport;

/* renamed from: qb, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class ExecutorC3574qb implements Executor, Closeable {
    private volatile int _isTerminated;

    /* renamed from: break, reason: not valid java name */
    public final String f15123break;
    private volatile long controlState;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final long f15124do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Lz<Cdo> f15125do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C2944il f15126do;

    /* renamed from: for, reason: not valid java name */
    public final int f15127for;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final C2944il f15128if;

    /* renamed from: new, reason: not valid java name */
    public final int f15129new;
    private volatile long parkedWorkersStack;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final AtomicLongFieldUpdater f15121do = AtomicLongFieldUpdater.newUpdater(ExecutorC3574qb.class, "parkedWorkersStack");

    /* renamed from: if, reason: not valid java name */
    public static final AtomicLongFieldUpdater f15122if = AtomicLongFieldUpdater.newUpdater(ExecutorC3574qb.class, "controlState");

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final AtomicIntegerFieldUpdater f15120do = AtomicIntegerFieldUpdater.newUpdater(ExecutorC3574qb.class, "_isTerminated");

    /* renamed from: do, reason: not valid java name */
    public static final C0174Dp f15119do = new C0174Dp("NOT_IN_STACK", 7);

    /* renamed from: qb$do, reason: invalid class name */
    public final class Cdo extends Thread {

        /* renamed from: do, reason: not valid java name */
        public static final AtomicIntegerFieldUpdater f15130do = AtomicIntegerFieldUpdater.newUpdater(Cdo.class, "workerCtl");

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public long f15131do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final QM f15132do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final C2723ez<EG> f15133do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public boolean f15135do;

        /* renamed from: for, reason: not valid java name */
        public int f15136for;

        /* renamed from: if, reason: not valid java name */
        public long f15137if;
        private volatile int indexInArray;

        /* renamed from: new, reason: not valid java name */
        public int f15138new;
        private volatile Object nextParkedWorker;
        private volatile int workerCtl;

        public Cdo() {
            throw null;
        }

        public Cdo(int i) {
            setDaemon(true);
            this.f15132do = new QM();
            this.f15133do = new C2723ez<>();
            this.f15136for = 4;
            this.nextParkedWorker = ExecutorC3574qb.f15119do;
            this.f15138new = Iy.f1574do.mo994do();
            m7895case(i);
        }

        /* renamed from: case, reason: not valid java name */
        public final void m7895case(int i) {
            StringBuilder sb = new StringBuilder();
            sb.append(ExecutorC3574qb.this.f15123break);
            sb.append("-worker-");
            sb.append(i == 0 ? "TERMINATED" : String.valueOf(i));
            setName(sb.toString());
            this.indexInArray = i;
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x003c  */
        /* JADX WARN: Removed duplicated region for block: B:38:0x007d  */
        /* JADX WARN: Removed duplicated region for block: B:56:0x00cd  */
        /* JADX WARN: Removed duplicated region for block: B:61:? A[RETURN, SYNTHETIC] */
        /* renamed from: do, reason: not valid java name */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final defpackage.EG m7896do(boolean r11) {
            /*
                Method dump skipped, instructions count: 221
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: defpackage.ExecutorC3574qb.Cdo.m7896do(boolean):EG");
        }

        /* renamed from: else, reason: not valid java name */
        public final void m7897else(Object obj) {
            this.nextParkedWorker = obj;
        }

        /* renamed from: for, reason: not valid java name */
        public final Object m7898for() {
            return this.nextParkedWorker;
        }

        /* renamed from: goto, reason: not valid java name */
        public final boolean m7899goto(int i) {
            int i2 = this.f15136for;
            boolean z = i2 == 1;
            if (z) {
                ExecutorC3574qb.f15122if.addAndGet(ExecutorC3574qb.this, 4398046511104L);
            }
            if (i2 != i) {
                this.f15136for = i;
            }
            return z;
        }

        /* renamed from: if, reason: not valid java name */
        public final int m7900if() {
            return this.indexInArray;
        }

        /* renamed from: new, reason: not valid java name */
        public final int m7901new(int i) {
            int i2 = this.f15138new;
            int i3 = i2 ^ (i2 << 13);
            int i4 = i3 ^ (i3 >> 17);
            int i5 = i4 ^ (i4 << 5);
            this.f15138new = i5;
            int i6 = i - 1;
            return (i6 & i) == 0 ? i5 & i6 : (i5 & Api.BaseClientBuilder.API_PRIORITY_OTHER) % i;
        }

        /* JADX WARN: Code restructure failed: missing block: B:100:0x003a, code lost:
        
            r8 = r20.f15134do;
         */
        /* JADX WARN: Code restructure failed: missing block: B:101:0x003c, code lost:
        
            if (r2 != 0) goto L20;
         */
        /* JADX WARN: Code restructure failed: missing block: B:103:0x0043, code lost:
        
            if (m7899goto(2) == false) goto L29;
         */
        /* JADX WARN: Code restructure failed: missing block: B:105:0x0049, code lost:
        
            if (r8.m7890case() == false) goto L25;
         */
        /* JADX WARN: Code restructure failed: missing block: B:107:0x0056, code lost:
        
            if (r8.m7894new(defpackage.ExecutorC3574qb.f15122if.get(r8)) == false) goto L28;
         */
        /* JADX WARN: Code restructure failed: missing block: B:108:0x0059, code lost:
        
            r8.m7890case();
         */
        /* JADX WARN: Code restructure failed: missing block: B:109:0x005c, code lost:
        
            r8.getClass();
         */
        /* JADX WARN: Code restructure failed: missing block: B:111:0x005f, code lost:
        
            r3.run();
         */
        /* JADX WARN: Code restructure failed: missing block: B:112:0x0070, code lost:
        
            if (r2 == 0) goto L124;
         */
        /* JADX WARN: Code restructure failed: missing block: B:114:0x0073, code lost:
        
            defpackage.ExecutorC3574qb.f15122if.addAndGet(r8, -2097152);
         */
        /* JADX WARN: Code restructure failed: missing block: B:115:0x007a, code lost:
        
            if (r20.f15136for != 5) goto L120;
         */
        /* JADX WARN: Code restructure failed: missing block: B:117:0x007c, code lost:
        
            r20.f15136for = 4;
         */
        /* JADX WARN: Code restructure failed: missing block: B:122:0x0063, code lost:
        
            r0 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:75:0x0004, code lost:
        
            continue;
         */
        /* JADX WARN: Code restructure failed: missing block: B:76:0x0004, code lost:
        
            continue;
         */
        /* JADX WARN: Code restructure failed: missing block: B:97:0x0029, code lost:
        
            r20.f15137if = 0;
            r2 = r3.f765do.mo495do();
            r20.f15131do = 0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:98:0x0036, code lost:
        
            if (r20.f15136for != 3) goto L17;
         */
        /* JADX WARN: Code restructure failed: missing block: B:99:0x0038, code lost:
        
            r20.f15136for = 2;
         */
        @Override // java.lang.Thread, java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void run() {
            /*
                Method dump skipped, instructions count: 415
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: defpackage.ExecutorC3574qb.Cdo.run():void");
        }

        /* JADX WARN: Code restructure failed: missing block: B:57:0x0094, code lost:
        
            r5 = -1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:59:0x0090, code lost:
        
            r7 = -2;
            r18 = r6;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r14v1, types: [EG, T, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r9v4 */
        /* JADX WARN: Type inference failed for: r9v5, types: [EG] */
        /* JADX WARN: Type inference failed for: r9v9, types: [EG] */
        /* renamed from: this, reason: not valid java name */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final defpackage.EG m7902this(int r21) {
            /*
                Method dump skipped, instructions count: 258
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: defpackage.ExecutorC3574qb.Cdo.m7902this(int):EG");
        }

        /* renamed from: try, reason: not valid java name */
        public final EG m7903try() {
            int m7901new = m7901new(2);
            ExecutorC3574qb executorC3574qb = ExecutorC3574qb.this;
            if (m7901new == 0) {
                EG m1355new = executorC3574qb.f15126do.m1355new();
                return m1355new != null ? m1355new : executorC3574qb.f15128if.m1355new();
            }
            EG m1355new2 = executorC3574qb.f15128if.m1355new();
            return m1355new2 != null ? m1355new2 : executorC3574qb.f15126do.m1355new();
        }
    }

    public ExecutorC3574qb(int i, int i2, String str, long j) {
        this.f15127for = i;
        this.f15129new = i2;
        this.f15124do = j;
        this.f15123break = str;
        if (!(i >= 1)) {
            throw new IllegalArgumentException(Creturn.m7981if("Core pool size ", i, " should be at least 1").toString());
        }
        if (!(i2 >= i)) {
            throw new IllegalArgumentException(Cif.m6918new("Max pool size ", i2, " should be greater than or equals to core pool size ", i).toString());
        }
        if (!(i2 <= 2097150)) {
            throw new IllegalArgumentException(Creturn.m7981if("Max pool size ", i2, " should not exceed maximal supported number of threads 2097150").toString());
        }
        if (!(j > 0)) {
            throw new IllegalArgumentException(("Idle worker keep alive time " + j + " must be positive").toString());
        }
        this.f15126do = new C2944il();
        this.f15128if = new C2944il();
        this.f15125do = new Lz<>((i + 1) * 2);
        this.controlState = i << 42;
        this._isTerminated = 0;
    }

    /* renamed from: case, reason: not valid java name */
    public final boolean m7890case() {
        C0174Dp c0174Dp;
        int i;
        while (true) {
            AtomicLongFieldUpdater atomicLongFieldUpdater = f15121do;
            long j = atomicLongFieldUpdater.get(this);
            Cdo m1373if = this.f15125do.m1373if((int) (2097151 & j));
            if (m1373if == null) {
                m1373if = null;
            } else {
                long j2 = (2097152 + j) & (-2097152);
                Object m7898for = m1373if.m7898for();
                while (true) {
                    c0174Dp = f15119do;
                    if (m7898for == c0174Dp) {
                        i = -1;
                        break;
                    }
                    if (m7898for == null) {
                        i = 0;
                        break;
                    }
                    Cdo cdo = (Cdo) m7898for;
                    i = cdo.m7900if();
                    if (i != 0) {
                        break;
                    }
                    m7898for = cdo.m7898for();
                }
                if (i >= 0 && atomicLongFieldUpdater.compareAndSet(this, j, j2 | i)) {
                    m1373if.m7897else(c0174Dp);
                }
            }
            if (m1373if == null) {
                return false;
            }
            if (Cdo.f15130do.compareAndSet(m1373if, -1, 0)) {
                LockSupport.unpark(m1373if);
                return true;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:42:0x008a, code lost:
    
        if (r1 == null) goto L40;
     */
    @Override // java.io.Closeable, java.lang.AutoCloseable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void close() {
        /*
            r9 = this;
            java.util.concurrent.atomic.AtomicIntegerFieldUpdater r0 = defpackage.ExecutorC3574qb.f15120do
            r1 = 0
            r2 = 1
            boolean r0 = r0.compareAndSet(r9, r1, r2)
            if (r0 != 0) goto Lc
            goto Lb2
        Lc:
            java.lang.Thread r0 = java.lang.Thread.currentThread()
            boolean r3 = r0 instanceof defpackage.ExecutorC3574qb.Cdo
            r4 = 0
            if (r3 == 0) goto L18
            qb$do r0 = (defpackage.ExecutorC3574qb.Cdo) r0
            goto L19
        L18:
            r0 = r4
        L19:
            if (r0 == 0) goto L24
            qb r3 = defpackage.ExecutorC3574qb.this
            boolean r3 = defpackage.C0173Do.m394do(r3, r9)
            if (r3 == 0) goto L24
            goto L25
        L24:
            r0 = r4
        L25:
            Lz<qb$do> r3 = r9.f15125do
            monitor-enter(r3)
            java.util.concurrent.atomic.AtomicLongFieldUpdater r5 = defpackage.ExecutorC3574qb.f15122if     // Catch: java.lang.Throwable -> Lc6
            long r5 = r5.get(r9)     // Catch: java.lang.Throwable -> Lc6
            r7 = 2097151(0x1fffff, double:1.0361303E-317)
            long r5 = r5 & r7
            int r6 = (int) r5
            monitor-exit(r3)
            if (r2 > r6) goto L7a
            r3 = 1
        L37:
            Lz<qb$do> r5 = r9.f15125do
            java.lang.Object r5 = r5.m1373if(r3)
            defpackage.C0173Do.m398if(r5)
            qb$do r5 = (defpackage.ExecutorC3574qb.Cdo) r5
            if (r5 == r0) goto L75
        L44:
            boolean r7 = r5.isAlive()
            if (r7 == 0) goto L53
            java.util.concurrent.locks.LockSupport.unpark(r5)
            r7 = 10000(0x2710, double:4.9407E-320)
            r5.join(r7)
            goto L44
        L53:
            QM r5 = r5.f15132do
            il r7 = r9.f15128if
            r5.getClass()
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r8 = defpackage.QM.f2927do
            java.lang.Object r8 = r8.getAndSet(r5, r4)
            EG r8 = (defpackage.EG) r8
            if (r8 == 0) goto L67
            r7.m1352do(r8)
        L67:
            EG r8 = r5.m1956if()
            if (r8 != 0) goto L6f
            r8 = 0
            goto L73
        L6f:
            r7.m1352do(r8)
            r8 = 1
        L73:
            if (r8 != 0) goto L67
        L75:
            if (r3 == r6) goto L7a
            int r3 = r3 + 1
            goto L37
        L7a:
            il r1 = r9.f15128if
            r1.m1354if()
            il r1 = r9.f15126do
            r1.m1354if()
        L84:
            if (r0 == 0) goto L8c
            EG r1 = r0.m7896do(r2)
            if (r1 != 0) goto Lb3
        L8c:
            il r1 = r9.f15126do
            java.lang.Object r1 = r1.m1355new()
            EG r1 = (defpackage.EG) r1
            if (r1 != 0) goto Lb3
            il r1 = r9.f15128if
            java.lang.Object r1 = r1.m1355new()
            EG r1 = (defpackage.EG) r1
            if (r1 != 0) goto Lb3
            if (r0 == 0) goto La6
            r1 = 5
            r0.m7899goto(r1)
        La6:
            java.util.concurrent.atomic.AtomicLongFieldUpdater r0 = defpackage.ExecutorC3574qb.f15121do
            r1 = 0
            r0.set(r9, r1)
            java.util.concurrent.atomic.AtomicLongFieldUpdater r0 = defpackage.ExecutorC3574qb.f15122if
            r0.set(r9, r1)
        Lb2:
            return
        Lb3:
            r1.run()     // Catch: java.lang.Throwable -> Lb7
            goto L84
        Lb7:
            r1 = move-exception
            java.lang.Thread r3 = java.lang.Thread.currentThread()     // Catch: java.lang.Throwable -> Lc4
            java.lang.Thread$UncaughtExceptionHandler r4 = r3.getUncaughtExceptionHandler()     // Catch: java.lang.Throwable -> Lc4
            r4.uncaughtException(r3, r1)     // Catch: java.lang.Throwable -> Lc4
            goto L84
        Lc4:
            r0 = move-exception
            throw r0
        Lc6:
            r0 = move-exception
            monitor-exit(r3)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ExecutorC3574qb.close():void");
    }

    /* renamed from: do, reason: not valid java name */
    public final int m7891do() {
        synchronized (this.f15125do) {
            if (f15120do.get(this) != 0) {
                return -1;
            }
            AtomicLongFieldUpdater atomicLongFieldUpdater = f15122if;
            long j = atomicLongFieldUpdater.get(this);
            int i = (int) (j & 2097151);
            int i2 = i - ((int) ((j & 4398044413952L) >> 21));
            if (i2 < 0) {
                i2 = 0;
            }
            if (i2 >= this.f15127for) {
                return 0;
            }
            if (i >= this.f15129new) {
                return 0;
            }
            int i3 = ((int) (atomicLongFieldUpdater.get(this) & 2097151)) + 1;
            if (!(i3 > 0 && this.f15125do.m1373if(i3) == null)) {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            Cdo cdo = new Cdo(i3);
            this.f15125do.m1372for(i3, cdo);
            if (!(i3 == ((int) (2097151 & atomicLongFieldUpdater.incrementAndGet(this))))) {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            int i4 = i2 + 1;
            cdo.start();
            return i4;
        }
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        m7893if(runnable, OG.f2613do, false);
    }

    /* renamed from: for, reason: not valid java name */
    public final void m7892for(Cdo cdo, int i, int i2) {
        while (true) {
            long j = f15121do.get(this);
            int i3 = (int) (2097151 & j);
            long j2 = (2097152 + j) & (-2097152);
            if (i3 == i) {
                if (i2 == 0) {
                    Object m7898for = cdo.m7898for();
                    while (true) {
                        if (m7898for == f15119do) {
                            i3 = -1;
                            break;
                        }
                        if (m7898for == null) {
                            i3 = 0;
                            break;
                        }
                        Cdo cdo2 = (Cdo) m7898for;
                        i3 = cdo2.m7900if();
                        if (i3 != 0) {
                            break;
                        } else {
                            m7898for = cdo2.m7898for();
                        }
                    }
                } else {
                    i3 = i2;
                }
            }
            if (i3 >= 0 && f15121do.compareAndSet(this, j, j2 | i3)) {
                return;
            }
        }
    }

    /* renamed from: if, reason: not valid java name */
    public final void m7893if(Runnable runnable, HG hg, boolean z) {
        EG kg;
        OG.f2614do.getClass();
        long nanoTime = System.nanoTime();
        if (runnable instanceof EG) {
            kg = (EG) runnable;
            kg.f764do = nanoTime;
            kg.f765do = hg;
        } else {
            kg = new KG(runnable, nanoTime, hg);
        }
        boolean z2 = false;
        boolean z3 = kg.f765do.mo495do() == 1;
        AtomicLongFieldUpdater atomicLongFieldUpdater = f15122if;
        long addAndGet = z3 ? atomicLongFieldUpdater.addAndGet(this, 2097152L) : 0L;
        Thread currentThread = Thread.currentThread();
        Cdo cdo = currentThread instanceof Cdo ? (Cdo) currentThread : null;
        if (cdo == null || !C0173Do.m394do(ExecutorC3574qb.this, this)) {
            cdo = null;
        }
        if (cdo != null && cdo.f15136for != 5 && (kg.f765do.mo495do() != 0 || cdo.f15136for != 2)) {
            cdo.f15135do = true;
            QM qm = cdo.f15132do;
            if (z) {
                kg = qm.m1954do(kg);
            } else {
                qm.getClass();
                EG eg = (EG) QM.f2927do.getAndSet(qm, kg);
                kg = eg == null ? null : qm.m1954do(eg);
            }
        }
        if (kg != null) {
            if (!(kg.f765do.mo495do() == 1 ? this.f15128if.m1352do(kg) : this.f15126do.m1352do(kg))) {
                throw new RejectedExecutionException(Creturn.m7984try(new StringBuilder(), this.f15123break, " was terminated"));
            }
        }
        if (z && cdo != null) {
            z2 = true;
        }
        if (z3) {
            if (z2 || m7890case() || m7894new(addAndGet)) {
                return;
            }
            m7890case();
            return;
        }
        if (z2 || m7890case() || m7894new(atomicLongFieldUpdater.get(this))) {
            return;
        }
        m7890case();
    }

    /* renamed from: new, reason: not valid java name */
    public final boolean m7894new(long j) {
        int i = ((int) (2097151 & j)) - ((int) ((j & 4398044413952L) >> 21));
        if (i < 0) {
            i = 0;
        }
        int i2 = this.f15127for;
        if (i < i2) {
            int m7891do = m7891do();
            if (m7891do == 1 && i2 > 1) {
                m7891do();
            }
            if (m7891do > 0) {
                return true;
            }
        }
        return false;
    }

    public final String toString() {
        ArrayList arrayList = new ArrayList();
        Lz<Cdo> lz = this.f15125do;
        int m1371do = lz.m1371do();
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        for (int i6 = 1; i6 < m1371do; i6++) {
            Cdo m1373if = lz.m1373if(i6);
            if (m1373if != null) {
                QM qm = m1373if.f15132do;
                qm.getClass();
                int i7 = QM.f2927do.get(qm) != null ? (QM.f2926do.get(qm) - QM.f2929if.get(qm)) + 1 : QM.f2926do.get(qm) - QM.f2929if.get(qm);
                int m8819catch = C4122zt.m8819catch(m1373if.f15136for);
                if (m8819catch == 0) {
                    i++;
                    StringBuilder sb = new StringBuilder();
                    sb.append(i7);
                    sb.append('c');
                    arrayList.add(sb.toString());
                } else if (m8819catch == 1) {
                    i2++;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(i7);
                    sb2.append('b');
                    arrayList.add(sb2.toString());
                } else if (m8819catch == 2) {
                    i3++;
                } else if (m8819catch == 3) {
                    i4++;
                    if (i7 > 0) {
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append(i7);
                        sb3.append('d');
                        arrayList.add(sb3.toString());
                    }
                } else if (m8819catch == 4) {
                    i5++;
                }
            }
        }
        long j = f15122if.get(this);
        StringBuilder sb4 = new StringBuilder();
        sb4.append(this.f15123break);
        sb4.append('@');
        sb4.append(C0820cd.m4914try(this));
        sb4.append("[Pool Size {core = ");
        int i8 = this.f15127for;
        sb4.append(i8);
        sb4.append(", max = ");
        sb4.append(this.f15129new);
        sb4.append("}, Worker States {CPU = ");
        sb4.append(i);
        sb4.append(", blocking = ");
        sb4.append(i2);
        sb4.append(", parked = ");
        sb4.append(i3);
        sb4.append(", dormant = ");
        sb4.append(i4);
        sb4.append(", terminated = ");
        sb4.append(i5);
        sb4.append("}, running workers queues = ");
        sb4.append(arrayList);
        sb4.append(", global CPU queue size = ");
        sb4.append(this.f15126do.m1353for());
        sb4.append(", global blocking queue size = ");
        sb4.append(this.f15128if.m1353for());
        sb4.append(", Control State {created workers= ");
        sb4.append((int) (2097151 & j));
        sb4.append(", blocking tasks = ");
        sb4.append((int) ((4398044413952L & j) >> 21));
        sb4.append(", CPUs acquired = ");
        sb4.append(i8 - ((int) ((j & 9223367638808264704L) >> 42)));
        sb4.append("}]");
        return sb4.toString();
    }
}
