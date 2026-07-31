package io.reactivex.rxjava3.internal.operators.maybe;

import io.reactivex.rxjava3.core.MaybeObserver;
import io.reactivex.rxjava3.core.Notification;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.core.Single;
import io.reactivex.rxjava3.core.SingleObserver;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.operators.flowable.FlowableElementAtMaybe;
import io.reactivex.rxjava3.internal.util.NotificationLite;
import j$.util.Objects;
import java.util.NoSuchElementException;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class MaybeToSingle extends Single {
    public final FlowableElementAtMaybe source;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class ToSingleMaybeSubscriber implements MaybeObserver, Disposable, Observer {
        public final /* synthetic */ int $r8$classId;
        public final Object downstream;
        public Disposable upstream;

        public /* synthetic */ ToSingleMaybeSubscriber(Object obj, int i) {
            this.$r8$classId = i;
            this.downstream = obj;
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
        public final void onComplete() {
            int i = this.$r8$classId;
            Object obj = this.downstream;
            switch (i) {
                case 0:
                    this.upstream = DisposableHelper.DISPOSED;
                    ((SingleObserver) obj).onError(new NoSuchElementException("The MaybeSource is empty"));
                    break;
                default:
                    Observer observer = (Observer) obj;
                    observer.onNext(Notification.COMPLETE);
                    observer.onComplete();
                    break;
            }
        }

        @Override // io.reactivex.rxjava3.core.MaybeObserver
        public final void onError(Throwable th) {
            int i = this.$r8$classId;
            Object obj = this.downstream;
            switch (i) {
                case 0:
                    this.upstream = DisposableHelper.DISPOSED;
                    ((SingleObserver) obj).onError(th);
                    break;
                default:
                    Objects.requireNonNull(th, "error is null");
                    Observer observer = (Observer) obj;
                    observer.onNext(new Notification(new NotificationLite.ErrorNotification(th)));
                    observer.onComplete();
                    break;
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onNext(Object obj) {
            Observer observer = (Observer) this.downstream;
            Objects.requireNonNull(obj, "value is null");
            observer.onNext(new Notification(obj));
        }

        @Override // io.reactivex.rxjava3.core.MaybeObserver
        public final void onSubscribe(Disposable disposable) {
            int i = this.$r8$classId;
            Object obj = this.downstream;
            switch (i) {
                case 0:
                    if (DisposableHelper.validate(this.upstream, disposable)) {
                        this.upstream = disposable;
                        ((SingleObserver) obj).onSubscribe(this);
                        break;
                    }
                    break;
                default:
                    if (DisposableHelper.validate(this.upstream, disposable)) {
                        this.upstream = disposable;
                        ((Observer) obj).onSubscribe(this);
                        break;
                    }
                    break;
            }
        }

        @Override // io.reactivex.rxjava3.core.MaybeObserver
        public void onSuccess(Object obj) {
            this.upstream = DisposableHelper.DISPOSED;
            ((SingleObserver) this.downstream).onSuccess(obj);
        }
    }

    public MaybeToSingle(FlowableElementAtMaybe flowableElementAtMaybe) {
        this.source = flowableElementAtMaybe;
    }

    @Override // io.reactivex.rxjava3.core.Single
    public final void subscribeActual(SingleObserver singleObserver) {
        this.source.subscribe(new ToSingleMaybeSubscriber(singleObserver, 0));
    }
}
