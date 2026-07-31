package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class FlowableFromObservable$SubscriberObserver implements Observer, Subscription {
    public final Subscriber downstream;
    public Disposable upstream;

    public FlowableFromObservable$SubscriberObserver(Subscriber subscriber) {
        this.downstream = subscriber;
    }

    @Override // org.reactivestreams.Subscription
    public final void cancel() {
        this.upstream.dispose();
    }

    @Override // io.reactivex.rxjava3.core.Observer
    public final void onComplete() {
        this.downstream.onComplete();
    }

    @Override // io.reactivex.rxjava3.core.Observer
    public final void onError(Throwable th) {
        this.downstream.onError(th);
    }

    @Override // io.reactivex.rxjava3.core.Observer
    public final void onNext(Object obj) {
        this.downstream.onNext(obj);
    }

    @Override // io.reactivex.rxjava3.core.Observer
    public final void onSubscribe(Disposable disposable) {
        this.upstream = disposable;
        this.downstream.onSubscribe(this);
    }

    @Override // org.reactivestreams.Subscription
    public final void request(long j) {
    }
}
