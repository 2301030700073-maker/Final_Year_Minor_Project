package io.reactivex.rxjava3.internal.subscribers;

import androidx.compose.ui.Modifier;
import io.reactivex.rxjava3.core.FlowableSubscriber;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class StrictSubscriber extends AtomicInteger implements FlowableSubscriber, Subscription {
    private static final long serialVersionUID = -4945028590049415624L;
    volatile boolean done;
    final Subscriber downstream;
    final AtomicThrowable error = new AtomicThrowable();
    final AtomicLong requested = new AtomicLong();
    final AtomicReference<Subscription> upstream = new AtomicReference<>();
    final AtomicBoolean once = new AtomicBoolean();

    public StrictSubscriber(Subscriber subscriber) {
        this.downstream = subscriber;
    }

    @Override // org.reactivestreams.Subscription
    public final void cancel() {
        if (this.done) {
            return;
        }
        SubscriptionHelper.cancel(this.upstream);
    }

    @Override // org.reactivestreams.Subscriber
    public final void onComplete() {
        this.done = true;
        Subscriber subscriber = this.downstream;
        AtomicThrowable atomicThrowable = this.error;
        if (getAndIncrement() == 0) {
            atomicThrowable.tryTerminateConsumer(subscriber);
        }
    }

    @Override // org.reactivestreams.Subscriber
    public final void onError(Throwable th) {
        this.done = true;
        Subscriber subscriber = this.downstream;
        AtomicThrowable atomicThrowable = this.error;
        if (atomicThrowable.tryAddThrowableOrReport(th) && getAndIncrement() == 0) {
            atomicThrowable.tryTerminateConsumer(subscriber);
        }
    }

    @Override // org.reactivestreams.Subscriber
    public final void onNext(Object obj) {
        Subscriber subscriber = this.downstream;
        AtomicThrowable atomicThrowable = this.error;
        if (get() == 0 && compareAndSet(0, 1)) {
            subscriber.onNext(obj);
            if (decrementAndGet() == 0) {
                return;
            }
            atomicThrowable.tryTerminateConsumer(subscriber);
        }
    }

    @Override // org.reactivestreams.Subscriber
    public final void onSubscribe(Subscription subscription) {
        if (!this.once.compareAndSet(false, true)) {
            subscription.cancel();
            cancel();
            onError(new IllegalStateException("§2.12 violated: onSubscribe must be called at most once"));
            return;
        }
        this.downstream.onSubscribe(this);
        AtomicReference<Subscription> atomicReference = this.upstream;
        AtomicLong atomicLong = this.requested;
        if (SubscriptionHelper.setOnce(atomicReference, subscription)) {
            long andSet = atomicLong.getAndSet(0L);
            if (andSet != 0) {
                subscription.request(andSet);
            }
        }
    }

    @Override // org.reactivestreams.Subscription
    public final void request(long j) {
        if (j > 0) {
            SubscriptionHelper.deferredRequest(this.upstream, this.requested, j);
        } else {
            cancel();
            onError(new IllegalArgumentException(Modifier.CC.m("§3.9 violated: positive request amount required but it was ", j)));
        }
    }
}
