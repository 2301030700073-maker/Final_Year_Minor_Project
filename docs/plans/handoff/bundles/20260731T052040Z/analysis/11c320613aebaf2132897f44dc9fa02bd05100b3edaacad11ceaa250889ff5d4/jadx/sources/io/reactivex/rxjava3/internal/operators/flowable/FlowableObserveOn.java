package io.reactivex.rxjava3.internal.operators.flowable;

import com.google.android.exoplayer2.util.Log;
import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.core.FlowableSubscriber;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.exceptions.QueueOverflowException;
import io.reactivex.rxjava3.internal.subscriptions.BasicIntQueueSubscription;
import io.reactivex.rxjava3.internal.subscriptions.EmptySubscription;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.operators.ConditionalSubscriber;
import io.reactivex.rxjava3.operators.QueueSubscription;
import io.reactivex.rxjava3.operators.SimpleQueue;
import io.reactivex.rxjava3.operators.SpscArrayQueue;
import java.util.concurrent.atomic.AtomicLong;
import kotlin.math.MathKt;
import kotlin.text.UStringsKt;
import net.newpipe.app.AppKt;
import okio.Options;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
import org.schabi.newpipe.local.feed.FeedViewModel$$ExternalSyntheticLambda0;
import org.schabi.newpipe.local.playlist.LocalPlaylistFragment$$ExternalSyntheticLambda24;
import org.schabi.newpipe.player.ui.VideoPlayerUi;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class FlowableObserveOn extends AbstractFlowableWithUpstream {
    public final /* synthetic */ int $r8$classId;
    public final int prefetch;
    public final Object scheduler;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public abstract class BaseObserveOnSubscriber extends BasicIntQueueSubscription implements FlowableSubscriber, Runnable {
        private static final long serialVersionUID = -8241002408341274697L;
        volatile boolean cancelled;
        volatile boolean done;
        Throwable error;
        final int limit;
        boolean outputFused;
        final int prefetch;
        long produced;
        SimpleQueue queue;
        int sourceMode;
        Subscription upstream;
        final Scheduler.Worker worker;
        final boolean delayError = false;
        final AtomicLong requested = new AtomicLong();

        public BaseObserveOnSubscriber(Scheduler.Worker worker, int i) {
            this.worker = worker;
            this.prefetch = i;
            this.limit = i - (i >> 2);
        }

        @Override // org.reactivestreams.Subscription
        public final void cancel() {
            if (this.cancelled) {
                return;
            }
            this.cancelled = true;
            this.upstream.cancel();
            this.worker.dispose();
            if (this.outputFused || getAndIncrement() != 0) {
                return;
            }
            this.queue.clear();
        }

        public final boolean checkTerminated(boolean z, boolean z2, Subscriber subscriber) {
            if (this.cancelled) {
                clear();
                return true;
            }
            if (!z) {
                return false;
            }
            if (this.delayError) {
                if (!z2) {
                    return false;
                }
                this.cancelled = true;
                Throwable th = this.error;
                if (th != null) {
                    subscriber.onError(th);
                } else {
                    subscriber.onComplete();
                }
                this.worker.dispose();
                return true;
            }
            Throwable th2 = this.error;
            if (th2 != null) {
                this.cancelled = true;
                clear();
                subscriber.onError(th2);
                this.worker.dispose();
                return true;
            }
            if (!z2) {
                return false;
            }
            this.cancelled = true;
            subscriber.onComplete();
            this.worker.dispose();
            return true;
        }

        @Override // io.reactivex.rxjava3.operators.SimpleQueue
        public final void clear() {
            this.queue.clear();
        }

        @Override // io.reactivex.rxjava3.operators.SimpleQueue
        public final boolean isEmpty() {
            return this.queue.isEmpty();
        }

        @Override // org.reactivestreams.Subscriber
        public final void onComplete() {
            if (this.done) {
                return;
            }
            this.done = true;
            trySchedule();
        }

        @Override // org.reactivestreams.Subscriber
        public final void onError(Throwable th) {
            if (this.done) {
                MathKt.onError(th);
                return;
            }
            this.error = th;
            this.done = true;
            trySchedule();
        }

        @Override // org.reactivestreams.Subscriber
        public final void onNext(Object obj) {
            if (this.done) {
                return;
            }
            if (this.sourceMode == 2) {
                trySchedule();
                return;
            }
            if (!this.queue.offer(obj)) {
                this.upstream.cancel();
                this.error = new QueueOverflowException();
                this.done = true;
            }
            trySchedule();
        }

        @Override // org.reactivestreams.Subscription
        public final void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                Options.Companion.add(this.requested, j);
                trySchedule();
            }
        }

        @Override // io.reactivex.rxjava3.operators.QueueFuseable
        public final int requestFusion(int i) {
            this.outputFused = true;
            return 2;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (this.outputFused) {
                runBackfused();
            } else if (this.sourceMode == 1) {
                runSync();
            } else {
                runAsync();
            }
        }

        public abstract void runAsync();

        public abstract void runBackfused();

        public abstract void runSync();

        public final void trySchedule() {
            if (getAndIncrement() != 0) {
                return;
            }
            this.worker.schedule(this);
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class ObserveOnConditionalSubscriber extends BaseObserveOnSubscriber {
        private static final long serialVersionUID = 644624475404284533L;
        long consumed;
        final ConditionalSubscriber downstream;

        public ObserveOnConditionalSubscriber(ConditionalSubscriber conditionalSubscriber, Scheduler.Worker worker, int i) {
            super(worker, i);
            this.downstream = conditionalSubscriber;
        }

        @Override // org.reactivestreams.Subscriber
        public final void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.upstream, subscription)) {
                this.upstream = subscription;
                if (subscription instanceof QueueSubscription) {
                    QueueSubscription queueSubscription = (QueueSubscription) subscription;
                    int requestFusion = queueSubscription.requestFusion(7);
                    if (requestFusion == 1) {
                        this.sourceMode = 1;
                        this.queue = queueSubscription;
                        this.done = true;
                        this.downstream.onSubscribe(this);
                        return;
                    }
                    if (requestFusion == 2) {
                        this.sourceMode = 2;
                        this.queue = queueSubscription;
                        this.downstream.onSubscribe(this);
                        subscription.request(this.prefetch);
                        return;
                    }
                }
                this.queue = new SpscArrayQueue(this.prefetch);
                this.downstream.onSubscribe(this);
                subscription.request(this.prefetch);
            }
        }

        @Override // io.reactivex.rxjava3.operators.SimpleQueue
        public final Object poll() {
            Object poll = this.queue.poll();
            if (poll != null && this.sourceMode != 1) {
                long j = this.consumed + 1;
                if (j == this.limit) {
                    this.consumed = 0L;
                    this.upstream.request(j);
                    return poll;
                }
                this.consumed = j;
            }
            return poll;
        }

        @Override // io.reactivex.rxjava3.internal.operators.flowable.FlowableObserveOn.BaseObserveOnSubscriber
        public final void runAsync() {
            ConditionalSubscriber conditionalSubscriber = this.downstream;
            SimpleQueue simpleQueue = this.queue;
            long j = this.produced;
            long j2 = this.consumed;
            int i = 1;
            do {
                long j3 = this.requested.get();
                while (j != j3) {
                    boolean z = this.done;
                    try {
                        Object poll = simpleQueue.poll();
                        boolean z2 = poll == null;
                        if (checkTerminated(z, z2, conditionalSubscriber)) {
                            return;
                        }
                        if (z2) {
                            break;
                        }
                        if (conditionalSubscriber.tryOnNext(poll)) {
                            j++;
                        }
                        j2++;
                        if (j2 == this.limit) {
                            this.upstream.request(j2);
                            j2 = 0;
                        }
                    } catch (Throwable th) {
                        AppKt.throwIfFatal(th);
                        this.cancelled = true;
                        this.upstream.cancel();
                        simpleQueue.clear();
                        conditionalSubscriber.onError(th);
                        this.worker.dispose();
                        return;
                    }
                }
                if (j == j3 && checkTerminated(this.done, simpleQueue.isEmpty(), conditionalSubscriber)) {
                    return;
                }
                this.produced = j;
                this.consumed = j2;
                i = addAndGet(-i);
            } while (i != 0);
        }

        @Override // io.reactivex.rxjava3.internal.operators.flowable.FlowableObserveOn.BaseObserveOnSubscriber
        public final void runBackfused() {
            int i = 1;
            while (!this.cancelled) {
                boolean z = this.done;
                this.downstream.onNext(null);
                if (z) {
                    this.cancelled = true;
                    Throwable th = this.error;
                    ConditionalSubscriber conditionalSubscriber = this.downstream;
                    if (th != null) {
                        conditionalSubscriber.onError(th);
                    } else {
                        conditionalSubscriber.onComplete();
                    }
                    this.worker.dispose();
                    return;
                }
                i = addAndGet(-i);
                if (i == 0) {
                    return;
                }
            }
        }

        @Override // io.reactivex.rxjava3.internal.operators.flowable.FlowableObserveOn.BaseObserveOnSubscriber
        public final void runSync() {
            ConditionalSubscriber conditionalSubscriber = this.downstream;
            SimpleQueue simpleQueue = this.queue;
            long j = this.produced;
            int i = 1;
            do {
                long j2 = this.requested.get();
                while (j != j2) {
                    try {
                        Object poll = simpleQueue.poll();
                        if (this.cancelled) {
                            return;
                        }
                        if (poll == null) {
                            this.cancelled = true;
                            conditionalSubscriber.onComplete();
                            this.worker.dispose();
                            return;
                        } else if (conditionalSubscriber.tryOnNext(poll)) {
                            j++;
                        }
                    } catch (Throwable th) {
                        AppKt.throwIfFatal(th);
                        this.cancelled = true;
                        this.upstream.cancel();
                        conditionalSubscriber.onError(th);
                        this.worker.dispose();
                        return;
                    }
                }
                if (this.cancelled) {
                    return;
                }
                if (simpleQueue.isEmpty()) {
                    this.cancelled = true;
                    conditionalSubscriber.onComplete();
                    this.worker.dispose();
                    return;
                }
                this.produced = j;
                i = addAndGet(-i);
            } while (i != 0);
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class ObserveOnSubscriber extends BaseObserveOnSubscriber {
        private static final long serialVersionUID = -4547113800637756442L;
        final Subscriber downstream;

        public ObserveOnSubscriber(Subscriber subscriber, Scheduler.Worker worker, int i) {
            super(worker, i);
            this.downstream = subscriber;
        }

        @Override // org.reactivestreams.Subscriber
        public final void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.upstream, subscription)) {
                this.upstream = subscription;
                if (subscription instanceof QueueSubscription) {
                    QueueSubscription queueSubscription = (QueueSubscription) subscription;
                    int requestFusion = queueSubscription.requestFusion(7);
                    if (requestFusion == 1) {
                        this.sourceMode = 1;
                        this.queue = queueSubscription;
                        this.done = true;
                        this.downstream.onSubscribe(this);
                        return;
                    }
                    if (requestFusion == 2) {
                        this.sourceMode = 2;
                        this.queue = queueSubscription;
                        this.downstream.onSubscribe(this);
                        subscription.request(this.prefetch);
                        return;
                    }
                }
                this.queue = new SpscArrayQueue(this.prefetch);
                this.downstream.onSubscribe(this);
                subscription.request(this.prefetch);
            }
        }

        @Override // io.reactivex.rxjava3.operators.SimpleQueue
        public final Object poll() {
            Object poll = this.queue.poll();
            if (poll != null && this.sourceMode != 1) {
                long j = this.produced + 1;
                if (j == this.limit) {
                    this.produced = 0L;
                    this.upstream.request(j);
                    return poll;
                }
                this.produced = j;
            }
            return poll;
        }

        @Override // io.reactivex.rxjava3.internal.operators.flowable.FlowableObserveOn.BaseObserveOnSubscriber
        public final void runAsync() {
            Subscriber subscriber = this.downstream;
            SimpleQueue simpleQueue = this.queue;
            long j = this.produced;
            int i = 1;
            while (true) {
                long j2 = this.requested.get();
                while (j != j2) {
                    boolean z = this.done;
                    try {
                        Object poll = simpleQueue.poll();
                        boolean z2 = poll == null;
                        if (checkTerminated(z, z2, subscriber)) {
                            return;
                        }
                        if (z2) {
                            break;
                        }
                        subscriber.onNext(poll);
                        j++;
                        if (j == this.limit) {
                            if (j2 != Long.MAX_VALUE) {
                                j2 = this.requested.addAndGet(-j);
                            }
                            this.upstream.request(j);
                            j = 0;
                        }
                    } catch (Throwable th) {
                        AppKt.throwIfFatal(th);
                        this.cancelled = true;
                        this.upstream.cancel();
                        simpleQueue.clear();
                        subscriber.onError(th);
                        this.worker.dispose();
                        return;
                    }
                }
                if (j == j2 && checkTerminated(this.done, simpleQueue.isEmpty(), subscriber)) {
                    return;
                }
                int i2 = get();
                if (i == i2) {
                    this.produced = j;
                    i = addAndGet(-i);
                    if (i == 0) {
                        return;
                    }
                } else {
                    i = i2;
                }
            }
        }

        @Override // io.reactivex.rxjava3.internal.operators.flowable.FlowableObserveOn.BaseObserveOnSubscriber
        public final void runBackfused() {
            int i = 1;
            while (!this.cancelled) {
                boolean z = this.done;
                this.downstream.onNext(null);
                if (z) {
                    this.cancelled = true;
                    Throwable th = this.error;
                    Subscriber subscriber = this.downstream;
                    if (th != null) {
                        subscriber.onError(th);
                    } else {
                        subscriber.onComplete();
                    }
                    this.worker.dispose();
                    return;
                }
                i = addAndGet(-i);
                if (i == 0) {
                    return;
                }
            }
        }

        @Override // io.reactivex.rxjava3.internal.operators.flowable.FlowableObserveOn.BaseObserveOnSubscriber
        public final void runSync() {
            Subscriber subscriber = this.downstream;
            SimpleQueue simpleQueue = this.queue;
            long j = this.produced;
            int i = 1;
            do {
                long j2 = this.requested.get();
                while (j != j2) {
                    try {
                        Object poll = simpleQueue.poll();
                        if (this.cancelled) {
                            return;
                        }
                        if (poll == null) {
                            this.cancelled = true;
                            subscriber.onComplete();
                            this.worker.dispose();
                            return;
                        }
                        subscriber.onNext(poll);
                        j++;
                    } catch (Throwable th) {
                        AppKt.throwIfFatal(th);
                        this.cancelled = true;
                        this.upstream.cancel();
                        subscriber.onError(th);
                        this.worker.dispose();
                        return;
                    }
                }
                if (this.cancelled) {
                    return;
                }
                if (simpleQueue.isEmpty()) {
                    this.cancelled = true;
                    subscriber.onComplete();
                    this.worker.dispose();
                    return;
                }
                this.produced = j;
                i = addAndGet(-i);
            } while (i != 0);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FlowableObserveOn(FlowableSubscribeOn flowableSubscribeOn, LocalPlaylistFragment$$ExternalSyntheticLambda24 localPlaylistFragment$$ExternalSyntheticLambda24) {
        super(flowableSubscribeOn);
        this.$r8$classId = 1;
        this.scheduler = localPlaylistFragment$$ExternalSyntheticLambda24;
        this.prefetch = Log.LOG_LEVEL_OFF;
    }

    @Override // io.reactivex.rxjava3.core.Flowable
    public final void subscribeActual(FlowableSubscriber flowableSubscriber) {
        int i = this.$r8$classId;
        int i2 = this.prefetch;
        Object obj = this.scheduler;
        Flowable flowable = this.source;
        switch (i) {
            case 0:
                Scheduler.Worker createWorker = ((Scheduler) obj).createWorker();
                if (!(flowableSubscriber instanceof ConditionalSubscriber)) {
                    flowable.subscribe((FlowableSubscriber) new ObserveOnSubscriber(flowableSubscriber, createWorker, i2));
                    break;
                } else {
                    flowable.subscribe((FlowableSubscriber) new ObserveOnConditionalSubscriber((ConditionalSubscriber) flowableSubscriber, createWorker, i2));
                    break;
                }
            case 1:
                flowable.subscribe((FlowableSubscriber) new FlowableFlatMapSingle$FlatMapSingleSubscriber(flowableSubscriber, (LocalPlaylistFragment$$ExternalSyntheticLambda24) obj, i2));
                break;
            case 2:
                FlowablePublishMulticast$MulticastProcessor flowablePublishMulticast$MulticastProcessor = new FlowablePublishMulticast$MulticastProcessor(i2);
                try {
                    ((Flowable) ((Publisher) ((FeedViewModel$$ExternalSyntheticLambda0) obj).apply(flowablePublishMulticast$MulticastProcessor))).subscribe((Subscriber) new FlowablePublishMulticast$OutputCanceller(flowableSubscriber, flowablePublishMulticast$MulticastProcessor));
                    flowable.subscribe((FlowableSubscriber) flowablePublishMulticast$MulticastProcessor);
                    break;
                } catch (Throwable th) {
                    AppKt.throwIfFatal(th);
                    EmptySubscription.error(th, flowableSubscriber);
                    return;
                }
            default:
                VideoPlayerUi.AnonymousClass1 anonymousClass1 = (VideoPlayerUi.AnonymousClass1) obj;
                if (!UStringsKt.tryScalarXMapSubscribe(flowable, flowableSubscriber, anonymousClass1)) {
                    flowable.subscribe((FlowableSubscriber) new FlowableSwitchMap$SwitchMapSubscriber(flowableSubscriber, anonymousClass1, i2));
                    break;
                }
                break;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ FlowableObserveOn(Flowable flowable, Object obj, int i, int i2) {
        super(flowable);
        this.$r8$classId = i2;
        this.scheduler = obj;
        this.prefetch = i;
    }
}
