package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.core.FlowableSubscriber;
import io.reactivex.rxjava3.exceptions.QueueOverflowException;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.internal.util.AtomicThrowable;
import io.reactivex.rxjava3.internal.util.ExceptionHelper;
import io.reactivex.rxjava3.operators.QueueSubscription;
import io.reactivex.rxjava3.operators.SimpleQueue;
import io.reactivex.rxjava3.operators.SpscArrayQueue;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.math.MathKt;
import org.reactivestreams.Subscription;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class FlowableSwitchMap$SwitchMapInnerSubscriber extends AtomicReference implements FlowableSubscriber {
    private static final long serialVersionUID = 3837284832786408377L;
    final int bufferSize;
    volatile boolean done;
    int fusionMode;
    final long index;
    final FlowableSwitchMap$SwitchMapSubscriber parent;
    volatile SimpleQueue queue;

    public FlowableSwitchMap$SwitchMapInnerSubscriber(FlowableSwitchMap$SwitchMapSubscriber flowableSwitchMap$SwitchMapSubscriber, long j, int i) {
        this.parent = flowableSwitchMap$SwitchMapSubscriber;
        this.index = j;
        this.bufferSize = i;
    }

    @Override // org.reactivestreams.Subscriber
    public final void onComplete() {
        FlowableSwitchMap$SwitchMapSubscriber flowableSwitchMap$SwitchMapSubscriber = this.parent;
        if (this.index == flowableSwitchMap$SwitchMapSubscriber.unique) {
            this.done = true;
            flowableSwitchMap$SwitchMapSubscriber.drain();
        }
    }

    @Override // org.reactivestreams.Subscriber
    public final void onError(Throwable th) {
        FlowableSwitchMap$SwitchMapSubscriber flowableSwitchMap$SwitchMapSubscriber = this.parent;
        if (this.index == flowableSwitchMap$SwitchMapSubscriber.unique) {
            AtomicThrowable atomicThrowable = flowableSwitchMap$SwitchMapSubscriber.errors;
            atomicThrowable.getClass();
            if (ExceptionHelper.addThrowable(atomicThrowable, th)) {
                if (!flowableSwitchMap$SwitchMapSubscriber.delayErrors) {
                    flowableSwitchMap$SwitchMapSubscriber.upstream.cancel();
                    flowableSwitchMap$SwitchMapSubscriber.done = true;
                }
                this.done = true;
                flowableSwitchMap$SwitchMapSubscriber.drain();
                return;
            }
        }
        MathKt.onError(th);
    }

    @Override // org.reactivestreams.Subscriber
    public final void onNext(Object obj) {
        FlowableSwitchMap$SwitchMapSubscriber flowableSwitchMap$SwitchMapSubscriber = this.parent;
        if (this.index == flowableSwitchMap$SwitchMapSubscriber.unique) {
            if (this.fusionMode != 0 || this.queue.offer(obj)) {
                flowableSwitchMap$SwitchMapSubscriber.drain();
            } else {
                onError(new QueueOverflowException());
            }
        }
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
                    subscription.request(this.bufferSize);
                    return;
                }
            }
            this.queue = new SpscArrayQueue(this.bufferSize);
            subscription.request(this.bufferSize);
        }
    }
}
