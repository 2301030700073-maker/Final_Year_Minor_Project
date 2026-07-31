package io.reactivex.rxjava3.core;

import androidx.compose.ui.node.Owner;
import io.reactivex.rxjava3.internal.observers.BlockingMultiObserver;
import io.reactivex.rxjava3.internal.operators.single.SingleObserveOn;
import j$.util.Objects;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class Single implements SingleSource {
    public final Object blockingGet() {
        BlockingMultiObserver blockingMultiObserver = new BlockingMultiObserver(1);
        subscribe(blockingMultiObserver);
        return blockingMultiObserver.blockingGet();
    }

    public final void subscribe(SingleObserver singleObserver) {
        try {
            subscribeActual(singleObserver);
        } catch (NullPointerException e) {
            throw e;
        } catch (Throwable th) {
            throw Owner.CC.m(th, "subscribeActual failed", th);
        }
    }

    public abstract void subscribeActual(SingleObserver singleObserver);

    public final SingleObserveOn subscribeOn(Scheduler scheduler) {
        Objects.requireNonNull(scheduler, "scheduler is null");
        return new SingleObserveOn(this, scheduler, 1);
    }
}
