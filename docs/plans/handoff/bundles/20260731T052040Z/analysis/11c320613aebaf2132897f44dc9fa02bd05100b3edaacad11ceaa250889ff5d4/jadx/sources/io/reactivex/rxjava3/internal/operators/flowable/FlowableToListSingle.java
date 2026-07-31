package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.core.FlowableSubscriber;
import io.reactivex.rxjava3.core.Single;
import io.reactivex.rxjava3.core.SingleObserver;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import io.reactivex.rxjava3.internal.fuseable.FuseToFlowable;
import io.reactivex.rxjava3.internal.operators.flowable.FlowableElementAtMaybe;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.internal.util.ExceptionHelper;
import java.util.ArrayList;
import net.newpipe.app.AppKt;
import org.reactivestreams.Subscription;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class FlowableToListSingle extends Single implements FuseToFlowable {
    public final /* synthetic */ int $r8$classId;
    public final Flowable source;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class ToListSubscriber implements FlowableSubscriber, Disposable {
        public final SingleObserver downstream;
        public Subscription upstream;
        public ArrayList value;

        public ToListSubscriber(SingleObserver singleObserver, ArrayList arrayList) {
            this.downstream = singleObserver;
            this.value = arrayList;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final void dispose() {
            this.upstream.cancel();
            this.upstream = SubscriptionHelper.CANCELLED;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final boolean isDisposed() {
            return this.upstream == SubscriptionHelper.CANCELLED;
        }

        @Override // org.reactivestreams.Subscriber
        public final void onComplete() {
            this.upstream = SubscriptionHelper.CANCELLED;
            this.downstream.onSuccess(this.value);
        }

        @Override // org.reactivestreams.Subscriber
        public final void onError(Throwable th) {
            this.value = null;
            this.upstream = SubscriptionHelper.CANCELLED;
            this.downstream.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public final void onNext(Object obj) {
            this.value.add(obj);
        }

        @Override // org.reactivestreams.Subscriber
        public final void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.upstream, subscription)) {
                this.upstream = subscription;
                this.downstream.onSubscribe(this);
                subscription.request(Long.MAX_VALUE);
            }
        }
    }

    public /* synthetic */ FlowableToListSingle(Flowable flowable, int i) {
        this.$r8$classId = i;
        this.source = flowable;
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.FuseToFlowable
    public final Flowable fuseToFlowable() {
        int i = this.$r8$classId;
        Flowable flowable = this.source;
        switch (i) {
            case 0:
                return new FlowableMap((FlowableSubscribeOn) flowable);
            default:
                return new FlowableElementAt(flowable, true);
        }
    }

    @Override // io.reactivex.rxjava3.core.Single
    public final void subscribeActual(SingleObserver singleObserver) {
        int i = this.$r8$classId;
        Flowable flowable = this.source;
        switch (i) {
            case 0:
                try {
                    ArrayList arrayList = new ArrayList();
                    ExceptionHelper.Termination termination = ExceptionHelper.TERMINATED;
                    ((FlowableSubscribeOn) flowable).subscribe((FlowableSubscriber) new ToListSubscriber(singleObserver, arrayList));
                    break;
                } catch (Throwable th) {
                    AppKt.throwIfFatal(th);
                    singleObserver.onSubscribe(EmptyDisposable.INSTANCE);
                    singleObserver.onError(th);
                    return;
                }
            default:
                flowable.subscribe((FlowableSubscriber) new FlowableElementAtMaybe.ElementAtSubscriber(singleObserver, 1));
                break;
        }
    }
}
