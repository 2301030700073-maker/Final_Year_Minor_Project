package io.reactivex.rxjava3.processors;

import io.reactivex.rxjava3.core.FlowableSubscriber;
import io.reactivex.rxjava3.exceptions.MissingBackpressureException;
import io.reactivex.rxjava3.functions.Predicate;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.internal.util.AppendOnlyLinkedArrayList;
import io.reactivex.rxjava3.internal.util.ExceptionHelper;
import io.reactivex.rxjava3.internal.util.NotificationLite;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import kotlin.math.MathKt;
import okio.Options;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class BehaviorProcessor extends FlowableProcessor {
    public long index;
    public final Lock readLock;
    public final AtomicReference subscribers;
    public final AtomicReference terminalEvent;
    public final AtomicReference value = new AtomicReference();
    public final Lock writeLock;
    public static final Object[] EMPTY_ARRAY = new Object[0];
    public static final BehaviorSubscription[] EMPTY = new BehaviorSubscription[0];
    public static final BehaviorSubscription[] TERMINATED = new BehaviorSubscription[0];

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class BehaviorSubscription extends AtomicLong implements Subscription, Predicate {
        private static final long serialVersionUID = 3293175281126227086L;
        volatile boolean cancelled;
        final Subscriber downstream;
        boolean emitting;
        boolean fastPath;
        long index;
        boolean next;
        AppendOnlyLinkedArrayList queue;
        final BehaviorProcessor state;

        public BehaviorSubscription(Subscriber subscriber, BehaviorProcessor behaviorProcessor) {
            this.downstream = subscriber;
            this.state = behaviorProcessor;
        }

        @Override // org.reactivestreams.Subscription
        public final void cancel() {
            if (this.cancelled) {
                return;
            }
            this.cancelled = true;
            this.state.remove(this);
        }

        public final void emitLoop() {
            AppendOnlyLinkedArrayList appendOnlyLinkedArrayList;
            Object obj;
            while (!this.cancelled) {
                synchronized (this) {
                    try {
                        appendOnlyLinkedArrayList = this.queue;
                        if (appendOnlyLinkedArrayList == null) {
                            this.emitting = false;
                            return;
                        }
                        this.queue = null;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                for (Object[] objArr = appendOnlyLinkedArrayList.head; objArr != null; objArr = objArr[4]) {
                    for (int i = 0; i < 4 && (obj = objArr[i]) != null; i++) {
                        if (test(obj)) {
                            break;
                        }
                    }
                }
            }
        }

        public final void emitNext(long j, Object obj) {
            if (this.cancelled) {
                return;
            }
            if (!this.fastPath) {
                synchronized (this) {
                    try {
                        if (this.cancelled) {
                            return;
                        }
                        if (this.index == j) {
                            return;
                        }
                        if (this.emitting) {
                            AppendOnlyLinkedArrayList appendOnlyLinkedArrayList = this.queue;
                            if (appendOnlyLinkedArrayList == null) {
                                appendOnlyLinkedArrayList = new AppendOnlyLinkedArrayList();
                                this.queue = appendOnlyLinkedArrayList;
                            }
                            appendOnlyLinkedArrayList.add(obj);
                            return;
                        }
                        this.next = true;
                        this.fastPath = true;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            test(obj);
        }

        @Override // org.reactivestreams.Subscription
        public final void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                Options.Companion.add(this, j);
            }
        }

        @Override // io.reactivex.rxjava3.functions.Predicate
        public final boolean test(Object obj) {
            if (this.cancelled) {
                return true;
            }
            if (obj == NotificationLite.COMPLETE) {
                this.downstream.onComplete();
                return true;
            }
            if (obj instanceof NotificationLite.ErrorNotification) {
                this.downstream.onError(NotificationLite.getError(obj));
                return true;
            }
            long j = get();
            if (j == 0) {
                cancel();
                this.downstream.onError(new MissingBackpressureException("Could not emit value due to lack of requests"));
                return true;
            }
            this.downstream.onNext(obj);
            if (j == Long.MAX_VALUE) {
                return false;
            }
            decrementAndGet();
            return false;
        }
    }

    public BehaviorProcessor() {
        ReentrantReadWriteLock reentrantReadWriteLock = new ReentrantReadWriteLock();
        this.readLock = reentrantReadWriteLock.readLock();
        this.writeLock = reentrantReadWriteLock.writeLock();
        this.subscribers = new AtomicReference(EMPTY);
        this.terminalEvent = new AtomicReference();
    }

    @Override // org.reactivestreams.Subscriber
    public final void onComplete() {
        AtomicReference atomicReference;
        ExceptionHelper.Termination termination = ExceptionHelper.TERMINATED;
        do {
            atomicReference = this.terminalEvent;
            if (atomicReference.compareAndSet(null, termination)) {
                Lock lock = this.writeLock;
                lock.lock();
                this.index++;
                AtomicReference atomicReference2 = this.value;
                NotificationLite notificationLite = NotificationLite.COMPLETE;
                atomicReference2.lazySet(notificationLite);
                lock.unlock();
                for (BehaviorSubscription behaviorSubscription : (BehaviorSubscription[]) this.subscribers.getAndSet(TERMINATED)) {
                    behaviorSubscription.emitNext(this.index, notificationLite);
                }
                return;
            }
        } while (atomicReference.get() == null);
    }

    @Override // org.reactivestreams.Subscriber
    public final void onError(Throwable th) {
        AtomicReference atomicReference;
        ExceptionHelper.nullCheck(th, "onError called with a null Throwable.");
        do {
            atomicReference = this.terminalEvent;
            if (atomicReference.compareAndSet(null, th)) {
                NotificationLite.ErrorNotification errorNotification = new NotificationLite.ErrorNotification(th);
                Lock lock = this.writeLock;
                lock.lock();
                this.index++;
                this.value.lazySet(errorNotification);
                lock.unlock();
                for (BehaviorSubscription behaviorSubscription : (BehaviorSubscription[]) this.subscribers.getAndSet(TERMINATED)) {
                    behaviorSubscription.emitNext(this.index, errorNotification);
                }
                return;
            }
        } while (atomicReference.get() == null);
        MathKt.onError(th);
    }

    @Override // org.reactivestreams.Subscriber
    public final void onNext(Object obj) {
        ExceptionHelper.nullCheck(obj, "onNext called with a null value.");
        if (this.terminalEvent.get() != null) {
            return;
        }
        Lock lock = this.writeLock;
        lock.lock();
        this.index++;
        this.value.lazySet(obj);
        lock.unlock();
        for (BehaviorSubscription behaviorSubscription : (BehaviorSubscription[]) this.subscribers.get()) {
            behaviorSubscription.emitNext(this.index, obj);
        }
    }

    @Override // org.reactivestreams.Subscriber
    public final void onSubscribe(Subscription subscription) {
        if (this.terminalEvent.get() != null) {
            subscription.cancel();
        } else {
            subscription.request(Long.MAX_VALUE);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void remove(BehaviorSubscription behaviorSubscription) {
        BehaviorSubscription[] behaviorSubscriptionArr;
        while (true) {
            AtomicReference atomicReference = this.subscribers;
            BehaviorSubscription[] behaviorSubscriptionArr2 = (BehaviorSubscription[]) atomicReference.get();
            int length = behaviorSubscriptionArr2.length;
            if (length == 0) {
                return;
            }
            int i = 0;
            while (true) {
                if (i >= length) {
                    i = -1;
                    break;
                } else if (behaviorSubscriptionArr2[i] == behaviorSubscription) {
                    break;
                } else {
                    i++;
                }
            }
            if (i < 0) {
                return;
            }
            if (length == 1) {
                behaviorSubscriptionArr = EMPTY;
            } else {
                BehaviorSubscription[] behaviorSubscriptionArr3 = new BehaviorSubscription[length - 1];
                System.arraycopy(behaviorSubscriptionArr2, 0, behaviorSubscriptionArr3, 0, i);
                System.arraycopy(behaviorSubscriptionArr2, i + 1, behaviorSubscriptionArr3, i, (length - i) - 1);
                behaviorSubscriptionArr = behaviorSubscriptionArr3;
            }
            while (!atomicReference.compareAndSet(behaviorSubscriptionArr2, behaviorSubscriptionArr)) {
                if (atomicReference.get() != behaviorSubscriptionArr2) {
                    break;
                }
            }
            return;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // io.reactivex.rxjava3.core.Flowable
    public final void subscribeActual(FlowableSubscriber flowableSubscriber) {
        BehaviorSubscription behaviorSubscription = new BehaviorSubscription(flowableSubscriber, this);
        flowableSubscriber.onSubscribe(behaviorSubscription);
        AtomicReference atomicReference = this.subscribers;
        while (true) {
            BehaviorSubscription[] behaviorSubscriptionArr = (BehaviorSubscription[]) atomicReference.get();
            if (behaviorSubscriptionArr == TERMINATED) {
                Throwable th = (Throwable) this.terminalEvent.get();
                if (th == ExceptionHelper.TERMINATED) {
                    flowableSubscriber.onComplete();
                    return;
                } else {
                    flowableSubscriber.onError(th);
                    return;
                }
            }
            int length = behaviorSubscriptionArr.length;
            BehaviorSubscription[] behaviorSubscriptionArr2 = new BehaviorSubscription[length + 1];
            System.arraycopy(behaviorSubscriptionArr, 0, behaviorSubscriptionArr2, 0, length);
            behaviorSubscriptionArr2[length] = behaviorSubscription;
            while (!atomicReference.compareAndSet(behaviorSubscriptionArr, behaviorSubscriptionArr2)) {
                if (atomicReference.get() != behaviorSubscriptionArr) {
                    break;
                }
            }
            if (behaviorSubscription.cancelled) {
                remove(behaviorSubscription);
                return;
            }
            if (behaviorSubscription.cancelled) {
                return;
            }
            synchronized (behaviorSubscription) {
                try {
                    if (behaviorSubscription.cancelled) {
                        return;
                    }
                    if (behaviorSubscription.next) {
                        return;
                    }
                    BehaviorProcessor behaviorProcessor = behaviorSubscription.state;
                    Lock lock = behaviorProcessor.readLock;
                    lock.lock();
                    behaviorSubscription.index = behaviorProcessor.index;
                    Object obj = behaviorProcessor.value.get();
                    lock.unlock();
                    behaviorSubscription.emitting = obj != null;
                    behaviorSubscription.next = true;
                    if (obj == null || behaviorSubscription.test(obj)) {
                        return;
                    }
                    behaviorSubscription.emitLoop();
                    return;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }
}
