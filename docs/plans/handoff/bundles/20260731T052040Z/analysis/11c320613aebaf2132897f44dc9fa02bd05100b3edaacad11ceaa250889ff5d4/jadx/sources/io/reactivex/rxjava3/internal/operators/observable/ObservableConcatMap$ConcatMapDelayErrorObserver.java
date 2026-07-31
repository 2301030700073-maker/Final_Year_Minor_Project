package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Supplier;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.functions.Functions;
import io.reactivex.rxjava3.internal.util.AtomicThrowable;
import io.reactivex.rxjava3.operators.QueueDisposable;
import io.reactivex.rxjava3.operators.SimpleQueue;
import io.reactivex.rxjava3.operators.SpscLinkedArrayQueue;
import j$.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import net.newpipe.app.AppKt;
import okio.Path;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ObservableConcatMap$ConcatMapDelayErrorObserver extends AtomicInteger implements Observer, Disposable {
    private static final long serialVersionUID = -6951100001833242599L;
    volatile boolean active;
    final int bufferSize;
    volatile boolean cancelled;
    volatile boolean done;
    final Observer downstream;
    final AtomicThrowable errors;
    final Function mapper;
    final DelayErrorInnerObserver observer;
    SimpleQueue queue;
    int sourceMode;
    final boolean tillTheEnd;
    Disposable upstream;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class DelayErrorInnerObserver extends AtomicReference implements Observer {
        private static final long serialVersionUID = 2620149119579502636L;
        final Observer downstream;
        final ObservableConcatMap$ConcatMapDelayErrorObserver parent;

        public DelayErrorInnerObserver(Observer observer, ObservableConcatMap$ConcatMapDelayErrorObserver observableConcatMap$ConcatMapDelayErrorObserver) {
            this.downstream = observer;
            this.parent = observableConcatMap$ConcatMapDelayErrorObserver;
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onComplete() {
            ObservableConcatMap$ConcatMapDelayErrorObserver observableConcatMap$ConcatMapDelayErrorObserver = this.parent;
            observableConcatMap$ConcatMapDelayErrorObserver.active = false;
            observableConcatMap$ConcatMapDelayErrorObserver.drain();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onError(Throwable th) {
            ObservableConcatMap$ConcatMapDelayErrorObserver observableConcatMap$ConcatMapDelayErrorObserver = this.parent;
            if (observableConcatMap$ConcatMapDelayErrorObserver.errors.tryAddThrowableOrReport(th)) {
                if (!observableConcatMap$ConcatMapDelayErrorObserver.tillTheEnd) {
                    observableConcatMap$ConcatMapDelayErrorObserver.upstream.dispose();
                }
                observableConcatMap$ConcatMapDelayErrorObserver.active = false;
                observableConcatMap$ConcatMapDelayErrorObserver.drain();
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onNext(Object obj) {
            this.downstream.onNext(obj);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onSubscribe(Disposable disposable) {
            DisposableHelper.replace(this, disposable);
        }
    }

    public ObservableConcatMap$ConcatMapDelayErrorObserver(Observer observer, int i) {
        Path.Companion companion = Functions.IDENTITY;
        this.downstream = observer;
        this.mapper = companion;
        this.bufferSize = i;
        this.tillTheEnd = false;
        this.errors = new AtomicThrowable();
        this.observer = new DelayErrorInnerObserver(observer, this);
    }

    @Override // io.reactivex.rxjava3.disposables.Disposable
    public final void dispose() {
        this.cancelled = true;
        this.upstream.dispose();
        DelayErrorInnerObserver delayErrorInnerObserver = this.observer;
        delayErrorInnerObserver.getClass();
        DisposableHelper.dispose(delayErrorInnerObserver);
        this.errors.tryTerminateAndReport();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void drain() {
        if (getAndIncrement() != 0) {
            return;
        }
        Observer observer = this.downstream;
        SimpleQueue simpleQueue = this.queue;
        AtomicThrowable atomicThrowable = this.errors;
        while (true) {
            if (!this.active) {
                if (this.cancelled) {
                    simpleQueue.clear();
                    return;
                }
                if (!this.tillTheEnd && ((Throwable) atomicThrowable.get()) != null) {
                    simpleQueue.clear();
                    this.cancelled = true;
                    atomicThrowable.tryTerminateConsumer(observer);
                    return;
                }
                boolean z = this.done;
                try {
                    Object poll = simpleQueue.poll();
                    boolean z2 = poll == null;
                    if (z && z2) {
                        this.cancelled = true;
                        atomicThrowable.tryTerminateConsumer(observer);
                        return;
                    }
                    if (!z2) {
                        try {
                            Object apply = this.mapper.apply(poll);
                            Objects.requireNonNull(apply, "The mapper returned a null ObservableSource");
                            Observable observable = (Observable) apply;
                            if (observable instanceof Supplier) {
                                try {
                                    Object obj = ((Supplier) observable).get();
                                    if (obj != null && !this.cancelled) {
                                        observer.onNext(obj);
                                    }
                                } catch (Throwable th) {
                                    AppKt.throwIfFatal(th);
                                    atomicThrowable.tryAddThrowableOrReport(th);
                                }
                            } else {
                                this.active = true;
                                observable.subscribe(this.observer);
                            }
                        } catch (Throwable th2) {
                            AppKt.throwIfFatal(th2);
                            this.cancelled = true;
                            this.upstream.dispose();
                            simpleQueue.clear();
                            atomicThrowable.tryAddThrowableOrReport(th2);
                            atomicThrowable.tryTerminateConsumer(observer);
                            return;
                        }
                    }
                } catch (Throwable th3) {
                    AppKt.throwIfFatal(th3);
                    this.cancelled = true;
                    this.upstream.dispose();
                    atomicThrowable.tryAddThrowableOrReport(th3);
                    atomicThrowable.tryTerminateConsumer(observer);
                    return;
                }
            }
            if (decrementAndGet() == 0) {
                return;
            }
        }
    }

    @Override // io.reactivex.rxjava3.disposables.Disposable
    public final boolean isDisposed() {
        return this.cancelled;
    }

    @Override // io.reactivex.rxjava3.core.Observer
    public final void onComplete() {
        this.done = true;
        drain();
    }

    @Override // io.reactivex.rxjava3.core.Observer
    public final void onError(Throwable th) {
        if (this.errors.tryAddThrowableOrReport(th)) {
            this.done = true;
            drain();
        }
    }

    @Override // io.reactivex.rxjava3.core.Observer
    public final void onNext(Object obj) {
        if (this.sourceMode == 0) {
            this.queue.offer(obj);
        }
        drain();
    }

    @Override // io.reactivex.rxjava3.core.Observer
    public final void onSubscribe(Disposable disposable) {
        if (DisposableHelper.validate(this.upstream, disposable)) {
            this.upstream = disposable;
            if (disposable instanceof QueueDisposable) {
                QueueDisposable queueDisposable = (QueueDisposable) disposable;
                int requestFusion = queueDisposable.requestFusion(3);
                if (requestFusion == 1) {
                    this.sourceMode = requestFusion;
                    this.queue = queueDisposable;
                    this.done = true;
                    this.downstream.onSubscribe(this);
                    drain();
                    return;
                }
                if (requestFusion == 2) {
                    this.sourceMode = requestFusion;
                    this.queue = queueDisposable;
                    this.downstream.onSubscribe(this);
                    return;
                }
            }
            this.queue = new SpscLinkedArrayQueue(this.bufferSize);
            this.downstream.onSubscribe(this);
        }
    }
}
