package kotlinx.coroutines;

import kotlin.ResultKt;
import kotlinx.coroutines.JobSupport;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ResumeAwaitOnCompletion extends JobNode {
    public final JobSupport.AwaitContinuation continuation;

    public ResumeAwaitOnCompletion(JobSupport.AwaitContinuation awaitContinuation) {
        this.continuation = awaitContinuation;
    }

    @Override // kotlinx.coroutines.JobNode
    public final boolean getOnCancelling() {
        return false;
    }

    @Override // kotlinx.coroutines.JobNode
    public final void invoke(Throwable th) {
        Object state$kotlinx_coroutines_core = getJob().getState$kotlinx_coroutines_core();
        boolean z = state$kotlinx_coroutines_core instanceof CompletedExceptionally;
        JobSupport.AwaitContinuation awaitContinuation = this.continuation;
        if (z) {
            awaitContinuation.resumeWith(ResultKt.createFailure(((CompletedExceptionally) state$kotlinx_coroutines_core).cause));
        } else {
            awaitContinuation.resumeWith(JobKt.unboxState(state$kotlinx_coroutines_core));
        }
    }
}
