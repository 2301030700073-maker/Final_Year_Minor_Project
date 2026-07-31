package io.reactivex.rxjava3.core;

import androidx.constraintlayout.core.SolverVariable$Type$EnumUnboxingSharedUtility;
import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;
import io.reactivex.rxjava3.internal.functions.Functions;
import io.reactivex.rxjava3.internal.operators.flowable.FlowableMap;
import io.reactivex.rxjava3.internal.operators.flowable.FlowableOnBackpressureBuffer;
import io.reactivex.rxjava3.internal.operators.flowable.FlowableOnBackpressureError;
import io.reactivex.rxjava3.internal.operators.maybe.MaybeConcatArray;
import io.reactivex.rxjava3.internal.operators.observable.ObservableDebounceTimed;
import io.reactivex.rxjava3.internal.operators.observable.ObservableMap;
import io.reactivex.rxjava3.internal.operators.observable.ObservableObserveOn;
import io.reactivex.rxjava3.internal.schedulers.ComputationScheduler;
import io.reactivex.rxjava3.schedulers.Schedulers;
import j$.util.Objects;
import java.util.concurrent.TimeUnit;
import kotlin.math.MathKt;
import net.newpipe.app.AppKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class Observable {
    public final ObservableDebounceTimed debounce(long j) {
        ComputationScheduler computationScheduler = Schedulers.COMPUTATION;
        Objects.requireNonNull(TimeUnit.MILLISECONDS, "unit is null");
        Objects.requireNonNull(computationScheduler, "scheduler is null");
        return new ObservableDebounceTimed(this, j, computationScheduler);
    }

    public final ObservableObserveOn observeOn(Scheduler scheduler) {
        int i = Flowable.BUFFER_SIZE;
        Objects.requireNonNull(scheduler, "scheduler is null");
        Functions.verifyPositive(i, "bufferSize");
        return new ObservableObserveOn(this, scheduler, i, 0);
    }

    public final void subscribe(Observer observer) {
        Objects.requireNonNull(observer, "observer is null");
        try {
            subscribeActual(observer);
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

    public abstract void subscribeActual(Observer observer);

    public final ObservableMap subscribeOn(Scheduler scheduler) {
        Objects.requireNonNull(scheduler, "scheduler is null");
        return new ObservableMap(this, scheduler, 2);
    }

    public final Flowable toFlowable(int i) {
        if (i == 0) {
            CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m$1("strategy is null");
        }
        MaybeConcatArray maybeConcatArray = new MaybeConcatArray(this, 3);
        int ordinal = SolverVariable$Type$EnumUnboxingSharedUtility.ordinal(i);
        if (ordinal == 0) {
            return maybeConcatArray;
        }
        if (ordinal == 1) {
            return new FlowableOnBackpressureError(maybeConcatArray, 0);
        }
        if (ordinal == 3) {
            return new FlowableMap(maybeConcatArray);
        }
        if (ordinal == 4) {
            return new FlowableOnBackpressureError(maybeConcatArray, 1);
        }
        int i2 = Flowable.BUFFER_SIZE;
        Functions.verifyPositive(i2, "capacity");
        return new FlowableOnBackpressureBuffer(maybeConcatArray, i2);
    }
}
