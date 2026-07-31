package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.observers.SerializedObserver;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.math.MathKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ObservableDebounceTimed extends AbstractObservableWithUpstream {
    public final Scheduler scheduler;
    public final long timeout;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class DebounceEmitter extends AtomicReference implements Runnable, Disposable {
        private static final long serialVersionUID = 6812032969491025141L;
        final long idx;
        final AtomicBoolean once = new AtomicBoolean();
        final DebounceTimedObserver parent;
        final Object value;

        public DebounceEmitter(Object obj, long j, DebounceTimedObserver debounceTimedObserver) {
            this.value = obj;
            this.idx = j;
            this.parent = debounceTimedObserver;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final boolean isDisposed() {
            return get() == DisposableHelper.DISPOSED;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (this.once.compareAndSet(false, true)) {
                DebounceTimedObserver debounceTimedObserver = this.parent;
                long j = this.idx;
                Object obj = this.value;
                if (j == debounceTimedObserver.index) {
                    debounceTimedObserver.downstream.onNext(obj);
                    DisposableHelper.dispose(this);
                }
            }
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class DebounceTimedObserver implements Observer, Disposable {
        public boolean done;
        public final SerializedObserver downstream;
        public volatile long index;
        public final long timeout;
        public DebounceEmitter timer;
        public Disposable upstream;
        public final Scheduler.Worker worker;

        public DebounceTimedObserver(SerializedObserver serializedObserver, long j, Scheduler.Worker worker) {
            this.downstream = serializedObserver;
            this.timeout = j;
            this.worker = worker;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final void dispose() {
            this.upstream.dispose();
            this.worker.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final boolean isDisposed() {
            return this.worker.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onComplete() {
            if (this.done) {
                return;
            }
            this.done = true;
            DebounceEmitter debounceEmitter = this.timer;
            if (debounceEmitter != null) {
                DisposableHelper.dispose(debounceEmitter);
            }
            if (debounceEmitter != null) {
                debounceEmitter.run();
            }
            this.downstream.onComplete();
            this.worker.dispose();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onError(Throwable th) {
            if (this.done) {
                MathKt.onError(th);
                return;
            }
            DebounceEmitter debounceEmitter = this.timer;
            if (debounceEmitter != null) {
                DisposableHelper.dispose(debounceEmitter);
            }
            this.done = true;
            this.downstream.onError(th);
            this.worker.dispose();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onNext(Object obj) {
            if (this.done) {
                return;
            }
            long j = this.index + 1;
            this.index = j;
            DebounceEmitter debounceEmitter = this.timer;
            if (debounceEmitter != null) {
                DisposableHelper.dispose(debounceEmitter);
            }
            DebounceEmitter debounceEmitter2 = new DebounceEmitter(obj, j, this);
            this.timer = debounceEmitter2;
            DisposableHelper.replace(debounceEmitter2, this.worker.schedule(debounceEmitter2, this.timeout, TimeUnit.MILLISECONDS));
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.upstream, disposable)) {
                this.upstream = disposable;
                this.downstream.onSubscribe(this);
            }
        }
    }

    public ObservableDebounceTimed(Observable observable, long j, Scheduler scheduler) {
        super(observable);
        this.timeout = j;
        this.scheduler = scheduler;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public final void subscribeActual(Observer observer) {
        this.source.subscribe(new DebounceTimedObserver(new SerializedObserver(observer), this.timeout, this.scheduler.createWorker()));
    }
}
