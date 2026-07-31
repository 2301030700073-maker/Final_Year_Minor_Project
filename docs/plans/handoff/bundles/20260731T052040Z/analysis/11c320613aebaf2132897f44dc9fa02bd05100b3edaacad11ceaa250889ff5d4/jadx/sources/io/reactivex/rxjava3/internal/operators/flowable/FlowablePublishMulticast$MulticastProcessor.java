package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.core.FlowableSubscriber;
import io.reactivex.rxjava3.exceptions.MissingBackpressureException;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.operators.QueueSubscription;
import io.reactivex.rxjava3.operators.SimpleQueue;
import io.reactivex.rxjava3.operators.SpscArrayQueue;
import io.reactivex.rxjava3.operators.SpscLinkedArrayQueue;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.math.MathKt;
import net.newpipe.app.AppKt;
import org.reactivestreams.Subscription;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class FlowablePublishMulticast$MulticastProcessor extends Flowable implements FlowableSubscriber {
    public static final FlowablePublishMulticast$MulticastSubscription[] EMPTY = new FlowablePublishMulticast$MulticastSubscription[0];
    public static final FlowablePublishMulticast$MulticastSubscription[] TERMINATED = new FlowablePublishMulticast$MulticastSubscription[0];
    public int consumed;
    public volatile boolean done;
    public Throwable error;
    public final int limit;
    public final int prefetch;
    public volatile SimpleQueue queue;
    public int sourceMode;
    public final AtomicInteger wip = new AtomicInteger();
    public final AtomicReference upstream = new AtomicReference();
    public final AtomicReference subscribers = new AtomicReference(EMPTY);

    public FlowablePublishMulticast$MulticastProcessor(int i) {
        this.prefetch = i;
        this.limit = i - (i >> 2);
    }

    public final void completeAll() {
        for (FlowablePublishMulticast$MulticastSubscription flowablePublishMulticast$MulticastSubscription : (FlowablePublishMulticast$MulticastSubscription[]) this.subscribers.getAndSet(TERMINATED)) {
            if (flowablePublishMulticast$MulticastSubscription.get() != Long.MIN_VALUE) {
                flowablePublishMulticast$MulticastSubscription.downstream.onComplete();
            }
        }
    }

    public final void dispose() {
        SimpleQueue simpleQueue;
        if (this.done) {
            return;
        }
        SubscriptionHelper.cancel(this.upstream);
        if (this.wip.getAndIncrement() != 0 || (simpleQueue = this.queue) == null) {
            return;
        }
        simpleQueue.clear();
    }

    public final void drain() {
        AtomicReference atomicReference;
        Throwable th;
        Throwable th2;
        SubscriptionHelper subscriptionHelper = SubscriptionHelper.CANCELLED;
        if (this.wip.getAndIncrement() != 0) {
            return;
        }
        SimpleQueue simpleQueue = this.queue;
        int i = this.consumed;
        int i2 = this.limit;
        boolean z = this.sourceMode != 1;
        AtomicReference atomicReference2 = this.subscribers;
        FlowablePublishMulticast$MulticastSubscription[] flowablePublishMulticast$MulticastSubscriptionArr = (FlowablePublishMulticast$MulticastSubscription[]) atomicReference2.get();
        int i3 = 1;
        while (true) {
            int length = flowablePublishMulticast$MulticastSubscriptionArr.length;
            if (simpleQueue == null || length == 0) {
                atomicReference = atomicReference2;
            } else {
                int length2 = flowablePublishMulticast$MulticastSubscriptionArr.length;
                long j = Long.MAX_VALUE;
                long j2 = Long.MAX_VALUE;
                int i4 = 0;
                while (i4 < length2) {
                    FlowablePublishMulticast$MulticastSubscription flowablePublishMulticast$MulticastSubscription = flowablePublishMulticast$MulticastSubscriptionArr[i4];
                    AtomicReference atomicReference3 = atomicReference2;
                    long j3 = flowablePublishMulticast$MulticastSubscription.get() - flowablePublishMulticast$MulticastSubscription.emitted;
                    if (j3 == Long.MIN_VALUE) {
                        length--;
                    } else if (j2 > j3) {
                        j2 = j3;
                    }
                    i4++;
                    atomicReference2 = atomicReference3;
                }
                atomicReference = atomicReference2;
                long j4 = 0;
                if (length == 0) {
                    j2 = 0;
                }
                while (j2 != j4) {
                    if (this.upstream.get() == subscriptionHelper) {
                        simpleQueue.clear();
                        return;
                    }
                    boolean z2 = this.done;
                    if (z2 && (th2 = this.error) != null) {
                        errorAll(th2);
                        return;
                    }
                    try {
                        Object poll = simpleQueue.poll();
                        boolean z3 = poll == null;
                        if (z2 && z3) {
                            Throwable th3 = this.error;
                            if (th3 != null) {
                                errorAll(th3);
                                return;
                            } else {
                                completeAll();
                                return;
                            }
                        }
                        if (z3) {
                            break;
                        }
                        int length3 = flowablePublishMulticast$MulticastSubscriptionArr.length;
                        int i5 = 0;
                        boolean z4 = false;
                        while (i5 < length3) {
                            FlowablePublishMulticast$MulticastSubscription flowablePublishMulticast$MulticastSubscription2 = flowablePublishMulticast$MulticastSubscriptionArr[i5];
                            long j5 = flowablePublishMulticast$MulticastSubscription2.get();
                            if (j5 != Long.MIN_VALUE) {
                                if (j5 != j) {
                                    flowablePublishMulticast$MulticastSubscription2.emitted++;
                                }
                                flowablePublishMulticast$MulticastSubscription2.downstream.onNext(poll);
                            } else {
                                z4 = true;
                            }
                            i5++;
                            j = Long.MAX_VALUE;
                        }
                        j2--;
                        if (z && (i = i + 1) == i2) {
                            ((Subscription) this.upstream.get()).request(i2);
                            i = 0;
                        }
                        FlowablePublishMulticast$MulticastSubscription[] flowablePublishMulticast$MulticastSubscriptionArr2 = (FlowablePublishMulticast$MulticastSubscription[]) atomicReference.get();
                        if (z4 || flowablePublishMulticast$MulticastSubscriptionArr2 != flowablePublishMulticast$MulticastSubscriptionArr) {
                            flowablePublishMulticast$MulticastSubscriptionArr = flowablePublishMulticast$MulticastSubscriptionArr2;
                            break;
                        } else {
                            j4 = 0;
                            j = Long.MAX_VALUE;
                        }
                    } catch (Throwable th4) {
                        AppKt.throwIfFatal(th4);
                        SubscriptionHelper.cancel(this.upstream);
                        errorAll(th4);
                        return;
                    }
                }
                if (j2 == j4) {
                    if (this.upstream.get() == subscriptionHelper) {
                        simpleQueue.clear();
                        return;
                    }
                    boolean z5 = this.done;
                    if (z5 && (th = this.error) != null) {
                        errorAll(th);
                        return;
                    }
                    if (z5 && simpleQueue.isEmpty()) {
                        Throwable th5 = this.error;
                        if (th5 != null) {
                            errorAll(th5);
                            return;
                        } else {
                            completeAll();
                            return;
                        }
                    }
                }
            }
            this.consumed = i;
            i3 = this.wip.addAndGet(-i3);
            if (i3 == 0) {
                return;
            }
            if (simpleQueue == null) {
                simpleQueue = this.queue;
            }
            flowablePublishMulticast$MulticastSubscriptionArr = (FlowablePublishMulticast$MulticastSubscription[]) atomicReference.get();
            atomicReference2 = atomicReference;
        }
    }

    public final void errorAll(Throwable th) {
        for (FlowablePublishMulticast$MulticastSubscription flowablePublishMulticast$MulticastSubscription : (FlowablePublishMulticast$MulticastSubscription[]) this.subscribers.getAndSet(TERMINATED)) {
            if (flowablePublishMulticast$MulticastSubscription.get() != Long.MIN_VALUE) {
                flowablePublishMulticast$MulticastSubscription.downstream.onError(th);
            }
        }
    }

    @Override // org.reactivestreams.Subscriber
    public final void onComplete() {
        if (this.done) {
            return;
        }
        this.done = true;
        drain();
    }

    @Override // org.reactivestreams.Subscriber
    public final void onError(Throwable th) {
        if (this.done) {
            MathKt.onError(th);
            return;
        }
        this.error = th;
        this.done = true;
        drain();
    }

    @Override // org.reactivestreams.Subscriber
    public final void onNext(Object obj) {
        if (this.done) {
            return;
        }
        if (this.sourceMode != 0 || this.queue.offer(obj)) {
            drain();
        } else {
            ((Subscription) this.upstream.get()).cancel();
            onError(new MissingBackpressureException("Could not emit value due to lack of requests"));
        }
    }

    @Override // org.reactivestreams.Subscriber
    public final void onSubscribe(Subscription subscription) {
        if (SubscriptionHelper.setOnce(this.upstream, subscription)) {
            if (subscription instanceof QueueSubscription) {
                QueueSubscription queueSubscription = (QueueSubscription) subscription;
                int requestFusion = queueSubscription.requestFusion(3);
                if (requestFusion == 1) {
                    this.sourceMode = requestFusion;
                    this.queue = queueSubscription;
                    this.done = true;
                    drain();
                    return;
                }
                if (requestFusion == 2) {
                    this.sourceMode = requestFusion;
                    this.queue = queueSubscription;
                    int i = this.prefetch;
                    subscription.request(i >= 0 ? i : Long.MAX_VALUE);
                    return;
                }
            }
            int i2 = this.prefetch;
            this.queue = i2 < 0 ? new SpscLinkedArrayQueue(-i2) : new SpscArrayQueue(i2);
            int i3 = this.prefetch;
            subscription.request(i3 >= 0 ? i3 : Long.MAX_VALUE);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void remove(FlowablePublishMulticast$MulticastSubscription flowablePublishMulticast$MulticastSubscription) {
        FlowablePublishMulticast$MulticastSubscription[] flowablePublishMulticast$MulticastSubscriptionArr;
        while (true) {
            AtomicReference atomicReference = this.subscribers;
            FlowablePublishMulticast$MulticastSubscription[] flowablePublishMulticast$MulticastSubscriptionArr2 = (FlowablePublishMulticast$MulticastSubscription[]) atomicReference.get();
            int length = flowablePublishMulticast$MulticastSubscriptionArr2.length;
            if (length == 0) {
                return;
            }
            int i = 0;
            while (true) {
                if (i >= length) {
                    i = -1;
                    break;
                } else if (flowablePublishMulticast$MulticastSubscriptionArr2[i] == flowablePublishMulticast$MulticastSubscription) {
                    break;
                } else {
                    i++;
                }
            }
            if (i < 0) {
                return;
            }
            if (length == 1) {
                flowablePublishMulticast$MulticastSubscriptionArr = EMPTY;
            } else {
                FlowablePublishMulticast$MulticastSubscription[] flowablePublishMulticast$MulticastSubscriptionArr3 = new FlowablePublishMulticast$MulticastSubscription[length - 1];
                System.arraycopy(flowablePublishMulticast$MulticastSubscriptionArr2, 0, flowablePublishMulticast$MulticastSubscriptionArr3, 0, i);
                System.arraycopy(flowablePublishMulticast$MulticastSubscriptionArr2, i + 1, flowablePublishMulticast$MulticastSubscriptionArr3, i, (length - i) - 1);
                flowablePublishMulticast$MulticastSubscriptionArr = flowablePublishMulticast$MulticastSubscriptionArr3;
            }
            while (!atomicReference.compareAndSet(flowablePublishMulticast$MulticastSubscriptionArr2, flowablePublishMulticast$MulticastSubscriptionArr)) {
                if (atomicReference.get() != flowablePublishMulticast$MulticastSubscriptionArr2) {
                    break;
                }
            }
            return;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // io.reactivex.rxjava3.core.Flowable
    public final void subscribeActual(FlowableSubscriber flowableSubscriber) {
        FlowablePublishMulticast$MulticastSubscription flowablePublishMulticast$MulticastSubscription = new FlowablePublishMulticast$MulticastSubscription(flowableSubscriber, this);
        flowableSubscriber.onSubscribe(flowablePublishMulticast$MulticastSubscription);
        while (true) {
            AtomicReference atomicReference = this.subscribers;
            FlowablePublishMulticast$MulticastSubscription[] flowablePublishMulticast$MulticastSubscriptionArr = (FlowablePublishMulticast$MulticastSubscription[]) atomicReference.get();
            if (flowablePublishMulticast$MulticastSubscriptionArr == TERMINATED) {
                Throwable th = this.error;
                if (th != null) {
                    flowableSubscriber.onError(th);
                    return;
                } else {
                    flowableSubscriber.onComplete();
                    return;
                }
            }
            int length = flowablePublishMulticast$MulticastSubscriptionArr.length;
            FlowablePublishMulticast$MulticastSubscription[] flowablePublishMulticast$MulticastSubscriptionArr2 = new FlowablePublishMulticast$MulticastSubscription[length + 1];
            System.arraycopy(flowablePublishMulticast$MulticastSubscriptionArr, 0, flowablePublishMulticast$MulticastSubscriptionArr2, 0, length);
            flowablePublishMulticast$MulticastSubscriptionArr2[length] = flowablePublishMulticast$MulticastSubscription;
            while (!atomicReference.compareAndSet(flowablePublishMulticast$MulticastSubscriptionArr, flowablePublishMulticast$MulticastSubscriptionArr2)) {
                if (atomicReference.get() != flowablePublishMulticast$MulticastSubscriptionArr) {
                    break;
                }
            }
            if (flowablePublishMulticast$MulticastSubscription.get() == Long.MIN_VALUE) {
                remove(flowablePublishMulticast$MulticastSubscription);
                return;
            } else {
                drain();
                return;
            }
        }
    }
}
