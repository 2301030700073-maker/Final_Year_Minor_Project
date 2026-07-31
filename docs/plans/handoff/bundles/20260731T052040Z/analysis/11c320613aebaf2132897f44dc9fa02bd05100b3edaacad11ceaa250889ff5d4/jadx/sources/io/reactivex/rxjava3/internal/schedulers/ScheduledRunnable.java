package io.reactivex.rxjava3.internal.schedulers;

import androidx.compose.ui.Modifier;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.disposables.DisposableContainer;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicReferenceArray;
import kotlin.math.MathKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ScheduledRunnable extends AtomicReferenceArray implements Runnable, Callable, Disposable {
    private static final long serialVersionUID = -6120223772001106981L;
    final Runnable actual;
    final boolean interruptOnCancel;
    public static final Object PARENT_DISPOSED = new Object();
    public static final Object SYNC_DISPOSED = new Object();
    public static final Object ASYNC_DISPOSED = new Object();
    public static final Object DONE = new Object();

    public ScheduledRunnable(Runnable runnable, DisposableContainer disposableContainer, boolean z) {
        super(3);
        this.actual = runnable;
        this.interruptOnCancel = z;
        lazySet(0, disposableContainer);
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        run();
        return null;
    }

    @Override // io.reactivex.rxjava3.disposables.Disposable
    public final void dispose() {
        Object obj;
        Object obj2;
        Object obj3;
        Object obj4;
        Object obj5;
        while (true) {
            Object obj6 = get(1);
            obj = DONE;
            if (obj6 == obj || obj6 == (obj4 = SYNC_DISPOSED) || obj6 == (obj5 = ASYNC_DISPOSED)) {
                break;
            }
            boolean z = get(2) != Thread.currentThread();
            if (z) {
                obj4 = obj5;
            }
            if (compareAndSet(1, obj6, obj4)) {
                if (obj6 != null) {
                    ((Future) obj6).cancel(z && this.interruptOnCancel);
                }
            }
        }
        do {
            obj2 = get(0);
            if (obj2 == obj || obj2 == (obj3 = PARENT_DISPOSED) || obj2 == null) {
                return;
            }
        } while (!compareAndSet(0, obj2, obj3));
        ((DisposableContainer) obj2).delete(this);
    }

    @Override // io.reactivex.rxjava3.disposables.Disposable
    public final boolean isDisposed() {
        Object obj = get(0);
        return obj == PARENT_DISPOSED || obj == DONE;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        Object obj2;
        Object obj3 = ASYNC_DISPOSED;
        Object obj4 = SYNC_DISPOSED;
        Object obj5 = PARENT_DISPOSED;
        Object obj6 = DONE;
        lazySet(2, Thread.currentThread());
        try {
            this.actual.run();
            Object obj7 = get(0);
            if (obj7 != obj5 && compareAndSet(0, obj7, obj6) && obj7 != null) {
                ((DisposableContainer) obj7).delete(this);
            }
            do {
                obj2 = get(1);
                if (obj2 == obj4 || obj2 == obj3) {
                    break;
                }
            } while (!compareAndSet(1, obj2, obj6));
            lazySet(2, null);
        } catch (Throwable th) {
            try {
                MathKt.onError(th);
                throw th;
            } catch (Throwable th2) {
                Object obj8 = get(0);
                if (obj8 != obj5 && compareAndSet(0, obj8, obj6) && obj8 != null) {
                    ((DisposableContainer) obj8).delete(this);
                }
                do {
                    obj = get(1);
                    if (obj == obj4 || obj == obj3) {
                        break;
                    }
                } while (!compareAndSet(1, obj, obj6));
                lazySet(2, null);
                throw th2;
            }
        }
    }

    public final void setFuture(Future future) {
        Object obj;
        do {
            obj = get(1);
            if (obj == DONE) {
                return;
            }
            if (obj == SYNC_DISPOSED) {
                future.cancel(false);
                return;
            } else if (obj == ASYNC_DISPOSED) {
                future.cancel(this.interruptOnCancel);
                return;
            }
        } while (!compareAndSet(1, obj, future));
    }

    @Override // java.util.concurrent.atomic.AtomicReferenceArray
    public final String toString() {
        String m;
        Object obj = get(1);
        if (obj == DONE) {
            m = "Finished";
        } else if (obj == SYNC_DISPOSED) {
            m = "Disposed(Sync)";
        } else if (obj == ASYNC_DISPOSED) {
            m = "Disposed(Async)";
        } else {
            Object obj2 = get(2);
            m = obj2 == null ? "Waiting" : Modifier.CC.m(obj2, "Running on ");
        }
        return Modifier.CC.m("ScheduledRunnable[", m, "]");
    }
}
