package io.reactivex.rxjava3.internal.operators.maybe;

import io.reactivex.rxjava3.core.MaybeObserver;
import io.reactivex.rxjava3.core.SingleObserver;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class MaybeFromSingle$FromSingleObserver implements SingleObserver, Disposable, MaybeObserver {
    public final /* synthetic */ int $r8$classId;
    public final MaybeObserver downstream;
    public Disposable upstream;

    public /* synthetic */ MaybeFromSingle$FromSingleObserver(MaybeObserver maybeObserver, int i) {
        this.$r8$classId = i;
        this.downstream = maybeObserver;
    }

    @Override // io.reactivex.rxjava3.disposables.Disposable
    public final void dispose() {
        switch (this.$r8$classId) {
            case 0:
                this.upstream.dispose();
                this.upstream = DisposableHelper.DISPOSED;
                break;
            default:
                this.upstream.dispose();
                break;
        }
    }

    @Override // io.reactivex.rxjava3.disposables.Disposable
    public final boolean isDisposed() {
        switch (this.$r8$classId) {
        }
        return this.upstream.isDisposed();
    }

    @Override // io.reactivex.rxjava3.core.MaybeObserver
    public void onComplete() {
        this.downstream.onComplete();
    }

    @Override // io.reactivex.rxjava3.core.SingleObserver
    public final void onError(Throwable th) {
        int i = this.$r8$classId;
        MaybeObserver maybeObserver = this.downstream;
        switch (i) {
            case 0:
                this.upstream = DisposableHelper.DISPOSED;
                maybeObserver.onError(th);
                break;
            default:
                maybeObserver.onComplete();
                break;
        }
    }

    @Override // io.reactivex.rxjava3.core.SingleObserver
    public final void onSubscribe(Disposable disposable) {
        switch (this.$r8$classId) {
            case 0:
                if (DisposableHelper.validate(this.upstream, disposable)) {
                    this.upstream = disposable;
                    this.downstream.onSubscribe(this);
                    break;
                }
                break;
            default:
                if (DisposableHelper.validate(this.upstream, disposable)) {
                    this.upstream = disposable;
                    this.downstream.onSubscribe(this);
                    break;
                }
                break;
        }
    }

    @Override // io.reactivex.rxjava3.core.SingleObserver
    public final void onSuccess(Object obj) {
        int i = this.$r8$classId;
        MaybeObserver maybeObserver = this.downstream;
        switch (i) {
            case 0:
                this.upstream = DisposableHelper.DISPOSED;
                maybeObserver.onSuccess(obj);
                break;
            default:
                maybeObserver.onSuccess(obj);
                break;
        }
    }
}
