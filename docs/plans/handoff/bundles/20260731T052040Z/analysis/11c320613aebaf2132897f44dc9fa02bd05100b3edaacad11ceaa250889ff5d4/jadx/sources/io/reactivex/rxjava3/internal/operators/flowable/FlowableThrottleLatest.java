package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.core.FlowableSubscriber;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.exceptions.MissingBackpressureException;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.math.MathKt;
import net.newpipe.app.AppKt;
import okio.Options;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class FlowableThrottleLatest extends AbstractFlowableWithUpstream {
    public final Scheduler scheduler;
    public final long timeout;
    public final TimeUnit unit;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class ThrottleLatestSubscriber extends AtomicInteger implements FlowableSubscriber, Subscription, Runnable {
        private static final long serialVersionUID = -8296689127439125014L;
        volatile boolean cancelled;
        volatile boolean done;
        final Subscriber downstream;
        long emitted;
        Throwable error;
        final long timeout;
        volatile boolean timerFired;
        boolean timerRunning;
        final TimeUnit unit;
        Subscription upstream;
        final Scheduler.Worker worker;
        final boolean emitLast = false;
        final AtomicReference<Object> latest = new AtomicReference<>();
        final AtomicLong requested = new AtomicLong();
        final Consumer onDropped = null;

        public ThrottleLatestSubscriber(Subscriber subscriber, long j, TimeUnit timeUnit, Scheduler.Worker worker) {
            this.downstream = subscriber;
            this.timeout = j;
            this.unit = timeUnit;
            this.worker = worker;
        }

        @Override // org.reactivestreams.Subscription
        public final void cancel() {
            this.cancelled = true;
            this.upstream.cancel();
            this.worker.dispose();
            if (getAndIncrement() == 0) {
                clear();
            }
        }

        public final void clear() {
            Consumer consumer = this.onDropped;
            AtomicReference<Object> atomicReference = this.latest;
            if (consumer == null) {
                atomicReference.lazySet(null);
                return;
            }
            Object andSet = atomicReference.getAndSet(null);
            if (andSet != null) {
                try {
                    this.onDropped.accept(andSet);
                } catch (Throwable th) {
                    AppKt.throwIfFatal(th);
                    MathKt.onError(th);
                }
            }
        }

        public final void drain() {
            if (getAndIncrement() != 0) {
                return;
            }
            AtomicReference<Object> atomicReference = this.latest;
            AtomicLong atomicLong = this.requested;
            Subscriber subscriber = this.downstream;
            int i = 1;
            while (!this.cancelled) {
                boolean z = this.done;
                Throwable th = this.error;
                if (z && th != null) {
                    if (this.onDropped != null) {
                        Object andSet = atomicReference.getAndSet(null);
                        if (andSet != null) {
                            try {
                                this.onDropped.accept(andSet);
                            } catch (Throwable th2) {
                                AppKt.throwIfFatal(th2);
                                th = new CompositeException(th, th2);
                            }
                        }
                    } else {
                        atomicReference.lazySet(null);
                    }
                    subscriber.onError(th);
                    this.worker.dispose();
                    return;
                }
                boolean z2 = atomicReference.get() == null;
                if (z) {
                    if (z2) {
                        subscriber.onComplete();
                    } else {
                        Object andSet2 = atomicReference.getAndSet(null);
                        if (this.emitLast) {
                            long j = this.emitted;
                            if (j != atomicLong.get()) {
                                this.emitted = j + 1;
                                subscriber.onNext(andSet2);
                                subscriber.onComplete();
                            } else {
                                tryDropAndSignalMBE(andSet2);
                            }
                        } else {
                            Consumer consumer = this.onDropped;
                            if (consumer != null) {
                                try {
                                    consumer.accept(andSet2);
                                } catch (Throwable th3) {
                                    AppKt.throwIfFatal(th3);
                                    subscriber.onError(th3);
                                    this.worker.dispose();
                                    return;
                                }
                            }
                            subscriber.onComplete();
                        }
                    }
                    this.worker.dispose();
                    return;
                }
                if (z2) {
                    if (this.timerFired) {
                        this.timerRunning = false;
                        this.timerFired = false;
                    }
                } else if (!this.timerRunning || this.timerFired) {
                    Object andSet3 = atomicReference.getAndSet(null);
                    long j2 = this.emitted;
                    if (j2 == atomicLong.get()) {
                        this.upstream.cancel();
                        tryDropAndSignalMBE(andSet3);
                        this.worker.dispose();
                        return;
                    } else {
                        subscriber.onNext(andSet3);
                        this.emitted = j2 + 1;
                        this.timerFired = false;
                        this.timerRunning = true;
                        this.worker.schedule(this, this.timeout, this.unit);
                    }
                }
                i = addAndGet(-i);
                if (i == 0) {
                    return;
                }
            }
            clear();
        }

        @Override // org.reactivestreams.Subscriber
        public final void onComplete() {
            this.done = true;
            drain();
        }

        @Override // org.reactivestreams.Subscriber
        public final void onError(Throwable th) {
            this.error = th;
            this.done = true;
            drain();
        }

        @Override // org.reactivestreams.Subscriber
        public final void onNext(Object obj) {
            Object andSet = this.latest.getAndSet(obj);
            Consumer consumer = this.onDropped;
            if (consumer != null && andSet != null) {
                try {
                    consumer.accept(andSet);
                } catch (Throwable th) {
                    AppKt.throwIfFatal(th);
                    this.upstream.cancel();
                    this.error = th;
                    this.done = true;
                }
            }
            drain();
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
                Options.Companion.add(this.requested, j);
            }
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.timerFired = true;
            drain();
        }

        public final void tryDropAndSignalMBE(Object obj) {
            Throwable missingBackpressureException = new MissingBackpressureException("Could not emit value due to lack of requests");
            Consumer consumer = this.onDropped;
            if (consumer != null) {
                try {
                    consumer.accept(obj);
                } catch (Throwable th) {
                    AppKt.throwIfFatal(th);
                    missingBackpressureException = new CompositeException(missingBackpressureException, th);
                }
            }
            this.downstream.onError(missingBackpressureException);
        }
    }

    public FlowableThrottleLatest(Flowable flowable, long j, Scheduler scheduler) {
        super(flowable);
        this.timeout = j;
        this.unit = TimeUnit.MILLISECONDS;
        this.scheduler = scheduler;
    }

    @Override // io.reactivex.rxjava3.core.Flowable
    public final void subscribeActual(FlowableSubscriber flowableSubscriber) {
        this.source.subscribe((FlowableSubscriber) new ThrottleLatestSubscriber(flowableSubscriber, this.timeout, this.unit, this.scheduler.createWorker()));
    }
}
