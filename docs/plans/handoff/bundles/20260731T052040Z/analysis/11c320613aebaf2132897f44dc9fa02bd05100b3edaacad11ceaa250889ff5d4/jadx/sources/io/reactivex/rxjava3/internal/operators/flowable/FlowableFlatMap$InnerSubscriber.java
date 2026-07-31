package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.core.FlowableSubscriber;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.QueueOverflowException;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.operators.QueueSubscription;
import io.reactivex.rxjava3.operators.SimpleQueue;
import io.reactivex.rxjava3.operators.SpscArrayQueue;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Subscription;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class FlowableFlatMap$InnerSubscriber extends AtomicReference implements FlowableSubscriber, Disposable {
    private static final long serialVersionUID = -4606175640614850599L;
    final int bufferSize;
    volatile boolean done;
    int fusionMode;
    final long id;
    final int limit;
    final FlowableFlatMap$MergeSubscriber parent;
    long produced;
    volatile SimpleQueue queue;

    public FlowableFlatMap$InnerSubscriber(FlowableFlatMap$MergeSubscriber flowableFlatMap$MergeSubscriber, int i, long j) {
        this.id = j;
        this.parent = flowableFlatMap$MergeSubscriber;
        this.bufferSize = i;
        this.limit = i >> 2;
    }

    @Override // io.reactivex.rxjava3.disposables.Disposable
    public final void dispose() {
        SubscriptionHelper.cancel(this);
    }

    @Override // io.reactivex.rxjava3.disposables.Disposable
    public final boolean isDisposed() {
        return get() == SubscriptionHelper.CANCELLED;
    }

    @Override // org.reactivestreams.Subscriber
    public final void onComplete() {
        this.done = true;
        this.parent.drain();
    }

    @Override // org.reactivestreams.Subscriber
    public final void onError(Throwable th) {
        lazySet(SubscriptionHelper.CANCELLED);
        FlowableFlatMap$MergeSubscriber flowableFlatMap$MergeSubscriber = this.parent;
        if (flowableFlatMap$MergeSubscriber.errors.tryAddThrowableOrReport(th)) {
            this.done = true;
            if (!flowableFlatMap$MergeSubscriber.delayErrors) {
                flowableFlatMap$MergeSubscriber.upstream.cancel();
                for (FlowableFlatMap$InnerSubscriber flowableFlatMap$InnerSubscriber : flowableFlatMap$MergeSubscriber.subscribers.getAndSet(FlowableFlatMap$MergeSubscriber.CANCELLED)) {
                    flowableFlatMap$InnerSubscriber.getClass();
                    SubscriptionHelper.cancel(flowableFlatMap$InnerSubscriber);
                }
            }
            flowableFlatMap$MergeSubscriber.drain();
        }
    }

    @Override // org.reactivestreams.Subscriber
    public final void onNext(Object obj) {
        int i = this.fusionMode;
        FlowableFlatMap$MergeSubscriber flowableFlatMap$MergeSubscriber = this.parent;
        if (i == 2) {
            flowableFlatMap$MergeSubscriber.drain();
            return;
        }
        if (flowableFlatMap$MergeSubscriber.get() == 0 && flowableFlatMap$MergeSubscriber.compareAndSet(0, 1)) {
            long j = flowableFlatMap$MergeSubscriber.requested.get();
            SimpleQueue simpleQueue = this.queue;
            if (j == 0 || !(simpleQueue == null || simpleQueue.isEmpty())) {
                if (simpleQueue == null) {
                    simpleQueue = new SpscArrayQueue(flowableFlatMap$MergeSubscriber.bufferSize);
                    this.queue = simpleQueue;
                }
                if (!simpleQueue.offer(obj)) {
                    flowableFlatMap$MergeSubscriber.onError(new QueueOverflowException());
                }
            } else {
                flowableFlatMap$MergeSubscriber.downstream.onNext(obj);
                if (j != Long.MAX_VALUE) {
                    flowableFlatMap$MergeSubscriber.requested.decrementAndGet();
                }
                requestMore(1L);
            }
            if (flowableFlatMap$MergeSubscriber.decrementAndGet() == 0) {
                return;
            }
        } else {
            SimpleQueue simpleQueue2 = this.queue;
            if (simpleQueue2 == null) {
                simpleQueue2 = new SpscArrayQueue(flowableFlatMap$MergeSubscriber.bufferSize);
                this.queue = simpleQueue2;
            }
            if (!simpleQueue2.offer(obj)) {
                flowableFlatMap$MergeSubscriber.onError(new QueueOverflowException());
                return;
            } else if (flowableFlatMap$MergeSubscriber.getAndIncrement() != 0) {
                return;
            }
        }
        flowableFlatMap$MergeSubscriber.drainLoop();
    }

    @Override // org.reactivestreams.Subscriber
    public final void onSubscribe(Subscription subscription) {
        if (SubscriptionHelper.setOnce(this, subscription)) {
            if (subscription instanceof QueueSubscription) {
                QueueSubscription queueSubscription = (QueueSubscription) subscription;
                int requestFusion = queueSubscription.requestFusion(7);
                if (requestFusion == 1) {
                    this.fusionMode = requestFusion;
                    this.queue = queueSubscription;
                    this.done = true;
                    this.parent.drain();
                    return;
                }
                if (requestFusion == 2) {
                    this.fusionMode = requestFusion;
                    this.queue = queueSubscription;
                }
            }
            subscription.request(this.bufferSize);
        }
    }

    public final void requestMore(long j) {
        if (this.fusionMode != 1) {
            long j2 = this.produced + j;
            if (j2 < this.limit) {
                this.produced = j2;
            } else {
                this.produced = 0L;
                ((Subscription) get()).request(j2);
            }
        }
    }
}
