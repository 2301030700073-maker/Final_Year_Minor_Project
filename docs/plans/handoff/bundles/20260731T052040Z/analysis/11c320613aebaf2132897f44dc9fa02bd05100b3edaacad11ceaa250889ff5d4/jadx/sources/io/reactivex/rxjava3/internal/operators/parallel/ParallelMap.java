package io.reactivex.rxjava3.internal.operators.parallel;

import io.reactivex.rxjava3.core.FlowableSubscriber;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.functions.Predicate;
import io.reactivex.rxjava3.internal.operators.parallel.ParallelFromPublisher;
import io.reactivex.rxjava3.internal.schedulers.SchedulerMultiWorkerSupport;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.operators.ConditionalSubscriber;
import io.reactivex.rxjava3.operators.SpscArrayQueue;
import kotlin.math.MathKt;
import net.newpipe.app.AppKt;
import okhttp3.Cookie;
import okio.Options;
import org.acra.util.ProcessFinisher;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
import org.schabi.newpipe.local.feed.service.FeedLoadManager$notification$1;
import org.schabi.newpipe.local.feed.service.FeedLoadManager$startLoading$8;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ParallelMap extends Cookie.Companion {
    public final /* synthetic */ int $r8$classId;
    public final Object mapper;
    public final Cookie.Companion source;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class ParallelMapConditionalSubscriber implements ConditionalSubscriber, Subscription {
        public boolean done;
        public final ConditionalSubscriber downstream;
        public final FeedLoadManager$startLoading$8 mapper;
        public Subscription upstream;

        public ParallelMapConditionalSubscriber(ConditionalSubscriber conditionalSubscriber, FeedLoadManager$startLoading$8 feedLoadManager$startLoading$8) {
            this.downstream = conditionalSubscriber;
            this.mapper = feedLoadManager$startLoading$8;
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
            try {
                this.downstream.onNext(this.mapper.apply(obj));
            } catch (Throwable th) {
                AppKt.throwIfFatal(th);
                cancel();
                onError(th);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public final void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.upstream, subscription)) {
                this.upstream = subscription;
                this.downstream.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.Subscription
        public final void request(long j) {
            this.upstream.request(j);
        }

        @Override // io.reactivex.rxjava3.operators.ConditionalSubscriber
        public final boolean tryOnNext(Object obj) {
            if (this.done) {
                return false;
            }
            try {
                return this.downstream.tryOnNext(this.mapper.apply(obj));
            } catch (Throwable th) {
                AppKt.throwIfFatal(th);
                cancel();
                onError(th);
                return false;
            }
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class ParallelMapSubscriber implements FlowableSubscriber, Subscription {
        public final /* synthetic */ int $r8$classId;
        public boolean done;
        public final Subscriber downstream;
        public final Object mapper;
        public Subscription upstream;

        public /* synthetic */ ParallelMapSubscriber(Subscriber subscriber, Object obj, int i) {
            this.$r8$classId = i;
            this.downstream = subscriber;
            this.mapper = obj;
        }

        @Override // org.reactivestreams.Subscription
        public final void cancel() {
            switch (this.$r8$classId) {
                case 0:
                    this.upstream.cancel();
                    break;
                default:
                    this.upstream.cancel();
                    break;
            }
        }

        @Override // org.reactivestreams.Subscriber
        public final void onComplete() {
            switch (this.$r8$classId) {
                case 0:
                    if (!this.done) {
                        this.done = true;
                        this.downstream.onComplete();
                        break;
                    }
                    break;
                default:
                    if (!this.done) {
                        this.done = true;
                        this.downstream.onComplete();
                        break;
                    }
                    break;
            }
        }

        @Override // org.reactivestreams.Subscriber
        public final void onError(Throwable th) {
            switch (this.$r8$classId) {
                case 0:
                    if (!this.done) {
                        this.done = true;
                        this.downstream.onError(th);
                        break;
                    } else {
                        MathKt.onError(th);
                        break;
                    }
                default:
                    if (!this.done) {
                        this.done = true;
                        this.downstream.onError(th);
                        break;
                    } else {
                        MathKt.onError(th);
                        break;
                    }
            }
        }

        @Override // org.reactivestreams.Subscriber
        public final void onNext(Object obj) {
            int i = this.$r8$classId;
            Object obj2 = this.mapper;
            Subscriber subscriber = this.downstream;
            switch (i) {
                case 0:
                    if (!this.done) {
                        try {
                            subscriber.onNext(((FeedLoadManager$startLoading$8) obj2).apply(obj));
                            break;
                        } catch (Throwable th) {
                            AppKt.throwIfFatal(th);
                            this.cancel();
                            this.onError(th);
                            return;
                        }
                    }
                    break;
                default:
                    if (!this.done) {
                        try {
                            if (!((Predicate) obj2).test(obj)) {
                                this.done = true;
                                this.upstream.cancel();
                                subscriber.onComplete();
                                break;
                            } else {
                                subscriber.onNext(obj);
                                break;
                            }
                        } catch (Throwable th2) {
                            AppKt.throwIfFatal(th2);
                            this.upstream.cancel();
                            onError(th2);
                        }
                    }
                    break;
            }
        }

        @Override // org.reactivestreams.Subscriber
        public final void onSubscribe(Subscription subscription) {
            switch (this.$r8$classId) {
                case 0:
                    if (SubscriptionHelper.validate(this.upstream, subscription)) {
                        this.upstream = subscription;
                        this.downstream.onSubscribe(this);
                        break;
                    }
                    break;
                default:
                    if (SubscriptionHelper.validate(this.upstream, subscription)) {
                        this.upstream = subscription;
                        this.downstream.onSubscribe(this);
                        break;
                    }
                    break;
            }
        }

        @Override // org.reactivestreams.Subscription
        public final void request(long j) {
            switch (this.$r8$classId) {
                case 0:
                    this.upstream.request(j);
                    break;
                default:
                    this.upstream.request(j);
                    break;
            }
        }
    }

    public /* synthetic */ ParallelMap(Cookie.Companion companion, Object obj, int i) {
        this.$r8$classId = i;
        this.source = companion;
        this.mapper = obj;
    }

    public void createSubscriber(int i, Subscriber[] subscriberArr, Subscriber[] subscriberArr2, final Scheduler.Worker worker) {
        final Subscriber subscriber = subscriberArr[i];
        final SpscArrayQueue spscArrayQueue = new SpscArrayQueue(6);
        if (!(subscriber instanceof ConditionalSubscriber)) {
            subscriberArr2[i] = new ParallelRunOn$BaseRunOnSubscriber(subscriber, spscArrayQueue, worker) { // from class: io.reactivex.rxjava3.internal.operators.parallel.ParallelRunOn$RunOnSubscriber
                private static final long serialVersionUID = 1075119423897941642L;
                final Subscriber downstream;

                {
                    super(spscArrayQueue, worker);
                    this.downstream = subscriber;
                }

                @Override // org.reactivestreams.Subscriber
                public final void onSubscribe(Subscription subscription) {
                    if (SubscriptionHelper.validate(this.upstream, subscription)) {
                        this.upstream = subscription;
                        this.downstream.onSubscribe(this);
                        subscription.request(this.prefetch);
                    }
                }

                @Override // java.lang.Runnable
                public final void run() {
                    Throwable th;
                    int i2 = this.consumed;
                    SpscArrayQueue spscArrayQueue2 = this.queue;
                    Subscriber subscriber2 = this.downstream;
                    int i3 = this.limit;
                    int i4 = 1;
                    while (true) {
                        long j = this.requested.get();
                        long j2 = 0;
                        while (j2 != j) {
                            if (this.cancelled) {
                                spscArrayQueue2.clear();
                                return;
                            }
                            boolean z = this.done;
                            if (z && (th = this.error) != null) {
                                spscArrayQueue2.clear();
                                subscriber2.onError(th);
                                this.worker.dispose();
                                return;
                            }
                            Object poll = spscArrayQueue2.poll();
                            boolean z2 = poll == null;
                            if (z && z2) {
                                subscriber2.onComplete();
                                this.worker.dispose();
                                return;
                            } else {
                                if (z2) {
                                    break;
                                }
                                subscriber2.onNext(poll);
                                j2++;
                                i2++;
                                if (i2 == i3) {
                                    this.upstream.request(i2);
                                    i2 = 0;
                                }
                            }
                        }
                        if (j2 == j) {
                            if (this.cancelled) {
                                spscArrayQueue2.clear();
                                return;
                            }
                            if (this.done) {
                                Throwable th2 = this.error;
                                if (th2 != null) {
                                    spscArrayQueue2.clear();
                                    subscriber2.onError(th2);
                                    this.worker.dispose();
                                    return;
                                } else if (spscArrayQueue2.isEmpty()) {
                                    subscriber2.onComplete();
                                    this.worker.dispose();
                                    return;
                                }
                            }
                        }
                        if (j2 != 0 && j != Long.MAX_VALUE) {
                            this.requested.addAndGet(-j2);
                        }
                        int i5 = get();
                        if (i5 == i4) {
                            this.consumed = i2;
                            i4 = addAndGet(-i4);
                            if (i4 == 0) {
                                return;
                            }
                        } else {
                            i4 = i5;
                        }
                    }
                }
            };
        } else {
            final ConditionalSubscriber conditionalSubscriber = (ConditionalSubscriber) subscriber;
            subscriberArr2[i] = new ParallelRunOn$BaseRunOnSubscriber(conditionalSubscriber, spscArrayQueue, worker) { // from class: io.reactivex.rxjava3.internal.operators.parallel.ParallelRunOn$RunOnConditionalSubscriber
                private static final long serialVersionUID = 1075119423897941642L;
                final ConditionalSubscriber downstream;

                {
                    super(spscArrayQueue, worker);
                    this.downstream = conditionalSubscriber;
                }

                @Override // org.reactivestreams.Subscriber
                public final void onSubscribe(Subscription subscription) {
                    if (SubscriptionHelper.validate(this.upstream, subscription)) {
                        this.upstream = subscription;
                        this.downstream.onSubscribe(this);
                        subscription.request(this.prefetch);
                    }
                }

                @Override // java.lang.Runnable
                public final void run() {
                    Throwable th;
                    int i2 = this.consumed;
                    SpscArrayQueue spscArrayQueue2 = this.queue;
                    ConditionalSubscriber conditionalSubscriber2 = this.downstream;
                    int i3 = this.limit;
                    int i4 = 1;
                    do {
                        long j = this.requested.get();
                        long j2 = 0;
                        while (j2 != j) {
                            if (this.cancelled) {
                                spscArrayQueue2.clear();
                                return;
                            }
                            boolean z = this.done;
                            if (z && (th = this.error) != null) {
                                spscArrayQueue2.clear();
                                conditionalSubscriber2.onError(th);
                                this.worker.dispose();
                                return;
                            }
                            Object poll = spscArrayQueue2.poll();
                            boolean z2 = poll == null;
                            if (z && z2) {
                                conditionalSubscriber2.onComplete();
                                this.worker.dispose();
                                return;
                            } else {
                                if (z2) {
                                    break;
                                }
                                if (conditionalSubscriber2.tryOnNext(poll)) {
                                    j2++;
                                }
                                i2++;
                                if (i2 == i3) {
                                    this.upstream.request(i2);
                                    i2 = 0;
                                }
                            }
                        }
                        if (j2 == j) {
                            if (this.cancelled) {
                                spscArrayQueue2.clear();
                                return;
                            }
                            if (this.done) {
                                Throwable th2 = this.error;
                                if (th2 != null) {
                                    spscArrayQueue2.clear();
                                    conditionalSubscriber2.onError(th2);
                                    this.worker.dispose();
                                    return;
                                } else if (spscArrayQueue2.isEmpty()) {
                                    conditionalSubscriber2.onComplete();
                                    this.worker.dispose();
                                    return;
                                }
                            }
                        }
                        if (j2 != 0) {
                            Options.Companion.produced(this.requested, j2);
                        }
                        this.consumed = i2;
                        i4 = addAndGet(-i4);
                    } while (i4 != 0);
                }
            };
        }
    }

    @Override // okhttp3.Cookie.Companion
    public final int parallelism() {
        switch (this.$r8$classId) {
        }
        return 3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void subscribe(Subscriber[] subscriberArr) {
        int i = this.$r8$classId;
        Cookie.Companion companion = this.source;
        Object obj = this.mapper;
        int i2 = 0;
        switch (i) {
            case 0:
                if (validate(subscriberArr)) {
                    int length = subscriberArr.length;
                    Subscriber[] subscriberArr2 = new Subscriber[length];
                    for (int i3 = 0; i3 < length; i3++) {
                        Subscriber subscriber = subscriberArr[i3];
                        FeedLoadManager$startLoading$8 feedLoadManager$startLoading$8 = (FeedLoadManager$startLoading$8) obj;
                        if (subscriber instanceof ConditionalSubscriber) {
                            subscriberArr2[i3] = new ParallelMapConditionalSubscriber((ConditionalSubscriber) subscriber, feedLoadManager$startLoading$8);
                        } else {
                            subscriberArr2[i3] = new ParallelMapSubscriber(subscriber, feedLoadManager$startLoading$8, i2);
                        }
                    }
                    ((ParallelMap) companion).subscribe(subscriberArr2);
                    break;
                }
                break;
            case 1:
                if (validate(subscriberArr)) {
                    int length2 = subscriberArr.length;
                    Subscriber[] subscriberArr3 = new Subscriber[length2];
                    for (int i4 = 0; i4 < length2; i4++) {
                        Subscriber subscriber2 = subscriberArr[i4];
                        FeedLoadManager$notification$1 feedLoadManager$notification$1 = (FeedLoadManager$notification$1) obj;
                        if (subscriber2 instanceof ConditionalSubscriber) {
                            subscriberArr3[i4] = new ParallelFilter$ParallelFilterSubscriber((ConditionalSubscriber) subscriber2, feedLoadManager$notification$1, 1);
                        } else {
                            subscriberArr3[i4] = new ParallelFilter$ParallelFilterSubscriber(subscriber2, feedLoadManager$notification$1, 0);
                        }
                    }
                    ((ParallelMap) companion).subscribe(subscriberArr3);
                    break;
                }
                break;
            default:
                Scheduler scheduler = (Scheduler) obj;
                if (validate(subscriberArr)) {
                    int length3 = subscriberArr.length;
                    Subscriber[] subscriberArr4 = new Subscriber[length3];
                    if (scheduler instanceof SchedulerMultiWorkerSupport) {
                        ((SchedulerMultiWorkerSupport) scheduler).createWorkers(length3, new ProcessFinisher(this, subscriberArr, subscriberArr4));
                    } else {
                        while (i2 < length3) {
                            createSubscriber(i2, subscriberArr, subscriberArr4, scheduler.createWorker());
                            i2++;
                        }
                    }
                    ParallelFromPublisher parallelFromPublisher = (ParallelFromPublisher) companion;
                    if (parallelFromPublisher.validate(subscriberArr4)) {
                        parallelFromPublisher.source.subscribe((Subscriber) new ParallelFromPublisher.ParallelDispatcher(subscriberArr4));
                        break;
                    }
                }
                break;
        }
    }
}
