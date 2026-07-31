package io.reactivex.rxjava3.internal.operators.maybe;

import io.reactivex.rxjava3.core.MaybeObserver;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.util.ExceptionHelper;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class MaybeCreate$Emitter extends AtomicReference implements Disposable {
    private static final long serialVersionUID = -2467358622224974244L;
    final MaybeObserver downstream;

    public MaybeCreate$Emitter(MaybeObserver maybeObserver) {
        this.downstream = maybeObserver;
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
        Disposable disposable;
        Object obj = get();
        DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
        if (obj == disposableHelper || (disposable = (Disposable) getAndSet(disposableHelper)) == disposableHelper) {
            return;
        }
        try {
            this.downstream.onComplete();
        } finally {
            if (disposable != null) {
                disposable.dispose();
            }
        }
    }

    public final void onSuccess(Object obj) {
        Disposable disposable;
        Object obj2 = get();
        DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
        if (obj2 == disposableHelper || (disposable = (Disposable) getAndSet(disposableHelper)) == disposableHelper) {
            return;
        }
        MaybeObserver maybeObserver = this.downstream;
        try {
            if (obj == null) {
                maybeObserver.onError(ExceptionHelper.createNullPointerException("onSuccess called with a null value."));
            } else {
                maybeObserver.onSuccess(obj);
            }
            if (disposable != null) {
                disposable.dispose();
            }
        } catch (Throwable th) {
            if (disposable != null) {
                disposable.dispose();
            }
            throw th;
        }
    }

    @Override // java.util.concurrent.atomic.AtomicReference
    public final String toString() {
        return MaybeCreate$Emitter.class.getSimpleName() + "{" + super.toString() + "}";
    }

    public final boolean tryOnError(Throwable th) {
        Disposable disposable;
        if (th == null) {
            th = ExceptionHelper.createNullPointerException("onError called with a null Throwable.");
        }
        Object obj = get();
        DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
        if (obj == disposableHelper || (disposable = (Disposable) getAndSet(disposableHelper)) == disposableHelper) {
            return false;
        }
        try {
            this.downstream.onError(th);
        } finally {
            if (disposable != null) {
                disposable.dispose();
            }
        }
    }
}
