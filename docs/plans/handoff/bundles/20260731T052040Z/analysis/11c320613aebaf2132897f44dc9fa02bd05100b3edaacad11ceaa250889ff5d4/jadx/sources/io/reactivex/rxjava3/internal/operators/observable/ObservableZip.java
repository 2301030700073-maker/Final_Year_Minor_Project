package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import io.reactivex.rxjava3.operators.SpscLinkedArrayQueue;
import j$.util.Objects;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import net.newpipe.app.AppKt;
import okhttp3.ConnectionPool;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ObservableZip extends Observable {
    public final int bufferSize;
    public final Observable[] sources;
    public final ConnectionPool zipper;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class ZipCoordinator extends AtomicInteger implements Disposable {
        private static final long serialVersionUID = 2983708048395377667L;
        volatile boolean cancelled;
        final boolean delayError = false;
        final Observer downstream;
        final ZipObserver[] observers;
        final Object[] row;
        final Function zipper;

        public ZipCoordinator(Observer observer, ConnectionPool connectionPool, int i) {
            this.downstream = observer;
            this.zipper = connectionPool;
            this.observers = new ZipObserver[i];
            this.row = new Object[i];
        }

        public final void cancel() {
            for (ZipObserver zipObserver : this.observers) {
                zipObserver.queue.clear();
            }
            for (ZipObserver zipObserver2 : this.observers) {
                DisposableHelper.dispose(zipObserver2.upstream);
            }
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final void dispose() {
            if (this.cancelled) {
                return;
            }
            this.cancelled = true;
            for (ZipObserver zipObserver : this.observers) {
                DisposableHelper.dispose(zipObserver.upstream);
            }
            if (getAndIncrement() == 0) {
                for (ZipObserver zipObserver2 : this.observers) {
                    zipObserver2.queue.clear();
                }
            }
        }

        public final void drain() {
            Throwable th;
            if (getAndIncrement() != 0) {
                return;
            }
            ZipObserver[] zipObserverArr = this.observers;
            Observer observer = this.downstream;
            Object[] objArr = this.row;
            boolean z = this.delayError;
            int i = 1;
            while (true) {
                int i2 = 0;
                int i3 = 0;
                for (ZipObserver zipObserver : zipObserverArr) {
                    if (objArr[i3] == null) {
                        boolean z2 = zipObserver.done;
                        Object poll = zipObserver.queue.poll();
                        boolean z3 = poll == null;
                        if (this.cancelled) {
                            cancel();
                            return;
                        }
                        if (z2) {
                            if (!z) {
                                Throwable th2 = zipObserver.error;
                                if (th2 != null) {
                                    this.cancelled = true;
                                    cancel();
                                    observer.onError(th2);
                                    return;
                                } else if (z3) {
                                    this.cancelled = true;
                                    cancel();
                                    observer.onComplete();
                                    return;
                                }
                            } else if (z3) {
                                Throwable th3 = zipObserver.error;
                                this.cancelled = true;
                                cancel();
                                if (th3 != null) {
                                    observer.onError(th3);
                                    return;
                                } else {
                                    observer.onComplete();
                                    return;
                                }
                            }
                        }
                        if (z3) {
                            i2++;
                        } else {
                            objArr[i3] = poll;
                        }
                    } else if (zipObserver.done && !z && (th = zipObserver.error) != null) {
                        this.cancelled = true;
                        cancel();
                        observer.onError(th);
                        return;
                    }
                    i3++;
                }
                if (i2 != 0) {
                    i = addAndGet(-i);
                    if (i == 0) {
                        return;
                    }
                } else {
                    try {
                        Object apply = this.zipper.apply(objArr.clone());
                        Objects.requireNonNull(apply, "The zipper returned a null value");
                        observer.onNext(apply);
                        Arrays.fill(objArr, (Object) null);
                    } catch (Throwable th4) {
                        AppKt.throwIfFatal(th4);
                        cancel();
                        observer.onError(th4);
                        return;
                    }
                }
            }
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final boolean isDisposed() {
            return this.cancelled;
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class ZipObserver implements Observer {
        public volatile boolean done;
        public Throwable error;
        public final ZipCoordinator parent;
        public final SpscLinkedArrayQueue queue;
        public final AtomicReference upstream = new AtomicReference();

        public ZipObserver(ZipCoordinator zipCoordinator, int i) {
            this.parent = zipCoordinator;
            this.queue = new SpscLinkedArrayQueue(i);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onComplete() {
            this.done = true;
            this.parent.drain();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onError(Throwable th) {
            this.error = th;
            this.done = true;
            this.parent.drain();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onNext(Object obj) {
            this.queue.offer(obj);
            this.parent.drain();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onSubscribe(Disposable disposable) {
            DisposableHelper.setOnce(this.upstream, disposable);
        }
    }

    public ObservableZip(Observable[] observableArr, ConnectionPool connectionPool, int i) {
        this.sources = observableArr;
        this.zipper = connectionPool;
        this.bufferSize = i;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public final void subscribeActual(Observer observer) {
        Observable[] observableArr = this.sources;
        int length = observableArr.length;
        if (length == 0) {
            observer.onSubscribe(EmptyDisposable.INSTANCE);
            observer.onComplete();
            return;
        }
        ZipCoordinator zipCoordinator = new ZipCoordinator(observer, this.zipper, length);
        int i = this.bufferSize;
        ZipObserver[] zipObserverArr = zipCoordinator.observers;
        int length2 = zipObserverArr.length;
        for (int i2 = 0; i2 < length2; i2++) {
            zipObserverArr[i2] = new ZipObserver(zipCoordinator, i);
        }
        zipCoordinator.lazySet(0);
        zipCoordinator.downstream.onSubscribe(zipCoordinator);
        for (int i3 = 0; i3 < length2 && !zipCoordinator.cancelled; i3++) {
            observableArr[i3].subscribe(zipObserverArr[i3]);
        }
    }
}
