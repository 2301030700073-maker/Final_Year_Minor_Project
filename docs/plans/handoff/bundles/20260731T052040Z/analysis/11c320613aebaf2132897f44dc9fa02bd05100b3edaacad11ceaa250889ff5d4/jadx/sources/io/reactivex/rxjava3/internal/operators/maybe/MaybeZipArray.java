package io.reactivex.rxjava3.internal.operators.maybe;

import io.reactivex.rxjava3.core.Maybe;
import io.reactivex.rxjava3.core.MaybeObserver;
import io.reactivex.rxjava3.core.MaybeSource;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.operators.maybe.MaybeMap;
import j$.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.math.MathKt;
import net.newpipe.app.AppKt;
import okhttp3.ConnectionPool;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class MaybeZipArray extends Maybe {
    public final MaybeSource[] sources;
    public final ConnectionPool zipper;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class SingletonArrayFunc implements MaybeObserver, Function {
        public final /* synthetic */ Object this$0;

        public /* synthetic */ SingletonArrayFunc(Object obj) {
            this.this$0 = obj;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public Object apply(Object obj) {
            Object apply = ((MaybeZipArray) this.this$0).zipper.apply(new Object[]{obj});
            Objects.requireNonNull(apply, "The zipper returned a null value");
            return apply;
        }

        @Override // io.reactivex.rxjava3.core.MaybeObserver
        public void onComplete() {
            ((MaybeFlatten$FlatMapMaybeObserver) this.this$0).downstream.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.MaybeObserver
        public void onError(Throwable th) {
            ((MaybeFlatten$FlatMapMaybeObserver) this.this$0).downstream.onError(th);
        }

        @Override // io.reactivex.rxjava3.core.MaybeObserver
        public void onSubscribe(Disposable disposable) {
            DisposableHelper.setOnce((MaybeFlatten$FlatMapMaybeObserver) this.this$0, disposable);
        }

        @Override // io.reactivex.rxjava3.core.MaybeObserver
        public void onSuccess(Object obj) {
            ((MaybeFlatten$FlatMapMaybeObserver) this.this$0).downstream.onSuccess(obj);
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class ZipCoordinator extends AtomicInteger implements Disposable {
        private static final long serialVersionUID = -5556924161382950569L;
        final MaybeObserver downstream;
        final ZipMaybeObserver[] observers;
        Object[] values;
        final Function zipper;

        public ZipCoordinator(MaybeObserver maybeObserver, int i, ConnectionPool connectionPool) {
            super(i);
            this.downstream = maybeObserver;
            this.zipper = connectionPool;
            ZipMaybeObserver[] zipMaybeObserverArr = new ZipMaybeObserver[i];
            for (int i2 = 0; i2 < i; i2++) {
                zipMaybeObserverArr[i2] = new ZipMaybeObserver(this, i2);
            }
            this.observers = zipMaybeObserverArr;
            this.values = new Object[i];
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final void dispose() {
            if (getAndSet(0) > 0) {
                for (ZipMaybeObserver zipMaybeObserver : this.observers) {
                    zipMaybeObserver.getClass();
                    DisposableHelper.dispose(zipMaybeObserver);
                }
                this.values = null;
            }
        }

        public final void disposeExcept(int i) {
            ZipMaybeObserver[] zipMaybeObserverArr = this.observers;
            int length = zipMaybeObserverArr.length;
            for (int i2 = 0; i2 < i; i2++) {
                ZipMaybeObserver zipMaybeObserver = zipMaybeObserverArr[i2];
                zipMaybeObserver.getClass();
                DisposableHelper.dispose(zipMaybeObserver);
            }
            while (true) {
                i++;
                if (i >= length) {
                    return;
                }
                ZipMaybeObserver zipMaybeObserver2 = zipMaybeObserverArr[i];
                zipMaybeObserver2.getClass();
                DisposableHelper.dispose(zipMaybeObserver2);
            }
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final boolean isDisposed() {
            return get() <= 0;
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class ZipMaybeObserver extends AtomicReference implements MaybeObserver {
        private static final long serialVersionUID = 3323743579927613702L;
        final int index;
        final ZipCoordinator parent;

        public ZipMaybeObserver(ZipCoordinator zipCoordinator, int i) {
            this.parent = zipCoordinator;
            this.index = i;
        }

        @Override // io.reactivex.rxjava3.core.MaybeObserver
        public final void onComplete() {
            ZipCoordinator zipCoordinator = this.parent;
            int i = this.index;
            if (zipCoordinator.getAndSet(0) > 0) {
                zipCoordinator.disposeExcept(i);
                zipCoordinator.values = null;
                zipCoordinator.downstream.onComplete();
            }
        }

        @Override // io.reactivex.rxjava3.core.MaybeObserver
        public final void onError(Throwable th) {
            ZipCoordinator zipCoordinator = this.parent;
            int i = this.index;
            if (zipCoordinator.getAndSet(0) <= 0) {
                MathKt.onError(th);
                return;
            }
            zipCoordinator.disposeExcept(i);
            zipCoordinator.values = null;
            zipCoordinator.downstream.onError(th);
        }

        @Override // io.reactivex.rxjava3.core.MaybeObserver
        public final void onSubscribe(Disposable disposable) {
            DisposableHelper.setOnce(this, disposable);
        }

        @Override // io.reactivex.rxjava3.core.MaybeObserver
        public final void onSuccess(Object obj) {
            ZipCoordinator zipCoordinator = this.parent;
            int i = this.index;
            Object[] objArr = zipCoordinator.values;
            if (objArr != null) {
                objArr[i] = obj;
            }
            if (zipCoordinator.decrementAndGet() == 0) {
                try {
                    Object apply = zipCoordinator.zipper.apply(objArr);
                    Objects.requireNonNull(apply, "The zipper returned a null value");
                    zipCoordinator.values = null;
                    zipCoordinator.downstream.onSuccess(apply);
                } catch (Throwable th) {
                    AppKt.throwIfFatal(th);
                    zipCoordinator.values = null;
                    zipCoordinator.downstream.onError(th);
                }
            }
        }
    }

    public MaybeZipArray(MaybeSource[] maybeSourceArr, ConnectionPool connectionPool) {
        this.sources = maybeSourceArr;
        this.zipper = connectionPool;
    }

    @Override // io.reactivex.rxjava3.core.Maybe
    public final void subscribeActual(MaybeObserver maybeObserver) {
        MaybeSource[] maybeSourceArr = this.sources;
        int length = maybeSourceArr.length;
        if (length == 1) {
            ((Maybe) maybeSourceArr[0]).subscribe(new MaybeMap.MapMaybeObserver(maybeObserver, new SingletonArrayFunc(this), 0));
            return;
        }
        ZipCoordinator zipCoordinator = new ZipCoordinator(maybeObserver, length, this.zipper);
        maybeObserver.onSubscribe(zipCoordinator);
        for (int i = 0; i < length && !zipCoordinator.isDisposed(); i++) {
            MaybeSource maybeSource = maybeSourceArr[i];
            if (maybeSource == null) {
                NullPointerException nullPointerException = new NullPointerException("One of the sources is null");
                if (zipCoordinator.getAndSet(0) <= 0) {
                    MathKt.onError(nullPointerException);
                    return;
                }
                zipCoordinator.disposeExcept(i);
                zipCoordinator.values = null;
                zipCoordinator.downstream.onError(nullPointerException);
                return;
            }
            ((Maybe) maybeSource).subscribe(zipCoordinator.observers[i]);
        }
    }
}
