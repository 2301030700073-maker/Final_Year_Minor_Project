package kotlinx.coroutines.flow;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.StandaloneCoroutine;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.internal.FusibleFlow;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ReadonlySharedFlow implements SharedFlow, Flow, FusibleFlow {
    public final /* synthetic */ SharedFlowImpl $$delegate_0;
    private final Job job;

    public ReadonlySharedFlow(SharedFlowImpl sharedFlowImpl, StandaloneCoroutine standaloneCoroutine) {
        this.$$delegate_0 = sharedFlowImpl;
        this.job = standaloneCoroutine;
    }

    @Override // kotlinx.coroutines.flow.Flow
    public final Object collect(FlowCollector flowCollector, Continuation continuation) {
        this.$$delegate_0.collect(flowCollector, continuation);
        return CoroutineSingletons.COROUTINE_SUSPENDED;
    }

    @Override // kotlinx.coroutines.flow.internal.FusibleFlow
    public final Flow fuse(CoroutineContext coroutineContext, int i, BufferOverflow bufferOverflow) {
        return FlowKt.fuseSharedFlow(this, coroutineContext, i, bufferOverflow);
    }
}
