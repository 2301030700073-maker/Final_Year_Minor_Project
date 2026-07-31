package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicLong;
import okio.Options;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class FlowablePublishMulticast$MulticastSubscription extends AtomicLong implements Subscription {
    private static final long serialVersionUID = 8664815189257569791L;
    final Subscriber downstream;
    long emitted;
    final FlowablePublishMulticast$MulticastProcessor parent;

    public FlowablePublishMulticast$MulticastSubscription(Subscriber subscriber, FlowablePublishMulticast$MulticastProcessor flowablePublishMulticast$MulticastProcessor) {
        this.downstream = subscriber;
        this.parent = flowablePublishMulticast$MulticastProcessor;
    }

    @Override // org.reactivestreams.Subscription
    public final void cancel() {
        if (getAndSet(Long.MIN_VALUE) != Long.MIN_VALUE) {
            this.parent.remove(this);
            this.parent.drain();
        }
    }

    @Override // org.reactivestreams.Subscription
    public final void request(long j) {
        long j2;
        if (SubscriptionHelper.validate(j)) {
            do {
                j2 = get();
                if (j2 == Long.MIN_VALUE || j2 == Long.MAX_VALUE) {
                    break;
                }
            } while (!compareAndSet(j2, Options.Companion.addCap(j2, j)));
            this.parent.drain();
        }
    }
}
