package androidx.compose.material3;

import androidx.compose.animation.core.MutableTransitionState;
import androidx.compose.foundation.MutatePriority;
import androidx.compose.foundation.MutatorMutex;
import androidx.compose.foundation.MutatorMutex$mutate$2;
import androidx.datastore.core.DataStoreImpl$doWithWriteFileLock$2;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.JobKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class TooltipStateImpl {
    public CancellableContinuationImpl job;
    public final MutatorMutex mutatorMutex;
    public final MutableTransitionState transition = new MutableTransitionState(Boolean.FALSE);

    public TooltipStateImpl(MutatorMutex mutatorMutex) {
        this.mutatorMutex = mutatorMutex;
    }

    public final void dismiss() {
        this.transition.targetState$delegate.setValue(Boolean.FALSE);
    }

    public final boolean isVisible() {
        MutableTransitionState mutableTransitionState = this.transition;
        return ((Boolean) mutableTransitionState.currentState$delegate.getValue()).booleanValue() || ((Boolean) mutableTransitionState.targetState$delegate.getValue()).booleanValue();
    }

    public final Object show(MutatePriority mutatePriority, SuspendLambda suspendLambda) {
        Continuation continuation = null;
        TooltipStateImpl$show$2 tooltipStateImpl$show$2 = new TooltipStateImpl$show$2(this, new DataStoreImpl$doWithWriteFileLock$2(this, continuation, 4), mutatePriority, continuation, 0);
        MutatorMutex mutatorMutex = this.mutatorMutex;
        mutatorMutex.getClass();
        Object coroutineScope = JobKt.coroutineScope(new MutatorMutex$mutate$2(mutatePriority, mutatorMutex, tooltipStateImpl$show$2, continuation, 0), suspendLambda);
        return coroutineScope == CoroutineSingletons.COROUTINE_SUSPENDED ? coroutineScope : Unit.INSTANCE;
    }
}
