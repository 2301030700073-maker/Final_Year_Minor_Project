package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.core.FlowableSubscriber;
import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionArbiter;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class FlowableConcatArray$ConcatArraySubscriber extends SubscriptionArbiter implements FlowableSubscriber {
    private static final long serialVersionUID = -8158322871608889516L;
    final Subscriber downstream;
    List<Throwable> errors;
    int index;
    long produced;
    final Publisher[] sources;
    final boolean delayError = false;
    final AtomicInteger wip = new AtomicInteger();

    public FlowableConcatArray$ConcatArraySubscriber(Publisher[] publisherArr, Subscriber subscriber) {
        this.downstream = subscriber;
        this.sources = publisherArr;
    }

    @Override // org.reactivestreams.Subscriber
    public final void onComplete() {
        if (this.wip.getAndIncrement() == 0) {
            Publisher[] publisherArr = this.sources;
            int length = publisherArr.length;
            int i = this.index;
            while (i != length) {
                Publisher publisher = publisherArr[i];
                if (publisher == null) {
                    NullPointerException nullPointerException = new NullPointerException("A Publisher entry is null");
                    if (!this.delayError) {
                        this.downstream.onError(nullPointerException);
                        return;
                    }
                    List list = this.errors;
                    if (list == null) {
                        list = new ArrayList((length - i) + 1);
                        this.errors = list;
                    }
                    list.add(nullPointerException);
                    i++;
                } else {
                    long j = this.produced;
                    if (j != 0) {
                        this.produced = 0L;
                        produced(j);
                    }
                    ((Flowable) publisher).subscribe((Subscriber) this);
                    i++;
                    this.index = i;
                    if (this.wip.decrementAndGet() == 0) {
                        return;
                    }
                }
            }
            List<Throwable> list2 = this.errors;
            if (list2 == null) {
                this.downstream.onComplete();
                return;
            }
            int size = list2.size();
            Subscriber subscriber = this.downstream;
            if (size == 1) {
                subscriber.onError(list2.get(0));
            } else {
                subscriber.onError(new CompositeException(list2));
            }
        }
    }

    @Override // org.reactivestreams.Subscriber
    public final void onError(Throwable th) {
        if (!this.delayError) {
            this.downstream.onError(th);
            return;
        }
        List list = this.errors;
        if (list == null) {
            list = new ArrayList((this.sources.length - this.index) + 1);
            this.errors = list;
        }
        list.add(th);
        onComplete();
    }

    @Override // org.reactivestreams.Subscriber
    public final void onNext(Object obj) {
        this.produced++;
        this.downstream.onNext(obj);
    }
}
