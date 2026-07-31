package io.reactivex.rxjava3.internal.operators.maybe;

import io.reactivex.rxjava3.core.Maybe;
import io.reactivex.rxjava3.core.MaybeObserver;
import io.reactivex.rxjava3.disposables.RunnableDisposable;
import io.reactivex.rxjava3.functions.Supplier;
import io.reactivex.rxjava3.internal.functions.Functions;
import java.util.concurrent.Callable;
import kotlin.math.MathKt;
import net.newpipe.app.AppKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class MaybeFromCallable extends Maybe implements Supplier {
    public final Callable callable;

    public MaybeFromCallable(Callable callable) {
        this.callable = callable;
    }

    @Override // io.reactivex.rxjava3.functions.Supplier
    public final Object get() {
        return this.callable.call();
    }

    @Override // io.reactivex.rxjava3.core.Maybe
    public final void subscribeActual(MaybeObserver maybeObserver) {
        RunnableDisposable runnableDisposable = new RunnableDisposable(Functions.EMPTY_RUNNABLE);
        maybeObserver.onSubscribe(runnableDisposable);
        if (runnableDisposable.isDisposed()) {
            return;
        }
        try {
            Object call = this.callable.call();
            if (runnableDisposable.isDisposed()) {
                return;
            }
            if (call == null) {
                maybeObserver.onComplete();
            } else {
                maybeObserver.onSuccess(call);
            }
        } catch (Throwable th) {
            AppKt.throwIfFatal(th);
            if (runnableDisposable.isDisposed()) {
                MathKt.onError(th);
            } else {
                maybeObserver.onError(th);
            }
        }
    }
}
