package io.reactivex.rxjava3.internal.operators.single;

import io.reactivex.rxjava3.core.SingleObserver;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class SingleCreate$Emitter extends AtomicReference implements Disposable {
    private static final long serialVersionUID = -2467358622224974244L;
    final SingleObserver downstream;

    public SingleCreate$Emitter(SingleObserver singleObserver) {
        this.downstream = singleObserver;
    }

    @Override // io.reactivex.rxjava3.disposables.Disposable
    public final void dispose() {
        DisposableHelper.dispose(this);
    }

    @Override // io.reactivex.rxjava3.disposables.Disposable
    public final boolean isDisposed() {
        return DisposableHelper.isDisposed((Disposable) get());
    }

    @Override // java.util.concurrent.atomic.AtomicReference
    public final String toString() {
        return SingleCreate$Emitter.class.getSimpleName() + "{" + super.toString() + "}";
    }
}
