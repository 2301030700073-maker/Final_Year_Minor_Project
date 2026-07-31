package androidx.compose.foundation.interaction;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.SharedFlowImpl;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MutableInteractionSourceImpl {
    public final SharedFlowImpl interactions = FlowKt.MutableSharedFlow$default(16, 1, BufferOverflow.DROP_OLDEST);

    public final Object emit(Interaction interaction, Continuation continuation) {
        Object emit = this.interactions.emit(interaction, continuation);
        return emit == CoroutineSingletons.COROUTINE_SUSPENDED ? emit : Unit.INSTANCE;
    }

    public final void tryEmit(Interaction interaction) {
        this.interactions.tryEmit(interaction);
    }
}
