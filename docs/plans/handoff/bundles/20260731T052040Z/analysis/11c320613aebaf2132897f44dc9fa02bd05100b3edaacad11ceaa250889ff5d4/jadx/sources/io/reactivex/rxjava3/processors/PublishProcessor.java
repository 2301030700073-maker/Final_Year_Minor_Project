package io.reactivex.rxjava3.processors;

import androidx.compose.ui.Modifier;
import io.reactivex.rxjava3.core.FlowableSubscriber;
import io.reactivex.rxjava3.exceptions.MissingBackpressureException;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.internal.util.ExceptionHelper;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.math.MathKt;
import okio.Options;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class PublishProcessor extends FlowableProcessor {
    public Throwable error;
    public final AtomicReference subscribers = new AtomicReference(EMPTY);
    public static final PublishSubscription[] TERMINATED = new PublishSubscription[0];
    public static final PublishSubscription[] EMPTY = new PublishSubscription[0];

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class PublishSubscription extends AtomicLong implements Subscription {
        private static final long serialVersionUID = 3562861878281475070L;
        final Subscriber downstream;
        final PublishProcessor parent;

        public PublishSubscription(Subscriber subscriber, PublishProcessor publishProcessor) {
            this.downstream = subscriber;
            this.parent = publishProcessor;
        }

        @Override // org.reactivestreams.Subscription
        public final void cancel() {
            if (getAndSet(Long.MIN_VALUE) != Long.MIN_VALUE) {
                this.parent.remove(this);
            }
        }

        @Override // org.reactivestreams.Subscription
        public final void request(long j) {
            long j2;
            if (SubscriptionHelper.validate(j)) {
                do {
                    j2 = get();
                    if (j2 == Long.MIN_VALUE || j2 == Long.MAX_VALUE) {
                        return;
                    }
                } while (!compareAndSet(j2, Options.Companion.addCap(j2, j)));
            }
        }
    }

    @Override // org.reactivestreams.Subscriber
    public final void onComplete() {
        AtomicReference atomicReference = this.subscribers;
        Object obj = atomicReference.get();
        Object obj2 = TERMINATED;
        if (obj == obj2) {
            return;
        }
        PublishSubscription[] publishSubscriptionArr = (PublishSubscription[]) atomicReference.getAndSet(obj2);
        for (PublishSubscription publishSubscription : publishSubscriptionArr) {
            if (publishSubscription.get() != Long.MIN_VALUE) {
                publishSubscription.downstream.onComplete();
            }
        }
    }

    @Override // org.reactivestreams.Subscriber
    public final void onError(Throwable th) {
        ExceptionHelper.nullCheck(th, "onError called with a null Throwable.");
        AtomicReference atomicReference = this.subscribers;
        Object obj = atomicReference.get();
        Object obj2 = TERMINATED;
        if (obj == obj2) {
            MathKt.onError(th);
            return;
        }
        this.error = th;
        for (PublishSubscription publishSubscription : (PublishSubscription[]) atomicReference.getAndSet(obj2)) {
            if (publishSubscription.get() != Long.MIN_VALUE) {
                publishSubscription.downstream.onError(th);
            } else {
                MathKt.onError(th);
            }
        }
    }

    @Override // org.reactivestreams.Subscriber
    public final void onNext(Object obj) {
        long j;
        long j2;
        ExceptionHelper.nullCheck(obj, "onNext called with a null value.");
        for (PublishSubscription publishSubscription : (PublishSubscription[]) this.subscribers.get()) {
            long j3 = publishSubscription.get();
            if (j3 != Long.MIN_VALUE) {
                if (j3 != 0) {
                    publishSubscription.downstream.onNext(obj);
                    do {
                        j = publishSubscription.get();
                        if (j != Long.MIN_VALUE && j != Long.MAX_VALUE) {
                            j2 = j - 1;
                            if (j2 < 0) {
                                MathKt.onError(new IllegalStateException(Modifier.CC.m("More produced than requested: ", j2)));
                                j2 = 0;
                            }
                        }
                    } while (!publishSubscription.compareAndSet(j, j2));
                } else {
                    publishSubscription.cancel();
                    publishSubscription.downstream.onError(new MissingBackpressureException("Could not emit value due to lack of requests"));
                }
            }
        }
    }

    @Override // org.reactivestreams.Subscriber
    public final void onSubscribe(Subscription subscription) {
        if (this.subscribers.get() == TERMINATED) {
            subscription.cancel();
        } else {
            subscription.request(Long.MAX_VALUE);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void remove(PublishSubscription publishSubscription) {
        PublishSubscription[] publishSubscriptionArr;
        while (true) {
            AtomicReference atomicReference = this.subscribers;
            PublishSubscription[] publishSubscriptionArr2 = (PublishSubscription[]) atomicReference.get();
            if (publishSubscriptionArr2 == TERMINATED || publishSubscriptionArr2 == (publishSubscriptionArr = EMPTY)) {
                return;
            }
            int length = publishSubscriptionArr2.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    i = -1;
                    break;
                } else if (publishSubscriptionArr2[i] == publishSubscription) {
                    break;
                } else {
                    i++;
                }
            }
            if (i < 0) {
                return;
            }
            if (length != 1) {
                publishSubscriptionArr = new PublishSubscription[length - 1];
                System.arraycopy(publishSubscriptionArr2, 0, publishSubscriptionArr, 0, i);
                System.arraycopy(publishSubscriptionArr2, i + 1, publishSubscriptionArr, i, (length - i) - 1);
            }
            while (!atomicReference.compareAndSet(publishSubscriptionArr2, publishSubscriptionArr)) {
                if (atomicReference.get() != publishSubscriptionArr2) {
                    break;
                }
            }
            return;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // io.reactivex.rxjava3.core.Flowable
    public final void subscribeActual(FlowableSubscriber flowableSubscriber) {
        PublishSubscription publishSubscription = new PublishSubscription(flowableSubscriber, this);
        flowableSubscriber.onSubscribe(publishSubscription);
        while (true) {
            AtomicReference atomicReference = this.subscribers;
            PublishSubscription[] publishSubscriptionArr = (PublishSubscription[]) atomicReference.get();
            if (publishSubscriptionArr == TERMINATED) {
                Throwable th = this.error;
                if (th != null) {
                    flowableSubscriber.onError(th);
                    return;
                } else {
                    flowableSubscriber.onComplete();
                    return;
                }
            }
            int length = publishSubscriptionArr.length;
            PublishSubscription[] publishSubscriptionArr2 = new PublishSubscription[length + 1];
            System.arraycopy(publishSubscriptionArr, 0, publishSubscriptionArr2, 0, length);
            publishSubscriptionArr2[length] = publishSubscription;
            while (!atomicReference.compareAndSet(publishSubscriptionArr, publishSubscriptionArr2)) {
                if (atomicReference.get() != publishSubscriptionArr) {
                    break;
                }
            }
            if (publishSubscription.get() == Long.MIN_VALUE) {
                remove(publishSubscription);
                return;
            }
            return;
        }
    }
}
