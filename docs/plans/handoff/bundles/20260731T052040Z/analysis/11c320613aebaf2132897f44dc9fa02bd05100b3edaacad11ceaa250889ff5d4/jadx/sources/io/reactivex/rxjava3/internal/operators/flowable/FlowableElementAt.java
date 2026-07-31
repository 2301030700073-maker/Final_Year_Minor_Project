package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.core.FlowableSubscriber;
import io.reactivex.rxjava3.internal.subscriptions.DeferredScalarSubscription;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.NoSuchElementException;
import kotlin.math.MathKt;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class FlowableElementAt extends AbstractFlowableWithUpstream {
    public final boolean errorOnFewer;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class ElementAtSubscriber extends DeferredScalarSubscription implements FlowableSubscriber {
        private static final long serialVersionUID = 4066607327284737757L;
        long count;
        final Object defaultValue;
        boolean done;
        final boolean errorOnFewer;
        final long index;
        Subscription upstream;

        public ElementAtSubscriber(Subscriber subscriber, boolean z) {
            super(subscriber);
            this.index = 0L;
            this.defaultValue = null;
            this.errorOnFewer = z;
        }

        @Override // io.reactivex.rxjava3.internal.subscriptions.DeferredScalarSubscription, org.reactivestreams.Subscription
        public final void cancel() {
            super.cancel();
            this.upstream.cancel();
        }

        @Override // org.reactivestreams.Subscriber
        public final void onComplete() {
            if (this.done) {
                return;
            }
            this.done = true;
            Object obj = this.defaultValue;
            if (obj != null) {
                complete(obj);
                return;
            }
            boolean z = this.errorOnFewer;
            Subscriber subscriber = this.downstream;
            if (z) {
                subscriber.onError(new NoSuchElementException());
            } else {
                subscriber.onComplete();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public final void onError(Throwable th) {
            if (this.done) {
                MathKt.onError(th);
            } else {
                this.done = true;
                this.downstream.onError(th);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public final void onNext(Object obj) {
            if (this.done) {
                return;
            }
            long j = this.count;
            if (j != this.index) {
                this.count = j + 1;
                return;
            }
            this.done = true;
            this.upstream.cancel();
            complete(obj);
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

    public FlowableElementAt(Flowable flowable, boolean z) {
        super(flowable);
        this.errorOnFewer = z;
    }

    @Override // io.reactivex.rxjava3.core.Flowable
    public final void subscribeActual(FlowableSubscriber flowableSubscriber) {
        this.source.subscribe((FlowableSubscriber) new ElementAtSubscriber(flowableSubscriber, this.errorOnFewer));
    }
}
