package io.reactivex.rxjava3.internal.observers;

import androidx.transition.Transition;
import io.noties.markwon.BlockHandlerDef;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.functions.Functions;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.math.MathKt;
import net.newpipe.app.AppKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class LambdaObserver extends AtomicReference implements Observer, Disposable {
    private static final long serialVersionUID = -7251123623727029452L;
    final Action onComplete;
    final Consumer onError;
    final Consumer onNext;
    final Consumer onSubscribe;

    public LambdaObserver(Consumer consumer, Consumer consumer2) {
        Transition.AnonymousClass1 anonymousClass1 = Functions.EMPTY_ACTION;
        BlockHandlerDef blockHandlerDef = Functions.EMPTY_CONSUMER;
        this.onNext = consumer;
        this.onError = consumer2;
        this.onComplete = anonymousClass1;
        this.onSubscribe = blockHandlerDef;
    }

    @Override // io.reactivex.rxjava3.disposables.Disposable
    public final void dispose() {
        DisposableHelper.dispose(this);
    }

    @Override // io.reactivex.rxjava3.disposables.Disposable
    public final boolean isDisposed() {
        return get() == DisposableHelper.DISPOSED;
    }

    @Override // io.reactivex.rxjava3.core.Observer
    public final void onComplete() {
        if (isDisposed()) {
            return;
        }
        lazySet(DisposableHelper.DISPOSED);
        try {
            this.onComplete.run();
        } catch (Throwable th) {
            AppKt.throwIfFatal(th);
            MathKt.onError(th);
        }
    }

    @Override // io.reactivex.rxjava3.core.Observer
    public final void onError(Throwable th) {
        if (isDisposed()) {
            MathKt.onError(th);
            return;
        }
        lazySet(DisposableHelper.DISPOSED);
        try {
            this.onError.accept(th);
        } catch (Throwable th2) {
            AppKt.throwIfFatal(th2);
            MathKt.onError(new CompositeException(th, th2));
        }
    }

    @Override // io.reactivex.rxjava3.core.Observer
    public final void onNext(Object obj) {
        if (isDisposed()) {
            return;
        }
        try {
            this.onNext.accept(obj);
        } catch (Throwable th) {
            AppKt.throwIfFatal(th);
            ((Disposable) get()).dispose();
            onError(th);
        }
    }

    @Override // io.reactivex.rxjava3.core.Observer
    public final void onSubscribe(Disposable disposable) {
        if (DisposableHelper.setOnce(this, disposable)) {
            try {
                this.onSubscribe.accept(this);
            } catch (Throwable th) {
                AppKt.throwIfFatal(th);
                disposable.dispose();
                onError(th);
            }
        }
    }
}
