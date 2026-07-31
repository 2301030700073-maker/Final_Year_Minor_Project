package androidx.compose.foundation.gestures;

import androidx.compose.foundation.gestures.DragEvent;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ScrollableNode$onDragStopped$1 extends SuspendLambda implements Function2 {
    final /* synthetic */ DragEvent.DragStopped $event;
    int label;
    final /* synthetic */ ScrollableNode this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ScrollableNode$onDragStopped$1(DragEvent.DragStopped dragStopped, ScrollableNode scrollableNode, Continuation continuation) {
        super(2, continuation);
        this.$event = dragStopped;
        this.this$0 = scrollableNode;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ScrollableNode$onDragStopped$1(this.$event, this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ScrollableNode$onDragStopped$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            DragEvent.DragStopped dragStopped = this.$event;
            float f = dragStopped.isIndirectPointerEvent ? -1.0f : 1.0f;
            ScrollingLogic scrollingLogic = this.this$0.scrollingLogic;
            long j = dragStopped.velocity;
            float intBitsToFloat = Float.intBitsToFloat((int) (j >> 32)) * f;
            float intBitsToFloat2 = Float.intBitsToFloat((int) (j & 4294967295L)) * f;
            long floatToRawIntBits = Float.floatToRawIntBits(intBitsToFloat);
            long floatToRawIntBits2 = Float.floatToRawIntBits(intBitsToFloat2);
            this.label = 1;
            Object m71onScrollStoppedBMRW4eQ = scrollingLogic.m71onScrollStoppedBMRW4eQ((floatToRawIntBits << 32) | (4294967295L & floatToRawIntBits2), false, this);
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            if (m71onScrollStoppedBMRW4eQ == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i != 1) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$2("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.throwOnFailure(obj);
        }
        return Unit.INSTANCE;
    }
}
