package kotlinx.coroutines.rx3;

import io.reactivex.rxjava3.core.SingleObserver;
import io.reactivex.rxjava3.disposables.Disposable;
import kotlin.ResultKt;
import kotlinx.coroutines.CancellableContinuationImpl;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class RxAwaitKt$await$5$1 implements SingleObserver {
    public final /* synthetic */ CancellableContinuationImpl $cont;

    public /* synthetic */ RxAwaitKt$await$5$1(CancellableContinuationImpl cancellableContinuationImpl) {
        this.$cont = cancellableContinuationImpl;
    }

    @Override // io.reactivex.rxjava3.core.SingleObserver
    public void onError(Throwable th) {
        this.$cont.resumeWith(ResultKt.createFailure(th));
    }

    @Override // io.reactivex.rxjava3.core.SingleObserver
    public void onSubscribe(Disposable disposable) {
        this.$cont.invokeOnCancellation(new RxAwaitKt$$ExternalSyntheticLambda0(disposable, 0));
    }

    @Override // io.reactivex.rxjava3.core.SingleObserver
    public void onSuccess(Object obj) {
        this.$cont.resumeWith(obj);
    }
}
