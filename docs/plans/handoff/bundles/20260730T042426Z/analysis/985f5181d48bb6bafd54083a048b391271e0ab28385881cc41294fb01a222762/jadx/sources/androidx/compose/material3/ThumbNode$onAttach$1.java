package androidx.compose.material3;

import androidx.compose.foundation.interaction.Interaction;
import androidx.compose.foundation.interaction.PressInteraction;
import androidx.compose.ui.node.LayoutModifierNodeKt;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$IntRef;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;

/* compiled from: Switch.kt */
/* loaded from: classes.dex */
final class ThumbNode$onAttach$1 extends SuspendLambda implements Function2 {
    int label;
    final /* synthetic */ ThumbNode this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ThumbNode$onAttach$1(ThumbNode thumbNode, Continuation continuation) {
        super(2, continuation);
        this.this$0 = thumbNode;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ThumbNode$onAttach$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
        return ((ThumbNode$onAttach$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            final Ref$IntRef ref$IntRef = new Ref$IntRef();
            Flow interactions = this.this$0.getInteractionSource().getInteractions();
            final ThumbNode thumbNode = this.this$0;
            FlowCollector flowCollector = new FlowCollector() { // from class: androidx.compose.material3.ThumbNode$onAttach$1.1
                @Override // kotlinx.coroutines.flow.FlowCollector
                public final Object emit(Interaction interaction, Continuation continuation) {
                    boolean z;
                    if (interaction instanceof PressInteraction.Press) {
                        Ref$IntRef.this.element++;
                    } else if (interaction instanceof PressInteraction.Release) {
                        Ref$IntRef ref$IntRef2 = Ref$IntRef.this;
                        ref$IntRef2.element--;
                    } else if (interaction instanceof PressInteraction.Cancel) {
                        Ref$IntRef ref$IntRef3 = Ref$IntRef.this;
                        ref$IntRef3.element--;
                    }
                    boolean z2 = Ref$IntRef.this.element > 0;
                    z = thumbNode.isPressed;
                    if (z != z2) {
                        thumbNode.isPressed = z2;
                        LayoutModifierNodeKt.invalidateMeasurement(thumbNode);
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
