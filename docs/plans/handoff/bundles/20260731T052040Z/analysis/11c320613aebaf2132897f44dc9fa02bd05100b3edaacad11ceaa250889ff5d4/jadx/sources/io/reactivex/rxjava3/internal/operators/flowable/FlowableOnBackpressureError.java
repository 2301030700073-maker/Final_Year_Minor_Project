package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.core.FlowableSubscriber;
import io.reactivex.rxjava3.exceptions.MissingBackpressureException;
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
public final class FlowableOnBackpressureError extends AbstractFlowableWithUpstream {
    public final /* synthetic */ int $r8$classId;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class BackpressureErrorSubscriber extends AtomicLong implements FlowableSubscriber, Subscription {
        private static final long serialVersionUID = -3176480756392482682L;
        boolean done;
        final Subscriber downstream;
        Subscription upstream;

        public BackpressureErrorSubscriber(Subscriber subscriber) {
            this.downstream = subscriber;
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
            } else {
                this.upstream.cancel();
                onError(new MissingBackpressureException("Could not emit value due to lack of requests"));
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

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ FlowableOnBackpressureError(Flowable flowable, int i) {
        super(flowable);
        this.$r8$classId = i;
    }

    @Override // io.reactivex.rxjava3.core.Flowable
    public final void subscribeActual(final FlowableSubscriber flowableSubscriber) {
        switch (this.$r8$classId) {
            case 0:
                this.source.subscribe((FlowableSubscriber) new BackpressureErrorSubscriber(flowableSubscriber));
                break;
            default:
                this.source.subscribe((FlowableSubscriber) new AbstractBackpressureThrottlingSubscriber(flowableSubscriber) { // from class: io.reactivex.rxjava3.internal.operators.flowable.FlowableOnBackpressureLatest$BackpressureLatestSubscriber
                    private static final long serialVersionUID = 163080509307634843L;
                    final Consumer onDropped = null;

                    @Override // org.reactivestreams.Subscriber
                    public final void onNext(Object obj) {
                        Object andSet = this.current.getAndSet(obj);
                        Consumer consumer = this.onDropped;
                        if (consumer != null && andSet != null) {
                            try {
                                consumer.accept(andSet);
                            } catch (Throwable th) {
                                AppKt.throwIfFatal(th);
                                this.upstream.cancel();
                                this.downstream.onError(th);
                            }
                        }
                        drain();
                    }
                });
                break;
        }
    }
}
