package androidx.compose.foundation;

import androidx.compose.foundation.gestures.PressGestureScope;
import androidx.compose.ui.geometry.Offset;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;

/* compiled from: Clickable.kt */
/* loaded from: classes.dex */
final class ClickableNode$clickPointerInput$2 extends SuspendLambda implements Function3 {
    /* synthetic */ long J$0;
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ ClickableNode this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ClickableNode$clickPointerInput$2(ClickableNode clickableNode, Continuation continuation) {
        super(3, continuation);
        this.this$0 = clickableNode;
    }

    @Override // kotlin.jvm.functions.Function3
    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3) {
        return m123invoked4ec7I((PressGestureScope) obj, ((Offset) obj2).m1176unboximpl(), (Continuation) obj3);
    }

    /* renamed from: invoke-d-4ec7I, reason: not valid java name */
    public final Object m123invoked4ec7I(PressGestureScope pressGestureScope, long j, Continuation continuation) {
        ClickableNode$clickPointerInput$2 clickableNode$clickPointerInput$2 = new ClickableNode$clickPointerInput$2(this.this$0, continuation);
        clickableNode$clickPointerInput$2.L$0 = pressGestureScope;
        clickableNode$clickPointerInput$2.J$0 = j;
        return clickableNode$clickPointerInput$2.invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            PressGestureScope pressGestureScope = (PressGestureScope) this.L$0;
            long j = this.J$0;
            if (this.this$0.getEnabled()) {
                ClickableNode clickableNode = this.this$0;
                this.label = 1;
                if (clickableNode.m85handlePressInteractiond4ec7I(pressGestureScope, j, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
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
