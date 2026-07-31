package io.reactivex.rxjava3.internal.observers;

import io.reactivex.rxjava3.core.Observer;
import kotlin.math.MathKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class DeferredScalarDisposable extends BasicIntQueueDisposable {
    private static final long serialVersionUID = -5502432239815349361L;
    protected final Observer downstream;
    protected Object value;

    public DeferredScalarDisposable(Observer observer) {
        this.downstream = observer;
    }

    @Override // io.reactivex.rxjava3.operators.SimpleQueue
    public final void clear() {
        lazySet(32);
        this.value = null;
    }

    public final void complete(Object obj) {
        int i = get();
        if ((i & 54) != 0) {
            return;
        }
        Observer observer = this.downstream;
        if (i == 8) {
            this.value = obj;
            lazySet(16);
            observer.onNext(null);
        } else {
            lazySet(2);
            observer.onNext(obj);
        }
        if (get() != 4) {
            observer.onComplete();
        }
    }

    @Override // io.reactivex.rxjava3.disposables.Disposable
    public void dispose() {
        set(4);
        this.value = null;
    }

    @Override // io.reactivex.rxjava3.disposables.Disposable
    public final boolean isDisposed() {
        return get() == 4;
    }

    @Override // io.reactivex.rxjava3.operators.SimpleQueue
    public final boolean isEmpty() {
        return get() != 16;
    }

    public void onError(Throwable th) {
        if ((get() & 54) != 0) {
            MathKt.onError(th);
        } else {
            lazySet(2);
            this.downstream.onError(th);
        }
    }

    public void onSuccess(Object obj) {
        complete(obj);
    }

    @Override // io.reactivex.rxjava3.operators.SimpleQueue
    public final Object poll() {
        if (get() != 16) {
            return null;
        }
        Object obj = this.value;
        this.value = null;
        lazySet(32);
        return obj;
    }

    @Override // io.reactivex.rxjava3.operators.QueueFuseable
    public final int requestFusion(int i) {
        lazySet(8);
        return 2;
    }
}
