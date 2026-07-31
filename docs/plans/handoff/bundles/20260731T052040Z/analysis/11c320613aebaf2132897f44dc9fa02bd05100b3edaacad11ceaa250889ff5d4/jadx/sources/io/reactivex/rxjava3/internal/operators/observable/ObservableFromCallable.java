package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.functions.Supplier;
import io.reactivex.rxjava3.internal.observers.DeferredScalarDisposable;
import io.reactivex.rxjava3.internal.util.ExceptionHelper;
import java.util.concurrent.Callable;
import kotlin.math.MathKt;
import net.newpipe.app.AppKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ObservableFromCallable extends Observable implements Supplier {
    public final Callable callable;

    public ObservableFromCallable(Callable callable) {
        this.callable = callable;
    }

    @Override // io.reactivex.rxjava3.functions.Supplier
    public final Object get() {
        Object call = this.callable.call();
        if (call == null) {
            throw ExceptionHelper.createNullPointerException("The Callable returned a null value.");
        }
        ExceptionHelper.Termination termination = ExceptionHelper.TERMINATED;
        return call;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public final void subscribeActual(Observer observer) {
        DeferredScalarDisposable deferredScalarDisposable = new DeferredScalarDisposable(observer);
        observer.onSubscribe(deferredScalarDisposable);
        if (deferredScalarDisposable.isDisposed()) {
            return;
        }
        try {
            Object call = this.callable.call();
            if (call == null) {
                throw ExceptionHelper.createNullPointerException("Callable returned a null value.");
            }
            ExceptionHelper.Termination termination = ExceptionHelper.TERMINATED;
            deferredScalarDisposable.complete(call);
        } catch (Throwable th) {
            AppKt.throwIfFatal(th);
            if (deferredScalarDisposable.isDisposed()) {
                MathKt.onError(th);
            } else {
                observer.onError(th);
            }
        }
    }
}
