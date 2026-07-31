package io.reactivex.rxjava3.internal.operators.completable;

import io.reactivex.rxjava3.core.Completable;
import io.reactivex.rxjava3.core.CompletableObserver;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.SequentialDisposable;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class CompletableObserveOn extends Completable {
    public final /* synthetic */ int $r8$classId;
    public final Object scheduler;
    public final Completable source;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class ObserveOnCompletableObserver extends AtomicReference implements CompletableObserver, Disposable, Runnable {
        private static final long serialVersionUID = 8571289934935992137L;
        final CompletableObserver downstream;
        Throwable error;
        final Scheduler scheduler;

        public ObserveOnCompletableObserver(CompletableObserver completableObserver, Scheduler scheduler) {
            this.downstream = completableObserver;
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

        @Override // io.reactivex.rxjava3.core.CompletableObserver
        public final void onComplete() {
            DisposableHelper.replace(this, this.scheduler.scheduleDirect(this));
        }

        @Override // io.reactivex.rxjava3.core.CompletableObserver, io.reactivex.rxjava3.core.SingleObserver
        public final void onError(Throwable th) {
            this.error = th;
            DisposableHelper.replace(this, this.scheduler.scheduleDirect(this));
        }

        @Override // io.reactivex.rxjava3.core.CompletableObserver, io.reactivex.rxjava3.core.SingleObserver
        public final void onSubscribe(Disposable disposable) {
            if (DisposableHelper.setOnce(this, disposable)) {
                this.downstream.onSubscribe(this);
            }
        }

        @Override // java.lang.Runnable
        public final void run() {
            Throwable th = this.error;
            if (th == null) {
                this.downstream.onComplete();
            } else {
                this.error = null;
                this.downstream.onError(th);
            }
        }
    }

    public /* synthetic */ CompletableObserveOn(Completable completable, Object obj, int i) {
        this.$r8$classId = i;
        this.source = completable;
        this.scheduler = obj;
    }

    @Override // io.reactivex.rxjava3.core.Completable
    public final void subscribeActual(CompletableObserver completableObserver) {
        int i = this.$r8$classId;
        Object obj = this.scheduler;
        Completable completable = this.source;
        switch (i) {
            case 0:
                completable.subscribe(new ObserveOnCompletableObserver(completableObserver, (Scheduler) obj));
                break;
            case 1:
                CompletableSubscribeOn$SubscribeOnObserver completableSubscribeOn$SubscribeOnObserver = new CompletableSubscribeOn$SubscribeOnObserver(completableObserver, completable);
                completableObserver.onSubscribe(completableSubscribeOn$SubscribeOnObserver);
                Disposable scheduleDirect = ((Scheduler) obj).scheduleDirect(completableSubscribeOn$SubscribeOnObserver);
                SequentialDisposable sequentialDisposable = completableSubscribeOn$SubscribeOnObserver.task;
                sequentialDisposable.getClass();
                DisposableHelper.replace(sequentialDisposable, scheduleDirect);
                break;
            default:
                completable.subscribe(new CompletableAndThenCompletable$SourceObserver(completableObserver, (Completable) obj));
                break;
        }
    }
}
