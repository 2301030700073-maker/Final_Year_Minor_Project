package defpackage;

import java.util.ArrayDeque;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;

/* renamed from: rC, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class ExecutorC3611rC implements Executor {

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public volatile Runnable f15227do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Executor f15229do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ArrayDeque<Cdo> f15228do = new ArrayDeque<>();

    /* renamed from: do, reason: not valid java name */
    public final Object f15226do = new Object();

    /* renamed from: rC$do, reason: invalid class name */
    public static class Cdo implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public final Runnable f15230do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final ExecutorC3611rC f15231do;

        public Cdo(ExecutorC3611rC executorC3611rC, Runnable runnable) {
            this.f15231do = executorC3611rC;
            this.f15230do = runnable;
        }

        @Override // java.lang.Runnable
        public final void run() {
            ExecutorC3611rC executorC3611rC = this.f15231do;
            try {
                this.f15230do.run();
            } finally {
                executorC3611rC.m7941if();
            }
        }
    }

    public ExecutorC3611rC(ExecutorService executorService) {
        this.f15229do = executorService;
    }

    /* renamed from: do, reason: not valid java name */
    public final boolean m7940do() {
        boolean z;
        synchronized (this.f15226do) {
            z = !this.f15228do.isEmpty();
        }
        return z;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        synchronized (this.f15226do) {
            this.f15228do.add(new Cdo(this, runnable));
            if (this.f15227do == null) {
                m7941if();
            }
        }
    }

    /* renamed from: if, reason: not valid java name */
    public final void m7941if() {
        synchronized (this.f15226do) {
            Cdo poll = this.f15228do.poll();
            this.f15227do = poll;
            if (poll != null) {
                this.f15229do.execute(this.f15227do);
            }
        }
    }
}
