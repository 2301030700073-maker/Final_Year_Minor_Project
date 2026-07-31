package io.reactivex.rxjava3.internal.operators.parallel;

import io.reactivex.rxjava3.core.FlowableSubscriber;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.exceptions.QueueOverflowException;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.operators.SpscArrayQueue;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import kotlin.math.MathKt;
import okio.Options;
import org.reactivestreams.Subscription;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class ParallelRunOn$BaseRunOnSubscriber extends AtomicInteger implements FlowableSubscriber, Subscription, Runnable {
    private static final long serialVersionUID = 9222303586456402150L;
    volatile boolean cancelled;
    int consumed;
    volatile boolean done;
    Throwable error;
    final SpscArrayQueue queue;
    Subscription upstream;
    final Scheduler.Worker worker;
    final AtomicLong requested = new AtomicLong();
    final int prefetch = 6;
    final int limit = 5;

    public ParallelRunOn$BaseRunOnSubscriber(SpscArrayQueue spscArrayQueue, Scheduler.Worker worker) {
        this.queue = spscArrayQueue;
        this.worker = worker;
    }

    @Override // org.reactivestreams.Subscription
    public final void cancel() {
        if (this.cancelled) {
            return;
        }
        this.cancelled = true;
        this.upstream.cancel();
        this.worker.dispose();
        if (getAndIncrement() == 0) {
            this.queue.clear();
        }
    }

    @Override // org.reactivestreams.Subscriber
    public final void onComplete() {
        if (this.done) {
            return;
        }
        this.done = true;
        if (getAndIncrement() == 0) {
            this.worker.schedule(this);
        }
    }

    @Override // org.reactivestreams.Subscriber
    public final void onError(Throwable th) {
        if (this.done) {
            MathKt.onError(th);
            return;
        }
        this.error = th;
        this.done = true;
        if (getAndIncrement() == 0) {
            this.worker.schedule(this);
        }
    }

    @Override // org.reactivestreams.Subscriber
    public final void onNext(Object obj) {
        if (this.done) {
            return;
        }
        if (!this.queue.offer(obj)) {
            this.upstream.cancel();
            onError(new QueueOverflowException());
        } else if (getAndIncrement() == 0) {
            this.worker.schedule(this);
        }
    }

    @Override // org.reactivestreams.Subscription
    public final void request(long j) {
        if (SubscriptionHelper.validate(j)) {
            Options.Companion.add(this.requested, j);
            if (getAndIncrement() == 0) {
                this.worker.schedule(this);
            }
        }
    }
}
