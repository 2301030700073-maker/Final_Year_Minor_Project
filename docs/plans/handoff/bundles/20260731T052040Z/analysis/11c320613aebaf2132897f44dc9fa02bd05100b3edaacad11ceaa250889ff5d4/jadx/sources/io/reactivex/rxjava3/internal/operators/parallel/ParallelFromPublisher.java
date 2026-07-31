package io.reactivex.rxjava3.internal.operators.parallel;

import io.reactivex.rxjava3.core.FlowableSubscriber;
import io.reactivex.rxjava3.exceptions.QueueOverflowException;
import io.reactivex.rxjava3.internal.operators.flowable.FlowableDoOnEach;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.operators.QueueSubscription;
import io.reactivex.rxjava3.operators.SimpleQueue;
import io.reactivex.rxjava3.operators.SpscArrayQueue;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLongArray;
import net.newpipe.app.AppKt;
import okhttp3.Cookie;
import okio.Options;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ParallelFromPublisher extends Cookie.Companion {
    public final FlowableDoOnEach source;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class ParallelDispatcher extends AtomicInteger implements FlowableSubscriber {
        private static final long serialVersionUID = -4470634016609963609L;
        volatile boolean cancelled;
        volatile boolean done;
        final long[] emissions;
        Throwable error;
        int index;
        int produced;
        SimpleQueue queue;
        final AtomicLongArray requests;
        int sourceMode;
        final Subscriber[] subscribers;
        Subscription upstream;
        final AtomicInteger subscriberCount = new AtomicInteger();
        final int prefetch = 6;
        final int limit = 5;

        /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
        public final class RailSubscription implements Subscription {
            public final int j;
            public final int m;

            public RailSubscription(int i, int i2) {
                this.j = i;
                this.m = i2;
            }

            @Override // org.reactivestreams.Subscription
            public final void cancel() {
                if (ParallelDispatcher.this.requests.compareAndSet(this.j + this.m, 0L, 1L)) {
                    ParallelDispatcher parallelDispatcher = ParallelDispatcher.this;
                    int i = this.m;
                    if (parallelDispatcher.requests.decrementAndGet(i + i) == 0) {
                        parallelDispatcher.cancelled = true;
                        parallelDispatcher.upstream.cancel();
                        if (parallelDispatcher.getAndIncrement() == 0) {
                            parallelDispatcher.queue.clear();
                        }
                    }
                }
            }

            @Override // org.reactivestreams.Subscription
            public final void request(long j) {
                long j2;
                if (SubscriptionHelper.validate(j)) {
                    ParallelDispatcher parallelDispatcher = ParallelDispatcher.this;
                    AtomicLongArray atomicLongArray = parallelDispatcher.requests;
                    do {
                        j2 = atomicLongArray.get(this.j);
                        if (j2 == Long.MAX_VALUE) {
                            return;
                        }
                    } while (!atomicLongArray.compareAndSet(this.j, j2, Options.Companion.addCap(j2, j)));
                    if (parallelDispatcher.subscriberCount.get() == this.m) {
                        parallelDispatcher.drain();
                    }
                }
            }
        }

        public ParallelDispatcher(Subscriber[] subscriberArr) {
            this.subscribers = subscriberArr;
            int length = subscriberArr.length;
            int i = length + length;
            AtomicLongArray atomicLongArray = new AtomicLongArray(i + 1);
            this.requests = atomicLongArray;
            atomicLongArray.lazySet(i, length);
            this.emissions = new long[length];
        }

        public final void drain() {
            Throwable th;
            if (getAndIncrement() != 0) {
                return;
            }
            int i = this.sourceMode;
            SimpleQueue simpleQueue = this.queue;
            Subscriber[] subscriberArr = this.subscribers;
            long j = 1;
            long j2 = 0;
            int i2 = 0;
            if (i == 1) {
                AtomicLongArray atomicLongArray = this.requests;
                long[] jArr = this.emissions;
                int length = jArr.length;
                int i3 = this.index;
                int i4 = 1;
                while (true) {
                    int i5 = 0;
                    while (!this.cancelled) {
                        if (simpleQueue.isEmpty()) {
                            int length2 = subscriberArr.length;
                            while (i2 < length2) {
                                subscriberArr[i2].onComplete();
                                i2++;
                            }
                            return;
                        }
                        long j3 = atomicLongArray.get(i3);
                        long j4 = jArr[i3];
                        if (j3 == j4 || atomicLongArray.get(length + i3) != 0) {
                            i5++;
                        } else {
                            try {
                                Object poll = simpleQueue.poll();
                                if (poll == null) {
                                    int length3 = subscriberArr.length;
                                    while (i2 < length3) {
                                        subscriberArr[i2].onComplete();
                                        i2++;
                                    }
                                    return;
                                }
                                subscriberArr[i3].onNext(poll);
                                jArr[i3] = j4 + 1;
                                i5 = 0;
                            } catch (Throwable th2) {
                                AppKt.throwIfFatal(th2);
                                this.upstream.cancel();
                                int length4 = subscriberArr.length;
                                while (i2 < length4) {
                                    subscriberArr[i2].onError(th2);
                                    i2++;
                                }
                                return;
                            }
                        }
                        i3++;
                        if (i3 == length) {
                            i3 = 0;
                        }
                        if (i5 == length) {
                            int i6 = get();
                            if (i6 == i4) {
                                this.index = i3;
                                i4 = addAndGet(-i4);
                                if (i4 == 0) {
                                    return;
                                }
                            } else {
                                i4 = i6;
                            }
                        }
                    }
                    simpleQueue.clear();
                    return;
                }
            }
            AtomicLongArray atomicLongArray2 = this.requests;
            long[] jArr2 = this.emissions;
            int length5 = jArr2.length;
            int i7 = this.index;
            int i8 = this.produced;
            int i9 = 1;
            while (true) {
                long j5 = j;
                int i10 = 0;
                while (!this.cancelled) {
                    boolean z = this.done;
                    if (z && (th = this.error) != null) {
                        simpleQueue.clear();
                        int length6 = subscriberArr.length;
                        while (i2 < length6) {
                            subscriberArr[i2].onError(th);
                            i2++;
                        }
                        return;
                    }
                    boolean isEmpty = simpleQueue.isEmpty();
                    if (z && isEmpty) {
                        int length7 = subscriberArr.length;
                        while (i2 < length7) {
                            subscriberArr[i2].onComplete();
                            i2++;
                        }
                        return;
                    }
                    if (!isEmpty) {
                        long j6 = atomicLongArray2.get(i7);
                        long j7 = jArr2[i7];
                        if (j6 == j7 || atomicLongArray2.get(length5 + i7) != j2) {
                            i10++;
                        } else {
                            try {
                                Object poll2 = simpleQueue.poll();
                                if (poll2 != null) {
                                    subscriberArr[i7].onNext(poll2);
                                    jArr2[i7] = j7 + j5;
                                    i8++;
                                    if (i8 == this.limit) {
                                        this.upstream.request(i8);
                                        i8 = 0;
                                    }
                                    i10 = 0;
                                }
                            } catch (Throwable th3) {
                                AppKt.throwIfFatal(th3);
                                this.upstream.cancel();
                                int length8 = subscriberArr.length;
                                while (i2 < length8) {
                                    subscriberArr[i2].onError(th3);
                                    i2++;
                                }
                                return;
                            }
                        }
                        i7++;
                        if (i7 == length5) {
                            i7 = 0;
                        }
                        if (i10 != length5) {
                            j2 = 0;
                        }
                    }
                    int i11 = get();
                    if (i11 == i9) {
                        this.index = i7;
                        this.produced = i8;
                        i11 = addAndGet(-i9);
                        if (i11 == 0) {
                            return;
                        }
                    }
                    i9 = i11;
                    j = j5;
                    j2 = 0;
                }
                simpleQueue.clear();
                return;
            }
        }

        @Override // org.reactivestreams.Subscriber
        public final void onComplete() {
            this.done = true;
            drain();
        }

        @Override // org.reactivestreams.Subscriber
        public final void onError(Throwable th) {
            this.error = th;
            this.done = true;
            drain();
        }

        @Override // org.reactivestreams.Subscriber
        public final void onNext(Object obj) {
            if (this.sourceMode != 0 || this.queue.offer(obj)) {
                drain();
            } else {
                this.upstream.cancel();
                onError(new QueueOverflowException());
            }
        }

        @Override // org.reactivestreams.Subscriber
        public final void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.upstream, subscription)) {
                this.upstream = subscription;
                if (subscription instanceof QueueSubscription) {
                    QueueSubscription queueSubscription = (QueueSubscription) subscription;
                    int requestFusion = queueSubscription.requestFusion(7);
                    if (requestFusion == 1) {
                        this.sourceMode = requestFusion;
                        this.queue = queueSubscription;
                        this.done = true;
                        setupSubscribers();
                        drain();
                        return;
                    }
                    if (requestFusion == 2) {
                        this.sourceMode = requestFusion;
                        this.queue = queueSubscription;
                        setupSubscribers();
                        subscription.request(this.prefetch);
                        return;
                    }
                }
                this.queue = new SpscArrayQueue(this.prefetch);
                setupSubscribers();
                subscription.request(this.prefetch);
            }
        }

        public final void setupSubscribers() {
            Subscriber[] subscriberArr = this.subscribers;
            int length = subscriberArr.length;
            int i = 0;
            while (i < length) {
                int i2 = i + 1;
                this.subscriberCount.lazySet(i2);
                subscriberArr[i].onSubscribe(new RailSubscription(i, length));
                i = i2;
            }
        }
    }

    public ParallelFromPublisher(FlowableDoOnEach flowableDoOnEach) {
        this.source = flowableDoOnEach;
    }

    @Override // okhttp3.Cookie.Companion
    public final int parallelism() {
        return 3;
    }
}
