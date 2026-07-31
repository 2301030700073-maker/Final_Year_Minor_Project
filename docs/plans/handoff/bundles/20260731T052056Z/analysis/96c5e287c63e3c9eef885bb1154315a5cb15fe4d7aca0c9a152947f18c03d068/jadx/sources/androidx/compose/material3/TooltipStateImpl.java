package androidx.compose.material3;

import androidx.compose.animation.core.MutableTransitionState;
import androidx.compose.foundation.MutatePriority;
import androidx.compose.foundation.MutatorMutex;
import androidx.glance.session.SessionWorker$doWork$2$2;
import coil3.intercept.EngineInterceptor$intercept$2;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.CancellableContinuationImpl;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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
        SessionWorker$doWork$2$2 sessionWorker$doWork$2$2 = new SessionWorker$doWork$2$2(this, new TooltipStateImpl$show$cancellableShow$1(0, this, continuation), mutatePriority, continuation, 1);
        MutatorMutex mutatorMutex = this.mutatorMutex;
        mutatorMutex.getClass();
        Object coroutineScope = AwaitKt.coroutineScope(new EngineInterceptor$intercept$2(mutatePriority, mutatorMutex, sessionWorker$doWork$2$2, continuation, 2), suspendLambda);
        return coroutineScope == CoroutineSingletons.COROUTINE_SUSPENDED ? coroutineScope : Unit.INSTANCE;
    }
}
