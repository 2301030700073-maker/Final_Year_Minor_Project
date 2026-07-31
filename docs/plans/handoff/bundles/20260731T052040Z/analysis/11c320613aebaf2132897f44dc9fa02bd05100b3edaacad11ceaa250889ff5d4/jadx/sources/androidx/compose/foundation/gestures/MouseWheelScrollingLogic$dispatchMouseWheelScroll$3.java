package androidx.compose.foundation.gestures;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$FloatRef;
import kotlin.jvm.internal.Ref$ObjectRef;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class MouseWheelScrollingLogic$dispatchMouseWheelScroll$3 extends SuspendLambda implements Function2 {
    final /* synthetic */ Ref$ObjectRef $animationState;
    final /* synthetic */ float $speed;
    final /* synthetic */ Ref$ObjectRef $targetScrollDelta;
    final /* synthetic */ Ref$FloatRef $targetValue;
    final /* synthetic */ ScrollingLogic $this_dispatchMouseWheelScroll;
    final /* synthetic */ float $threshold;
    int I$0;
    private /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    int label;
    final /* synthetic */ MouseWheelScrollingLogic this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MouseWheelScrollingLogic$dispatchMouseWheelScroll$3(Ref$FloatRef ref$FloatRef, Ref$ObjectRef ref$ObjectRef, Ref$ObjectRef ref$ObjectRef2, float f, MouseWheelScrollingLogic mouseWheelScrollingLogic, float f2, ScrollingLogic scrollingLogic, Continuation continuation) {
        super(2, continuation);
        this.$targetValue = ref$FloatRef;
        this.$animationState = ref$ObjectRef;
        this.$targetScrollDelta = ref$ObjectRef2;
        this.$threshold = f;
        this.this$0 = mouseWheelScrollingLogic;
        this.$speed = f2;
        this.$this_dispatchMouseWheelScroll = scrollingLogic;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        MouseWheelScrollingLogic$dispatchMouseWheelScroll$3 mouseWheelScrollingLogic$dispatchMouseWheelScroll$3 = new MouseWheelScrollingLogic$dispatchMouseWheelScroll$3(this.$targetValue, this.$animationState, this.$targetScrollDelta, this.$threshold, this.this$0, this.$speed, this.$this_dispatchMouseWheelScroll, continuation);
        mouseWheelScrollingLogic$dispatchMouseWheelScroll$3.L$0 = obj;
        return mouseWheelScrollingLogic$dispatchMouseWheelScroll$3;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((MouseWheelScrollingLogic$dispatchMouseWheelScroll$3) create((ScrollingLogic$nestedScrollScope$1) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0099, code lost:
    
        r2 = java.lang.Math.signum(r2) * r7.$threshold;
        r7.this$0.dispatchMouseWheelScroll(r0, r2);
        r3 = r7.$animationState;
        r4 = (androidx.compose.animation.core.AnimationState) r3.element;
        r3.element = androidx.compose.animation.core.ArcSplineKt.copy$default(r4, ((java.lang.Number) r4.value$delegate.getValue()).floatValue() + r2, 0.0f, 30);
        r2 = kotlin.math.MathKt.roundToInt(java.lang.Math.abs(r7.$targetValue.element - ((java.lang.Number) ((androidx.compose.animation.core.AnimationState) r7.$animationState.element).value$delegate.getValue()).floatValue()) / r7.$speed);
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x00e5, code lost:
    
        if (r2 <= 100) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x00e7, code lost:
    
        r2 = 100;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x00e8, code lost:
    
        r14 = r7.this$0;
        r3 = (androidx.compose.animation.core.AnimationState) r7.$animationState.element;
        r4 = r7.$targetValue;
        r5 = r4.element;
        r17 = new androidx.navigation3.runtime.DecoratedNavEntriesKt$$ExternalSyntheticLambda1(r14, r7.$targetScrollDelta, r4, r7.$this_dispatchMouseWheelScroll, r1, 1);
        r7.L$0 = r0;
        r7.L$1 = r1;
        r7.L$2 = null;
        r7.I$0 = r2;
        r7.label = r10;
        r14.getClass();
        r14 = new kotlin.jvm.internal.Ref$FloatRef();
        r14.element = ((java.lang.Number) r3.value$delegate.getValue()).floatValue();
        r4 = r1;
        r1 = new java.lang.Float(r5);
        r5 = androidx.compose.animation.core.ArcSplineKt.tween$default(r2, r10, androidx.compose.animation.core.EasingKt.LinearEasing);
        r16 = r0;
        r13 = new androidx.navigation3.runtime.DecoratedNavEntriesKt$$ExternalSyntheticLambda3(r14, r14, r16, r17, 3);
        r13 = r16;
        r14 = r7;
        r7 = r2;
        r5 = r14;
        r14 = r4;
        r0 = androidx.compose.animation.core.ArcSplineKt.animateTo(r3, r1, r5, true, r13, r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0152, code lost:
    
        if (r0 != r12) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0154, code lost:
    
        r6 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0155, code lost:
    
        if (r6 != r12) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0159, code lost:
    
        r0 = r7;
     */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x0182 -> B:7:0x0184). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x0191 -> B:8:0x0061). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r21) {
        /*
            Method dump skipped, instructions count: 457
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.MouseWheelScrollingLogic$dispatchMouseWheelScroll$3.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
