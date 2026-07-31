package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.util.AtomicThrowable;
import io.reactivex.rxjava3.internal.util.ExceptionHelper;
import io.reactivex.rxjava3.operators.QueueDisposable;
import io.reactivex.rxjava3.operators.SimpleQueue;
import io.reactivex.rxjava3.operators.SpscLinkedArrayQueue;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.math.MathKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ObservableSwitchMap$SwitchMapInnerObserver extends AtomicReference implements Observer {
    private static final long serialVersionUID = 3837284832786408377L;
    final int bufferSize;
    volatile boolean done;
    final long index;
    final ObservableSwitchMap$SwitchMapObserver parent;
    volatile SimpleQueue queue;

    public ObservableSwitchMap$SwitchMapInnerObserver(ObservableSwitchMap$SwitchMapObserver observableSwitchMap$SwitchMapObserver, long j, int i) {
        this.parent = observableSwitchMap$SwitchMapObserver;
        this.index = j;
        this.bufferSize = i;
    }

    @Override // io.reactivex.rxjava3.core.Observer
    public final void onComplete() {
        if (this.index == this.parent.unique) {
            this.done = true;
            this.parent.drain();
        }
    }

    @Override // io.reactivex.rxjava3.core.Observer
    public final void onError(Throwable th) {
        ObservableSwitchMap$SwitchMapObserver observableSwitchMap$SwitchMapObserver = this.parent;
        observableSwitchMap$SwitchMapObserver.getClass();
        if (this.index == observableSwitchMap$SwitchMapObserver.unique) {
            AtomicThrowable atomicThrowable = observableSwitchMap$SwitchMapObserver.errors;
            atomicThrowable.getClass();
            if (ExceptionHelper.addThrowable(atomicThrowable, th)) {
                if (!observableSwitchMap$SwitchMapObserver.delayErrors) {
                    observableSwitchMap$SwitchMapObserver.upstream.dispose();
                    observableSwitchMap$SwitchMapObserver.done = true;
                }
                this.done = true;
                observableSwitchMap$SwitchMapObserver.drain();
                return;
            }
        }
        MathKt.onError(th);
    }

    @Override // io.reactivex.rxjava3.core.Observer
    public final void onNext(Object obj) {
        SimpleQueue simpleQueue = this.queue;
        if (this.index != this.parent.unique || simpleQueue == null) {
            return;
        }
        if (obj != null) {
            simpleQueue.offer(obj);
        }
        this.parent.drain();
    }

    @Override // io.reactivex.rxjava3.core.Observer
    public final void onSubscribe(Disposable disposable) {
        if (DisposableHelper.setOnce(this, disposable)) {
            if (disposable instanceof QueueDisposable) {
                QueueDisposable queueDisposable = (QueueDisposable) disposable;
                int requestFusion = queueDisposable.requestFusion(7);
                if (requestFusion == 1) {
                    this.queue = queueDisposable;
                    this.done = true;
                    this.parent.drain();
                    return;
                } else if (requestFusion == 2) {
                    this.queue = queueDisposable;
                    return;
                }
            }
            this.queue = new SpscLinkedArrayQueue(this.bufferSize);
        }
    }
}
