package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.core.FlowableSubscriber;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicLong;
import kotlin.math.MathKt;
import net.newpipe.app.AppKt;
import okio.Options;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class FlowableOnBackpressureDrop$BackpressureDropSubscriber extends AtomicLong implements FlowableSubscriber, Subscription {
    private static final long serialVersionUID = -6246093802440953054L;
    boolean done;
    final Subscriber downstream;
    final Consumer onDrop;
    Subscription upstream;

    public FlowableOnBackpressureDrop$BackpressureDropSubscriber(Subscriber subscriber, FlowableMap flowableMap) {
        this.downstream = subscriber;
        this.onDrop = flowableMap;
    }

    @Override // org.reactivestreams.Subscription
    public final void cancel() {
        this.upstream.cancel();
    }

    @Override // org.reactivestreams.Subscriber
    public final void onComplete() {
        if (this.done) {
            return;
        }
        this.done = true;
        this.downstream.onComplete();
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
        if (get() != 0) {
            this.downstream.onNext(obj);
            Options.Companion.produced(this, 1L);
            return;
        }
        try {
            this.onDrop.accept(obj);
        } catch (Throwable th) {
            AppKt.throwIfFatal(th);
            cancel();
            onError(th);
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

    @Override // org.reactivestreams.Subscription
    public final void request(long j) {
        if (SubscriptionHelper.validate(j)) {
            Options.Companion.add(this, j);
        }
    }
}
