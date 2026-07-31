package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Supplier;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import j$.util.Objects;
import net.newpipe.app.AppKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ObservableScalarXMap$ScalarXMapObservable extends Observable {
    public final Function mapper;
    public final Object value;

    public ObservableScalarXMap$ScalarXMapObservable(Object obj, Function function) {
        this.value = obj;
        this.mapper = function;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // io.reactivex.rxjava3.core.Observable
    public final void subscribeActual(Observer observer) {
        Disposable disposable = EmptyDisposable.INSTANCE;
        try {
            Object apply = this.mapper.apply(this.value);
            Objects.requireNonNull(apply, "The mapper returned a null ObservableSource");
            Observable observable = (Observable) apply;
            if (!(observable instanceof Supplier)) {
                observable.subscribe(observer);
                return;
            }
            try {
                Object obj = ((Supplier) observable).get();
                if (obj == null) {
                    observer.onSubscribe(disposable);
                    observer.onComplete();
                } else {
                    ObservableScalarXMap$ScalarDisposable observableScalarXMap$ScalarDisposable = new ObservableScalarXMap$ScalarDisposable(observer, obj);
                    observer.onSubscribe(observableScalarXMap$ScalarDisposable);
                    observableScalarXMap$ScalarDisposable.run();
                }
            } catch (Throwable th) {
                AppKt.throwIfFatal(th);
                observer.onSubscribe(disposable);
                observer.onError(th);
            }
        } catch (Throwable th2) {
            AppKt.throwIfFatal(th2);
            observer.onSubscribe(disposable);
            observer.onError(th2);
        }
    }
}
