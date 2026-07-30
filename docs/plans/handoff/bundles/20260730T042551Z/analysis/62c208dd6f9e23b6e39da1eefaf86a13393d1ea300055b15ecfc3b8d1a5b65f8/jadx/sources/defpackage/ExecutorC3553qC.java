package defpackage;

import com.google.android.gms.common.internal.Preconditions;
import java.util.ArrayDeque;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.logging.Logger;

/* renamed from: qC, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class ExecutorC3553qC implements Executor {

    /* renamed from: do, reason: not valid java name */
    public static final Logger f15047do = Logger.getLogger(ExecutorC3553qC.class.getName());

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Executor f15050do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ArrayDeque f15049do = new ArrayDeque();

    /* renamed from: for, reason: not valid java name */
    public int f15052for = 1;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public long f15048do = 0;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cif f15051do = new Cif();

    /* renamed from: qC$do, reason: invalid class name */
    public class Cdo implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Runnable f15053do;

        public Cdo(Runnable runnable) {
            this.f15053do = runnable;
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.f15053do.run();
        }

        public final String toString() {
            return this.f15053do.toString();
        }
    }

    /* renamed from: qC$if, reason: invalid class name */
    public final class Cif implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public Runnable f15054do;

        public Cif() {
        }

        /* JADX WARN: Code restructure failed: missing block: B:11:0x0048, code lost:
        
            r1 = r1 | java.lang.Thread.interrupted();
         */
        /* JADX WARN: Code restructure failed: missing block: B:13:0x004a, code lost:
        
            r10.f15054do.run();
         */
        /* JADX WARN: Code restructure failed: missing block: B:17:0x0050, code lost:
        
            r0 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:18:0x0070, code lost:
        
            r10.f15054do = null;
         */
        /* JADX WARN: Code restructure failed: missing block: B:19:0x0072, code lost:
        
            throw r0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:21:0x0052, code lost:
        
            r3 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:22:0x0053, code lost:
        
            defpackage.ExecutorC3553qC.f15047do.log(java.util.logging.Level.SEVERE, "Exception while executing runnable " + r10.f15054do, (java.lang.Throwable) r3);
         */
        /* JADX WARN: Code restructure failed: missing block: B:29:0x0042, code lost:
        
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:30:?, code lost:
        
            return;
         */
        /* renamed from: do, reason: not valid java name */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void m7857do() {
            /*
                r10 = this;
                r0 = 0
                r1 = 0
            L2:
                qC r2 = defpackage.ExecutorC3553qC.this     // Catch: java.lang.Throwable -> L76
                java.util.ArrayDeque r2 = r2.f15049do     // Catch: java.lang.Throwable -> L76
                monitor-enter(r2)     // Catch: java.lang.Throwable -> L76
                r3 = 1
                if (r0 != 0) goto L26
                qC r0 = defpackage.ExecutorC3553qC.this     // Catch: java.lang.Throwable -> L73
                int r4 = r0.f15052for     // Catch: java.lang.Throwable -> L73
                r5 = 4
                if (r4 != r5) goto L1c
                monitor-exit(r2)     // Catch: java.lang.Throwable -> L73
                if (r1 == 0) goto L1b
                java.lang.Thread r0 = java.lang.Thread.currentThread()
                r0.interrupt()
            L1b:
                return
            L1c:
                long r6 = r0.f15048do     // Catch: java.lang.Throwable -> L73
                r8 = 1
                long r6 = r6 + r8
                r0.f15048do = r6     // Catch: java.lang.Throwable -> L73
                r0.f15052for = r5     // Catch: java.lang.Throwable -> L73
                r0 = 1
            L26:
                qC r4 = defpackage.ExecutorC3553qC.this     // Catch: java.lang.Throwable -> L73
                java.util.ArrayDeque r4 = r4.f15049do     // Catch: java.lang.Throwable -> L73
                java.lang.Object r4 = r4.poll()     // Catch: java.lang.Throwable -> L73
                java.lang.Runnable r4 = (java.lang.Runnable) r4     // Catch: java.lang.Throwable -> L73
                r10.f15054do = r4     // Catch: java.lang.Throwable -> L73
                if (r4 != 0) goto L43
                qC r0 = defpackage.ExecutorC3553qC.this     // Catch: java.lang.Throwable -> L73
                r0.f15052for = r3     // Catch: java.lang.Throwable -> L73
                monitor-exit(r2)     // Catch: java.lang.Throwable -> L73
                if (r1 == 0) goto L42
                java.lang.Thread r0 = java.lang.Thread.currentThread()
                r0.interrupt()
            L42:
                return
            L43:
                monitor-exit(r2)     // Catch: java.lang.Throwable -> L73
                boolean r2 = java.lang.Thread.interrupted()     // Catch: java.lang.Throwable -> L76
                r1 = r1 | r2
                r2 = 0
                java.lang.Runnable r3 = r10.f15054do     // Catch: java.lang.Throwable -> L50 java.lang.RuntimeException -> L52
                r3.run()     // Catch: java.lang.Throwable -> L50 java.lang.RuntimeException -> L52
                goto L6d
            L50:
                r0 = move-exception
                goto L70
            L52:
                r3 = move-exception
                java.util.logging.Logger r4 = defpackage.ExecutorC3553qC.f15047do     // Catch: java.lang.Throwable -> L50
                java.util.logging.Level r5 = java.util.logging.Level.SEVERE     // Catch: java.lang.Throwable -> L50
                java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L50
                r6.<init>()     // Catch: java.lang.Throwable -> L50
                java.lang.String r7 = "Exception while executing runnable "
                r6.append(r7)     // Catch: java.lang.Throwable -> L50
                java.lang.Runnable r7 = r10.f15054do     // Catch: java.lang.Throwable -> L50
                r6.append(r7)     // Catch: java.lang.Throwable -> L50
                java.lang.String r6 = r6.toString()     // Catch: java.lang.Throwable -> L50
                r4.log(r5, r6, r3)     // Catch: java.lang.Throwable -> L50
            L6d:
                r10.f15054do = r2     // Catch: java.lang.Throwable -> L76
                goto L2
            L70:
                r10.f15054do = r2     // Catch: java.lang.Throwable -> L76
                throw r0     // Catch: java.lang.Throwable -> L76
            L73:
                r0 = move-exception
                monitor-exit(r2)     // Catch: java.lang.Throwable -> L73
                throw r0     // Catch: java.lang.Throwable -> L76
            L76:
                r0 = move-exception
                if (r1 == 0) goto L80
                java.lang.Thread r1 = java.lang.Thread.currentThread()
                r1.interrupt()
            L80:
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: defpackage.ExecutorC3553qC.Cif.m7857do():void");
        }

        @Override // java.lang.Runnable
        public final void run() {
            try {
                m7857do();
            } catch (Error e) {
                synchronized (ExecutorC3553qC.this.f15049do) {
                    ExecutorC3553qC.this.f15052for = 1;
                    throw e;
                }
            }
        }

        public final String toString() {
            Runnable runnable = this.f15054do;
            if (runnable != null) {
                return "SequentialExecutorWorker{running=" + runnable + "}";
            }
            return "SequentialExecutorWorker{state=" + defpackage.Cif.m6910class(ExecutorC3553qC.this.f15052for) + "}";
        }
    }

    public ExecutorC3553qC(Executor executor) {
        this.f15050do = (Executor) Preconditions.checkNotNull(executor);
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        Preconditions.checkNotNull(runnable);
        synchronized (this.f15049do) {
            int i = this.f15052for;
            if (i != 4 && i != 3) {
                long j = this.f15048do;
                Cdo cdo = new Cdo(runnable);
                this.f15049do.add(cdo);
                this.f15052for = 2;
                try {
                    this.f15050do.execute(this.f15051do);
                    if (this.f15052for != 2) {
                        return;
                    }
                    synchronized (this.f15049do) {
                        if (this.f15048do == j && this.f15052for == 2) {
                            this.f15052for = 3;
                        }
                    }
                    return;
                } catch (Error | RuntimeException e) {
                    synchronized (this.f15049do) {
                        int i2 = this.f15052for;
                        if ((i2 == 1 || i2 == 2) && this.f15049do.removeLastOccurrence(cdo)) {
                            r0 = true;
                        }
                        if (!(e instanceof RejectedExecutionException) || r0) {
                            throw e;
                        }
                    }
                    return;
                }
            }
            this.f15049do.add(runnable);
        }
    }

    public final String toString() {
        return "SequentialExecutor@" + System.identityHashCode(this) + "{" + this.f15050do + "}";
    }
}
