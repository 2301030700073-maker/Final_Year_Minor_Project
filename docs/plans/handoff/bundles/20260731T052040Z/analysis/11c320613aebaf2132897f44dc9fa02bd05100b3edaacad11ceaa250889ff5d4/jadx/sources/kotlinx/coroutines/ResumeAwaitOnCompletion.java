package kotlinx.coroutines;

import kotlin.ResultKt;
import kotlinx.coroutines.JobSupport;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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
