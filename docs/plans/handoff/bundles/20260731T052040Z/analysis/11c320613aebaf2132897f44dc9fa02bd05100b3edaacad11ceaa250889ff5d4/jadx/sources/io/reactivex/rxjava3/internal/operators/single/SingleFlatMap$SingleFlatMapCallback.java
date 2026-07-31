package io.reactivex.rxjava3.internal.operators.single;

import com.grack.nanojson.JsonBuilder;
import io.reactivex.rxjava3.core.Single;
import io.reactivex.rxjava3.core.SingleObserver;
import io.reactivex.rxjava3.core.SingleSource;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import j$.util.Objects;
import java.util.concurrent.atomic.AtomicReference;
import net.newpipe.app.AppKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class SingleFlatMap$SingleFlatMapCallback extends AtomicReference implements SingleObserver, Disposable {
    private static final long serialVersionUID = 3258103020495908596L;
    final SingleObserver downstream;
    final Function mapper;

    public SingleFlatMap$SingleFlatMapCallback(SingleObserver singleObserver, Function function) {
        this.downstream = singleObserver;
        this.mapper = function;
    }

    @Override // io.reactivex.rxjava3.disposables.Disposable
    public final void dispose() {
        DisposableHelper.dispose(this);
    }

    @Override // io.reactivex.rxjava3.disposables.Disposable
    public final boolean isDisposed() {
        return DisposableHelper.isDisposed((Disposable) get());
    }

    @Override // io.reactivex.rxjava3.core.SingleObserver
    public final void onError(Throwable th) {
        this.downstream.onError(th);
    }

    @Override // io.reactivex.rxjava3.core.SingleObserver
    public final void onSubscribe(Disposable disposable) {
        if (DisposableHelper.setOnce(this, disposable)) {
            this.downstream.onSubscribe(this);
        }
    }

    @Override // io.reactivex.rxjava3.core.SingleObserver
    public final void onSuccess(Object obj) {
        try {
            Object apply = this.mapper.apply(obj);
            Objects.requireNonNull(apply, "The single returned by the mapper is null");
            SingleSource singleSource = (SingleSource) apply;
            if (isDisposed()) {
                return;
            }
            ((Single) singleSource).subscribe(new JsonBuilder(this, this.downstream, 21));
        } catch (Throwable th) {
            AppKt.throwIfFatal(th);
            this.downstream.onError(th);
        }
    }
}
