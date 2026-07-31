package io.reactivex.rxjava3.internal.operators.completable;

import com.grack.nanojson.JsonBuilder;
import io.reactivex.rxjava3.core.Completable;
import io.reactivex.rxjava3.core.CompletableObserver;
import io.reactivex.rxjava3.core.CompletableSource;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class CompletableAndThenCompletable$SourceObserver extends AtomicReference implements CompletableObserver, Disposable {
    private static final long serialVersionUID = -4101678820158072998L;
    final CompletableObserver actualObserver;
    final CompletableSource next;

    public CompletableAndThenCompletable$SourceObserver(CompletableObserver completableObserver, Completable completable) {
        this.actualObserver = completableObserver;
        this.next = completable;
    }

    @Override // io.reactivex.rxjava3.disposables.Disposable
    public final void dispose() {
        DisposableHelper.dispose(this);
    }

    @Override // io.reactivex.rxjava3.disposables.Disposable
    public final boolean isDisposed() {
        return DisposableHelper.isDisposed((Disposable) get());
    }

    @Override // io.reactivex.rxjava3.core.CompletableObserver
    public final void onComplete() {
        ((Completable) this.next).subscribe(new JsonBuilder(this, this.actualObserver, 14));
    }

    @Override // io.reactivex.rxjava3.core.CompletableObserver, io.reactivex.rxjava3.core.SingleObserver
    public final void onError(Throwable th) {
        this.actualObserver.onError(th);
    }

    @Override // io.reactivex.rxjava3.core.CompletableObserver, io.reactivex.rxjava3.core.SingleObserver
    public final void onSubscribe(Disposable disposable) {
        if (DisposableHelper.setOnce(this, disposable)) {
            this.actualObserver.onSubscribe(this);
        }
    }
}
