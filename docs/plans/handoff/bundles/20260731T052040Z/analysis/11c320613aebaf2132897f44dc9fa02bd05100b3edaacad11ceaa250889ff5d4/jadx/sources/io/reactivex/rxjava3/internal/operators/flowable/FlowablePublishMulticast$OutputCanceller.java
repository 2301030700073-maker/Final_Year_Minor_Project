package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.core.FlowableSubscriber;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class FlowablePublishMulticast$OutputCanceller implements FlowableSubscriber, Subscription {
    public final Subscriber downstream;
    public final FlowablePublishMulticast$MulticastProcessor processor;
    public Subscription upstream;

    public FlowablePublishMulticast$OutputCanceller(Subscriber subscriber, FlowablePublishMulticast$MulticastProcessor flowablePublishMulticast$MulticastProcessor) {
        this.downstream = subscriber;
        this.processor = flowablePublishMulticast$MulticastProcessor;
    }

    @Override // org.reactivestreams.Subscription
    public final void cancel() {
        this.upstream.cancel();
        this.processor.dispose();
    }

    @Override // org.reactivestreams.Subscriber
    public final void onComplete() {
        this.downstream.onComplete();
        this.processor.dispose();
    }

    @Override // org.reactivestreams.Subscriber
    public final void onError(Throwable th) {
        this.downstream.onError(th);
        this.processor.dispose();
    }

    @Override // org.reactivestreams.Subscriber
    public final void onNext(Object obj) {
        this.downstream.onNext(obj);
    }

    @Override // org.reactivestreams.Subscriber
    public final void onSubscribe(Subscription subscription) {
        if (SubscriptionHelper.validate(this.upstream, subscription)) {
            this.upstream = subscription;
            this.downstream.onSubscribe(this);
        }
    }

    @Override // org.reactivestreams.Subscription
    public final void request(long j) {
        this.upstream.request(j);
    }
}
