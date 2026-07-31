package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.functions.Predicate;
import io.reactivex.rxjava3.internal.subscribers.BasicFuseableSubscriber;
import io.reactivex.rxjava3.operators.ConditionalSubscriber;
import io.reactivex.rxjava3.operators.QueueSubscription;
import org.reactivestreams.Subscriber;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class FlowableFilter$FilterSubscriber extends BasicFuseableSubscriber implements ConditionalSubscriber {
    public final Predicate filter;

    public FlowableFilter$FilterSubscriber(Subscriber subscriber, Predicate predicate) {
        super(subscriber);
        this.filter = predicate;
    }

    @Override // org.reactivestreams.Subscriber
    public final void onNext(Object obj) {
        if (tryOnNext(obj)) {
            return;
        }
        this.upstream.request(1L);
    }

    @Override // io.reactivex.rxjava3.operators.SimpleQueue
    public final Object poll() {
        QueueSubscription queueSubscription = this.qs;
        while (true) {
            Object poll = queueSubscription.poll();
            if (poll == null) {
                return null;
            }
            if (this.filter.test(poll)) {
                return poll;
            }
            if (this.sourceMode == 2) {
                queueSubscription.request(1L);
            }
        }
    }

    @Override // io.reactivex.rxjava3.operators.ConditionalSubscriber
    public final boolean tryOnNext(Object obj) {
        if (this.done) {
            return false;
        }
        int i = this.sourceMode;
        Subscriber subscriber = this.downstream;
        if (i != 0) {
            subscriber.onNext(null);
            return true;
        }
        try {
            boolean test = this.filter.test(obj);
            if (test) {
                subscriber.onNext(obj);
            }
            return test;
        } catch (Throwable th) {
            this.fail(th);
            return true;
        }
    }
}
