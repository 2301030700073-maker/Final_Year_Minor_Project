package io.reactivex.rxjava3.core;

import androidx.compose.ui.node.Owner;
import io.reactivex.rxjava3.internal.operators.maybe.MaybeObserveOn;
import j$.util.Objects;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class Maybe implements MaybeSource {
    public final void subscribe(MaybeObserver maybeObserver) {
        Objects.requireNonNull(maybeObserver, "observer is null");
        try {
            subscribeActual(maybeObserver);
        } catch (NullPointerException e) {
            throw e;
        } catch (Throwable th) {
            throw Owner.CC.m(th, "subscribeActual failed", th);
        }
    }

    public abstract void subscribeActual(MaybeObserver maybeObserver);

    public final MaybeObserveOn subscribeOn(Scheduler scheduler) {
        Objects.requireNonNull(scheduler, "scheduler is null");
        return new MaybeObserveOn(this, scheduler, 1);
    }
}
