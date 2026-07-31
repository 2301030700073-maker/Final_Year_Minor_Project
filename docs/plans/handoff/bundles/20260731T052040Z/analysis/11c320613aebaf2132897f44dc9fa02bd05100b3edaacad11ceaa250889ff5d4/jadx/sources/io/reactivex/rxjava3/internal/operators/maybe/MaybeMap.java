package io.reactivex.rxjava3.internal.operators.maybe;

import androidx.activity.OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;
import io.reactivex.rxjava3.core.CompletableObserver;
import io.reactivex.rxjava3.core.Maybe;
import io.reactivex.rxjava3.core.MaybeObserver;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import io.reactivex.rxjava3.internal.operators.completable.CompletablePeek;
import j$.util.Objects;
import kotlin.math.MathKt;
import net.newpipe.app.AppKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class MaybeMap extends AbstractMaybeWithUpstream {
    public final /* synthetic */ int $r8$classId;
    public final Function mapper;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ MaybeMap(Maybe maybe, Function function, int i) {
        super(maybe);
        this.$r8$classId = i;
        this.mapper = function;
    }

    @Override // io.reactivex.rxjava3.core.Maybe
    public final void subscribeActual(MaybeObserver maybeObserver) {
        int i = this.$r8$classId;
        Function function = this.mapper;
        Maybe maybe = this.source;
        switch (i) {
            case 0:
                maybe.subscribe(new MapMaybeObserver(maybeObserver, function, 0));
                break;
            default:
                maybe.subscribe(new MaybeFlatten$FlatMapMaybeObserver(maybeObserver, function));
                break;
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class MapMaybeObserver implements CompletableObserver, Disposable, MaybeObserver {
        public final /* synthetic */ int $r8$classId;
        public final Object downstream;
        public final Object mapper;
        public Disposable upstream;

        public MapMaybeObserver(CompletablePeek completablePeek, CompletableObserver completableObserver) {
            this.$r8$classId = 1;
            this.mapper = completablePeek;
            this.downstream = completableObserver;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final void dispose() {
            int i = this.$r8$classId;
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            switch (i) {
                case 0:
                    Disposable disposable = this.upstream;
                    this.upstream = disposableHelper;
                    disposable.dispose();
                    break;
                case 1:
                    this.upstream.dispose();
                    break;
                case 2:
                    Disposable disposable2 = this.upstream;
                    this.upstream = disposableHelper;
                    disposable2.dispose();
                    break;
                default:
                    this.upstream.dispose();
                    this.upstream = disposableHelper;
                    break;
            }
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final boolean isDisposed() {
            switch (this.$r8$classId) {
            }
            return this.upstream.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.CompletableObserver
        public final void onComplete() {
            int i = this.$r8$classId;
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            Object obj = this.downstream;
            switch (i) {
                case 0:
                    ((MaybeObserver) obj).onComplete();
                    break;
                case 1:
                    CompletableObserver completableObserver = (CompletableObserver) obj;
                    if (this.upstream != disposableHelper) {
                        completableObserver.onComplete();
                        break;
                    }
                    break;
                case 2:
                    ((MaybeObserver) obj).onComplete();
                    break;
                default:
                    if (this.upstream != disposableHelper) {
                        this.upstream = disposableHelper;
                        ((MaybeObserver) obj).onComplete();
                        break;
                    }
                    break;
            }
        }

        @Override // io.reactivex.rxjava3.core.CompletableObserver, io.reactivex.rxjava3.core.SingleObserver
        public final void onError(Throwable th) {
            int i = this.$r8$classId;
            Object obj = this.mapper;
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            Object obj2 = this.downstream;
            switch (i) {
                case 0:
                    ((MaybeObserver) obj2).onError(th);
                    break;
                case 1:
                    CompletablePeek completablePeek = (CompletablePeek) obj;
                    if (this.upstream != disposableHelper) {
                        try {
                            completablePeek.onError.accept(th);
                        } catch (Throwable th2) {
                            AppKt.throwIfFatal(th2);
                            th = new CompositeException(th, th2);
                        }
                        ((CompletableObserver) obj2).onError(th);
                        break;
                    } else {
                        MathKt.onError(th);
                        break;
                    }
                case 2:
                    ((MaybeObserver) obj2).onError(th);
                    break;
                default:
                    if (this.upstream != disposableHelper) {
                        try {
                            ((OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0) ((MaybePeek) obj).onErrorCall).accept(th);
                        } catch (Throwable th3) {
                            AppKt.throwIfFatal(th3);
                            th = new CompositeException(th, th3);
                        }
                        this.upstream = disposableHelper;
                        ((MaybeObserver) obj2).onError(th);
                        break;
                    } else {
                        MathKt.onError(th);
                        break;
                    }
            }
        }

        @Override // io.reactivex.rxjava3.core.CompletableObserver, io.reactivex.rxjava3.core.SingleObserver
        public final void onSubscribe(Disposable disposable) {
            int i = this.$r8$classId;
            Object obj = this.downstream;
            switch (i) {
                case 0:
                    if (DisposableHelper.validate(this.upstream, disposable)) {
                        this.upstream = disposable;
                        ((MaybeObserver) obj).onSubscribe(this);
                        break;
                    }
                    break;
                case 1:
                    CompletableObserver completableObserver = (CompletableObserver) obj;
                    try {
                        ((CompletablePeek) this.mapper).onSubscribe.accept(disposable);
                        if (DisposableHelper.validate(this.upstream, disposable)) {
                            this.upstream = disposable;
                            completableObserver.onSubscribe(this);
                            break;
                        }
                    } catch (Throwable th) {
                        AppKt.throwIfFatal(th);
                        disposable.dispose();
                        this.upstream = DisposableHelper.DISPOSED;
                        completableObserver.onSubscribe(EmptyDisposable.INSTANCE);
                        completableObserver.onError(th);
                        return;
                    }
                    break;
                case 2:
                    if (DisposableHelper.validate(this.upstream, disposable)) {
                        this.upstream = disposable;
                        ((MaybeObserver) obj).onSubscribe(this);
                        break;
                    }
                    break;
                default:
                    MaybeObserver maybeObserver = (MaybeObserver) obj;
                    if (DisposableHelper.validate(this.upstream, disposable)) {
                        this.upstream = disposable;
                        maybeObserver.onSubscribe(this);
                        break;
                    }
                    break;
            }
        }

        @Override // io.reactivex.rxjava3.core.MaybeObserver
        public void onSuccess(Object obj) {
            int i = this.$r8$classId;
            Object obj2 = this.mapper;
            Object obj3 = this.downstream;
            switch (i) {
                case 0:
                    MaybeObserver maybeObserver = (MaybeObserver) obj3;
                    try {
                        Object apply = ((Function) obj2).apply(obj);
                        Objects.requireNonNull(apply, "The mapper returned a null item");
                        maybeObserver.onSuccess(apply);
                        break;
                    } catch (Throwable th) {
                        AppKt.throwIfFatal(th);
                        maybeObserver.onError(th);
                        return;
                    }
                case 1:
                default:
                    Disposable disposable = this.upstream;
                    DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
                    if (disposable != disposableHelper) {
                        this.upstream = disposableHelper;
                        ((MaybeObserver) obj3).onSuccess(obj);
                        break;
                    }
                    break;
                case 2:
                    MaybeObserver maybeObserver2 = (MaybeObserver) obj3;
                    try {
                        if (!((Predicate) obj2).test(obj)) {
                            maybeObserver2.onComplete();
                            break;
                        } else {
                            maybeObserver2.onSuccess(obj);
                            break;
                        }
                    } catch (Throwable th2) {
                        AppKt.throwIfFatal(th2);
                        maybeObserver2.onError(th2);
                        return;
                    }
            }
        }

        public /* synthetic */ MapMaybeObserver(MaybeObserver maybeObserver, Object obj, int i) {
            this.$r8$classId = i;
            this.downstream = maybeObserver;
            this.mapper = obj;
        }
    }
}
