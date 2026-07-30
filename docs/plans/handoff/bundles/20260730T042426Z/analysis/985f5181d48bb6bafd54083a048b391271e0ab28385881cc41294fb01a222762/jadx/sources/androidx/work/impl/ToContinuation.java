package androidx.work.impl;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.ExecutionException;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CancellableContinuation;

/* compiled from: WorkerWrapper.kt */
/* loaded from: classes.dex */
final class ToContinuation implements Runnable {
    private final CancellableContinuation continuation;
    private final ListenableFuture futureToObserve;

    public ToContinuation(ListenableFuture futureToObserve, CancellableContinuation continuation) {
        Intrinsics.checkNotNullParameter(futureToObserve, "futureToObserve");
        Intrinsics.checkNotNullParameter(continuation, "continuation");
        this.futureToObserve = futureToObserve;
        this.continuation = continuation;
    }

    @Override // java.lang.Runnable
    public void run() {
        Throwable nonNullCause;
        Object uninterruptibly;
        if (this.futureToObserve.isCancelled()) {
            CancellableContinuation.DefaultImpls.cancel$default(this.continuation, null, 1, null);
            return;
        }
        try {
            CancellableContinuation cancellableContinuation = this.continuation;
            Result.Companion companion = Result.Companion;
            uninterruptibly = WorkerWrapperKt.getUninterruptibly(this.futureToObserve);
            cancellableContinuation.resumeWith(Result.m2647constructorimpl(uninterruptibly));
        } catch (ExecutionException e) {
            CancellableContinuation cancellableContinuation2 = this.continuation;
            Result.Companion companion2 = Result.Companion;
            nonNullCause = WorkerWrapperKt.nonNullCause(e);
            cancellableContinuation2.resumeWith(Result.m2647constructorimpl(ResultKt.createFailure(nonNullCause)));
        }
    }
}
