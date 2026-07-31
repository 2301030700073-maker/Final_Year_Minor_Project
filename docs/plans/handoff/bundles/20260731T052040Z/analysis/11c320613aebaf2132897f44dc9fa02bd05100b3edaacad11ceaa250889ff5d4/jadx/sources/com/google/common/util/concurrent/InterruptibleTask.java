package com.google.common.util.concurrent;

import androidx.constraintlayout.core.SolverVariable$Type$EnumUnboxingSharedUtility;
import com.google.common.util.concurrent.TrustedListenableFutureTask;
import io.reactivex.rxjava3.internal.functions.Functions;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.AbstractOwnableSynchronizer;
import java.util.concurrent.locks.LockSupport;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class InterruptibleTask extends AtomicReference implements Runnable {
    public static final Functions.EmptyRunnable DONE;
    public static final Functions.EmptyRunnable PARKED;

    static {
        int i = 2;
        DONE = new Functions.EmptyRunnable(i);
        PARKED = new Functions.EmptyRunnable(i);
    }

    @Override // java.lang.Runnable
    public final void run() {
        Thread currentThread = Thread.currentThread();
        Object obj = null;
        if (compareAndSet(null, currentThread)) {
            TrustedListenableFutureTask.TrustedFutureInterruptibleTask trustedFutureInterruptibleTask = (TrustedListenableFutureTask.TrustedFutureInterruptibleTask) this;
            boolean isDone = TrustedListenableFutureTask.this.isDone();
            Functions.EmptyRunnable emptyRunnable = DONE;
            if (!isDone) {
                try {
                    obj = runInterruptibly();
                } catch (Throwable th) {
                    try {
                        if (th instanceof InterruptedException) {
                            Thread.currentThread().interrupt();
                        }
                        if (!compareAndSet(currentThread, emptyRunnable)) {
                            waitForInterrupt(currentThread);
                        }
                        if (isDone) {
                            return;
                        }
                        TrustedListenableFutureTask.this.setException(th);
                        return;
                    } finally {
                        if (!compareAndSet(currentThread, emptyRunnable)) {
                            waitForInterrupt(currentThread);
                        }
                        if (!isDone) {
                            TrustedListenableFutureTask.this.set(null);
                        }
                    }
                }
            }
        }
    }

    public abstract Object runInterruptibly();

    public abstract String toPendingString();

    @Override // java.util.concurrent.atomic.AtomicReference
    public final String toString() {
        String str;
        Runnable runnable = (Runnable) get();
        if (runnable == DONE) {
            str = "running=[DONE]";
        } else if (runnable instanceof Blocker) {
            str = "running=[INTERRUPTED]";
        } else if (runnable instanceof Thread) {
            str = "running=[RUNNING ON " + ((Thread) runnable).getName() + "]";
        } else {
            str = "running=[NOT STARTED YET]";
        }
        StringBuilder m = SolverVariable$Type$EnumUnboxingSharedUtility.m(str, ", ");
        m.append(toPendingString());
        return m.toString();
    }

    public final void waitForInterrupt(Thread thread) {
        Runnable runnable = (Runnable) get();
        Blocker blocker = null;
        boolean z = false;
        int i = 0;
        while (true) {
            boolean z2 = runnable instanceof Blocker;
            Functions.EmptyRunnable emptyRunnable = PARKED;
            if (!z2 && runnable != emptyRunnable) {
                break;
            }
            if (z2) {
                blocker = (Blocker) runnable;
            }
            i++;
            if (i <= 1000) {
                Thread.yield();
            } else if (runnable == emptyRunnable || compareAndSet(runnable, emptyRunnable)) {
                z = Thread.interrupted() || z;
                LockSupport.park(blocker);
            }
            runnable = (Runnable) get();
        }
        if (z) {
            thread.interrupt();
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Blocker extends AbstractOwnableSynchronizer implements Runnable {
        private final InterruptibleTask task;

        public Blocker(TrustedListenableFutureTask.TrustedFutureInterruptibleTask trustedFutureInterruptibleTask) {
            this.task = trustedFutureInterruptibleTask;
        }

        public final String toString() {
            return this.task.toString();
        }

        @Override // java.lang.Runnable
        public final void run() {
        }
    }
}
