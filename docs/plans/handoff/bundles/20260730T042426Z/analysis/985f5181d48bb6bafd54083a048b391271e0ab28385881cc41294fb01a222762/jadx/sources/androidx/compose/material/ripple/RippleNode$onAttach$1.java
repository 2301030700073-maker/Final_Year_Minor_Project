package androidx.compose.material.ripple;

import androidx.collection.MutableObjectList;
import androidx.compose.foundation.interaction.Interaction;
import androidx.compose.foundation.interaction.InteractionSource;
import androidx.compose.foundation.interaction.PressInteraction;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;

/* compiled from: Ripple.kt */
/* loaded from: classes.dex */
final class RippleNode$onAttach$1 extends SuspendLambda implements Function2 {
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ RippleNode this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    RippleNode$onAttach$1(RippleNode rippleNode, Continuation continuation) {
        super(2, continuation);
        this.this$0 = rippleNode;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        RippleNode$onAttach$1 rippleNode$onAttach$1 = new RippleNode$onAttach$1(this.this$0, continuation);
        rippleNode$onAttach$1.L$0 = obj;
        return rippleNode$onAttach$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
        return ((RippleNode$onAttach$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        InteractionSource interactionSource;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            final CoroutineScope coroutineScope = (CoroutineScope) this.L$0;
            interactionSource = this.this$0.interactionSource;
            Flow interactions = interactionSource.getInteractions();
            final RippleNode rippleNode = this.this$0;
            FlowCollector flowCollector = new FlowCollector() { // from class: androidx.compose.material.ripple.RippleNode$onAttach$1.1
                @Override // kotlinx.coroutines.flow.FlowCollector
                public final Object emit(Interaction interaction, Continuation continuation) {
                    boolean z;
                    MutableObjectList mutableObjectList;
                    if (interaction instanceof PressInteraction) {
                        z = RippleNode.this.hasValidSize;
                        if (z) {
                            RippleNode.this.handlePressInteraction((PressInteraction) interaction);
                        } else {
                            mutableObjectList = RippleNode.this.pendingInteractions;
                            mutableObjectList.add(interaction);
                        }
                    } else {
                        RippleNode.this.updateStateLayer(interaction, coroutineScope);
                    }
                    return Unit.INSTANCE;
                }
            };
            this.label = 1;
            if (interactions.collect(flowCollector, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        }
        return Unit.INSTANCE;
    }
}
