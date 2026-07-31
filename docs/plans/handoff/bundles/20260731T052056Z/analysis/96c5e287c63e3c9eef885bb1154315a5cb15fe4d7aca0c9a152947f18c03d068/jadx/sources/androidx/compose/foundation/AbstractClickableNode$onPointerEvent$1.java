package androidx.compose.foundation;

import androidx.compose.foundation.interaction.HoverInteraction$Enter;
import androidx.compose.foundation.interaction.HoverInteraction$Exit;
import androidx.compose.foundation.interaction.MutableInteractionSourceImpl;
import androidx.datastore.core.SimpleActor$offer$2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class AbstractClickableNode$onPointerEvent$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ AbstractClickableNode this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ AbstractClickableNode$onPointerEvent$1(AbstractClickableNode abstractClickableNode, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.this$0 = abstractClickableNode;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        AbstractClickableNode abstractClickableNode = this.this$0;
        switch (i) {
            case 0:
                return new AbstractClickableNode$onPointerEvent$1(abstractClickableNode, continuation, 0);
            default:
                return new AbstractClickableNode$onPointerEvent$1(abstractClickableNode, continuation, 1);
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        CoroutineScope coroutineScope = (CoroutineScope) obj;
        Continuation continuation = (Continuation) obj2;
        switch (i) {
            case 0:
                ((AbstractClickableNode$onPointerEvent$1) create(coroutineScope, continuation)).invokeSuspend(unit);
                break;
            default:
                ((AbstractClickableNode$onPointerEvent$1) create(coroutineScope, continuation)).invokeSuspend(unit);
                break;
        }
        return unit;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Continuation continuation = null;
        AbstractClickableNode abstractClickableNode = this.this$0;
        int i2 = 3;
        switch (i) {
            case 0:
                ResultKt.throwOnFailure(obj);
                if (abstractClickableNode.hoverInteraction == null) {
                    HoverInteraction$Enter hoverInteraction$Enter = new HoverInteraction$Enter();
                    MutableInteractionSourceImpl mutableInteractionSourceImpl = abstractClickableNode.interactionSource;
                    if (mutableInteractionSourceImpl != null) {
                        AwaitKt.launch$default(abstractClickableNode.getCoroutineScope(), null, null, new SimpleActor$offer$2(mutableInteractionSourceImpl, hoverInteraction$Enter, continuation, 2), 3);
                    }
                    abstractClickableNode.hoverInteraction = hoverInteraction$Enter;
                    break;
                }
                break;
            default:
                ResultKt.throwOnFailure(obj);
                HoverInteraction$Enter hoverInteraction$Enter2 = abstractClickableNode.hoverInteraction;
                if (hoverInteraction$Enter2 != null) {
                    HoverInteraction$Exit hoverInteraction$Exit = new HoverInteraction$Exit(hoverInteraction$Enter2);
                    MutableInteractionSourceImpl mutableInteractionSourceImpl2 = abstractClickableNode.interactionSource;
                    if (mutableInteractionSourceImpl2 != null) {
                        AwaitKt.launch$default(abstractClickableNode.getCoroutineScope(), null, null, new SimpleActor$offer$2(mutableInteractionSourceImpl2, hoverInteraction$Exit, continuation, i2), 3);
                    }
                    abstractClickableNode.hoverInteraction = null;
                    break;
                }
                break;
        }
        return unit;
    }
}
