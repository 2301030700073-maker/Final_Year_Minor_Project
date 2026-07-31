package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.core.FlowableSubscriber;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.internal.operators.flowable.FlowableMap;
import io.reactivex.rxjava3.internal.subscriptions.BasicIntQueueSubscription;
import io.reactivex.rxjava3.internal.subscriptions.EmptySubscription;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.internal.util.AtomicThrowable;
import io.reactivex.rxjava3.internal.util.ExceptionHelper;
import io.reactivex.rxjava3.operators.SpscLinkedArrayQueue;
import j$.util.Objects;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.math.MathKt;
import net.newpipe.app.AppKt;
import okhttp3.ConnectionPool;
import okio.Options;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class FlowableCombineLatest extends Flowable {
    public final Publisher[] array;
    public final int bufferSize;
    public final Function combiner;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class CombineLatestCoordinator extends BasicIntQueueSubscription {
        private static final long serialVersionUID = -5082275438355852221L;
        volatile boolean cancelled;
        final Function combiner;
        int completedSources;
        final boolean delayErrors;
        volatile boolean done;
        final Subscriber downstream;
        final AtomicThrowable error;
        final Object[] latest;
        int nonEmptySources;
        boolean outputFused;
        final SpscLinkedArrayQueue queue;
        final AtomicLong requested;
        final CombineLatestInnerSubscriber[] subscribers;

        public CombineLatestCoordinator(Subscriber subscriber, Function function, int i, int i2) {
            this.downstream = subscriber;
            this.combiner = function;
            CombineLatestInnerSubscriber[] combineLatestInnerSubscriberArr = new CombineLatestInnerSubscriber[i];
            for (int i3 = 0; i3 < i; i3++) {
                combineLatestInnerSubscriberArr[i3] = new CombineLatestInnerSubscriber(this, i3, i2);
            }
            this.subscribers = combineLatestInnerSubscriberArr;
            this.latest = new Object[i];
            this.queue = new SpscLinkedArrayQueue(i2);
            this.requested = new AtomicLong();
            this.error = new AtomicThrowable();
            this.delayErrors = false;
        }

        @Override // org.reactivestreams.Subscription
        public final void cancel() {
            this.cancelled = true;
            cancelAll();
            drain();
        }

        public final void cancelAll() {
            for (CombineLatestInnerSubscriber combineLatestInnerSubscriber : this.subscribers) {
                combineLatestInnerSubscriber.getClass();
                SubscriptionHelper.cancel(combineLatestInnerSubscriber);
            }
        }

        public final boolean checkTerminated(boolean z, boolean z2, Subscriber subscriber, SpscLinkedArrayQueue spscLinkedArrayQueue) {
            if (this.cancelled) {
                cancelAll();
                spscLinkedArrayQueue.clear();
                this.error.tryTerminateAndReport();
                return true;
            }
            if (!z) {
                return false;
            }
            if (this.delayErrors) {
                if (!z2) {
                    return false;
                }
                cancelAll();
                this.error.tryTerminateConsumer(subscriber);
                return true;
            }
            Throwable terminate = ExceptionHelper.terminate(this.error);
            if (terminate != null && terminate != ExceptionHelper.TERMINATED) {
                cancelAll();
                spscLinkedArrayQueue.clear();
                subscriber.onError(terminate);
                return true;
            }
            if (!z2) {
                return false;
            }
            cancelAll();
            subscriber.onComplete();
            return true;
        }

        @Override // io.reactivex.rxjava3.operators.SimpleQueue
        public final void clear() {
            this.queue.clear();
        }

        public final void drain() {
            if (getAndIncrement() != 0) {
                return;
            }
            boolean z = this.outputFused;
            Subscriber subscriber = this.downstream;
            int i = 1;
            if (z) {
                SpscLinkedArrayQueue spscLinkedArrayQueue = this.queue;
                while (!this.cancelled) {
                    Throwable th = (Throwable) this.error.get();
                    if (th != null) {
                        spscLinkedArrayQueue.clear();
                        subscriber.onError(th);
                        return;
                    }
                    boolean z2 = this.done;
                    boolean isEmpty = spscLinkedArrayQueue.isEmpty();
                    if (!isEmpty) {
                        subscriber.onNext(null);
                    }
                    if (z2 && isEmpty) {
                        subscriber.onComplete();
                        return;
                    } else {
                        i = addAndGet(-i);
                        if (i == 0) {
                            return;
                        }
                    }
                }
                spscLinkedArrayQueue.clear();
                return;
            }
            SpscLinkedArrayQueue spscLinkedArrayQueue2 = this.queue;
            int i2 = 1;
            do {
                long j = this.requested.get();
                long j2 = 0;
                while (j2 != j) {
                    boolean z3 = this.done;
                    Object poll = spscLinkedArrayQueue2.poll();
                    boolean z4 = poll == null;
                    if (checkTerminated(z3, z4, subscriber, spscLinkedArrayQueue2)) {
                        return;
                    }
                    if (z4) {
                        break;
                    }
                    try {
                        Object apply = this.combiner.apply((Object[]) spscLinkedArrayQueue2.poll());
                        Objects.requireNonNull(apply, "The combiner returned a null value");
                        subscriber.onNext(apply);
                        ((CombineLatestInnerSubscriber) poll).requestOne();
                        j2++;
                    } catch (Throwable th2) {
                        AppKt.throwIfFatal(th2);
                        cancelAll();
                        ExceptionHelper.addThrowable(this.error, th2);
                        subscriber.onError(ExceptionHelper.terminate(this.error));
                        return;
                    }
                }
                if (j2 == j && checkTerminated(this.done, spscLinkedArrayQueue2.isEmpty(), subscriber, spscLinkedArrayQueue2)) {
                    return;
                }
                if (j2 != 0 && j != Long.MAX_VALUE) {
                    this.requested.addAndGet(-j2);
                }
                i2 = addAndGet(-i2);
            } while (i2 != 0);
        }

        public final void innerComplete(int i) {
            synchronized (this) {
                try {
                    Object[] objArr = this.latest;
                    if (objArr[i] != null) {
                        int i2 = this.completedSources + 1;
                        if (i2 != objArr.length) {
                            this.completedSources = i2;
                            return;
                        }
                        this.done = true;
                    } else {
                        this.done = true;
                    }
                    drain();
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // io.reactivex.rxjava3.operators.SimpleQueue
        public final boolean isEmpty() {
            return this.queue.isEmpty();
        }

        @Override // io.reactivex.rxjava3.operators.SimpleQueue
        public final Object poll() {
            Object poll = this.queue.poll();
            if (poll == null) {
                return null;
            }
            Object apply = this.combiner.apply((Object[]) this.queue.poll());
            Objects.requireNonNull(apply, "The combiner returned a null value");
            ((CombineLatestInnerSubscriber) poll).requestOne();
            return apply;
        }

        @Override // org.reactivestreams.Subscription
        public final void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                Options.Companion.add(this.requested, j);
                drain();
            }
        }

        @Override // io.reactivex.rxjava3.operators.QueueFuseable
        public final int requestFusion(int i) {
            if ((i & 4) != 0) {
                return 0;
            }
            this.outputFused = true;
            return 2;
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class CombineLatestInnerSubscriber extends AtomicReference implements FlowableSubscriber {
        private static final long serialVersionUID = -8730235182291002949L;
        final int index;
        final int limit;
        final CombineLatestCoordinator parent;
        final int prefetch;
        int produced;

        public CombineLatestInnerSubscriber(CombineLatestCoordinator combineLatestCoordinator, int i, int i2) {
            this.parent = combineLatestCoordinator;
            this.index = i;
            this.prefetch = i2;
            this.limit = i2 - (i2 >> 2);
        }

        @Override // org.reactivestreams.Subscriber
        public final void onComplete() {
            this.parent.innerComplete(this.index);
        }

        @Override // org.reactivestreams.Subscriber
        public final void onError(Throwable th) {
            CombineLatestCoordinator combineLatestCoordinator = this.parent;
            int i = this.index;
            if (!ExceptionHelper.addThrowable(combineLatestCoordinator.error, th)) {
                MathKt.onError(th);
            } else {
                if (combineLatestCoordinator.delayErrors) {
                    combineLatestCoordinator.innerComplete(i);
                    return;
                }
                combineLatestCoordinator.cancelAll();
                combineLatestCoordinator.done = true;
                combineLatestCoordinator.drain();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public final void onNext(Object obj) {
            boolean z;
            CombineLatestCoordinator combineLatestCoordinator = this.parent;
            int i = this.index;
            synchronized (combineLatestCoordinator) {
                try {
                    Object[] objArr = combineLatestCoordinator.latest;
                    int i2 = combineLatestCoordinator.nonEmptySources;
                    if (objArr[i] == null) {
                        i2++;
                        combineLatestCoordinator.nonEmptySources = i2;
                    }
                    objArr[i] = obj;
                    if (objArr.length == i2) {
                        combineLatestCoordinator.queue.offer(combineLatestCoordinator.subscribers[i], objArr.clone());
                        z = false;
                    } else {
                        z = true;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (z) {
                combineLatestCoordinator.subscribers[i].requestOne();
            } else {
                combineLatestCoordinator.drain();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public final void onSubscribe(Subscription subscription) {
            long j = this.prefetch;
            if (SubscriptionHelper.setOnce(this, subscription)) {
                subscription.request(j);
            }
        }

        public final void requestOne() {
            int i = this.produced + 1;
            if (i != this.limit) {
                this.produced = i;
            } else {
                this.produced = 0;
                ((Subscription) get()).request(i);
            }
        }
    }

    public FlowableCombineLatest(Publisher[] publisherArr, Function function, int i) {
        this.array = publisherArr;
        this.combiner = function;
        this.bufferSize = i;
    }

    @Override // io.reactivex.rxjava3.core.Flowable
    public final void subscribeActual(FlowableSubscriber flowableSubscriber) {
        Publisher[] publisherArr = this.array;
        int length = publisherArr.length;
        if (length == 0) {
            EmptySubscription.complete(flowableSubscriber);
            return;
        }
        if (length == 1) {
            ((Flowable) publisherArr[0]).subscribe((Subscriber) new FlowableMap.MapSubscriber(flowableSubscriber, new ConnectionPool(this, 17)));
            return;
        }
        CombineLatestCoordinator combineLatestCoordinator = new CombineLatestCoordinator(flowableSubscriber, this.combiner, length, this.bufferSize);
        flowableSubscriber.onSubscribe(combineLatestCoordinator);
        CombineLatestInnerSubscriber[] combineLatestInnerSubscriberArr = combineLatestCoordinator.subscribers;
        for (int i = 0; i < length && !combineLatestCoordinator.done && !combineLatestCoordinator.cancelled; i++) {
            ((Flowable) publisherArr[i]).subscribe((Subscriber) combineLatestInnerSubscriberArr[i]);
        }
    }
}
