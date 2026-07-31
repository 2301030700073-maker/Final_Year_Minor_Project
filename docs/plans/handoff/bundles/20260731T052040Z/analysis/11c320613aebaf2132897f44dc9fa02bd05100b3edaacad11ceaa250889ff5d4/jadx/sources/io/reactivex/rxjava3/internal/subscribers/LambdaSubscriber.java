package io.reactivex.rxjava3.internal.subscribers;

import androidx.transition.Transition;
import io.reactivex.rxjava3.core.FlowableSubscriber;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.internal.functions.Functions;
import io.reactivex.rxjava3.internal.operators.flowable.FlowableInternalHelper$RequestMax;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.math.MathKt;
import net.newpipe.app.AppKt;
import org.reactivestreams.Subscription;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class LambdaSubscriber extends AtomicReference implements FlowableSubscriber, Subscription, Disposable {
    private static final long serialVersionUID = -7251123623727029452L;
    final Action onComplete;
    final Consumer onError;
    final Consumer onNext;
    final Consumer onSubscribe;

    public LambdaSubscriber(Consumer consumer, Consumer consumer2) {
        Transition.AnonymousClass1 anonymousClass1 = Functions.EMPTY_ACTION;
        this.onNext = consumer;
        this.onError = consumer2;
        this.onComplete = anonymousClass1;
        this.onSubscribe = FlowableInternalHelper$RequestMax.INSTANCE;
    }

    @Override // org.reactivestreams.Subscription
    public final void cancel() {
        SubscriptionHelper.cancel(this);
    }

    @Override // io.reactivex.rxjava3.disposables.Disposable
    public final void dispose() {
        SubscriptionHelper.cancel(this);
    }

    @Override // io.reactivex.rxjava3.disposables.Disposable
    public final boolean isDisposed() {
        return get() == SubscriptionHelper.CANCELLED;
    }

    @Override // org.reactivestreams.Subscriber
    public final void onComplete() {
        Object obj = get();
        SubscriptionHelper subscriptionHelper = SubscriptionHelper.CANCELLED;
        if (obj != subscriptionHelper) {
            lazySet(subscriptionHelper);
            try {
                this.onComplete.run();
            } catch (Throwable th) {
                AppKt.throwIfFatal(th);
                MathKt.onError(th);
            }
        }
    }

    @Override // org.reactivestreams.Subscriber
    public final void onError(Throwable th) {
        Object obj = get();
        SubscriptionHelper subscriptionHelper = SubscriptionHelper.CANCELLED;
        if (obj == subscriptionHelper) {
            MathKt.onError(th);
            return;
        }
        lazySet(subscriptionHelper);
        try {
            this.onError.accept(th);
        } catch (Throwable th2) {
            AppKt.throwIfFatal(th2);
            MathKt.onError(new CompositeException(th, th2));
        }
    }

    @Override // org.reactivestreams.Subscriber
    public final void onNext(Object obj) {
        if (isDisposed()) {
            return;
        }
        try {
            this.onNext.accept(obj);
        } catch (Throwable th) {
            AppKt.throwIfFatal(th);
            ((Subscription) get()).cancel();
            onError(th);
        }
    }

    @Override // org.reactivestreams.Subscriber
    public final void onSubscribe(Subscription subscription) {
        if (SubscriptionHelper.setOnce(this, subscription)) {
            try {
                this.onSubscribe.accept(this);
            } catch (Throwable th) {
                AppKt.throwIfFatal(th);
                subscription.cancel();
                onError(th);
            }
        }
    }

    @Override // org.reactivestreams.Subscription
    public final void request(long j) {
        ((Subscription) get()).request(j);
    }
}
