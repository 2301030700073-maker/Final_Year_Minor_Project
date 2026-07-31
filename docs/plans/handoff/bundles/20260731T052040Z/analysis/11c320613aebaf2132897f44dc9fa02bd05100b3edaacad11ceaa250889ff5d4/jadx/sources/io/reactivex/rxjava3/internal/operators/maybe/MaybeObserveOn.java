package io.reactivex.rxjava3.internal.operators.maybe;

import androidx.core.app.ActivityRecreator;
import io.reactivex.rxjava3.core.Maybe;
import io.reactivex.rxjava3.core.MaybeObserver;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.SequentialDisposable;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class MaybeObserveOn extends AbstractMaybeWithUpstream {
    public final /* synthetic */ int $r8$classId;
    public final Scheduler scheduler;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class ObserveOnMaybeObserver extends AtomicReference implements MaybeObserver, Disposable, Runnable {
        private static final long serialVersionUID = 8571289934935992137L;
        final MaybeObserver downstream;
        Throwable error;
        final Scheduler scheduler;
        Object value;

        public ObserveOnMaybeObserver(MaybeObserver maybeObserver, Scheduler scheduler) {
            this.downstream = maybeObserver;
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

        @Override // io.reactivex.rxjava3.core.MaybeObserver
        public final void onComplete() {
            DisposableHelper.replace(this, this.scheduler.scheduleDirect(this));
        }

        @Override // io.reactivex.rxjava3.core.MaybeObserver
        public final void onError(Throwable th) {
            this.error = th;
            DisposableHelper.replace(this, this.scheduler.scheduleDirect(this));
        }

        @Override // io.reactivex.rxjava3.core.MaybeObserver
        public final void onSubscribe(Disposable disposable) {
            if (DisposableHelper.setOnce(this, disposable)) {
                this.downstream.onSubscribe(this);
            }
        }

        @Override // io.reactivex.rxjava3.core.MaybeObserver
        public final void onSuccess(Object obj) {
            this.value = obj;
            DisposableHelper.replace(this, this.scheduler.scheduleDirect(this));
        }

        @Override // java.lang.Runnable
        public final void run() {
            Throwable th = this.error;
            if (th != null) {
                this.error = null;
                this.downstream.onError(th);
                return;
            }
            Object obj = this.value;
            if (obj == null) {
                this.downstream.onComplete();
            } else {
                this.value = null;
                this.downstream.onSuccess(obj);
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ MaybeObserveOn(Maybe maybe, Scheduler scheduler, int i) {
        super(maybe);
        this.$r8$classId = i;
        this.scheduler = scheduler;
    }

    @Override // io.reactivex.rxjava3.core.Maybe
    public final void subscribeActual(MaybeObserver maybeObserver) {
        int i = this.$r8$classId;
        Maybe maybe = this.source;
        Scheduler scheduler = this.scheduler;
        switch (i) {
            case 0:
                maybe.subscribe(new ObserveOnMaybeObserver(maybeObserver, scheduler));
                break;
            default:
                MaybeSubscribeOn$SubscribeOnMaybeObserver maybeSubscribeOn$SubscribeOnMaybeObserver = new MaybeSubscribeOn$SubscribeOnMaybeObserver(maybeObserver);
                maybeObserver.onSubscribe(maybeSubscribeOn$SubscribeOnMaybeObserver);
                SequentialDisposable sequentialDisposable = maybeSubscribeOn$SubscribeOnMaybeObserver.task;
                Disposable scheduleDirect = scheduler.scheduleDirect(new ActivityRecreator.AnonymousClass1(maybeSubscribeOn$SubscribeOnMaybeObserver, maybe, 14));
                sequentialDisposable.getClass();
                DisposableHelper.replace(sequentialDisposable, scheduleDirect);
                break;
        }
    }
}
