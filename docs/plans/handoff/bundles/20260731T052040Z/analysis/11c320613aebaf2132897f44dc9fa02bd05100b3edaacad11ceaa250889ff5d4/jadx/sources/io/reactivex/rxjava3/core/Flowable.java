package io.reactivex.rxjava3.core;

import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;
import io.reactivex.rxjava3.functions.BiFunction;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.internal.functions.Functions;
import io.reactivex.rxjava3.internal.operators.flowable.FlowableBuffer;
import io.reactivex.rxjava3.internal.operators.flowable.FlowableCombineLatest;
import io.reactivex.rxjava3.internal.operators.flowable.FlowableEmpty;
import io.reactivex.rxjava3.internal.operators.flowable.FlowableJust;
import io.reactivex.rxjava3.internal.operators.flowable.FlowableMapPublisher;
import io.reactivex.rxjava3.internal.operators.flowable.FlowableObserveOn;
import io.reactivex.rxjava3.internal.operators.flowable.FlowableSubscribeOn;
import io.reactivex.rxjava3.internal.operators.flowable.FlowableThrottleLatest;
import io.reactivex.rxjava3.internal.operators.maybe.MaybeConcatArray;
import io.reactivex.rxjava3.internal.schedulers.ComputationScheduler;
import io.reactivex.rxjava3.internal.subscribers.BlockingFirstSubscriber;
import io.reactivex.rxjava3.internal.subscribers.StrictSubscriber;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.internal.util.ExceptionHelper;
import io.reactivex.rxjava3.operators.ScalarSupplier;
import io.reactivex.rxjava3.schedulers.Schedulers;
import j$.util.Objects;
import java.util.concurrent.TimeUnit;
import kotlin.math.MathKt;
import net.newpipe.app.AppKt;
import okhttp3.ConnectionPool;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class Flowable implements Publisher {
    public static final int BUFFER_SIZE = Math.max(1, Integer.getInteger("rx3.buffer-size", 128).intValue());

    public static Flowable combineLatest(Flowable flowable, Flowable flowable2, BiFunction biFunction) {
        Publisher[] publisherArr = {flowable, flowable2};
        ConnectionPool connectionPool = new ConnectionPool(biFunction, 15);
        int i = BUFFER_SIZE;
        Functions.verifyPositive(i, "bufferSize");
        return new FlowableCombineLatest(publisherArr, connectionPool, i);
    }

    public static Flowable concatArray(Publisher... publisherArr) {
        if (publisherArr.length == 0) {
            return FlowableEmpty.INSTANCE;
        }
        int i = 1;
        if (publisherArr.length != 1) {
            return new MaybeConcatArray(publisherArr, i);
        }
        Publisher publisher = publisherArr[0];
        if (publisher instanceof Flowable) {
            return (Flowable) publisher;
        }
        Objects.requireNonNull(publisher, "publisher is null");
        return new MaybeConcatArray(publisher, 4);
    }

    public final Object blockingFirst() {
        BlockingFirstSubscriber blockingFirstSubscriber = new BlockingFirstSubscriber(1);
        subscribe((FlowableSubscriber) blockingFirstSubscriber);
        if (blockingFirstSubscriber.getCount() != 0) {
            try {
                blockingFirstSubscriber.await();
            } catch (InterruptedException e) {
                Subscription subscription = blockingFirstSubscriber.upstream;
                blockingFirstSubscriber.upstream = SubscriptionHelper.CANCELLED;
                if (subscription != null) {
                    subscription.cancel();
                }
                throw ExceptionHelper.wrapOrThrow(e);
            }
        }
        Throwable th = blockingFirstSubscriber.error;
        if (th != null) {
            throw ExceptionHelper.wrapOrThrow(th);
        }
        Object obj = blockingFirstSubscriber.value;
        if (obj != null) {
            return obj;
        }
        CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m();
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Flowable flatMap(Function function, int i, int i2) {
        Functions.verifyPositive(i, "maxConcurrency");
        Functions.verifyPositive(i2, "bufferSize");
        if (!(this instanceof ScalarSupplier)) {
            return new FlowableBuffer(this, function, i, i2);
        }
        Object obj = ((ScalarSupplier) this).get();
        return obj == null ? FlowableEmpty.INSTANCE : new FlowableMapPublisher(obj, function, 1);
    }

    public final FlowableObserveOn observeOn(Scheduler scheduler) {
        Objects.requireNonNull(scheduler, "scheduler is null");
        int i = BUFFER_SIZE;
        Functions.verifyPositive(i, "bufferSize");
        return new FlowableObserveOn(this, scheduler, i, 0);
    }

    public final Flowable startWithItem(Object obj) {
        Objects.requireNonNull(obj, "item is null");
        return concatArray(new FlowableJust(obj), this);
    }

    public final void subscribe(FlowableSubscriber flowableSubscriber) {
        Objects.requireNonNull(flowableSubscriber, "subscriber is null");
        try {
            subscribeActual(flowableSubscriber);
        } catch (NullPointerException e) {
            throw e;
        } catch (Throwable th) {
            AppKt.throwIfFatal(th);
            MathKt.onError(th);
            NullPointerException nullPointerException = new NullPointerException("Actually not, but can't throw other exceptions due to RS");
            nullPointerException.initCause(th);
            throw nullPointerException;
        }
    }

    public abstract void subscribeActual(FlowableSubscriber flowableSubscriber);

    public final FlowableSubscribeOn subscribeOn(Scheduler scheduler) {
        Objects.requireNonNull(scheduler, "scheduler is null");
        return new FlowableSubscribeOn(this, scheduler);
    }

    public final FlowableThrottleLatest throttleLatest(long j) {
        ComputationScheduler computationScheduler = Schedulers.COMPUTATION;
        Objects.requireNonNull(TimeUnit.MILLISECONDS, "unit is null");
        Objects.requireNonNull(computationScheduler, "scheduler is null");
        return new FlowableThrottleLatest(this, j, computationScheduler);
    }

    public final void subscribe(Subscriber subscriber) {
        if (subscriber instanceof FlowableSubscriber) {
            subscribe((FlowableSubscriber) subscriber);
        } else {
            Objects.requireNonNull(subscriber, "subscriber is null");
            subscribe((FlowableSubscriber) new StrictSubscriber(subscriber));
        }
    }
}
