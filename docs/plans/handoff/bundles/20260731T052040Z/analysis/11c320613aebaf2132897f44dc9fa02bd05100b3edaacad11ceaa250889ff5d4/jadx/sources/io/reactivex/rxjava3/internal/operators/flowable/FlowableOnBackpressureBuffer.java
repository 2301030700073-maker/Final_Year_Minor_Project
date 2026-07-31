package io.reactivex.rxjava3.internal.operators.flowable;

import androidx.transition.Transition;
import io.noties.markwon.BlockHandlerDef;
import io.reactivex.rxjava3.core.FlowableSubscriber;
import io.reactivex.rxjava3.exceptions.MissingBackpressureException;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.internal.functions.Functions;
import io.reactivex.rxjava3.internal.operators.maybe.MaybeConcatArray;
import io.reactivex.rxjava3.internal.subscriptions.BasicIntQueueSubscription;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.operators.SimplePlainQueue;
import io.reactivex.rxjava3.operators.SpscArrayQueue;
import io.reactivex.rxjava3.operators.SpscLinkedArrayQueue;
import java.util.concurrent.atomic.AtomicLong;
import net.newpipe.app.AppKt;
import okio.Options;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class FlowableOnBackpressureBuffer extends AbstractFlowableWithUpstream {
    public final int bufferSize;
    public final BlockHandlerDef onDropped;
    public final Transition.AnonymousClass1 onOverflow;
    public final boolean unbounded;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class BackpressureBufferSubscriber extends BasicIntQueueSubscription implements FlowableSubscriber {
        private static final long serialVersionUID = -2514538129242366402L;
        volatile boolean cancelled;
        volatile boolean done;
        final Subscriber downstream;
        Throwable error;
        final Consumer onDropped;
        final Action onOverflow;
        boolean outputFused;
        final SimplePlainQueue queue;
        Subscription upstream;
        final AtomicLong requested = new AtomicLong();
        final boolean delayError = false;

        public BackpressureBufferSubscriber(Subscriber subscriber, int i, boolean z, Transition.AnonymousClass1 anonymousClass1, BlockHandlerDef blockHandlerDef) {
            this.downstream = subscriber;
            this.onOverflow = anonymousClass1;
            this.onDropped = blockHandlerDef;
            this.queue = z ? new SpscLinkedArrayQueue(i) : new SpscArrayQueue(i);
        }

        @Override // org.reactivestreams.Subscription
        public final void cancel() {
            if (this.cancelled) {
                return;
            }
            this.cancelled = true;
            this.upstream.cancel();
            if (this.outputFused || getAndIncrement() != 0) {
                return;
            }
            this.queue.clear();
        }

        public final boolean checkTerminated(boolean z, boolean z2, Subscriber subscriber) {
            if (this.cancelled) {
                this.queue.clear();
                return true;
            }
            if (!z) {
                return false;
            }
            if (this.delayError) {
                if (!z2) {
                    return false;
                }
                Throwable th = this.error;
                if (th != null) {
                    subscriber.onError(th);
                    return true;
                }
                subscriber.onComplete();
                return true;
            }
            Throwable th2 = this.error;
            if (th2 != null) {
                this.queue.clear();
                subscriber.onError(th2);
                return true;
            }
            if (!z2) {
                return false;
            }
            subscriber.onComplete();
            return true;
        }

        @Override // io.reactivex.rxjava3.operators.SimpleQueue
        public final void clear() {
            this.queue.clear();
        }

        public final void drain() {
            if (getAndIncrement() == 0) {
                SimplePlainQueue simplePlainQueue = this.queue;
                Subscriber subscriber = this.downstream;
                int i = 1;
                while (!checkTerminated(this.done, simplePlainQueue.isEmpty(), subscriber)) {
                    long j = this.requested.get();
                    long j2 = 0;
                    while (j2 != j) {
                        boolean z = this.done;
                        Object poll = simplePlainQueue.poll();
                        boolean z2 = poll == null;
                        if (checkTerminated(z, z2, subscriber)) {
                            return;
                        }
                        if (z2) {
                            break;
                        }
                        subscriber.onNext(poll);
                        j2++;
                    }
                    if (j2 == j && checkTerminated(this.done, simplePlainQueue.isEmpty(), subscriber)) {
                        return;
                    }
                    if (j2 != 0 && j != Long.MAX_VALUE) {
                        this.requested.addAndGet(-j2);
                    }
                    i = addAndGet(-i);
                    if (i == 0) {
                        return;
                    }
                }
            }
        }

        @Override // io.reactivex.rxjava3.operators.SimpleQueue
        public final boolean isEmpty() {
            return this.queue.isEmpty();
        }

        @Override // org.reactivestreams.Subscriber
        public final void onComplete() {
            this.done = true;
            if (this.outputFused) {
                this.downstream.onComplete();
            } else {
                drain();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public final void onError(Throwable th) {
            this.error = th;
            this.done = true;
            if (this.outputFused) {
                this.downstream.onError(th);
            } else {
                drain();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public final void onNext(Object obj) {
            if (this.queue.offer(obj)) {
                if (this.outputFused) {
                    this.downstream.onNext(null);
                    return;
                } else {
                    drain();
                    return;
                }
            }
            this.upstream.cancel();
            MissingBackpressureException missingBackpressureException = new MissingBackpressureException("Buffer is full");
            try {
                this.onOverflow.run();
                this.onDropped.accept(obj);
            } catch (Throwable th) {
                AppKt.throwIfFatal(th);
                missingBackpressureException.initCause(th);
            }
            onError(missingBackpressureException);
        }

        @Override // org.reactivestreams.Subscriber
        public final void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.upstream, subscription)) {
                this.upstream = subscription;
                this.downstream.onSubscribe(this);
                subscription.request(Long.MAX_VALUE);
            }
        }

        @Override // io.reactivex.rxjava3.operators.SimpleQueue
        public final Object poll() {
            return this.queue.poll();
        }

        @Override // org.reactivestreams.Subscription
        public final void request(long j) {
            if (this.outputFused || !SubscriptionHelper.validate(j)) {
                return;
            }
            Options.Companion.add(this.requested, j);
            drain();
        }

        @Override // io.reactivex.rxjava3.operators.QueueFuseable
        public final int requestFusion(int i) {
            this.outputFused = true;
            return 2;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FlowableOnBackpressureBuffer(MaybeConcatArray maybeConcatArray, int i) {
        super(maybeConcatArray);
        Transition.AnonymousClass1 anonymousClass1 = Functions.EMPTY_ACTION;
        BlockHandlerDef blockHandlerDef = Functions.EMPTY_CONSUMER;
        this.bufferSize = i;
        this.unbounded = true;
        this.onOverflow = anonymousClass1;
        this.onDropped = blockHandlerDef;
    }

    @Override // io.reactivex.rxjava3.core.Flowable
    public final void subscribeActual(FlowableSubscriber flowableSubscriber) {
        this.source.subscribe((FlowableSubscriber) new BackpressureBufferSubscriber(flowableSubscriber, this.bufferSize, this.unbounded, this.onOverflow, this.onDropped));
    }
}
