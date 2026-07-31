package io.reactivex.rxjava3.internal.disposables;

import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Cancellable;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.math.MathKt;
import net.newpipe.app.AppKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class CancellableDisposable extends AtomicReference implements Disposable {
    private static final long serialVersionUID = 5718521705281392066L;

    @Override // io.reactivex.rxjava3.disposables.Disposable
    public final void dispose() {
        Cancellable cancellable;
        if (get() == null || (cancellable = (Cancellable) getAndSet(null)) == null) {
            return;
        }
        try {
            cancellable.cancel();
        } catch (Throwable th) {
            AppKt.throwIfFatal(th);
            MathKt.onError(th);
        }
    }

    @Override // io.reactivex.rxjava3.disposables.Disposable
    public final boolean isDisposed() {
        return get() == null;
    }
}
