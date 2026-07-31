package io.reactivex.rxjava3.internal.operators.parallel;

import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.core.FlowableSubscriber;
import io.reactivex.rxjava3.exceptions.QueueOverflowException;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.internal.util.AtomicThrowable;
import io.reactivex.rxjava3.operators.SimplePlainQueue;
import io.reactivex.rxjava3.operators.SpscArrayQueue;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.math.MathKt;
import okio.Options;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ParallelJoin extends Flowable {
    public final int prefetch;
    public final ParallelMap source;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class JoinInnerSubscriber extends AtomicReference implements FlowableSubscriber {
        private static final long serialVersionUID = 8410034718427740355L;
        final int limit;
        final JoinSubscriptionBase parent;
        final int prefetch;
        long produced;
        volatile SimplePlainQueue queue;

        public JoinInnerSubscriber(JoinSubscriptionBase joinSubscriptionBase, int i) {
            this.parent = joinSubscriptionBase;
            this.prefetch = i;
            this.limit = i - (i >> 2);
        }

        public final SimplePlainQueue getQueue() {
            SimplePlainQueue simplePlainQueue = this.queue;
            if (simplePlainQueue != null) {
                return simplePlainQueue;
            }
            SpscArrayQueue spscArrayQueue = new SpscArrayQueue(this.prefetch);
            this.queue = spscArrayQueue;
            return spscArrayQueue;
        }

        @Override // org.reactivestreams.Subscriber
        public final void onComplete() {
            this.parent.onComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public final void onError(Throwable th) {
            this.parent.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public final void onNext(Object obj) {
            this.parent.onNext(this, obj);
        }

        @Override // org.reactivestreams.Subscriber
        public final void onSubscribe(Subscription subscription) {
            long j = this.prefetch;
            if (SubscriptionHelper.setOnce(this, subscription)) {
                subscription.request(j);
            }
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class JoinSubscription extends JoinSubscriptionBase {
        private static final long serialVersionUID = 6312374661811000451L;

        @Override // io.reactivex.rxjava3.internal.operators.parallel.ParallelJoin.JoinSubscriptionBase
        public final void drain() {
            if (getAndIncrement() != 0) {
                return;
            }
            drainLoop();
        }

        /* JADX WARN: Code restructure failed: missing block: B:29:0x008f, code lost:
        
            if (r10 != r20) goto L71;
         */
        /* JADX WARN: Code restructure failed: missing block: B:31:0x0093, code lost:
        
            if (r22.cancelled == false) goto L50;
         */
        /* JADX WARN: Code restructure failed: missing block: B:32:0x0099, code lost:
        
            r4 = (java.lang.Throwable) r22.errors.get();
         */
        /* JADX WARN: Code restructure failed: missing block: B:33:0x00a1, code lost:
        
            if (r4 == null) goto L54;
         */
        /* JADX WARN: Code restructure failed: missing block: B:35:0x00b0, code lost:
        
            if (r22.done.get() != 0) goto L57;
         */
        /* JADX WARN: Code restructure failed: missing block: B:36:0x00b2, code lost:
        
            r4 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:37:0x00b5, code lost:
        
            r6 = 0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:38:0x00b6, code lost:
        
            if (r6 >= r2) goto L92;
         */
        /* JADX WARN: Code restructure failed: missing block: B:39:0x00b8, code lost:
        
            r7 = r1[r6].queue;
         */
        /* JADX WARN: Code restructure failed: missing block: B:40:0x00bc, code lost:
        
            if (r7 == null) goto L93;
         */
        /* JADX WARN: Code restructure failed: missing block: B:42:0x00c2, code lost:
        
            if (r7.isEmpty() != false) goto L94;
         */
        /* JADX WARN: Code restructure failed: missing block: B:44:0x00c4, code lost:
        
            r13 = false;
         */
        /* JADX WARN: Code restructure failed: missing block: B:45:0x00ca, code lost:
        
            if (r4 == false) goto L71;
         */
        /* JADX WARN: Code restructure failed: missing block: B:46:0x00cc, code lost:
        
            if (r13 == false) goto L71;
         */
        /* JADX WARN: Code restructure failed: missing block: B:48:0x00ce, code lost:
        
            r3.onComplete();
         */
        /* JADX WARN: Code restructure failed: missing block: B:49:0x00d1, code lost:
        
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:52:0x00c6, code lost:
        
            r6 = r6 + 1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:55:0x00c9, code lost:
        
            r13 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:56:0x00b4, code lost:
        
            r4 = false;
         */
        /* JADX WARN: Code restructure failed: missing block: B:58:0x00a3, code lost:
        
            cleanup();
            r3.onError(r4);
         */
        /* JADX WARN: Code restructure failed: missing block: B:59:0x00a9, code lost:
        
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:61:0x0095, code lost:
        
            cleanup();
         */
        /* JADX WARN: Code restructure failed: missing block: B:62:0x0098, code lost:
        
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:64:0x00d6, code lost:
        
            if (r10 == 0) goto L74;
         */
        /* JADX WARN: Code restructure failed: missing block: B:65:0x00d8, code lost:
        
            okio.Options.Companion.produced(r22.requested, r10);
         */
        /* JADX WARN: Code restructure failed: missing block: B:66:0x00dd, code lost:
        
            r5 = addAndGet(-r5);
         */
        /* JADX WARN: Code restructure failed: missing block: B:75:0x007b, code lost:
        
            r20 = r6;
         */
        /* JADX WARN: Code restructure failed: missing block: B:76:0x007d, code lost:
        
            if (r12 == false) goto L40;
         */
        /* JADX WARN: Code restructure failed: missing block: B:77:0x007f, code lost:
        
            if (r15 == false) goto L40;
         */
        /* JADX WARN: Code restructure failed: missing block: B:79:0x0081, code lost:
        
            r3.onComplete();
         */
        /* JADX WARN: Code restructure failed: missing block: B:80:0x0084, code lost:
        
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:81:0x0085, code lost:
        
            if (r15 == false) goto L42;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void drainLoop() {
            /*
                Method dump skipped, instructions count: 229
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.rxjava3.internal.operators.parallel.ParallelJoin.JoinSubscription.drainLoop():void");
        }

        @Override // io.reactivex.rxjava3.internal.operators.parallel.ParallelJoin.JoinSubscriptionBase
        public final void onComplete() {
            this.done.decrementAndGet();
            drain();
        }

        @Override // io.reactivex.rxjava3.internal.operators.parallel.ParallelJoin.JoinSubscriptionBase
        public final void onError(Throwable th) {
            if (this.errors.compareAndSet(null, th)) {
                cancelAll();
                drain();
            } else if (th != this.errors.get()) {
                MathKt.onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.internal.operators.parallel.ParallelJoin.JoinSubscriptionBase
        public final void onNext(JoinInnerSubscriber joinInnerSubscriber, Object obj) {
            if (get() == 0 && compareAndSet(0, 1)) {
                if (this.requested.get() != 0) {
                    this.downstream.onNext(obj);
                    if (this.requested.get() != Long.MAX_VALUE) {
                        this.requested.decrementAndGet();
                    }
                    long j = joinInnerSubscriber.produced + 1;
                    if (j >= joinInnerSubscriber.limit) {
                        joinInnerSubscriber.produced = 0L;
                        ((Subscription) joinInnerSubscriber.get()).request(j);
                    } else {
                        joinInnerSubscriber.produced = j;
                    }
                } else if (!joinInnerSubscriber.getQueue().offer(obj)) {
                    cancelAll();
                    QueueOverflowException queueOverflowException = new QueueOverflowException();
                    if (this.errors.compareAndSet(null, queueOverflowException)) {
                        this.downstream.onError(queueOverflowException);
                        return;
                    } else {
                        MathKt.onError(queueOverflowException);
                        return;
                    }
                }
                if (decrementAndGet() == 0) {
                    return;
                }
            } else if (!joinInnerSubscriber.getQueue().offer(obj)) {
                cancelAll();
                onError(new QueueOverflowException());
                return;
            } else if (getAndIncrement() != 0) {
                return;
            }
            drainLoop();
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public abstract class JoinSubscriptionBase extends AtomicInteger implements Subscription {
        private static final long serialVersionUID = 3100232009247827843L;
        volatile boolean cancelled;
        final Subscriber downstream;
        final JoinInnerSubscriber[] subscribers;
        final AtomicThrowable errors = new AtomicThrowable();
        final AtomicLong requested = new AtomicLong();
        final AtomicInteger done = new AtomicInteger();

        public JoinSubscriptionBase(Subscriber subscriber, int i, int i2) {
            this.downstream = subscriber;
            JoinInnerSubscriber[] joinInnerSubscriberArr = new JoinInnerSubscriber[i];
            for (int i3 = 0; i3 < i; i3++) {
                joinInnerSubscriberArr[i3] = new JoinInnerSubscriber(this, i2);
            }
            this.subscribers = joinInnerSubscriberArr;
            this.done.lazySet(i);
        }

        @Override // org.reactivestreams.Subscription
        public final void cancel() {
            if (this.cancelled) {
                return;
            }
            this.cancelled = true;
            cancelAll();
            if (getAndIncrement() == 0) {
                cleanup();
            }
        }

        public final void cancelAll() {
            for (JoinInnerSubscriber joinInnerSubscriber : this.subscribers) {
                joinInnerSubscriber.getClass();
                SubscriptionHelper.cancel(joinInnerSubscriber);
            }
        }

        public final void cleanup() {
            for (JoinInnerSubscriber joinInnerSubscriber : this.subscribers) {
                joinInnerSubscriber.queue = null;
            }
        }

        public abstract void drain();

        public abstract void onComplete();

        public abstract void onError(Throwable th);

        public abstract void onNext(JoinInnerSubscriber joinInnerSubscriber, Object obj);

        @Override // org.reactivestreams.Subscription
        public final void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                Options.Companion.add(this.requested, j);
                drain();
            }
        }
    }

    public ParallelJoin(ParallelMap parallelMap, int i) {
        this.source = parallelMap;
        this.prefetch = i;
    }

    @Override // io.reactivex.rxjava3.core.Flowable
    public final void subscribeActual(FlowableSubscriber flowableSubscriber) {
        JoinSubscription joinSubscription = new JoinSubscription(flowableSubscriber, 3, this.prefetch);
        flowableSubscriber.onSubscribe(joinSubscription);
        this.source.subscribe(joinSubscription.subscribers);
    }
}
