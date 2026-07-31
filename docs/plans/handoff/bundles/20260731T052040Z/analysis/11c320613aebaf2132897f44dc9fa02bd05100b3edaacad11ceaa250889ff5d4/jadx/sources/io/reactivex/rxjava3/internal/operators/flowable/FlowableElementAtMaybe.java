package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.core.FlowableSubscriber;
import io.reactivex.rxjava3.core.Maybe;
import io.reactivex.rxjava3.core.MaybeObserver;
import io.reactivex.rxjava3.core.SingleObserver;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.fuseable.FuseToFlowable;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.NoSuchElementException;
import kotlin.math.MathKt;
import org.reactivestreams.Subscription;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class FlowableElementAtMaybe extends Maybe implements FuseToFlowable {
    public final Flowable source;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class ElementAtSubscriber implements FlowableSubscriber, Disposable {
        public final /* synthetic */ int $r8$classId;
        public long count;
        public boolean done;
        public final Object downstream;
        public Subscription upstream;

        public /* synthetic */ ElementAtSubscriber(Object obj, int i) {
            this.$r8$classId = i;
            this.downstream = obj;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final void dispose() {
            int i = this.$r8$classId;
            SubscriptionHelper subscriptionHelper = SubscriptionHelper.CANCELLED;
            switch (i) {
                case 0:
                    this.upstream.cancel();
                    this.upstream = subscriptionHelper;
                    break;
                default:
                    this.upstream.cancel();
                    this.upstream = subscriptionHelper;
                    break;
            }
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final boolean isDisposed() {
            int i = this.$r8$classId;
            SubscriptionHelper subscriptionHelper = SubscriptionHelper.CANCELLED;
            switch (i) {
                case 0:
                    if (this.upstream == subscriptionHelper) {
                        break;
                    }
                    break;
                default:
                    if (this.upstream == subscriptionHelper) {
                        break;
                    }
                    break;
            }
            return true;
        }

        @Override // org.reactivestreams.Subscriber
        public final void onComplete() {
            int i = this.$r8$classId;
            Object obj = this.downstream;
            SubscriptionHelper subscriptionHelper = SubscriptionHelper.CANCELLED;
            switch (i) {
                case 0:
                    this.upstream = subscriptionHelper;
                    if (!this.done) {
                        this.done = true;
                        ((MaybeObserver) obj).onComplete();
                        break;
                    }
                    break;
                default:
                    this.upstream = subscriptionHelper;
                    if (!this.done) {
                        this.done = true;
                        ((SingleObserver) obj).onError(new NoSuchElementException());
                        break;
                    }
                    break;
            }
        }

        @Override // org.reactivestreams.Subscriber
        public final void onError(Throwable th) {
            int i = this.$r8$classId;
            Object obj = this.downstream;
            SubscriptionHelper subscriptionHelper = SubscriptionHelper.CANCELLED;
            switch (i) {
                case 0:
                    if (!this.done) {
                        this.done = true;
                        this.upstream = subscriptionHelper;
                        ((MaybeObserver) obj).onError(th);
                        break;
                    } else {
                        MathKt.onError(th);
                        break;
                    }
                default:
                    if (!this.done) {
                        this.done = true;
                        this.upstream = subscriptionHelper;
                        ((SingleObserver) obj).onError(th);
                        break;
                    } else {
                        MathKt.onError(th);
                        break;
                    }
            }
        }

        @Override // org.reactivestreams.Subscriber
        public final void onNext(Object obj) {
            int i = this.$r8$classId;
            Object obj2 = this.downstream;
            SubscriptionHelper subscriptionHelper = SubscriptionHelper.CANCELLED;
            switch (i) {
                case 0:
                    if (!this.done) {
                        long j = this.count;
                        if (j != 0) {
                            this.count = j + 1;
                            break;
                        } else {
                            this.done = true;
                            this.upstream.cancel();
                            this.upstream = subscriptionHelper;
                            ((MaybeObserver) obj2).onSuccess(obj);
                            break;
                        }
                    }
                    break;
                default:
                    if (!this.done) {
                        long j2 = this.count;
                        if (j2 != 0) {
                            this.count = j2 + 1;
                            break;
                        } else {
                            this.done = true;
                            this.upstream.cancel();
                            this.upstream = subscriptionHelper;
                            ((SingleObserver) obj2).onSuccess(obj);
                            break;
                        }
                    }
                    break;
            }
        }

        @Override // org.reactivestreams.Subscriber
        public final void onSubscribe(Subscription subscription) {
            int i = this.$r8$classId;
            Object obj = this.downstream;
            switch (i) {
                case 0:
                    if (SubscriptionHelper.validate(this.upstream, subscription)) {
                        this.upstream = subscription;
                        ((MaybeObserver) obj).onSubscribe(this);
                        subscription.request(1L);
                        break;
                    }
                    break;
                default:
                    if (SubscriptionHelper.validate(this.upstream, subscription)) {
                        this.upstream = subscription;
                        ((SingleObserver) obj).onSubscribe(this);
                        subscription.request(1L);
                        break;
                    }
                    break;
            }
        }
    }

    public FlowableElementAtMaybe(Flowable flowable) {
        this.source = flowable;
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.FuseToFlowable
    public final Flowable fuseToFlowable() {
        return new FlowableElementAt(this.source, false);
    }

    @Override // io.reactivex.rxjava3.core.Maybe
    public final void subscribeActual(MaybeObserver maybeObserver) {
        this.source.subscribe((FlowableSubscriber) new ElementAtSubscriber(maybeObserver, 0));
    }
}
