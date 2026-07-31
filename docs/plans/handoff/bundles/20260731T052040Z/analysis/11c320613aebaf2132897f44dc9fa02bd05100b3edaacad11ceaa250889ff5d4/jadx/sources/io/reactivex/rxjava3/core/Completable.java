package io.reactivex.rxjava3.core;

import io.reactivex.rxjava3.internal.operators.completable.CompletableObserveOn;
import j$.util.Objects;
import kotlin.math.MathKt;
import net.newpipe.app.AppKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class Completable implements CompletableSource {
    public final CompletableObserveOn observeOn(Scheduler scheduler) {
        Objects.requireNonNull(scheduler, "scheduler is null");
        return new CompletableObserveOn(this, scheduler, 0);
    }

    public final void subscribe(CompletableObserver completableObserver) {
        try {
            subscribeActual(completableObserver);
        } catch (NullPointerException e) {
            throw e;
        } catch (Throwable th) {
            AppKt.throwIfFatal(th);
            MathKt.onError(th);
            NullPointerException nullPointerException = new NullPointerException("Actually not, but can't pass out an exception otherwise...");
            nullPointerException.initCause(th);
            throw nullPointerException;
        }
    }

    public abstract void subscribeActual(CompletableObserver completableObserver);

    public final CompletableObserveOn subscribeOn(Scheduler scheduler) {
        Objects.requireNonNull(scheduler, "scheduler is null");
        return new CompletableObserveOn(this, scheduler, 1);
    }
}
