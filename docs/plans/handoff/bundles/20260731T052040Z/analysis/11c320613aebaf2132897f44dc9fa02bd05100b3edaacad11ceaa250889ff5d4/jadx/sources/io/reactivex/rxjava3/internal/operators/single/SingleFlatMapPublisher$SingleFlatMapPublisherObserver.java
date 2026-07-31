package io.reactivex.rxjava3.internal.operators.single;

import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.core.FlowableSubscriber;
import io.reactivex.rxjava3.core.SingleObserver;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import j$.util.Objects;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import net.newpipe.app.AppKt;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class SingleFlatMapPublisher$SingleFlatMapPublisherObserver extends AtomicLong implements SingleObserver, FlowableSubscriber, Subscription {
    private static final long serialVersionUID = 7759721921468635667L;
    Disposable disposable;
    final Subscriber downstream;
    final Function mapper;
    final AtomicReference<Subscription> parent = new AtomicReference<>();

    public SingleFlatMapPublisher$SingleFlatMapPublisherObserver(Subscriber subscriber, Function function) {
        this.downstream = subscriber;
        this.mapper = function;
    }

    @Override // org.reactivestreams.Subscription
    public final void cancel() {
        this.disposable.dispose();
        SubscriptionHelper.cancel(this.parent);
    }

    @Override // org.reactivestreams.Subscriber
    public final void onComplete() {
        this.downstream.onComplete();
    }

    @Override // io.reactivex.rxjava3.core.SingleObserver
    public final void onError(Throwable th) {
        this.downstream.onError(th);
    }

    @Override // org.reactivestreams.Subscriber
    public final void onNext(Object obj) {
        this.downstream.onNext(obj);
    }

    @Override // org.reactivestreams.Subscriber
    public final void onSubscribe(Subscription subscription) {
        if (SubscriptionHelper.setOnce(this.parent, subscription)) {
            long andSet = getAndSet(0L);
            if (andSet != 0) {
                subscription.request(andSet);
            }
        }
    }

    @Override // io.reactivex.rxjava3.core.SingleObserver
    public final void onSuccess(Object obj) {
        try {
            Object apply = this.mapper.apply(obj);
            Objects.requireNonNull(apply, "the mapper returned a null Publisher");
            Publisher publisher = (Publisher) apply;
            if (this.parent.get() != SubscriptionHelper.CANCELLED) {
                ((Flowable) publisher).subscribe((Subscriber) this);
            }
        } catch (Throwable th) {
            AppKt.throwIfFatal(th);
            this.downstream.onError(th);
        }
    }

    @Override // org.reactivestreams.Subscription
    public final void request(long j) {
        SubscriptionHelper.deferredRequest(this.parent, this, j);
    }

    @Override // io.reactivex.rxjava3.core.SingleObserver
    public final void onSubscribe(Disposable disposable) {
        this.disposable = disposable;
        this.downstream.onSubscribe(this);
    }
}
