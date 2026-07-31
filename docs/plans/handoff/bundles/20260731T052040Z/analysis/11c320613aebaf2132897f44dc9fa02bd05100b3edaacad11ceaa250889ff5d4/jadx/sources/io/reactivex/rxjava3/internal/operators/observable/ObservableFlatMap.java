package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.functions.Functions;
import io.reactivex.rxjava3.internal.util.AtomicThrowable;
import io.reactivex.rxjava3.operators.QueueDisposable;
import io.reactivex.rxjava3.operators.SimplePlainQueue;
import io.reactivex.rxjava3.operators.SimpleQueue;
import io.reactivex.rxjava3.operators.SpscLinkedArrayQueue;
import j$.util.Objects;
import java.util.ArrayDeque;
import java.util.Queue;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.math.MathKt;
import net.newpipe.app.AppKt;
import okio.Okio;
import okio.Path;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ObservableFlatMap extends AbstractObservableWithUpstream {
    public final /* synthetic */ int $r8$classId;
    public final int bufferSize;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class InnerObserver extends AtomicReference implements Observer {
        private static final long serialVersionUID = -4606175640614850599L;
        volatile boolean done;
        int fusionMode;
        final long id;
        final MergeObserver parent;
        volatile SimpleQueue queue;

        public InnerObserver(MergeObserver mergeObserver, long j) {
            this.id = j;
            this.parent = mergeObserver;
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onComplete() {
            this.done = true;
            this.parent.drain();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onError(Throwable th) {
            if (this.parent.errors.tryAddThrowableOrReport(th)) {
                MergeObserver mergeObserver = this.parent;
                if (!mergeObserver.delayErrors) {
                    mergeObserver.disposeAll();
                }
                this.done = true;
                this.parent.drain();
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onNext(Object obj) {
            int i = this.fusionMode;
            MergeObserver mergeObserver = this.parent;
            if (i != 0) {
                mergeObserver.drain();
                return;
            }
            if (mergeObserver.get() == 0 && mergeObserver.compareAndSet(0, 1)) {
                mergeObserver.downstream.onNext(obj);
                if (mergeObserver.decrementAndGet() == 0) {
                    return;
                }
            } else {
                SimpleQueue simpleQueue = this.queue;
                if (simpleQueue == null) {
                    simpleQueue = new SpscLinkedArrayQueue(mergeObserver.bufferSize);
                    this.queue = simpleQueue;
                }
                simpleQueue.offer(obj);
                if (mergeObserver.getAndIncrement() != 0) {
                    return;
                }
            }
            mergeObserver.drainLoop();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onSubscribe(Disposable disposable) {
            if (DisposableHelper.setOnce(this, disposable) && (disposable instanceof QueueDisposable)) {
                QueueDisposable queueDisposable = (QueueDisposable) disposable;
                int requestFusion = queueDisposable.requestFusion(7);
                if (requestFusion == 1) {
                    this.fusionMode = requestFusion;
                    this.queue = queueDisposable;
                    this.done = true;
                    this.parent.drain();
                    return;
                }
                if (requestFusion == 2) {
                    this.fusionMode = requestFusion;
                    this.queue = queueDisposable;
                }
            }
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class MergeObserver extends AtomicInteger implements Disposable, Observer {
        private static final long serialVersionUID = -2117620485640801370L;
        final int bufferSize;
        final boolean delayErrors;
        volatile boolean disposed;
        volatile boolean done;
        final Observer downstream;
        final AtomicThrowable errors;
        int lastIndex;
        final Function mapper;
        final int maxConcurrency;
        final AtomicReference<InnerObserver[]> observers;
        volatile SimplePlainQueue queue;
        Queue<Observable> sources;
        long uniqueId;
        Disposable upstream;
        int wip;
        public static final InnerObserver[] EMPTY = new InnerObserver[0];
        public static final InnerObserver[] CANCELLED = new InnerObserver[0];

        public MergeObserver(Observer observer, int i) {
            Path.Companion companion = Functions.IDENTITY;
            this.errors = new AtomicThrowable();
            this.downstream = observer;
            this.mapper = companion;
            this.delayErrors = false;
            this.maxConcurrency = 2;
            this.bufferSize = i;
            this.sources = new ArrayDeque(2);
            this.observers = new AtomicReference<>(EMPTY);
        }

        public final boolean checkTerminate() {
            if (this.disposed) {
                return true;
            }
            Throwable th = (Throwable) this.errors.get();
            if (this.delayErrors || th == null) {
                return false;
            }
            disposeAll();
            this.errors.tryTerminateConsumer(this.downstream);
            return true;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final void dispose() {
            this.disposed = true;
            if (disposeAll()) {
                this.errors.tryTerminateAndReport();
            }
        }

        public final boolean disposeAll() {
            this.upstream.dispose();
            AtomicReference<InnerObserver[]> atomicReference = this.observers;
            InnerObserver[] innerObserverArr = CANCELLED;
            InnerObserver[] andSet = atomicReference.getAndSet(innerObserverArr);
            if (andSet == innerObserverArr) {
                return false;
            }
            for (InnerObserver innerObserver : andSet) {
                innerObserver.getClass();
                DisposableHelper.dispose(innerObserver);
            }
            return true;
        }

        public final void drain() {
            if (getAndIncrement() == 0) {
                drainLoop();
            }
        }

        public final void drainLoop() {
            int i;
            int i2;
            Observer observer = this.downstream;
            int i3 = 1;
            while (!checkTerminate()) {
                SimplePlainQueue simplePlainQueue = this.queue;
                int i4 = 0;
                if (simplePlainQueue != null) {
                    while (!checkTerminate()) {
                        Object poll = simplePlainQueue.poll();
                        if (poll != null) {
                            observer.onNext(poll);
                            i4++;
                        }
                    }
                    return;
                }
                if (i4 == 0) {
                    boolean z = this.done;
                    SimplePlainQueue simplePlainQueue2 = this.queue;
                    InnerObserver[] innerObserverArr = this.observers.get();
                    int length = innerObserverArr.length;
                    if (this.maxConcurrency != Integer.MAX_VALUE) {
                        synchronized (this) {
                            i = this.sources.size();
                        }
                    } else {
                        i = 0;
                    }
                    if (z && ((simplePlainQueue2 == null || simplePlainQueue2.isEmpty()) && length == 0 && i == 0)) {
                        this.errors.tryTerminateConsumer(this.downstream);
                        return;
                    }
                    if (length != 0) {
                        int min = Math.min(length - 1, this.lastIndex);
                        for (0; i2 < length; i2 + 1) {
                            if (checkTerminate()) {
                                return;
                            }
                            InnerObserver innerObserver = innerObserverArr[min];
                            SimpleQueue simpleQueue = innerObserver.queue;
                            if (simpleQueue != null) {
                                do {
                                    try {
                                        Object poll2 = simpleQueue.poll();
                                        if (poll2 != null) {
                                            observer.onNext(poll2);
                                        }
                                    } catch (Throwable th) {
                                        AppKt.throwIfFatal(th);
                                        DisposableHelper.dispose(innerObserver);
                                        this.errors.tryAddThrowableOrReport(th);
                                        if (checkTerminate()) {
                                            return;
                                        }
                                        removeInner(innerObserver);
                                        i4++;
                                        min++;
                                        if (min != length) {
                                        }
                                    }
                                } while (!checkTerminate());
                                return;
                            }
                            boolean z2 = innerObserver.done;
                            SimpleQueue simpleQueue2 = innerObserver.queue;
                            if (z2 && (simpleQueue2 == null || simpleQueue2.isEmpty())) {
                                removeInner(innerObserver);
                                i4++;
                            }
                            min++;
                            i2 = min != length ? i2 + 1 : 0;
                            min = 0;
                        }
                        this.lastIndex = min;
                    }
                    if (i4 == 0) {
                        i3 = addAndGet(-i3);
                        if (i3 == 0) {
                            return;
                        }
                    } else if (this.maxConcurrency != Integer.MAX_VALUE) {
                        subscribeMore(i4);
                    }
                } else if (this.maxConcurrency != Integer.MAX_VALUE) {
                    subscribeMore(i4);
                }
            }
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final boolean isDisposed() {
            return this.disposed;
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onComplete() {
            if (this.done) {
                return;
            }
            this.done = true;
            drain();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onError(Throwable th) {
            if (this.done) {
                MathKt.onError(th);
            } else if (this.errors.tryAddThrowableOrReport(th)) {
                this.done = true;
                drain();
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onNext(Object obj) {
            if (this.done) {
                return;
            }
            try {
                Object apply = this.mapper.apply(obj);
                Objects.requireNonNull(apply, "The mapper returned a null ObservableSource");
                Observable observable = (Observable) apply;
                if (this.maxConcurrency != Integer.MAX_VALUE) {
                    synchronized (this) {
                        try {
                            int i = this.wip;
                            if (i == this.maxConcurrency) {
                                this.sources.offer(observable);
                                return;
                            }
                            this.wip = i + 1;
                        } finally {
                        }
                    }
                }
                subscribeInner(observable);
            } catch (Throwable th) {
                AppKt.throwIfFatal(th);
                this.upstream.dispose();
                onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.upstream, disposable)) {
                this.upstream = disposable;
                this.downstream.onSubscribe(this);
            }
        }

        public final void removeInner(InnerObserver innerObserver) {
            InnerObserver[] innerObserverArr;
            while (true) {
                InnerObserver[] innerObserverArr2 = this.observers.get();
                int length = innerObserverArr2.length;
                int i = 0;
                while (true) {
                    if (i >= length) {
                        i = -1;
                        break;
                    } else if (innerObserverArr2[i] == innerObserver) {
                        break;
                    } else {
                        i++;
                    }
                }
                if (i < 0) {
                    return;
                }
                if (length == 1) {
                    innerObserverArr = EMPTY;
                } else {
                    InnerObserver[] innerObserverArr3 = new InnerObserver[length - 1];
                    System.arraycopy(innerObserverArr2, 0, innerObserverArr3, 0, i);
                    System.arraycopy(innerObserverArr2, i + 1, innerObserverArr3, i, (length - i) - 1);
                    innerObserverArr = innerObserverArr3;
                }
                AtomicReference<InnerObserver[]> atomicReference = this.observers;
                while (!atomicReference.compareAndSet(innerObserverArr2, innerObserverArr)) {
                    if (atomicReference.get() != innerObserverArr2) {
                        break;
                    }
                }
                return;
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:12:0x0027, code lost:
        
            if (decrementAndGet() == 0) goto L28;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void subscribeInner(io.reactivex.rxjava3.core.Observable r7) {
            /*
                r6 = this;
            L0:
                boolean r0 = r7 instanceof io.reactivex.rxjava3.functions.Supplier
                r1 = 0
                if (r0 == 0) goto L7e
                io.reactivex.rxjava3.functions.Supplier r7 = (io.reactivex.rxjava3.functions.Supplier) r7
                r0 = 2147483647(0x7fffffff, float:NaN)
                r2 = 1
                java.lang.Object r7 = r7.get()     // Catch: java.lang.Throwable -> L51
                if (r7 != 0) goto L12
                goto L5d
            L12:
                int r3 = r6.get()
                if (r3 != 0) goto L2a
                boolean r3 = r6.compareAndSet(r1, r2)
                if (r3 == 0) goto L2a
                io.reactivex.rxjava3.core.Observer r3 = r6.downstream
                r3.onNext(r7)
                int r7 = r6.decrementAndGet()
                if (r7 != 0) goto L4d
                goto L5d
            L2a:
                io.reactivex.rxjava3.operators.SimplePlainQueue r3 = r6.queue
                if (r3 != 0) goto L43
                int r3 = r6.maxConcurrency
                if (r3 != r0) goto L3a
                io.reactivex.rxjava3.operators.SpscLinkedArrayQueue r3 = new io.reactivex.rxjava3.operators.SpscLinkedArrayQueue
                int r4 = r6.bufferSize
                r3.<init>(r4)
                goto L41
            L3a:
                io.reactivex.rxjava3.operators.SpscArrayQueue r3 = new io.reactivex.rxjava3.operators.SpscArrayQueue
                int r4 = r6.maxConcurrency
                r3.<init>(r4)
            L41:
                r6.queue = r3
            L43:
                r3.offer(r7)
                int r7 = r6.getAndIncrement()
                if (r7 == 0) goto L4d
                goto Laf
            L4d:
                r6.drainLoop()
                goto L5d
            L51:
                r7 = move-exception
                net.newpipe.app.AppKt.throwIfFatal(r7)
                io.reactivex.rxjava3.internal.util.AtomicThrowable r3 = r6.errors
                r3.tryAddThrowableOrReport(r7)
                r6.drain()
            L5d:
                int r7 = r6.maxConcurrency
                if (r7 == r0) goto Laf
                monitor-enter(r6)
                java.util.Queue<io.reactivex.rxjava3.core.Observable> r7 = r6.sources     // Catch: java.lang.Throwable -> L73
                java.lang.Object r7 = r7.poll()     // Catch: java.lang.Throwable -> L73
                io.reactivex.rxjava3.core.Observable r7 = (io.reactivex.rxjava3.core.Observable) r7     // Catch: java.lang.Throwable -> L73
                if (r7 != 0) goto L75
                int r0 = r6.wip     // Catch: java.lang.Throwable -> L73
                int r0 = r0 - r2
                r6.wip = r0     // Catch: java.lang.Throwable -> L73
                r1 = r2
                goto L75
            L73:
                r7 = move-exception
                goto L7c
            L75:
                monitor-exit(r6)     // Catch: java.lang.Throwable -> L73
                if (r1 == 0) goto L0
                r6.drain()
                goto Laf
            L7c:
                monitor-exit(r6)     // Catch: java.lang.Throwable -> L73
                throw r7
            L7e:
                io.reactivex.rxjava3.internal.operators.observable.ObservableFlatMap$InnerObserver r0 = new io.reactivex.rxjava3.internal.operators.observable.ObservableFlatMap$InnerObserver
                long r2 = r6.uniqueId
                r4 = 1
                long r4 = r4 + r2
                r6.uniqueId = r4
                r0.<init>(r6, r2)
            L8a:
                java.util.concurrent.atomic.AtomicReference<io.reactivex.rxjava3.internal.operators.observable.ObservableFlatMap$InnerObserver[]> r2 = r6.observers
                java.lang.Object r2 = r2.get()
                io.reactivex.rxjava3.internal.operators.observable.ObservableFlatMap$InnerObserver[] r2 = (io.reactivex.rxjava3.internal.operators.observable.ObservableFlatMap.InnerObserver[]) r2
                io.reactivex.rxjava3.internal.operators.observable.ObservableFlatMap$InnerObserver[] r3 = io.reactivex.rxjava3.internal.operators.observable.ObservableFlatMap.MergeObserver.CANCELLED
                if (r2 != r3) goto L9a
                io.reactivex.rxjava3.internal.disposables.DisposableHelper.dispose(r0)
                goto Laf
            L9a:
                int r3 = r2.length
                int r4 = r3 + 1
                io.reactivex.rxjava3.internal.operators.observable.ObservableFlatMap$InnerObserver[] r4 = new io.reactivex.rxjava3.internal.operators.observable.ObservableFlatMap.InnerObserver[r4]
                java.lang.System.arraycopy(r2, r1, r4, r1, r3)
                r4[r3] = r0
                java.util.concurrent.atomic.AtomicReference<io.reactivex.rxjava3.internal.operators.observable.ObservableFlatMap$InnerObserver[]> r3 = r6.observers
            La6:
                boolean r5 = r3.compareAndSet(r2, r4)
                if (r5 == 0) goto Lb0
                r7.subscribe(r0)
            Laf:
                return
            Lb0:
                java.lang.Object r5 = r3.get()
                if (r5 == r2) goto La6
                goto L8a
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.rxjava3.internal.operators.observable.ObservableFlatMap.MergeObserver.subscribeInner(io.reactivex.rxjava3.core.Observable):void");
        }

        public final void subscribeMore(int i) {
            while (true) {
                int i2 = i - 1;
                if (i == 0) {
                    return;
                }
                synchronized (this) {
                    try {
                        Observable poll = this.sources.poll();
                        if (poll == null) {
                            this.wip--;
                        } else {
                            subscribeInner(poll);
                        }
                    } finally {
                    }
                }
                i = i2;
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ObservableFlatMap(Observable observable, int i, int i2) {
        super(observable);
        this.$r8$classId = i2;
        switch (i2) {
            case 1:
                super(observable);
                this.bufferSize = Math.max(8, i);
                break;
            default:
                this.bufferSize = i;
                break;
        }
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public final void subscribeActual(Observer observer) {
        int i = this.$r8$classId;
        int i2 = this.bufferSize;
        Observable observable = this.source;
        switch (i) {
            case 0:
                if (!Okio.tryScalarXMapSubscribe(observable, observer, Functions.IDENTITY)) {
                    observable.subscribe(new MergeObserver(observer, i2));
                    break;
                }
                break;
            default:
                if (!Okio.tryScalarXMapSubscribe(observable, observer, Functions.IDENTITY)) {
                    observable.subscribe(new ObservableConcatMap$ConcatMapDelayErrorObserver(observer, i2));
                    break;
                }
                break;
        }
    }
}
