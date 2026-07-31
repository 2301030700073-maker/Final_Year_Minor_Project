package androidx.compose.material3.internal;

import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.ArcSplineKt;
import androidx.compose.material3.SheetState;
import androidx.compose.material3.SheetState$animateTo$2$$ExternalSyntheticLambda0;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Ref$FloatRef;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AnchoredDraggableKt$animateTo$2 extends SuspendLambda implements Function4 {
    public final /* synthetic */ AnchoredDraggableState $this_animateTo;
    public final /* synthetic */ float $velocity;
    public /* synthetic */ AnchoredDraggableState$anchoredDragScope$1 L$0;
    public /* synthetic */ MapDraggableAnchors L$1;
    public /* synthetic */ Object L$2;
    public int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AnchoredDraggableKt$animateTo$2(AnchoredDraggableState anchoredDraggableState, float f, Continuation continuation) {
        super(4, continuation);
        this.$this_animateTo = anchoredDraggableState;
        this.$velocity = f;
    }

    @Override // kotlin.jvm.functions.Function4
    public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
        AnchoredDraggableKt$animateTo$2 anchoredDraggableKt$animateTo$2 = new AnchoredDraggableKt$animateTo$2(this.$this_animateTo, this.$velocity, (Continuation) obj4);
        anchoredDraggableKt$animateTo$2.L$0 = (AnchoredDraggableState$anchoredDragScope$1) obj;
        anchoredDraggableKt$animateTo$2.L$1 = (MapDraggableAnchors) obj2;
        anchoredDraggableKt$animateTo$2.L$2 = obj3;
        return anchoredDraggableKt$animateTo$2.invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            AnchoredDraggableState$anchoredDragScope$1 anchoredDraggableState$anchoredDragScope$1 = this.L$0;
            float positionOf = this.L$1.positionOf(this.L$2);
            if (!Float.isNaN(positionOf)) {
                Ref$FloatRef ref$FloatRef = new Ref$FloatRef();
                AnchoredDraggableState anchoredDraggableState = this.$this_animateTo;
                float floatValue = Float.isNaN(anchoredDraggableState.offset$delegate.getFloatValue()) ? 0.0f : anchoredDraggableState.offset$delegate.getFloatValue();
                ref$FloatRef.element = floatValue;
                AnimationSpec animationSpec = ((SheetState) anchoredDraggableState.animationSpec.f$0).anchoredDraggableMotionSpec;
                SheetState$animateTo$2$$ExternalSyntheticLambda0 sheetState$animateTo$2$$ExternalSyntheticLambda0 = new SheetState$animateTo$2$$ExternalSyntheticLambda0(anchoredDraggableState$anchoredDragScope$1, ref$FloatRef, 1);
                this.L$0 = null;
                this.L$1 = null;
                this.label = 1;
                Object animate = ArcSplineKt.animate(floatValue, positionOf, this.$velocity, animationSpec, sheetState$animateTo$2$$ExternalSyntheticLambda0, this);
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                if (animate == coroutineSingletons) {
                    return coroutineSingletons;
                }
            }
        } else {
            if (i != 1) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.throwOnFailure(obj);
        }
        return Unit.INSTANCE;
    }
}
