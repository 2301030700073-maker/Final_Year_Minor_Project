package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.core.FlowableSubscriber;
import io.reactivex.rxjava3.core.Single;
import io.reactivex.rxjava3.core.SingleObserver;
import io.reactivex.rxjava3.core.SingleSource;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.internal.util.AtomicThrowable;
import io.reactivex.rxjava3.operators.SpscLinkedArrayQueue;
import j$.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import net.newpipe.app.AppKt;
import okio.Options;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
import org.schabi.newpipe.local.playlist.LocalPlaylistFragment$$ExternalSyntheticLambda24;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class FlowableFlatMapSingle$FlatMapSingleSubscriber extends AtomicInteger implements FlowableSubscriber, Subscription {
    private static final long serialVersionUID = 8600231336733376951L;
    volatile boolean cancelled;
    final Subscriber downstream;
    final Function mapper;
    final int maxConcurrency;
    Subscription upstream;
    final boolean delayErrors = false;
    final AtomicLong requested = new AtomicLong();
    final CompositeDisposable set = new CompositeDisposable();
    final AtomicThrowable errors = new AtomicThrowable();
    final AtomicInteger active = new AtomicInteger(1);
    final AtomicReference<SpscLinkedArrayQueue> queue = new AtomicReference<>();

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class InnerObserver extends AtomicReference implements SingleObserver, Disposable {
        private static final long serialVersionUID = -502562646270949838L;

        public InnerObserver() {
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final boolean isDisposed() {
            return DisposableHelper.isDisposed((Disposable) get());
        }

        @Override // io.reactivex.rxjava3.core.SingleObserver
        public final void onError(Throwable th) {
            FlowableFlatMapSingle$FlatMapSingleSubscriber flowableFlatMapSingle$FlatMapSingleSubscriber = FlowableFlatMapSingle$FlatMapSingleSubscriber.this;
            flowableFlatMapSingle$FlatMapSingleSubscriber.set.delete(this);
            if (flowableFlatMapSingle$FlatMapSingleSubscriber.errors.tryAddThrowableOrReport(th)) {
                if (!flowableFlatMapSingle$FlatMapSingleSubscriber.delayErrors) {
                    flowableFlatMapSingle$FlatMapSingleSubscriber.upstream.cancel();
                    flowableFlatMapSingle$FlatMapSingleSubscriber.set.dispose();
                } else if (flowableFlatMapSingle$FlatMapSingleSubscriber.maxConcurrency != Integer.MAX_VALUE) {
                    flowableFlatMapSingle$FlatMapSingleSubscriber.upstream.request(1L);
                }
                flowableFlatMapSingle$FlatMapSingleSubscriber.active.decrementAndGet();
                flowableFlatMapSingle$FlatMapSingleSubscriber.drain();
            }
        }

        @Override // io.reactivex.rxjava3.core.SingleObserver
        public final void onSubscribe(Disposable disposable) {
            DisposableHelper.setOnce(this, disposable);
        }

        @Override // io.reactivex.rxjava3.core.SingleObserver
        public final void onSuccess(Object obj) {
            FlowableFlatMapSingle$FlatMapSingleSubscriber flowableFlatMapSingle$FlatMapSingleSubscriber = FlowableFlatMapSingle$FlatMapSingleSubscriber.this;
            flowableFlatMapSingle$FlatMapSingleSubscriber.set.delete(this);
            if (flowableFlatMapSingle$FlatMapSingleSubscriber.get() == 0) {
                if (flowableFlatMapSingle$FlatMapSingleSubscriber.compareAndSet(0, 1)) {
                    boolean z = flowableFlatMapSingle$FlatMapSingleSubscriber.active.decrementAndGet() == 0;
                    if (flowableFlatMapSingle$FlatMapSingleSubscriber.requested.get() != 0) {
                        flowableFlatMapSingle$FlatMapSingleSubscriber.downstream.onNext(obj);
                        SpscLinkedArrayQueue spscLinkedArrayQueue = flowableFlatMapSingle$FlatMapSingleSubscriber.queue.get();
                        if (z && (spscLinkedArrayQueue == null || spscLinkedArrayQueue.isEmpty())) {
                            flowableFlatMapSingle$FlatMapSingleSubscriber.errors.tryTerminateConsumer(flowableFlatMapSingle$FlatMapSingleSubscriber.downstream);
                            return;
                        } else {
                            Options.Companion.produced(flowableFlatMapSingle$FlatMapSingleSubscriber.requested, 1L);
                            if (flowableFlatMapSingle$FlatMapSingleSubscriber.maxConcurrency != Integer.MAX_VALUE) {
                                flowableFlatMapSingle$FlatMapSingleSubscriber.upstream.request(1L);
                            }
                        }
                    } else {
                        SpscLinkedArrayQueue orCreateQueue = flowableFlatMapSingle$FlatMapSingleSubscriber.getOrCreateQueue();
                        synchronized (orCreateQueue) {
                            orCreateQueue.offer(obj);
                        }
                    }
                    if (flowableFlatMapSingle$FlatMapSingleSubscriber.decrementAndGet() == 0) {
                        return;
                    }
                    flowableFlatMapSingle$FlatMapSingleSubscriber.drainLoop();
                }
            }
            SpscLinkedArrayQueue orCreateQueue2 = flowableFlatMapSingle$FlatMapSingleSubscriber.getOrCreateQueue();
            synchronized (orCreateQueue2) {
                orCreateQueue2.offer(obj);
            }
            flowableFlatMapSingle$FlatMapSingleSubscriber.active.decrementAndGet();
            if (flowableFlatMapSingle$FlatMapSingleSubscriber.getAndIncrement() != 0) {
                return;
            }
            flowableFlatMapSingle$FlatMapSingleSubscriber.drainLoop();
        }
    }

    public FlowableFlatMapSingle$FlatMapSingleSubscriber(Subscriber subscriber, LocalPlaylistFragment$$ExternalSyntheticLambda24 localPlaylistFragment$$ExternalSyntheticLambda24, int i) {
        this.downstream = subscriber;
        this.mapper = localPlaylistFragment$$ExternalSyntheticLambda24;
        this.maxConcurrency = i;
    }

    @Override // org.reactivestreams.Subscription
    public final void cancel() {
        this.cancelled = true;
        this.upstream.cancel();
        this.set.dispose();
        this.errors.tryTerminateAndReport();
    }

    public final void clear() {
        SpscLinkedArrayQueue spscLinkedArrayQueue = this.queue.get();
        if (spscLinkedArrayQueue != null) {
            spscLinkedArrayQueue.clear();
        }
    }

    public final void drain() {
        if (getAndIncrement() == 0) {
            drainLoop();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x006b, code lost:
    
        if (r10 != r6) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x006f, code lost:
    
        if (r17.cancelled == false) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0077, code lost:
    
        if (r17.delayErrors != false) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0081, code lost:
    
        if (((java.lang.Throwable) r17.errors.get()) == null) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0083, code lost:
    
        clear();
        r17.errors.tryTerminateConsumer(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x008b, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0090, code lost:
    
        if (r2.get() != 0) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0092, code lost:
    
        r6 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0095, code lost:
    
        r7 = r3.get();
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x009b, code lost:
    
        if (r7 == null) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00a1, code lost:
    
        if (r7.isEmpty() == false) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00a4, code lost:
    
        if (r6 == false) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00a6, code lost:
    
        if (r13 == false) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00a8, code lost:
    
        r17.errors.tryTerminateConsumer(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00ad, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00a3, code lost:
    
        r13 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0094, code lost:
    
        r6 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0071, code lost:
    
        clear();
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0074, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x00b0, code lost:
    
        if (r10 == 0) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x00b2, code lost:
    
        okio.Options.Companion.produced(r17.requested, r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x00bc, code lost:
    
        if (r17.maxConcurrency == Integer.MAX_VALUE) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x00be, code lost:
    
        r17.upstream.request(r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x00c3, code lost:
    
        r5 = addAndGet(-r5);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void drainLoop() {
        /*
            r17 = this;
            r0 = r17
            org.reactivestreams.Subscriber r1 = r0.downstream
            java.util.concurrent.atomic.AtomicInteger r2 = r0.active
            java.util.concurrent.atomic.AtomicReference<io.reactivex.rxjava3.operators.SpscLinkedArrayQueue> r3 = r0.queue
            r4 = 1
            r5 = r4
        La:
            java.util.concurrent.atomic.AtomicLong r6 = r0.requested
            long r6 = r6.get()
            r8 = 0
            r10 = r8
        L13:
            int r12 = (r10 > r6 ? 1 : (r10 == r6 ? 0 : -1))
            r13 = 0
            if (r12 == 0) goto L6b
            boolean r14 = r0.cancelled
            if (r14 == 0) goto L20
            r0.clear()
            return
        L20:
            boolean r14 = r0.delayErrors
            if (r14 != 0) goto L39
            io.reactivex.rxjava3.internal.util.AtomicThrowable r14 = r0.errors
            java.lang.Object r14 = r14.get()
            java.lang.Throwable r14 = (java.lang.Throwable) r14
            if (r14 == 0) goto L39
            r0.clear()
            io.reactivex.rxjava3.internal.util.AtomicThrowable r1 = r0.errors
            org.reactivestreams.Subscriber r0 = r0.downstream
            r1.tryTerminateConsumer(r0)
            return
        L39:
            int r14 = r2.get()
            if (r14 != 0) goto L41
            r14 = r4
            goto L42
        L41:
            r14 = r13
        L42:
            java.lang.Object r15 = r3.get()
            io.reactivex.rxjava3.operators.SpscLinkedArrayQueue r15 = (io.reactivex.rxjava3.operators.SpscLinkedArrayQueue) r15
            if (r15 == 0) goto L4f
            java.lang.Object r15 = r15.poll()
            goto L50
        L4f:
            r15 = 0
        L50:
            if (r15 != 0) goto L55
            r16 = r4
            goto L57
        L55:
            r16 = r13
        L57:
            if (r14 == 0) goto L61
            if (r16 == 0) goto L61
            io.reactivex.rxjava3.internal.util.AtomicThrowable r0 = r0.errors
            r0.tryTerminateConsumer(r1)
            return
        L61:
            if (r16 == 0) goto L64
            goto L6b
        L64:
            r1.onNext(r15)
            r12 = 1
            long r10 = r10 + r12
            goto L13
        L6b:
            if (r12 != 0) goto Lae
            boolean r6 = r0.cancelled
            if (r6 == 0) goto L75
            r0.clear()
            return
        L75:
            boolean r6 = r0.delayErrors
            if (r6 != 0) goto L8c
            io.reactivex.rxjava3.internal.util.AtomicThrowable r6 = r0.errors
            java.lang.Object r6 = r6.get()
            java.lang.Throwable r6 = (java.lang.Throwable) r6
            if (r6 == 0) goto L8c
            r0.clear()
            io.reactivex.rxjava3.internal.util.AtomicThrowable r0 = r0.errors
            r0.tryTerminateConsumer(r1)
            return
        L8c:
            int r6 = r2.get()
            if (r6 != 0) goto L94
            r6 = r4
            goto L95
        L94:
            r6 = r13
        L95:
            java.lang.Object r7 = r3.get()
            io.reactivex.rxjava3.operators.SpscLinkedArrayQueue r7 = (io.reactivex.rxjava3.operators.SpscLinkedArrayQueue) r7
            if (r7 == 0) goto La3
            boolean r7 = r7.isEmpty()
            if (r7 == 0) goto La4
        La3:
            r13 = r4
        La4:
            if (r6 == 0) goto Lae
            if (r13 == 0) goto Lae
            io.reactivex.rxjava3.internal.util.AtomicThrowable r0 = r0.errors
            r0.tryTerminateConsumer(r1)
            return
        Lae:
            int r6 = (r10 > r8 ? 1 : (r10 == r8 ? 0 : -1))
            if (r6 == 0) goto Lc3
            java.util.concurrent.atomic.AtomicLong r6 = r0.requested
            okio.Options.Companion.produced(r6, r10)
            int r6 = r0.maxConcurrency
            r7 = 2147483647(0x7fffffff, float:NaN)
            if (r6 == r7) goto Lc3
            org.reactivestreams.Subscription r6 = r0.upstream
            r6.request(r10)
        Lc3:
            int r5 = -r5
            int r5 = r0.addAndGet(r5)
            if (r5 != 0) goto La
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: io.reactivex.rxjava3.internal.operators.flowable.FlowableFlatMapSingle$FlatMapSingleSubscriber.drainLoop():void");
    }

    public final SpscLinkedArrayQueue getOrCreateQueue() {
        SpscLinkedArrayQueue spscLinkedArrayQueue = this.queue.get();
        if (spscLinkedArrayQueue != null) {
            return spscLinkedArrayQueue;
        }
        SpscLinkedArrayQueue spscLinkedArrayQueue2 = new SpscLinkedArrayQueue(Flowable.BUFFER_SIZE);
        AtomicReference<SpscLinkedArrayQueue> atomicReference = this.queue;
        while (!atomicReference.compareAndSet(null, spscLinkedArrayQueue2)) {
            if (atomicReference.get() != null) {
                return this.queue.get();
            }
        }
        return spscLinkedArrayQueue2;
    }

    @Override // org.reactivestreams.Subscriber
    public final void onComplete() {
        this.active.decrementAndGet();
        drain();
    }

    @Override // org.reactivestreams.Subscriber
    public final void onError(Throwable th) {
        this.active.decrementAndGet();
        if (this.errors.tryAddThrowableOrReport(th)) {
            if (!this.delayErrors) {
                this.set.dispose();
            }
            drain();
        }
    }

    @Override // org.reactivestreams.Subscriber
    public final void onNext(Object obj) {
        try {
            Object apply = this.mapper.apply(obj);
            Objects.requireNonNull(apply, "The mapper returned a null SingleSource");
            SingleSource singleSource = (SingleSource) apply;
            this.active.getAndIncrement();
            InnerObserver innerObserver = new InnerObserver();
            if (this.cancelled || !this.set.add(innerObserver)) {
                return;
            }
            ((Single) singleSource).subscribe(innerObserver);
        } catch (Throwable th) {
            AppKt.throwIfFatal(th);
            this.upstream.cancel();
            onError(th);
        }
    }

    @Override // org.reactivestreams.Subscriber
    public final void onSubscribe(Subscription subscription) {
        if (SubscriptionHelper.validate(this.upstream, subscription)) {
            this.upstream = subscription;
            this.downstream.onSubscribe(this);
            int i = this.maxConcurrency;
            if (i == Integer.MAX_VALUE) {
                subscription.request(Long.MAX_VALUE);
            } else {
                subscription.request(i);
            }
        }
    }

    @Override // org.reactivestreams.Subscription
    public final void request(long j) {
        if (SubscriptionHelper.validate(j)) {
            Options.Companion.add(this.requested, j);
            drain();
        }
    }
}
