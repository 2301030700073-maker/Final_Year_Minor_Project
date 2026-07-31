package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.ObservableEmitter;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.util.ExceptionHelper;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.math.MathKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ObservableCreate$CreateEmitter extends AtomicReference implements ObservableEmitter, Disposable {
    private static final long serialVersionUID = -3434801548987643227L;
    final Observer observer;

    public ObservableCreate$CreateEmitter(Observer observer) {
        this.observer = observer;
    }

    @Override // io.reactivex.rxjava3.disposables.Disposable
    public final void dispose() {
        DisposableHelper.dispose(this);
    }

    @Override // io.reactivex.rxjava3.disposables.Disposable
    public final boolean isDisposed() {
        return DisposableHelper.isDisposed((Disposable) get());
    }

    public final void onComplete() {
        if (isDisposed()) {
            return;
        }
        try {
            this.observer.onComplete();
        } finally {
            DisposableHelper.dispose(this);
        }
    }

    public final void onNext(Object obj) {
        if (obj != null) {
            if (isDisposed()) {
                return;
            }
            this.observer.onNext(obj);
        } else {
            NullPointerException createNullPointerException = ExceptionHelper.createNullPointerException("onNext called with a null value.");
            if (tryOnError(createNullPointerException)) {
                return;
            }
            MathKt.onError(createNullPointerException);
        }
    }

    @Override // java.util.concurrent.atomic.AtomicReference
    public final String toString() {
        return ObservableCreate$CreateEmitter.class.getSimpleName() + "{" + super.toString() + "}";
    }

    public final boolean tryOnError(Throwable th) {
        if (isDisposed()) {
            return false;
        }
        try {
            this.observer.onError(th);
            DisposableHelper.dispose(this);
            return true;
        } catch (Throwable th2) {
            DisposableHelper.dispose(this);
            throw th2;
        }
    }
}
