package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.core.FlowableSubscriber;
import io.reactivex.rxjava3.internal.subscriptions.DeferredScalarSubscription;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.Collection;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class FlowableToList$ToListSubscriber extends DeferredScalarSubscription implements FlowableSubscriber {
    private static final long serialVersionUID = -8134157938864266736L;
    Subscription upstream;

    public FlowableToList$ToListSubscriber(Subscriber subscriber, Collection collection) {
        super(subscriber);
        this.value = collection;
    }

    @Override // io.reactivex.rxjava3.internal.subscriptions.DeferredScalarSubscription, org.reactivestreams.Subscription
    public final void cancel() {
        super.cancel();
        this.upstream.cancel();
    }

    @Override // org.reactivestreams.Subscriber
    public final void onComplete() {
        complete(this.value);
    }

    @Override // org.reactivestreams.Subscriber
    public final void onError(Throwable th) {
        this.value = null;
        this.downstream.onError(th);
    }

    @Override // org.reactivestreams.Subscriber
    public final void onNext(Object obj) {
        Collection collection = (Collection) this.value;
        if (collection != null) {
            collection.add(obj);
        }
    }

    @Override // org.reactivestreams.Subscriber
    public final void onSubscribe(Subscription subscription) {
        if (SubscriptionHelper.validate(this.upstream, subscription)) {
            this.upstream = subscription;
            this.downstream.onSubscribe(this);
            subscription.request(Long.MAX_VALUE);
        }
    }
}
