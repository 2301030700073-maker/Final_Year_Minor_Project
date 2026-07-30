package com.bumptech.glide.integration.compose;

import androidx.compose.ui.node.DrawModifierNodeKt;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: GlideModifier.kt */
/* loaded from: classes.dex */
final class GlideNode$maybeAnimate$1 extends SuspendLambda implements Function2 {
    int label;
    final /* synthetic */ GlideNode this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    GlideNode$maybeAnimate$1(GlideNode glideNode, Continuation continuation) {
        super(2, continuation);
        this.this$0 = glideNode;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new GlideNode$maybeAnimate$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
        return ((GlideNode$maybeAnimate$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Transition transition;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            transition = this.this$0.transition;
            final GlideNode glideNode = this.this$0;
            Function0 function0 = new Function0() { // from class: com.bumptech.glide.integration.compose.GlideNode$maybeAnimate$1.1
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Object invoke() {
                    m2597invoke();
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: collision with other method in class */
                public final void m2597invoke() {
                    DrawModifierNodeKt.invalidateDraw(GlideNode.this);
                }
            };
            this.label = 1;
            if (transition.transition(function0, this) == coroutine_suspended) {
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
