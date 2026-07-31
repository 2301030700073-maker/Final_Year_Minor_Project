package androidx.compose.foundation.interaction;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.SharedFlowImpl;
import kotlinx.coroutines.flow.StateFlowKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class MutableInteractionSourceImpl {
    public final SharedFlowImpl interactions = StateFlowKt.MutableSharedFlow$default(16, 1, BufferOverflow.DROP_OLDEST);

    public final Object emit(Interaction interaction, Continuation continuation) {
        Object emit = this.interactions.emit(interaction, continuation);
        return emit == CoroutineSingletons.COROUTINE_SUSPENDED ? emit : Unit.INSTANCE;
    }

    public final void tryEmit(Interaction interaction) {
        this.interactions.tryEmit(interaction);
    }
}
