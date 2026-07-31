package io.reactivex.rxjava3.internal.operators.observable;

import androidx.core.app.ActivityRecreator;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.observers.BasicFuseableObserver;
import j$.util.Objects;
import net.newpipe.app.AppKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ObservableMap extends AbstractObservableWithUpstream {
    public final /* synthetic */ int $r8$classId;
    public final Object function;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class MapObserver extends BasicFuseableObserver {
        public final /* synthetic */ int $r8$classId;
        public final Object mapper;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ MapObserver(Observer observer, Object obj, int i) {
            super(observer);
            this.$r8$classId = i;
            this.mapper = obj;
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onNext(Object obj) {
            int i = this.$r8$classId;
            Object obj2 = this.mapper;
            Observer observer = this.downstream;
            switch (i) {
                case 0:
                    if (!this.done) {
                        if (this.sourceMode != 0) {
                            observer.onNext(null);
                            break;
                        } else {
                            try {
                                Object apply = ((Function) obj2).apply(obj);
                                Objects.requireNonNull(apply, "The mapper function returned a null value.");
                                observer.onNext(apply);
                                break;
                            } catch (Throwable th) {
                                AppKt.throwIfFatal(th);
                                this.upstream.dispose();
                                onError(th);
                                return;
                            }
                        }
                    }
                    break;
                default:
                    if (this.sourceMode != 0) {
                        observer.onNext(null);
                        break;
                    } else {
                        try {
                            if (((Predicate) obj2).test(obj)) {
                                observer.onNext(obj);
                                break;
                            }
                        } catch (Throwable th2) {
                            AppKt.throwIfFatal(th2);
                            this.upstream.dispose();
                            this.onError(th2);
                            return;
                        }
                    }
                    break;
            }
        }

        @Override // io.reactivex.rxjava3.operators.SimpleQueue
        public final Object poll() {
            Object poll;
            int i = this.$r8$classId;
            Object obj = this.mapper;
            switch (i) {
                case 0:
                    Object poll2 = this.qd.poll();
                    if (poll2 == null) {
                        return null;
                    }
                    Object apply = ((Function) obj).apply(poll2);
                    Objects.requireNonNull(apply, "The mapper function returned a null value.");
                    return apply;
            }
            do {
                poll = this.qd.poll();
                if (poll != null) {
                }
                return poll;
            } while (!((Predicate) obj).test(poll));
            return poll;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ ObservableMap(Observable observable, Object obj, int i) {
        super(observable);
        this.$r8$classId = i;
        this.function = obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // io.reactivex.rxjava3.core.Observable
    public final void subscribeActual(Observer observer) {
        int i = this.$r8$classId;
        Observable observable = this.source;
        boolean z = false;
        Object[] objArr = 0;
        Object obj = this.function;
        switch (i) {
            case 0:
                observable.subscribe(new MapObserver(observer, (Function) obj, objArr == true ? 1 : 0));
                break;
            case 1:
                observable.subscribe(new MapObserver(observer, (Predicate) obj, 1));
                break;
            default:
                ObservableSubscribeOn$SubscribeOnObserver observableSubscribeOn$SubscribeOnObserver = new ObservableSubscribeOn$SubscribeOnObserver(observer);
                observer.onSubscribe(observableSubscribeOn$SubscribeOnObserver);
                DisposableHelper.setOnce(observableSubscribeOn$SubscribeOnObserver, ((Scheduler) obj).scheduleDirect(new ActivityRecreator.AnonymousClass1(15, this, observableSubscribeOn$SubscribeOnObserver, z)));
                break;
        }
    }
}
