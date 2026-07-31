package io.reactivex.rxjava3.internal.operators.maybe;

import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.core.FlowableSubscriber;
import io.reactivex.rxjava3.core.Maybe;
import io.reactivex.rxjava3.core.MaybeObserver;
import io.reactivex.rxjava3.core.MaybeSource;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.SequentialDisposable;
import io.reactivex.rxjava3.internal.operators.flowable.FlowableConcatArray$ConcatArraySubscriber;
import io.reactivex.rxjava3.internal.operators.flowable.FlowableFromIterable$BaseRangeSubscription;
import io.reactivex.rxjava3.internal.operators.flowable.FlowableFromObservable$SubscriberObserver;
import io.reactivex.rxjava3.internal.operators.single.SingleObserveOn;
import io.reactivex.rxjava3.internal.operators.single.SingleToFlowable$SingleToFlowableObserver;
import io.reactivex.rxjava3.internal.subscriptions.EmptySubscription;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.internal.util.NotificationLite;
import io.reactivex.rxjava3.operators.ConditionalSubscriber;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import net.newpipe.app.AppKt;
import okio.Options;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class MaybeConcatArray extends Flowable {
    public final /* synthetic */ int $r8$classId;
    public final Object sources;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class ConcatMaybeObserver extends AtomicInteger implements MaybeObserver, Subscription {
        private static final long serialVersionUID = 3520831347801429610L;
        final Subscriber downstream;
        int index;
        long produced;
        final MaybeSource[] sources;
        final AtomicLong requested = new AtomicLong();
        final SequentialDisposable disposables = new SequentialDisposable();
        final AtomicReference<Object> current = new AtomicReference<>(NotificationLite.COMPLETE);

        public ConcatMaybeObserver(Subscriber subscriber, MaybeSource[] maybeSourceArr) {
            this.downstream = subscriber;
            this.sources = maybeSourceArr;
        }

        @Override // org.reactivestreams.Subscription
        public final void cancel() {
            SequentialDisposable sequentialDisposable = this.disposables;
            sequentialDisposable.getClass();
            DisposableHelper.dispose(sequentialDisposable);
        }

        public final void drain() {
            if (getAndIncrement() != 0) {
                return;
            }
            AtomicReference<Object> atomicReference = this.current;
            Subscriber subscriber = this.downstream;
            SequentialDisposable sequentialDisposable = this.disposables;
            while (!sequentialDisposable.isDisposed()) {
                Object obj = atomicReference.get();
                if (obj != null) {
                    if (obj != NotificationLite.COMPLETE) {
                        long j = this.produced;
                        if (j != this.requested.get()) {
                            this.produced = j + 1;
                            atomicReference.lazySet(null);
                            subscriber.onNext(obj);
                        }
                    } else {
                        atomicReference.lazySet(null);
                    }
                    if (!sequentialDisposable.isDisposed()) {
                        int i = this.index;
                        MaybeSource[] maybeSourceArr = this.sources;
                        if (i == maybeSourceArr.length) {
                            subscriber.onComplete();
                            return;
                        } else {
                            this.index = i + 1;
                            ((Maybe) maybeSourceArr[i]).subscribe(this);
                        }
                    }
                }
                if (decrementAndGet() == 0) {
                    return;
                }
            }
            atomicReference.lazySet(null);
        }

        @Override // io.reactivex.rxjava3.core.MaybeObserver
        public final void onComplete() {
            this.current.lazySet(NotificationLite.COMPLETE);
            drain();
        }

        @Override // io.reactivex.rxjava3.core.MaybeObserver
        public final void onError(Throwable th) {
            this.downstream.onError(th);
        }

        @Override // io.reactivex.rxjava3.core.MaybeObserver
        public final void onSubscribe(Disposable disposable) {
            SequentialDisposable sequentialDisposable = this.disposables;
            sequentialDisposable.getClass();
            DisposableHelper.replace(sequentialDisposable, disposable);
        }

        @Override // io.reactivex.rxjava3.core.MaybeObserver
        public final void onSuccess(Object obj) {
            this.current.lazySet(obj);
            drain();
        }

        @Override // org.reactivestreams.Subscription
        public final void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                Options.Companion.add(this.requested, j);
                drain();
            }
        }
    }

    public /* synthetic */ MaybeConcatArray(Object obj, int i) {
        this.$r8$classId = i;
        this.sources = obj;
    }

    @Override // io.reactivex.rxjava3.core.Flowable
    public final void subscribeActual(final FlowableSubscriber flowableSubscriber) {
        int i = this.$r8$classId;
        Object obj = this.sources;
        switch (i) {
            case 0:
                ConcatMaybeObserver concatMaybeObserver = new ConcatMaybeObserver(flowableSubscriber, (MaybeSource[]) obj);
                flowableSubscriber.onSubscribe(concatMaybeObserver);
                concatMaybeObserver.drain();
                break;
            case 1:
                FlowableConcatArray$ConcatArraySubscriber flowableConcatArray$ConcatArraySubscriber = new FlowableConcatArray$ConcatArraySubscriber((Publisher[]) obj, flowableSubscriber);
                flowableSubscriber.onSubscribe(flowableConcatArray$ConcatArraySubscriber);
                flowableConcatArray$ConcatArraySubscriber.onComplete();
                break;
            case 2:
                try {
                    final Iterator it = ((List) obj).iterator();
                    try {
                        if (!it.hasNext()) {
                            EmptySubscription.complete(flowableSubscriber);
                            break;
                        } else if (!(flowableSubscriber instanceof ConditionalSubscriber)) {
                            flowableSubscriber.onSubscribe(new FlowableFromIterable$BaseRangeSubscription(flowableSubscriber, it) { // from class: io.reactivex.rxjava3.internal.operators.flowable.FlowableFromIterable$IteratorSubscription
                                private static final long serialVersionUID = -6022804456014692607L;
                                final Subscriber downstream;

                                {
                                    super(it);
                                    this.downstream = flowableSubscriber;
                                }

                                @Override // io.reactivex.rxjava3.internal.operators.flowable.FlowableFromIterable$BaseRangeSubscription
                                public final void fastPath() {
                                    Iterator<Object> it2 = this.iterator;
                                    Subscriber subscriber = this.downstream;
                                    while (!this.cancelled) {
                                        try {
                                            Object next = it2.next();
                                            if (this.cancelled) {
                                                return;
                                            }
                                            if (next == null) {
                                                subscriber.onError(new NullPointerException("Iterator.next() returned a null value"));
                                                return;
                                            }
                                            subscriber.onNext(next);
                                            if (this.cancelled) {
                                                return;
                                            }
                                            try {
                                                if (!it2.hasNext()) {
                                                    if (this.cancelled) {
                                                        return;
                                                    }
                                                    subscriber.onComplete();
                                                    return;
                                                }
                                            } catch (Throwable th) {
                                                AppKt.throwIfFatal(th);
                                                subscriber.onError(th);
                                                return;
                                            }
                                        } catch (Throwable th2) {
                                            AppKt.throwIfFatal(th2);
                                            subscriber.onError(th2);
                                            return;
                                        }
                                    }
                                }

                                /* JADX WARN: Code restructure failed: missing block: B:9:0x0058, code lost:
                                
                                    r9 = addAndGet(-r4);
                                 */
                                @Override // io.reactivex.rxjava3.internal.operators.flowable.FlowableFromIterable$BaseRangeSubscription
                                /*
                                    Code decompiled incorrectly, please refer to instructions dump.
                                    To view partially-correct add '--show-bad-code' argument
                                */
                                public final void slowPath(long r9) {
                                    /*
                                        r8 = this;
                                        java.util.Iterator<java.lang.Object> r0 = r8.iterator
                                        org.reactivestreams.Subscriber r1 = r8.downstream
                                        r2 = 0
                                    L6:
                                        r4 = r2
                                    L7:
                                        int r6 = (r4 > r9 ? 1 : (r4 == r9 ? 0 : -1))
                                        if (r6 == 0) goto L50
                                        boolean r6 = r8.cancelled
                                        if (r6 == 0) goto L10
                                        goto L61
                                    L10:
                                        java.lang.Object r6 = r0.next()     // Catch: java.lang.Throwable -> L48
                                        boolean r7 = r8.cancelled
                                        if (r7 == 0) goto L19
                                        goto L61
                                    L19:
                                        if (r6 != 0) goto L26
                                        java.lang.NullPointerException r8 = new java.lang.NullPointerException
                                        java.lang.String r9 = "Iterator.next() returned a null value"
                                        r8.<init>(r9)
                                        r1.onError(r8)
                                        return
                                    L26:
                                        r1.onNext(r6)
                                        boolean r6 = r8.cancelled
                                        if (r6 == 0) goto L2e
                                        goto L61
                                    L2e:
                                        boolean r6 = r0.hasNext()     // Catch: java.lang.Throwable -> L40
                                        if (r6 != 0) goto L3c
                                        boolean r8 = r8.cancelled
                                        if (r8 != 0) goto L61
                                        r1.onComplete()
                                        return
                                    L3c:
                                        r6 = 1
                                        long r4 = r4 + r6
                                        goto L7
                                    L40:
                                        r8 = move-exception
                                        net.newpipe.app.AppKt.throwIfFatal(r8)
                                        r1.onError(r8)
                                        return
                                    L48:
                                        r8 = move-exception
                                        net.newpipe.app.AppKt.throwIfFatal(r8)
                                        r1.onError(r8)
                                        return
                                    L50:
                                        long r9 = r8.get()
                                        int r6 = (r4 > r9 ? 1 : (r4 == r9 ? 0 : -1))
                                        if (r6 != 0) goto L7
                                        long r9 = -r4
                                        long r9 = r8.addAndGet(r9)
                                        int r4 = (r9 > r2 ? 1 : (r9 == r2 ? 0 : -1))
                                        if (r4 != 0) goto L6
                                    L61:
                                        return
                                    */
                                    throw new UnsupportedOperationException("Method not decompiled: io.reactivex.rxjava3.internal.operators.flowable.FlowableFromIterable$IteratorSubscription.slowPath(long):void");
                                }
                            });
                            break;
                        } else {
                            final ConditionalSubscriber conditionalSubscriber = (ConditionalSubscriber) flowableSubscriber;
                            flowableSubscriber.onSubscribe(new FlowableFromIterable$BaseRangeSubscription(conditionalSubscriber, it) { // from class: io.reactivex.rxjava3.internal.operators.flowable.FlowableFromIterable$IteratorConditionalSubscription
                                private static final long serialVersionUID = -6022804456014692607L;
                                final ConditionalSubscriber downstream;

                                {
                                    super(it);
                                    this.downstream = conditionalSubscriber;
                                }

                                @Override // io.reactivex.rxjava3.internal.operators.flowable.FlowableFromIterable$BaseRangeSubscription
                                public final void fastPath() {
                                    Iterator<Object> it2 = this.iterator;
                                    ConditionalSubscriber conditionalSubscriber2 = this.downstream;
                                    while (!this.cancelled) {
                                        try {
                                            Object next = it2.next();
                                            if (this.cancelled) {
                                                return;
                                            }
                                            if (next == null) {
                                                conditionalSubscriber2.onError(new NullPointerException("Iterator.next() returned a null value"));
                                                return;
                                            }
                                            conditionalSubscriber2.tryOnNext(next);
                                            if (this.cancelled) {
                                                return;
                                            }
                                            try {
                                                if (!it2.hasNext()) {
                                                    if (this.cancelled) {
                                                        return;
                                                    }
                                                    conditionalSubscriber2.onComplete();
                                                    return;
                                                }
                                            } catch (Throwable th) {
                                                AppKt.throwIfFatal(th);
                                                conditionalSubscriber2.onError(th);
                                                return;
                                            }
                                        } catch (Throwable th2) {
                                            AppKt.throwIfFatal(th2);
                                            conditionalSubscriber2.onError(th2);
                                            return;
                                        }
                                    }
                                }

                                /* JADX WARN: Code restructure failed: missing block: B:9:0x005b, code lost:
                                
                                    r9 = addAndGet(-r4);
                                 */
                                @Override // io.reactivex.rxjava3.internal.operators.flowable.FlowableFromIterable$BaseRangeSubscription
                                /*
                                    Code decompiled incorrectly, please refer to instructions dump.
                                    To view partially-correct add '--show-bad-code' argument
                                */
                                public final void slowPath(long r9) {
                                    /*
                                        r8 = this;
                                        java.util.Iterator<java.lang.Object> r0 = r8.iterator
                                        io.reactivex.rxjava3.operators.ConditionalSubscriber r1 = r8.downstream
                                        r2 = 0
                                    L6:
                                        r4 = r2
                                    L7:
                                        int r6 = (r4 > r9 ? 1 : (r4 == r9 ? 0 : -1))
                                        if (r6 == 0) goto L53
                                        boolean r6 = r8.cancelled
                                        if (r6 == 0) goto L10
                                        goto L64
                                    L10:
                                        java.lang.Object r6 = r0.next()     // Catch: java.lang.Throwable -> L4b
                                        boolean r7 = r8.cancelled
                                        if (r7 == 0) goto L19
                                        goto L64
                                    L19:
                                        if (r6 != 0) goto L26
                                        java.lang.NullPointerException r8 = new java.lang.NullPointerException
                                        java.lang.String r9 = "Iterator.next() returned a null value"
                                        r8.<init>(r9)
                                        r1.onError(r8)
                                        return
                                    L26:
                                        boolean r6 = r1.tryOnNext(r6)
                                        boolean r7 = r8.cancelled
                                        if (r7 == 0) goto L2f
                                        goto L64
                                    L2f:
                                        boolean r7 = r0.hasNext()     // Catch: java.lang.Throwable -> L43
                                        if (r7 != 0) goto L3d
                                        boolean r8 = r8.cancelled
                                        if (r8 != 0) goto L64
                                        r1.onComplete()
                                        return
                                    L3d:
                                        if (r6 == 0) goto L7
                                        r6 = 1
                                        long r4 = r4 + r6
                                        goto L7
                                    L43:
                                        r8 = move-exception
                                        net.newpipe.app.AppKt.throwIfFatal(r8)
                                        r1.onError(r8)
                                        return
                                    L4b:
                                        r8 = move-exception
                                        net.newpipe.app.AppKt.throwIfFatal(r8)
                                        r1.onError(r8)
                                        return
                                    L53:
                                        long r9 = r8.get()
                                        int r6 = (r4 > r9 ? 1 : (r4 == r9 ? 0 : -1))
                                        if (r6 != 0) goto L7
                                        long r9 = -r4
                                        long r9 = r8.addAndGet(r9)
                                        int r4 = (r9 > r2 ? 1 : (r9 == r2 ? 0 : -1))
                                        if (r4 != 0) goto L6
                                    L64:
                                        return
                                    */
                                    throw new UnsupportedOperationException("Method not decompiled: io.reactivex.rxjava3.internal.operators.flowable.FlowableFromIterable$IteratorConditionalSubscription.slowPath(long):void");
                                }
                            });
                            break;
                        }
                    } catch (Throwable th) {
                        AppKt.throwIfFatal(th);
                        EmptySubscription.error(th, flowableSubscriber);
                        return;
                    }
                } catch (Throwable th2) {
                    AppKt.throwIfFatal(th2);
                    EmptySubscription.error(th2, flowableSubscriber);
                    return;
                }
            case 3:
                ((Observable) obj).subscribe(new FlowableFromObservable$SubscriberObserver(flowableSubscriber));
                break;
            case 4:
                ((Flowable) ((Publisher) obj)).subscribe((Subscriber) flowableSubscriber);
                break;
            default:
                ((SingleObserveOn) obj).subscribe(new SingleToFlowable$SingleToFlowableObserver(flowableSubscriber));
                break;
        }
    }
}
