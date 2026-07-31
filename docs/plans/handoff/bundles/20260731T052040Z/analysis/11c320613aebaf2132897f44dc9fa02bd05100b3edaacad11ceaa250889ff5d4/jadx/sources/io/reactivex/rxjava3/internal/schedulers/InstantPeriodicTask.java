package io.reactivex.rxjava3.internal.schedulers;

import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.functions.Functions;
import io.reactivex.rxjava3.internal.operators.observable.ObservableInterval;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class InstantPeriodicTask implements Callable, Disposable {
    public static final FutureTask CANCELLED = new FutureTask(Functions.EMPTY_RUNNABLE, null);
    public final ExecutorService executor;
    public final AtomicReference first = new AtomicReference();
    public final AtomicReference rest = new AtomicReference();
    public Thread runner;
    public final ObservableInterval.IntervalObserver task;

    public InstantPeriodicTask(ObservableInterval.IntervalObserver intervalObserver, ScheduledExecutorService scheduledExecutorService) {
        this.task = intervalObserver;
        this.executor = scheduledExecutorService;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0026, code lost:
    
        if (r5.runner == java.lang.Thread.currentThread()) goto L9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0028, code lost:
    
        r2 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x002b, code lost:
    
        r1.cancel(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x002e, code lost:
    
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x002a, code lost:
    
        r2 = false;
     */
    @Override // java.util.concurrent.Callable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object call() {
        /*
            r5 = this;
            java.lang.Thread r0 = java.lang.Thread.currentThread()
            r5.runner = r0
            r0 = 0
            io.reactivex.rxjava3.internal.operators.observable.ObservableInterval$IntervalObserver r1 = r5.task     // Catch: java.lang.Throwable -> L3d
            r1.run()     // Catch: java.lang.Throwable -> L3d
            r5.runner = r0     // Catch: java.lang.Throwable -> L3d
            java.util.concurrent.ExecutorService r1 = r5.executor     // Catch: java.lang.Throwable -> L3d
            java.util.concurrent.Future r1 = r1.submit(r5)     // Catch: java.lang.Throwable -> L3d
            java.util.concurrent.atomic.AtomicReference r2 = r5.rest     // Catch: java.lang.Throwable -> L3d
        L16:
            java.lang.Object r3 = r2.get()     // Catch: java.lang.Throwable -> L3d
            java.util.concurrent.Future r3 = (java.util.concurrent.Future) r3     // Catch: java.lang.Throwable -> L3d
            java.util.concurrent.FutureTask r4 = io.reactivex.rxjava3.internal.schedulers.InstantPeriodicTask.CANCELLED     // Catch: java.lang.Throwable -> L3d
            if (r3 != r4) goto L2f
            java.lang.Thread r2 = r5.runner     // Catch: java.lang.Throwable -> L3d
            java.lang.Thread r3 = java.lang.Thread.currentThread()     // Catch: java.lang.Throwable -> L3d
            if (r2 == r3) goto L2a
            r2 = 1
            goto L2b
        L2a:
            r2 = 0
        L2b:
            r1.cancel(r2)     // Catch: java.lang.Throwable -> L3d
            return r0
        L2f:
            boolean r4 = r2.compareAndSet(r3, r1)     // Catch: java.lang.Throwable -> L3d
            if (r4 == 0) goto L36
            return r0
        L36:
            java.lang.Object r4 = r2.get()     // Catch: java.lang.Throwable -> L3d
            if (r4 == r3) goto L2f
            goto L16
        L3d:
            r1 = move-exception
            r5.runner = r0
            kotlin.math.MathKt.onError(r1)
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: io.reactivex.rxjava3.internal.schedulers.InstantPeriodicTask.call():java.lang.Object");
    }

    @Override // io.reactivex.rxjava3.disposables.Disposable
    public final void dispose() {
        AtomicReference atomicReference = this.first;
        FutureTask futureTask = CANCELLED;
        Future future = (Future) atomicReference.getAndSet(futureTask);
        if (future != null && future != futureTask) {
            future.cancel(this.runner != Thread.currentThread());
        }
        Future future2 = (Future) this.rest.getAndSet(futureTask);
        if (future2 == null || future2 == futureTask) {
            return;
        }
        future2.cancel(this.runner != Thread.currentThread());
    }

    @Override // io.reactivex.rxjava3.disposables.Disposable
    public final boolean isDisposed() {
        return this.first.get() == CANCELLED;
    }

    public final void setFirst(Future future) {
        while (true) {
            AtomicReference atomicReference = this.first;
            Future future2 = (Future) atomicReference.get();
            if (future2 == CANCELLED) {
                future.cancel(this.runner != Thread.currentThread());
                return;
            }
            while (!atomicReference.compareAndSet(future2, future)) {
                if (atomicReference.get() != future2) {
                    break;
                }
            }
            return;
        }
    }
}
