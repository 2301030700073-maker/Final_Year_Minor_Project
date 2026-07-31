package kotlinx.coroutines;

import kotlinx.coroutines.internal.DispatchedContinuation;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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
        cancellableContinuationImpl.detachChildIfNonReusable();
    }
}
