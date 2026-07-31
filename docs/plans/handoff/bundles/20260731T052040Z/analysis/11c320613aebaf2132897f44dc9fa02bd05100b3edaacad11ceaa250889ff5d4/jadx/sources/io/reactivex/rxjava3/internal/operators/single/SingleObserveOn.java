package io.reactivex.rxjava3.internal.operators.single;

import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.core.Single;
import io.reactivex.rxjava3.core.SingleObserver;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.SequentialDisposable;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class SingleObserveOn extends Single {
    public final /* synthetic */ int $r8$classId;
    public final Scheduler scheduler;
    public final Single source;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class ObserveOnSingleObserver extends AtomicReference implements SingleObserver, Disposable, Runnable {
        private static final long serialVersionUID = 3528003840217436037L;
        final SingleObserver downstream;
        Throwable error;
        final Scheduler scheduler;
        Object value;

        public ObserveOnSingleObserver(SingleObserver singleObserver, Scheduler scheduler) {
            this.downstream = singleObserver;
            this.scheduler = scheduler;
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
            this.error = th;
            DisposableHelper.replace(this, this.scheduler.scheduleDirect(this));
        }

        @Override // io.reactivex.rxjava3.core.SingleObserver
        public final void onSubscribe(Disposable disposable) {
            if (DisposableHelper.setOnce(this, disposable)) {
                this.downstream.onSubscribe(this);
            }
        }

        @Override // io.reactivex.rxjava3.core.SingleObserver
        public final void onSuccess(Object obj) {
            this.value = obj;
            DisposableHelper.replace(this, this.scheduler.scheduleDirect(this));
        }

        @Override // java.lang.Runnable
        public final void run() {
            Throwable th = this.error;
            SingleObserver singleObserver = this.downstream;
            if (th != null) {
                singleObserver.onError(th);
            } else {
                singleObserver.onSuccess(this.value);
            }
        }
    }

    public /* synthetic */ SingleObserveOn(Single single, Scheduler scheduler, int i) {
        this.$r8$classId = i;
        this.source = single;
        this.scheduler = scheduler;
    }

    @Override // io.reactivex.rxjava3.core.Single
    public final void subscribeActual(SingleObserver singleObserver) {
        int i = this.$r8$classId;
        Scheduler scheduler = this.scheduler;
        Single single = this.source;
        switch (i) {
            case 0:
                single.subscribe(new ObserveOnSingleObserver(singleObserver, scheduler));
                break;
            default:
                SingleSubscribeOn$SubscribeOnObserver singleSubscribeOn$SubscribeOnObserver = new SingleSubscribeOn$SubscribeOnObserver(singleObserver, single);
                singleObserver.onSubscribe(singleSubscribeOn$SubscribeOnObserver);
                Disposable scheduleDirect = scheduler.scheduleDirect(singleSubscribeOn$SubscribeOnObserver);
                SequentialDisposable sequentialDisposable = singleSubscribeOn$SubscribeOnObserver.task;
                sequentialDisposable.getClass();
                DisposableHelper.replace(sequentialDisposable, scheduleDirect);
                break;
        }
    }
}
