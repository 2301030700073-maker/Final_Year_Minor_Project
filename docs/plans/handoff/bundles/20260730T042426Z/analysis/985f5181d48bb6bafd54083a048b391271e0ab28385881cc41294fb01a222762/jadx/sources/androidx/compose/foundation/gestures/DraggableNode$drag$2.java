package androidx.compose.foundation.gestures;

import androidx.compose.foundation.gestures.DragEvent;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* compiled from: Draggable.kt */
/* loaded from: classes.dex */
final class DraggableNode$drag$2 extends SuspendLambda implements Function2 {
    final /* synthetic */ Function2 $forEachDelta;
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ DraggableNode this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DraggableNode$drag$2(Function2 function2, DraggableNode draggableNode, Continuation continuation) {
        super(2, continuation);
        this.$forEachDelta = function2;
        this.this$0 = draggableNode;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        DraggableNode$drag$2 draggableNode$drag$2 = new DraggableNode$drag$2(this.$forEachDelta, this.this$0, continuation);
        draggableNode$drag$2.L$0 = obj;
        return draggableNode$drag$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(DragScope dragScope, Continuation continuation) {
        return ((DraggableNode$drag$2) create(dragScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            final DragScope dragScope = (DragScope) this.L$0;
            Function2 function2 = this.$forEachDelta;
            final DraggableNode draggableNode = this.this$0;
            Function1 function1 = new Function1() { // from class: androidx.compose.foundation.gestures.DraggableNode$drag$2.1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Object invoke(Object obj2) {
                    invoke((DragEvent.DragDelta) obj2);
                    return Unit.INSTANCE;
                }

                public final void invoke(DragEvent.DragDelta dragDelta) {
                    long m204reverseIfNeededMKHz9U;
                    Orientation orientation;
                    float m197toFloat3MmeM6k;
                    DragScope dragScope2 = DragScope.this;
                    m204reverseIfNeededMKHz9U = draggableNode.m204reverseIfNeededMKHz9U(dragDelta.m179getDeltaF1C5BW0());
                    orientation = draggableNode.orientation;
                    m197toFloat3MmeM6k = DraggableKt.m197toFloat3MmeM6k(m204reverseIfNeededMKHz9U, orientation);
                    dragScope2.dragBy(m197toFloat3MmeM6k);
                }
            };
            this.label = 1;
            if (function2.invoke(function1, this) == coroutine_suspended) {
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
