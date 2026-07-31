package com.google.common.util.concurrent;

import com.google.common.util.concurrent.FluentFuture;
import com.google.common.util.concurrent.InterruptibleTask;
import io.reactivex.rxjava3.internal.functions.Functions;
import java.util.concurrent.Callable;
import java.util.concurrent.RunnableFuture;
import java.util.concurrent.locks.LockSupport;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class TrustedListenableFutureTask extends FluentFuture.TrustedFuture implements RunnableFuture {
    public volatile TrustedFutureInterruptibleTask task;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class TrustedFutureInterruptibleTask extends InterruptibleTask {
        private final Callable<Object> callable;

        public TrustedFutureInterruptibleTask(Callable callable) {
            callable.getClass();
            this.callable = callable;
        }

        @Override // com.google.common.util.concurrent.InterruptibleTask
        public final Object runInterruptibly() {
            return this.callable.call();
        }

        @Override // com.google.common.util.concurrent.InterruptibleTask
        public final String toPendingString() {
            return this.callable.toString();
        }
    }

    public TrustedListenableFutureTask(Callable callable) {
        this.task = new TrustedFutureInterruptibleTask(callable);
    }

    @Override // com.google.common.util.concurrent.AbstractFuture
    public final void afterDone() {
        TrustedFutureInterruptibleTask trustedFutureInterruptibleTask;
        if (wasInterrupted() && (trustedFutureInterruptibleTask = this.task) != null) {
            Functions.EmptyRunnable emptyRunnable = InterruptibleTask.PARKED;
            Functions.EmptyRunnable emptyRunnable2 = InterruptibleTask.DONE;
            Runnable runnable = (Runnable) trustedFutureInterruptibleTask.get();
            if (runnable instanceof Thread) {
                InterruptibleTask.Blocker blocker = new InterruptibleTask.Blocker(trustedFutureInterruptibleTask);
                blocker.setExclusiveOwnerThread(Thread.currentThread());
                if (trustedFutureInterruptibleTask.compareAndSet(runnable, blocker)) {
                    try {
                        ((Thread) runnable).interrupt();
                    } finally {
                        if (((Runnable) trustedFutureInterruptibleTask.getAndSet(emptyRunnable2)) == emptyRunnable) {
                            LockSupport.unpark((Thread) runnable);
                        }
                    }
                }
            }
        }
        this.task = null;
    }

    @Override // com.google.common.util.concurrent.AbstractFuture
    public final String pendingToString() {
        TrustedFutureInterruptibleTask trustedFutureInterruptibleTask = this.task;
        if (trustedFutureInterruptibleTask == null) {
            return super.pendingToString();
        }
        return "task=[" + trustedFutureInterruptibleTask + "]";
    }

    @Override // java.util.concurrent.RunnableFuture, java.lang.Runnable
    public final void run() {
        TrustedFutureInterruptibleTask trustedFutureInterruptibleTask = this.task;
        if (trustedFutureInterruptibleTask != null) {
            trustedFutureInterruptibleTask.run();
        }
        this.task = null;
    }
}
