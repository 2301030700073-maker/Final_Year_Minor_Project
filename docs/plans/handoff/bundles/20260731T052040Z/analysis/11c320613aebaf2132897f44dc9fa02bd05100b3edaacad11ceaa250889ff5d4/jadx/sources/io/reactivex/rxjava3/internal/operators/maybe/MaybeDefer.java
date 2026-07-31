package io.reactivex.rxjava3.internal.operators.maybe;

import androidx.room.rxjava3.RxRoom$createMaybe$1;
import io.reactivex.rxjava3.core.Maybe;
import io.reactivex.rxjava3.core.MaybeObserver;
import io.reactivex.rxjava3.core.MaybeSource;
import io.reactivex.rxjava3.internal.disposables.CancellableDisposable;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import io.reactivex.rxjava3.internal.operators.single.SingleDoOnEvent;
import kotlin.coroutines.ContinuationInterceptor$Key;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.math.MathKt;
import kotlinx.coroutines.AbstractCoroutine;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.rx3.RxCancellable;
import kotlinx.coroutines.rx3.RxConvertKt$$ExternalSyntheticLambda0;
import kotlinx.coroutines.rx3.RxMaybeCoroutine;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import net.newpipe.app.AppKt;
import org.schabi.newpipe.util.ExtractorHelper$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class MaybeDefer extends Maybe {
    public final /* synthetic */ int $r8$classId;
    public final Object maybeSupplier;

    public /* synthetic */ MaybeDefer(Object obj, int i) {
        this.$r8$classId = i;
        this.maybeSupplier = obj;
    }

    @Override // io.reactivex.rxjava3.core.Maybe
    public final void subscribeActual(MaybeObserver maybeObserver) {
        int i = this.$r8$classId;
        Object obj = this.maybeSupplier;
        switch (i) {
            case 0:
                try {
                    ((Maybe) ((MaybeSource) ((ExtractorHelper$$ExternalSyntheticLambda0) obj).get())).subscribe(maybeObserver);
                    break;
                } catch (Throwable th) {
                    AppKt.throwIfFatal(th);
                    maybeObserver.onSubscribe(EmptyDisposable.INSTANCE);
                    maybeObserver.onError(th);
                    return;
                }
            case 1:
                MaybeCreate$Emitter maybeCreate$Emitter = new MaybeCreate$Emitter(maybeObserver);
                maybeObserver.onSubscribe(maybeCreate$Emitter);
                try {
                    RxConvertKt$$ExternalSyntheticLambda0 rxConvertKt$$ExternalSyntheticLambda0 = (RxConvertKt$$ExternalSyntheticLambda0) obj;
                    CoroutineContext coroutineContext = (CoroutineContext) rxConvertKt$$ExternalSyntheticLambda0.f$0;
                    RxRoom$createMaybe$1 rxRoom$createMaybe$1 = (RxRoom$createMaybe$1) rxConvertKt$$ExternalSyntheticLambda0.f$1;
                    CoroutineContext foldCopies = JobKt.foldCopies(EmptyCoroutineContext.INSTANCE, coroutineContext, true);
                    DefaultScheduler defaultScheduler = Dispatchers.Default;
                    if (foldCopies != defaultScheduler && foldCopies.get(ContinuationInterceptor$Key.$$INSTANCE) == null) {
                        foldCopies = foldCopies.plus(defaultScheduler);
                    }
                    AbstractCoroutine rxMaybeCoroutine = new RxMaybeCoroutine(foldCopies, maybeCreate$Emitter);
                    DisposableHelper.set(maybeCreate$Emitter, new CancellableDisposable(new RxCancellable(rxMaybeCoroutine)));
                    rxMaybeCoroutine.start(CoroutineStart.DEFAULT, rxMaybeCoroutine, rxRoom$createMaybe$1);
                    break;
                } catch (Throwable th2) {
                    AppKt.throwIfFatal(th2);
                    if (maybeCreate$Emitter.tryOnError(th2)) {
                        return;
                    }
                    MathKt.onError(th2);
                    return;
                }
                break;
            default:
                ((SingleDoOnEvent) obj).subscribe(new MaybeFromSingle$FromSingleObserver(maybeObserver, 0));
                break;
        }
    }
}
