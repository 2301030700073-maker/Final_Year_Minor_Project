package io.reactivex.rxjava3.internal.operators.single;

import io.reactivex.rxjava3.core.Single;
import io.reactivex.rxjava3.core.SingleObserver;
import io.reactivex.rxjava3.core.SingleSource;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.disposables.RunnableDisposable;
import io.reactivex.rxjava3.functions.Supplier;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import io.reactivex.rxjava3.internal.functions.Functions;
import io.reactivex.rxjava3.internal.util.ExceptionHelper;
import j$.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.math.MathKt;
import net.newpipe.app.AppKt;
import okhttp3.Dispatcher;
import org.schabi.newpipe.DownloaderImpl$$ExternalSyntheticLambda3;
import org.schabi.newpipe.RouterActivity;
import org.schabi.newpipe.RouterActivity$PersistentFragment$$ExternalSyntheticLambda4;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class SingleAmb extends Single {
    public final /* synthetic */ int $r8$classId;
    public final Object sources;

    public /* synthetic */ SingleAmb(Object obj, int i) {
        this.$r8$classId = i;
        this.sources = obj;
    }

    @Override // io.reactivex.rxjava3.core.Single
    public final void subscribeActual(SingleObserver singleObserver) {
        Object obj;
        Disposable disposable;
        switch (this.$r8$classId) {
            case 0:
                SingleSource[] singleSourceArr = (SingleSource[]) this.sources;
                AtomicBoolean atomicBoolean = new AtomicBoolean();
                CompositeDisposable compositeDisposable = new CompositeDisposable();
                singleObserver.onSubscribe(compositeDisposable);
                for (SingleSource singleSource : singleSourceArr) {
                    if (compositeDisposable.disposed) {
                        return;
                    }
                    if (singleSource == null) {
                        compositeDisposable.dispose();
                        Throwable nullPointerException = new NullPointerException("One of the sources is null");
                        if (atomicBoolean.compareAndSet(false, true)) {
                            singleObserver.onError(nullPointerException);
                            return;
                        } else {
                            MathKt.onError(nullPointerException);
                            return;
                        }
                    }
                    ((Single) singleSource).subscribe(new Dispatcher(singleObserver, compositeDisposable, atomicBoolean));
                }
                return;
            case 1:
                SingleCreate$Emitter singleCreate$Emitter = new SingleCreate$Emitter(singleObserver);
                singleObserver.onSubscribe(singleCreate$Emitter);
                try {
                    RouterActivity.PersistentFragment persistentFragment = ((RouterActivity$PersistentFragment$$ExternalSyntheticLambda4) this.sources).f$0;
                    persistentFragment.getActivityContext().ifPresent(new DownloaderImpl$$ExternalSyntheticLambda3(persistentFragment, singleCreate$Emitter, 8));
                    return;
                } catch (Throwable th) {
                    AppKt.throwIfFatal(th);
                    Object obj2 = singleCreate$Emitter.get();
                    DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
                    if (obj2 == disposableHelper || (disposable = (Disposable) singleCreate$Emitter.getAndSet(disposableHelper)) == disposableHelper) {
                        MathKt.onError(th);
                        return;
                    }
                    try {
                        singleCreate$Emitter.downstream.onError(th);
                        if (disposable != null) {
                            return;
                        } else {
                            return;
                        }
                    } finally {
                        if (disposable != null) {
                            disposable.dispose();
                        }
                    }
                }
            case 2:
                try {
                    obj = ((Supplier) this.sources).get();
                } catch (Throwable th2) {
                    th = th2;
                    AppKt.throwIfFatal(th);
                }
                if (obj == null) {
                    throw ExceptionHelper.createNullPointerException("Supplier returned a null Throwable.");
                }
                ExceptionHelper.Termination termination = ExceptionHelper.TERMINATED;
                th = (Throwable) obj;
                singleObserver.onSubscribe(EmptyDisposable.INSTANCE);
                singleObserver.onError(th);
                return;
            case 3:
                Disposable runnableDisposable = new RunnableDisposable(Functions.EMPTY_RUNNABLE);
                singleObserver.onSubscribe(runnableDisposable);
                if (runnableDisposable.isDisposed()) {
                    return;
                }
                try {
                    Object call = ((Callable) this.sources).call();
                    Objects.requireNonNull(call, "The callable returned a null value");
                    if (runnableDisposable.isDisposed()) {
                        return;
                    }
                    singleObserver.onSuccess(call);
                    return;
                } catch (Throwable th3) {
                    AppKt.throwIfFatal(th3);
                    if (runnableDisposable.isDisposed()) {
                        MathKt.onError(th3);
                        return;
                    } else {
                        singleObserver.onError(th3);
                        return;
                    }
                }
            default:
                singleObserver.onSubscribe(EmptyDisposable.INSTANCE);
                singleObserver.onSuccess(this.sources);
                return;
        }
    }
}
