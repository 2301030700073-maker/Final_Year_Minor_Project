package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.core.FlowableSubscriber;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import okio.Options;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class AbstractBackpressureThrottlingSubscriber extends AtomicInteger implements FlowableSubscriber, Subscription {
    private static final long serialVersionUID = -5050301752721603566L;
    volatile boolean cancelled;
    volatile boolean done;
    final Subscriber downstream;
    Throwable error;
    Subscription upstream;
    final AtomicLong requested = new AtomicLong();
    final AtomicReference<Object> current = new AtomicReference<>();

    public AbstractBackpressureThrottlingSubscriber(Subscriber subscriber) {
        this.downstream = subscriber;
    }

    @Override // org.reactivestreams.Subscription
    public final void cancel() {
        if (this.cancelled) {
            return;
        }
        this.cancelled = true;
        this.upstream.cancel();
        if (getAndIncrement() == 0) {
            this.current.lazySet(null);
        }
    }

    public final boolean checkTerminated(boolean z, boolean z2, Subscriber subscriber, AtomicReference atomicReference) {
        if (this.cancelled) {
            atomicReference.lazySet(null);
            return true;
        }
        if (!z) {
            return false;
        }
        Throwable th = this.error;
        if (th != null) {
            atomicReference.lazySet(null);
            subscriber.onError(th);
            return true;
        }
        if (!z2) {
            return false;
        }
        subscriber.onComplete();
        return true;
    }

    public final void drain() {
        if (getAndIncrement() != 0) {
            return;
        }
        Subscriber subscriber = this.downstream;
        AtomicLong atomicLong = this.requested;
        AtomicReference<Object> atomicReference = this.current;
        int i = 1;
        do {
            long j = 0;
            while (true) {
                if (j == atomicLong.get()) {
                    break;
                }
                boolean z = this.done;
                Object andSet = atomicReference.getAndSet(null);
                boolean z2 = andSet == null;
                if (checkTerminated(z, z2, subscriber, atomicReference)) {
                    return;
                }
                if (z2) {
                    break;
                }
                subscriber.onNext(andSet);
                j++;
            }
            if (j == atomicLong.get()) {
                if (checkTerminated(this.done, atomicReference.get() == null, subscriber, atomicReference)) {
                    return;
                }
            }
            if (j != 0) {
                Options.Companion.produced(atomicLong, j);
            }
            i = addAndGet(-i);
        } while (i != 0);
    }

    @Override // org.reactivestreams.Subscriber
    public final void onComplete() {
        this.done = true;
        drain();
    }

    @Override // org.reactivestreams.Subscriber
    public final void onError(Throwable th) {
        this.error = th;
        this.done = true;
        drain();
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
            Options.Companion.add(this.requested, j);
            drain();
        }
    }
}
