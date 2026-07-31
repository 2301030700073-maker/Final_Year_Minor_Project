package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.core.FlowableSubscriber;
import io.reactivex.rxjava3.exceptions.QueueOverflowException;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Supplier;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.internal.util.AtomicThrowable;
import io.reactivex.rxjava3.operators.SimplePlainQueue;
import io.reactivex.rxjava3.operators.SpscArrayQueue;
import io.reactivex.rxjava3.operators.SpscLinkedArrayQueue;
import j$.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.math.MathKt;
import net.newpipe.app.AppKt;
import okio.Options;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class FlowableFlatMap$MergeSubscriber extends AtomicInteger implements FlowableSubscriber, Subscription {
    private static final long serialVersionUID = -2117620485640801370L;
    final int bufferSize;
    volatile boolean cancelled;
    final boolean delayErrors;
    volatile boolean done;
    final Subscriber downstream;
    final AtomicThrowable errors = new AtomicThrowable();
    long lastId;
    int lastIndex;
    final Function mapper;
    final int maxConcurrency;
    volatile SimplePlainQueue queue;
    final AtomicLong requested;
    int scalarEmitted;
    final int scalarLimit;
    final AtomicReference<FlowableFlatMap$InnerSubscriber[]> subscribers;
    long uniqueId;
    Subscription upstream;
    public static final FlowableFlatMap$InnerSubscriber[] EMPTY = new FlowableFlatMap$InnerSubscriber[0];
    public static final FlowableFlatMap$InnerSubscriber[] CANCELLED = new FlowableFlatMap$InnerSubscriber[0];

    public FlowableFlatMap$MergeSubscriber(Subscriber subscriber, Function function, int i, int i2) {
        AtomicReference<FlowableFlatMap$InnerSubscriber[]> atomicReference = new AtomicReference<>();
        this.subscribers = atomicReference;
        this.requested = new AtomicLong();
        this.downstream = subscriber;
        this.mapper = function;
        this.delayErrors = false;
        this.maxConcurrency = i;
        this.bufferSize = i2;
        this.scalarLimit = Math.max(1, i >> 1);
        atomicReference.lazySet(EMPTY);
    }

    @Override // org.reactivestreams.Subscription
    public final void cancel() {
        SimplePlainQueue simplePlainQueue;
        if (this.cancelled) {
            return;
        }
        this.cancelled = true;
        this.upstream.cancel();
        AtomicReference<FlowableFlatMap$InnerSubscriber[]> atomicReference = this.subscribers;
        FlowableFlatMap$InnerSubscriber[] flowableFlatMap$InnerSubscriberArr = CANCELLED;
        FlowableFlatMap$InnerSubscriber[] andSet = atomicReference.getAndSet(flowableFlatMap$InnerSubscriberArr);
        if (andSet != flowableFlatMap$InnerSubscriberArr) {
            for (FlowableFlatMap$InnerSubscriber flowableFlatMap$InnerSubscriber : andSet) {
                flowableFlatMap$InnerSubscriber.getClass();
                SubscriptionHelper.cancel(flowableFlatMap$InnerSubscriber);
            }
            this.errors.tryTerminateAndReport();
        }
        if (getAndIncrement() != 0 || (simplePlainQueue = this.queue) == null) {
            return;
        }
        simplePlainQueue.clear();
    }

    public final boolean checkTerminate() {
        if (this.cancelled) {
            SimplePlainQueue simplePlainQueue = this.queue;
            if (simplePlainQueue != null) {
                simplePlainQueue.clear();
            }
            return true;
        }
        if (this.delayErrors || this.errors.get() == null) {
            return false;
        }
        SimplePlainQueue simplePlainQueue2 = this.queue;
        if (simplePlainQueue2 != null) {
            simplePlainQueue2.clear();
        }
        this.errors.tryTerminateConsumer(this.downstream);
        return true;
    }

    public final void drain() {
        if (getAndIncrement() == 0) {
            drainLoop();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x0091, code lost:
    
        if (r7[r0].id != r10) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0145, code lost:
    
        r3 = r12.done;
        r4 = r12.queue;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0149, code lost:
    
        if (r3 == false) goto L103;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x014b, code lost:
    
        if (r4 == null) goto L99;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0151, code lost:
    
        if (r4.isEmpty() == false) goto L103;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x0153, code lost:
    
        removeInner(r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x015a, code lost:
    
        if (checkTerminate() == false) goto L102;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x015d, code lost:
    
        r15 = r15 + 1;
        r0 = r17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0163, code lost:
    
        if (r10 != r20) goto L106;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0167, code lost:
    
        r5 = r5 + 1;
        r6 = r23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x016b, code lost:
    
        if (r5 != r8) goto L145;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x016d, code lost:
    
        r5 = 0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void drainLoop() {
        /*
            Method dump skipped, instructions count: 422
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.reactivex.rxjava3.internal.operators.flowable.FlowableFlatMap$MergeSubscriber.drainLoop():void");
    }

    public final SimplePlainQueue getMainQueue() {
        SimplePlainQueue simplePlainQueue = this.queue;
        if (simplePlainQueue == null) {
            simplePlainQueue = this.maxConcurrency == Integer.MAX_VALUE ? new SpscLinkedArrayQueue(this.bufferSize) : new SpscArrayQueue(this.maxConcurrency);
            this.queue = simplePlainQueue;
        }
        return simplePlainQueue;
    }

    @Override // org.reactivestreams.Subscriber
    public final void onComplete() {
        if (this.done) {
            return;
        }
        this.done = true;
        drain();
    }

    @Override // org.reactivestreams.Subscriber
    public final void onError(Throwable th) {
        if (this.done) {
            MathKt.onError(th);
            return;
        }
        if (this.errors.tryAddThrowableOrReport(th)) {
            this.done = true;
            if (!this.delayErrors) {
                for (FlowableFlatMap$InnerSubscriber flowableFlatMap$InnerSubscriber : this.subscribers.getAndSet(CANCELLED)) {
                    flowableFlatMap$InnerSubscriber.getClass();
                    SubscriptionHelper.cancel(flowableFlatMap$InnerSubscriber);
                }
            }
            drain();
        }
    }

    @Override // org.reactivestreams.Subscriber
    public final void onNext(Object obj) {
        if (this.done) {
            return;
        }
        try {
            Object apply = this.mapper.apply(obj);
            Objects.requireNonNull(apply, "The mapper returned a null Publisher");
            Publisher publisher = (Publisher) apply;
            if (!(publisher instanceof Supplier)) {
                int i = this.bufferSize;
                long j = this.uniqueId;
                this.uniqueId = 1 + j;
                FlowableFlatMap$InnerSubscriber flowableFlatMap$InnerSubscriber = new FlowableFlatMap$InnerSubscriber(this, i, j);
                while (true) {
                    FlowableFlatMap$InnerSubscriber[] flowableFlatMap$InnerSubscriberArr = this.subscribers.get();
                    if (flowableFlatMap$InnerSubscriberArr == CANCELLED) {
                        SubscriptionHelper.cancel(flowableFlatMap$InnerSubscriber);
                        return;
                    }
                    int length = flowableFlatMap$InnerSubscriberArr.length;
                    FlowableFlatMap$InnerSubscriber[] flowableFlatMap$InnerSubscriberArr2 = new FlowableFlatMap$InnerSubscriber[length + 1];
                    System.arraycopy(flowableFlatMap$InnerSubscriberArr, 0, flowableFlatMap$InnerSubscriberArr2, 0, length);
                    flowableFlatMap$InnerSubscriberArr2[length] = flowableFlatMap$InnerSubscriber;
                    AtomicReference<FlowableFlatMap$InnerSubscriber[]> atomicReference = this.subscribers;
                    while (!atomicReference.compareAndSet(flowableFlatMap$InnerSubscriberArr, flowableFlatMap$InnerSubscriberArr2)) {
                        if (atomicReference.get() != flowableFlatMap$InnerSubscriberArr) {
                            break;
                        }
                    }
                    ((Flowable) publisher).subscribe((Subscriber) flowableFlatMap$InnerSubscriber);
                    return;
                }
            }
            try {
                Object obj2 = ((Supplier) publisher).get();
                if (obj2 == null) {
                    if (this.maxConcurrency == Integer.MAX_VALUE || this.cancelled) {
                        return;
                    }
                    int i2 = this.scalarEmitted + 1;
                    this.scalarEmitted = i2;
                    int i3 = this.scalarLimit;
                    if (i2 == i3) {
                        this.scalarEmitted = 0;
                        this.upstream.request(i3);
                        return;
                    }
                    return;
                }
                if (get() == 0 && compareAndSet(0, 1)) {
                    long j2 = this.requested.get();
                    SimplePlainQueue simplePlainQueue = this.queue;
                    if (j2 == 0 || !(simplePlainQueue == null || simplePlainQueue.isEmpty())) {
                        if (simplePlainQueue == null) {
                            simplePlainQueue = getMainQueue();
                        }
                        if (!simplePlainQueue.offer(obj2)) {
                            onError(new QueueOverflowException());
                        }
                    } else {
                        this.downstream.onNext(obj2);
                        if (j2 != Long.MAX_VALUE) {
                            this.requested.decrementAndGet();
                        }
                        if (this.maxConcurrency != Integer.MAX_VALUE && !this.cancelled) {
                            int i4 = this.scalarEmitted + 1;
                            this.scalarEmitted = i4;
                            int i5 = this.scalarLimit;
                            if (i4 == i5) {
                                this.scalarEmitted = 0;
                                this.upstream.request(i5);
                            }
                        }
                    }
                    if (decrementAndGet() == 0) {
                        return;
                    }
                } else if (!getMainQueue().offer(obj2)) {
                    onError(new QueueOverflowException());
                    return;
                } else if (getAndIncrement() != 0) {
                    return;
                }
                drainLoop();
            } catch (Throwable th) {
                AppKt.throwIfFatal(th);
                this.errors.tryAddThrowableOrReport(th);
                drain();
            }
        } catch (Throwable th2) {
            AppKt.throwIfFatal(th2);
            this.upstream.cancel();
            onError(th2);
        }
    }

    @Override // org.reactivestreams.Subscriber
    public final void onSubscribe(Subscription subscription) {
        if (SubscriptionHelper.validate(this.upstream, subscription)) {
            this.upstream = subscription;
            this.downstream.onSubscribe(this);
            if (this.cancelled) {
                return;
            }
            int i = this.maxConcurrency;
            if (i == Integer.MAX_VALUE) {
                subscription.request(Long.MAX_VALUE);
            } else {
                subscription.request(i);
            }
        }
    }

    public final void removeInner(FlowableFlatMap$InnerSubscriber flowableFlatMap$InnerSubscriber) {
        FlowableFlatMap$InnerSubscriber[] flowableFlatMap$InnerSubscriberArr;
        while (true) {
            FlowableFlatMap$InnerSubscriber[] flowableFlatMap$InnerSubscriberArr2 = this.subscribers.get();
            int length = flowableFlatMap$InnerSubscriberArr2.length;
            if (length == 0) {
                return;
            }
            int i = 0;
            while (true) {
                if (i >= length) {
                    i = -1;
                    break;
                } else if (flowableFlatMap$InnerSubscriberArr2[i] == flowableFlatMap$InnerSubscriber) {
                    break;
                } else {
                    i++;
                }
            }
            if (i < 0) {
                return;
            }
            if (length == 1) {
                flowableFlatMap$InnerSubscriberArr = EMPTY;
            } else {
                FlowableFlatMap$InnerSubscriber[] flowableFlatMap$InnerSubscriberArr3 = new FlowableFlatMap$InnerSubscriber[length - 1];
                System.arraycopy(flowableFlatMap$InnerSubscriberArr2, 0, flowableFlatMap$InnerSubscriberArr3, 0, i);
                System.arraycopy(flowableFlatMap$InnerSubscriberArr2, i + 1, flowableFlatMap$InnerSubscriberArr3, i, (length - i) - 1);
                flowableFlatMap$InnerSubscriberArr = flowableFlatMap$InnerSubscriberArr3;
            }
            AtomicReference<FlowableFlatMap$InnerSubscriber[]> atomicReference = this.subscribers;
            while (!atomicReference.compareAndSet(flowableFlatMap$InnerSubscriberArr2, flowableFlatMap$InnerSubscriberArr)) {
                if (atomicReference.get() != flowableFlatMap$InnerSubscriberArr2) {
                    break;
                }
            }
            return;
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
