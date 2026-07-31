package io.reactivex.rxjava3.internal.operators.completable;

import io.reactivex.rxjava3.core.Completable;
import io.reactivex.rxjava3.core.CompletableObserver;
import io.reactivex.rxjava3.core.CompletableSource;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.disposables.RunnableDisposable;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.internal.functions.Functions;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.math.MathKt;
import net.newpipe.app.AppKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class CompletableFromAction extends Completable {
    public final /* synthetic */ int $r8$classId;
    public final Object run;

    public /* synthetic */ CompletableFromAction(Object obj, int i) {
        this.$r8$classId = i;
        this.run = obj;
    }

    @Override // io.reactivex.rxjava3.core.Completable
    public final void subscribeActual(CompletableObserver completableObserver) {
        switch (this.$r8$classId) {
            case 0:
                Disposable runnableDisposable = new RunnableDisposable(Functions.EMPTY_RUNNABLE);
                completableObserver.onSubscribe(runnableDisposable);
                if (!runnableDisposable.isDisposed()) {
                    try {
                        ((Action) this.run).run();
                        if (!runnableDisposable.isDisposed()) {
                            completableObserver.onComplete();
                            break;
                        }
                    } catch (Throwable th) {
                        AppKt.throwIfFatal(th);
                        if (runnableDisposable.isDisposed()) {
                            MathKt.onError(th);
                            return;
                        } else {
                            completableObserver.onError(th);
                            return;
                        }
                    }
                }
                break;
            case 1:
                Disposable runnableDisposable2 = new RunnableDisposable(Functions.EMPTY_RUNNABLE);
                completableObserver.onSubscribe(runnableDisposable2);
                try {
                    ((Callable) this.run).call();
                    if (!runnableDisposable2.isDisposed()) {
                        completableObserver.onComplete();
                        break;
                    }
                } catch (Throwable th2) {
                    AppKt.throwIfFatal(th2);
                    if (runnableDisposable2.isDisposed()) {
                        MathKt.onError(th2);
                        return;
                    } else {
                        completableObserver.onError(th2);
                        return;
                    }
                }
                break;
            case 2:
                Disposable runnableDisposable3 = new RunnableDisposable(Functions.EMPTY_RUNNABLE);
                completableObserver.onSubscribe(runnableDisposable3);
                if (!runnableDisposable3.isDisposed()) {
                    try {
                        ((Runnable) this.run).run();
                        if (!runnableDisposable3.isDisposed()) {
                            completableObserver.onComplete();
                            break;
                        }
                    } catch (Throwable th3) {
                        AppKt.throwIfFatal(th3);
                        if (runnableDisposable3.isDisposed()) {
                            MathKt.onError(th3);
                            return;
                        } else {
                            completableObserver.onError(th3);
                            return;
                        }
                    }
                }
                break;
            default:
                CompositeDisposable compositeDisposable = new CompositeDisposable();
                CompletableMergeArray$InnerCompletableObserver completableMergeArray$InnerCompletableObserver = new CompletableMergeArray$InnerCompletableObserver(completableObserver, new AtomicBoolean(), compositeDisposable, ((CompletableSource[]) this.run).length + 1);
                completableObserver.onSubscribe(completableMergeArray$InnerCompletableObserver);
                for (CompletableSource completableSource : (CompletableSource[]) this.run) {
                    if (compositeDisposable.disposed) {
                        break;
                    } else if (completableSource == null) {
                        compositeDisposable.dispose();
                        completableMergeArray$InnerCompletableObserver.onError(new NullPointerException("A completable source is null"));
                        break;
                    } else {
                        ((Completable) completableSource).subscribe(completableMergeArray$InnerCompletableObserver);
                    }
                }
                completableMergeArray$InnerCompletableObserver.onComplete();
                break;
        }
    }
}
