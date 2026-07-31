package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.util.AtomicThrowable;
import io.reactivex.rxjava3.internal.util.ExceptionHelper;
import j$.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.math.MathKt;
import net.newpipe.app.AppKt;
import org.schabi.newpipe.fragments.list.search.SearchFragment$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ObservableSwitchMap$SwitchMapObserver extends AtomicInteger implements Observer, Disposable {
    public static final ObservableSwitchMap$SwitchMapInnerObserver CANCELLED;
    private static final long serialVersionUID = -3491074160481096299L;
    final int bufferSize;
    volatile boolean cancelled;
    volatile boolean done;
    final Observer downstream;
    final Function mapper;
    volatile long unique;
    Disposable upstream;
    final AtomicReference<ObservableSwitchMap$SwitchMapInnerObserver> active = new AtomicReference<>();
    final boolean delayErrors = false;
    final AtomicThrowable errors = new AtomicThrowable();

    static {
        ObservableSwitchMap$SwitchMapInnerObserver observableSwitchMap$SwitchMapInnerObserver = new ObservableSwitchMap$SwitchMapInnerObserver(null, -1L, 1);
        CANCELLED = observableSwitchMap$SwitchMapInnerObserver;
        DisposableHelper.dispose(observableSwitchMap$SwitchMapInnerObserver);
    }

    public ObservableSwitchMap$SwitchMapObserver(Observer observer, SearchFragment$$ExternalSyntheticLambda1 searchFragment$$ExternalSyntheticLambda1, int i) {
        this.downstream = observer;
        this.mapper = searchFragment$$ExternalSyntheticLambda1;
        this.bufferSize = i;
    }

    @Override // io.reactivex.rxjava3.disposables.Disposable
    public final void dispose() {
        if (this.cancelled) {
            return;
        }
        this.cancelled = true;
        this.upstream.dispose();
        ObservableSwitchMap$SwitchMapInnerObserver andSet = this.active.getAndSet(CANCELLED);
        if (andSet != null) {
            DisposableHelper.dispose(andSet);
        }
        this.errors.tryTerminateAndReport();
    }

    /* JADX WARN: Removed duplicated region for block: B:61:0x00dd A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0010 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void drain() {
        /*
            Method dump skipped, instructions count: 229
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.reactivex.rxjava3.internal.operators.observable.ObservableSwitchMap$SwitchMapObserver.drain():void");
    }

    @Override // io.reactivex.rxjava3.disposables.Disposable
    public final boolean isDisposed() {
        return this.cancelled;
    }

    @Override // io.reactivex.rxjava3.core.Observer
    public final void onComplete() {
        if (this.done) {
            return;
        }
        this.done = true;
        drain();
    }

    @Override // io.reactivex.rxjava3.core.Observer
    public final void onError(Throwable th) {
        ObservableSwitchMap$SwitchMapInnerObserver andSet;
        if (!this.done) {
            AtomicThrowable atomicThrowable = this.errors;
            atomicThrowable.getClass();
            if (ExceptionHelper.addThrowable(atomicThrowable, th)) {
                if (!this.delayErrors && (andSet = this.active.getAndSet(CANCELLED)) != null) {
                    DisposableHelper.dispose(andSet);
                }
                this.done = true;
                drain();
                return;
            }
        }
        MathKt.onError(th);
    }

    @Override // io.reactivex.rxjava3.core.Observer
    public final void onNext(Object obj) {
        long j = this.unique + 1;
        this.unique = j;
        ObservableSwitchMap$SwitchMapInnerObserver observableSwitchMap$SwitchMapInnerObserver = this.active.get();
        if (observableSwitchMap$SwitchMapInnerObserver != null) {
            DisposableHelper.dispose(observableSwitchMap$SwitchMapInnerObserver);
        }
        try {
            Object apply = this.mapper.apply(obj);
            Objects.requireNonNull(apply, "The ObservableSource returned is null");
            Observable observable = (Observable) apply;
            ObservableSwitchMap$SwitchMapInnerObserver observableSwitchMap$SwitchMapInnerObserver2 = new ObservableSwitchMap$SwitchMapInnerObserver(this, j, this.bufferSize);
            while (true) {
                ObservableSwitchMap$SwitchMapInnerObserver observableSwitchMap$SwitchMapInnerObserver3 = this.active.get();
                if (observableSwitchMap$SwitchMapInnerObserver3 == CANCELLED) {
                    return;
                }
                AtomicReference<ObservableSwitchMap$SwitchMapInnerObserver> atomicReference = this.active;
                while (!atomicReference.compareAndSet(observableSwitchMap$SwitchMapInnerObserver3, observableSwitchMap$SwitchMapInnerObserver2)) {
                    if (atomicReference.get() != observableSwitchMap$SwitchMapInnerObserver3) {
                        break;
                    }
                }
                observable.subscribe(observableSwitchMap$SwitchMapInnerObserver2);
                return;
            }
        } catch (Throwable th) {
            AppKt.throwIfFatal(th);
            this.upstream.dispose();
            onError(th);
        }
    }

    @Override // io.reactivex.rxjava3.core.Observer
    public final void onSubscribe(Disposable disposable) {
        if (DisposableHelper.validate(this.upstream, disposable)) {
            this.upstream = disposable;
            this.downstream.onSubscribe(this);
        }
    }
}
