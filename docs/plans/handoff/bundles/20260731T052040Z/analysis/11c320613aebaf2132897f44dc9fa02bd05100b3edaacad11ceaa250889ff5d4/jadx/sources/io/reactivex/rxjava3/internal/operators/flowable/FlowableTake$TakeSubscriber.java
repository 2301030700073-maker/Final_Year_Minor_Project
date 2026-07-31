package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.core.FlowableSubscriber;
import io.reactivex.rxjava3.internal.subscriptions.EmptySubscription;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicLong;
import kotlin.math.MathKt;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class FlowableTake$TakeSubscriber extends AtomicLong implements FlowableSubscriber, Subscription {
    private static final long serialVersionUID = 2288246011222124525L;
    final Subscriber downstream;
    long remaining;
    Subscription upstream;

    public FlowableTake$TakeSubscriber(Subscriber subscriber, long j) {
        this.downstream = subscriber;
        this.remaining = j;
        lazySet(j);
    }

    @Override // org.reactivestreams.Subscription
    public final void cancel() {
        this.upstream.cancel();
    }

    @Override // org.reactivestreams.Subscriber
    public final void onComplete() {
        if (this.remaining > 0) {
            this.remaining = 0L;
            this.downstream.onComplete();
        }
    }

    @Override // org.reactivestreams.Subscriber
    public final void onError(Throwable th) {
        if (this.remaining <= 0) {
            MathKt.onError(th);
        } else {
            this.remaining = 0L;
            this.downstream.onError(th);
        }
    }

    @Override // org.reactivestreams.Subscriber
    public final void onNext(Object obj) {
        long j = this.remaining;
        if (j > 0) {
            long j2 = j - 1;
            this.remaining = j2;
            this.downstream.onNext(obj);
            if (j2 == 0) {
                this.upstream.cancel();
                this.downstream.onComplete();
            }
        }
    }

    @Override // org.reactivestreams.Subscriber
    public final void onSubscribe(Subscription subscription) {
        if (SubscriptionHelper.validate(this.upstream, subscription)) {
            if (this.remaining == 0) {
                subscription.cancel();
                EmptySubscription.complete(this.downstream);
            } else {
                this.upstream = subscription;
                this.downstream.onSubscribe(this);
            }
        }
    }

    @Override // org.reactivestreams.Subscription
    public final void request(long j) {
        long j2;
        long min;
        if (SubscriptionHelper.validate(j)) {
            do {
                j2 = get();
                if (j2 == 0) {
                    return;
                } else {
                    min = Math.min(j2, j);
                }
            } while (!compareAndSet(j2, j2 - min));
            this.upstream.request(min);
        }
    }
}
