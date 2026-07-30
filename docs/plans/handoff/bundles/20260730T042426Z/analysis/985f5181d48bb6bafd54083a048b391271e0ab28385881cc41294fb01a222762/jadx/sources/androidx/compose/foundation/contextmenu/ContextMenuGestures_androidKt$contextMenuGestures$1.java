package androidx.compose.foundation.contextmenu;

import androidx.compose.foundation.contextmenu.ContextMenuState;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.PointerInputScope;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* compiled from: ContextMenuGestures.android.kt */
/* loaded from: classes.dex */
final class ContextMenuGestures_androidKt$contextMenuGestures$1 extends SuspendLambda implements Function2 {
    final /* synthetic */ ContextMenuState $state;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ContextMenuGestures_androidKt$contextMenuGestures$1(ContextMenuState contextMenuState, Continuation continuation) {
        super(2, continuation);
        this.$state = contextMenuState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        ContextMenuGestures_androidKt$contextMenuGestures$1 contextMenuGestures_androidKt$contextMenuGestures$1 = new ContextMenuGestures_androidKt$contextMenuGestures$1(this.$state, continuation);
        contextMenuGestures_androidKt$contextMenuGestures$1.L$0 = obj;
        return contextMenuGestures_androidKt$contextMenuGestures$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
        return ((ContextMenuGestures_androidKt$contextMenuGestures$1) create(pointerInputScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            PointerInputScope pointerInputScope = (PointerInputScope) this.L$0;
            final ContextMenuState contextMenuState = this.$state;
            Function1 function1 = new Function1() { // from class: androidx.compose.foundation.contextmenu.ContextMenuGestures_androidKt$contextMenuGestures$1.1
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Object invoke(Object obj2) {
                    m153invokek4lQ0M(((Offset) obj2).m1176unboximpl());
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke-k-4lQ0M, reason: not valid java name */
                public final void m153invokek4lQ0M(long j) {
                    ContextMenuState.this.setStatus(new ContextMenuState.Status.Open(j, null));
                }
            };
            this.label = 1;
            if (ContextMenuGestures_androidKt.onRightClickDown(pointerInputScope, function1, this) == coroutine_suspended) {
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
