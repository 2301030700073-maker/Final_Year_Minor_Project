package io.reactivex.rxjava3.internal.schedulers;

import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.functions.Functions;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class AbstractDirectTask extends AtomicReference implements Disposable {
    public static final FutureTask DISPOSED;
    public static final FutureTask FINISHED;
    private static final long serialVersionUID = 1811839108042568751L;
    protected final boolean interruptOnCancel = true;
    protected final Runnable runnable;
    protected Thread runner;

    static {
        Functions.EmptyRunnable emptyRunnable = Functions.EMPTY_RUNNABLE;
        FINISHED = new FutureTask(emptyRunnable, null);
        DISPOSED = new FutureTask(emptyRunnable, null);
    }

    public AbstractDirectTask(Runnable runnable) {
        this.runnable = runnable;
    }

    @Override // io.reactivex.rxjava3.disposables.Disposable
    public final void dispose() {
        FutureTask futureTask;
        Future future = (Future) get();
        if (future == FINISHED || future == (futureTask = DISPOSED) || !compareAndSet(future, futureTask) || future == null) {
            return;
        }
        if (this.runner == Thread.currentThread()) {
            future.cancel(false);
        } else {
            future.cancel(this.interruptOnCancel);
        }
    }

    @Override // io.reactivex.rxjava3.disposables.Disposable
    public final boolean isDisposed() {
        Future future = (Future) get();
        return future == FINISHED || future == DISPOSED;
    }

    public final void setFuture(Future future) {
        Future future2;
        do {
            future2 = (Future) get();
            if (future2 == FINISHED) {
                return;
            }
            if (future2 == DISPOSED) {
                if (this.runner == Thread.currentThread()) {
                    future.cancel(false);
                    return;
                } else {
                    future.cancel(this.interruptOnCancel);
                    return;
                }
            }
        } while (!compareAndSet(future2, future));
    }

    @Override // java.util.concurrent.atomic.AtomicReference
    public final String toString() {
        String str;
        Future future = (Future) get();
        if (future == FINISHED) {
            str = "Finished";
        } else if (future == DISPOSED) {
            str = "Disposed";
        } else if (this.runner != null) {
            str = "Running on " + this.runner;
        } else {
            str = "Waiting";
        }
        return getClass().getSimpleName() + "[" + str + "]";
    }
}
