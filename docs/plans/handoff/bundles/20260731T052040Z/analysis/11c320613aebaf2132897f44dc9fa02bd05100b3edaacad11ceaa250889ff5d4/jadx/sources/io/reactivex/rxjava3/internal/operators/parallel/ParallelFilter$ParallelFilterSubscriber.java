package io.reactivex.rxjava3.internal.operators.parallel;

import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.operators.ConditionalSubscriber;
import kotlin.math.MathKt;
import net.newpipe.app.AppKt;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
import org.schabi.newpipe.local.feed.service.FeedLoadManager$notification$1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ParallelFilter$ParallelFilterSubscriber implements ConditionalSubscriber, Subscription {
    public final /* synthetic */ int $r8$classId;
    public boolean done;
    public final Subscriber downstream;
    public final FeedLoadManager$notification$1 predicate;
    public Subscription upstream;

    public ParallelFilter$ParallelFilterSubscriber(Subscriber subscriber, FeedLoadManager$notification$1 feedLoadManager$notification$1, int i) {
        this.$r8$classId = i;
        this.predicate = feedLoadManager$notification$1;
        this.downstream = subscriber;
    }

    @Override // org.reactivestreams.Subscription
    public final void cancel() {
        this.upstream.cancel();
    }

    @Override // org.reactivestreams.Subscriber
    public final void onComplete() {
        int i = this.$r8$classId;
        Subscriber subscriber = this.downstream;
        switch (i) {
            case 0:
                if (!this.done) {
                    this.done = true;
                    subscriber.onComplete();
                    break;
                }
                break;
            default:
                if (!this.done) {
                    this.done = true;
                    ((ConditionalSubscriber) subscriber).onComplete();
                    break;
                }
                break;
        }
    }

    @Override // org.reactivestreams.Subscriber
    public final void onError(Throwable th) {
        int i = this.$r8$classId;
        Subscriber subscriber = this.downstream;
        switch (i) {
            case 0:
                if (!this.done) {
                    this.done = true;
                    subscriber.onError(th);
                    break;
                } else {
                    MathKt.onError(th);
                    break;
                }
            default:
                if (!this.done) {
                    this.done = true;
                    ((ConditionalSubscriber) subscriber).onError(th);
                    break;
                } else {
                    MathKt.onError(th);
                    break;
                }
        }
    }

    @Override // org.reactivestreams.Subscriber
    public final void onNext(Object obj) {
        if (tryOnNext(obj) || this.done) {
            return;
        }
        this.upstream.request(1L);
    }

    @Override // org.reactivestreams.Subscriber
    public final void onSubscribe(Subscription subscription) {
        int i = this.$r8$classId;
        Subscriber subscriber = this.downstream;
        switch (i) {
            case 0:
                if (SubscriptionHelper.validate(this.upstream, subscription)) {
                    this.upstream = subscription;
                    subscriber.onSubscribe(this);
                    break;
                }
                break;
            default:
                if (SubscriptionHelper.validate(this.upstream, subscription)) {
                    this.upstream = subscription;
                    ((ConditionalSubscriber) subscriber).onSubscribe(this);
                    break;
                }
                break;
        }
    }

    @Override // org.reactivestreams.Subscription
    public final void request(long j) {
        this.upstream.request(j);
    }

    @Override // io.reactivex.rxjava3.operators.ConditionalSubscriber
    public final boolean tryOnNext(Object obj) {
        int i = this.$r8$classId;
        Subscriber subscriber = this.downstream;
        FeedLoadManager$notification$1 feedLoadManager$notification$1 = this.predicate;
        switch (i) {
            case 0:
                if (!this.done) {
                    try {
                        if (feedLoadManager$notification$1.test(obj)) {
                            subscriber.onNext(obj);
                            break;
                        }
                    } catch (Throwable th) {
                        AppKt.throwIfFatal(th);
                        this.cancel();
                        this.onError(th);
                        return false;
                    }
                }
                break;
            default:
                if (!this.done) {
                    try {
                        if (feedLoadManager$notification$1.test(obj)) {
                            break;
                        }
                    } catch (Throwable th2) {
                        AppKt.throwIfFatal(th2);
                        this.cancel();
                        this.onError(th2);
                        return false;
                    }
                }
                break;
        }
        return false;
    }
}
