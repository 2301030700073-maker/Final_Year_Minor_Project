package kotlinx.coroutines;

import kotlinx.coroutines.internal.DispatchedContinuation;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ChildContinuation extends JobNode {
    public final CancellableContinuationImpl child;

    public ChildContinuation(CancellableContinuationImpl cancellableContinuationImpl) {
        this.child = cancellableContinuationImpl;
    }

    @Override // kotlinx.coroutines.JobNode
    public final boolean getOnCancelling() {
        return true;
    }

    @Override // kotlinx.coroutines.JobNode
    public final void invoke(Throwable th) {
        JobSupport job = getJob();
        CancellableContinuationImpl cancellableContinuationImpl = this.child;
        Throwable continuationCancellationCause = cancellableContinuationImpl.getContinuationCancellationCause(job);
        if (!cancellableContinuationImpl.isReusable() ? false : ((DispatchedContinuation) cancellableContinuationImpl.delegate).postponeCancellation$kotlinx_coroutines_core(continuationCancellationCause)) {
            return;
        }
        cancellableContinuationImpl.cancel(continuationCancellationCause);
        if (cancellableContinuationImpl.isReusable()) {
            return;
        }
        cancellableContinuationImpl.detachChild$kotlinx_coroutines_core();
    }
}
