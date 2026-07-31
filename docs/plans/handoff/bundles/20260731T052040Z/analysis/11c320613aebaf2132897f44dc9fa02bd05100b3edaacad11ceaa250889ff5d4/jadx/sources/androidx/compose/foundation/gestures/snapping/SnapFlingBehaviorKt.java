package androidx.compose.foundation.gestures.snapping;

import androidx.compose.animation.core.AnimationScope;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.gestures.ScrollScope;
import androidx.compose.foundation.pager.PagerState;
import java.util.concurrent.CancellationException;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class SnapFlingBehaviorKt {
    /* JADX WARN: Removed duplicated region for block: B:15:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x001f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object access$animateDecay(androidx.compose.foundation.gestures.ScrollScope r9, float r10, androidx.compose.animation.core.AnimationState r11, androidx.compose.animation.core.DecayAnimationSpecImpl r12, kotlin.jvm.functions.Function1 r13, kotlin.coroutines.jvm.internal.ContinuationImpl r14) {
        /*
            boolean r0 = r14 instanceof androidx.compose.foundation.gestures.snapping.SnapFlingBehaviorKt$animateDecay$1
            if (r0 == 0) goto L13
            r0 = r14
            androidx.compose.foundation.gestures.snapping.SnapFlingBehaviorKt$animateDecay$1 r0 = (androidx.compose.foundation.gestures.snapping.SnapFlingBehaviorKt$animateDecay$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.compose.foundation.gestures.snapping.SnapFlingBehaviorKt$animateDecay$1 r0 = new androidx.compose.foundation.gestures.snapping.SnapFlingBehaviorKt$animateDecay$1
            r0.<init>(r14)
        L18:
            java.lang.Object r14 = r0.result
            int r1 = r0.label
            r2 = 1
            if (r1 == 0) goto L36
            if (r1 != r2) goto L2f
            float r10 = r0.F$0
            java.lang.Object r9 = r0.L$1
            kotlin.jvm.internal.Ref$FloatRef r9 = (kotlin.jvm.internal.Ref$FloatRef) r9
            java.lang.Object r11 = r0.L$0
            androidx.compose.animation.core.AnimationState r11 = (androidx.compose.animation.core.AnimationState) r11
            kotlin.ResultKt.throwOnFailure(r14)
            goto L6d
        L2f:
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1.m$2(r9)
            r9 = 0
            return r9
        L36:
            kotlin.ResultKt.throwOnFailure(r14)
            kotlin.jvm.internal.Ref$FloatRef r5 = new kotlin.jvm.internal.Ref$FloatRef
            r5.<init>()
            java.lang.Object r14 = r11.getVelocity()
            java.lang.Number r14 = (java.lang.Number) r14
            float r14 = r14.floatValue()
            r1 = 0
            int r14 = (r14 > r1 ? 1 : (r14 == r1 ? 0 : -1))
            if (r14 != 0) goto L4f
            r14 = r2
            goto L50
        L4f:
            r14 = 0
        L50:
            r14 = r14 ^ r2
            androidx.compose.foundation.gestures.snapping.SnapFlingBehaviorKt$$ExternalSyntheticLambda0 r3 = new androidx.compose.foundation.gestures.snapping.SnapFlingBehaviorKt$$ExternalSyntheticLambda0
            r8 = 0
            r6 = r9
            r4 = r10
            r7 = r13
            r3.<init>(r4, r5, r6, r7, r8)
            r0.L$0 = r11
            r0.L$1 = r5
            r0.F$0 = r4
            r0.label = r2
            java.lang.Object r9 = androidx.compose.animation.core.ArcSplineKt.animateDecay(r11, r12, r14, r3, r0)
            kotlin.coroutines.intrinsics.CoroutineSingletons r10 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r9 != r10) goto L6b
            return r10
        L6b:
            r10 = r4
            r9 = r5
        L6d:
            androidx.compose.foundation.gestures.snapping.AnimationResult r12 = new androidx.compose.foundation.gestures.snapping.AnimationResult
            float r9 = r9.element
            float r10 = r10 - r9
            java.lang.Float r9 = new java.lang.Float
            r9.<init>(r10)
            r12.<init>(r9, r11)
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.snapping.SnapFlingBehaviorKt.access$animateDecay(androidx.compose.foundation.gestures.ScrollScope, float, androidx.compose.animation.core.AnimationState, androidx.compose.animation.core.DecayAnimationSpecImpl, kotlin.jvm.functions.Function1, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0026  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object access$animateWithTarget(androidx.compose.foundation.gestures.ScrollScope r16, float r17, float r18, androidx.compose.animation.core.AnimationState r19, androidx.compose.animation.core.SpringSpec r20, kotlin.jvm.functions.Function1 r21, kotlin.coroutines.jvm.internal.ContinuationImpl r22) {
        /*
            r0 = r17
            r1 = r22
            boolean r2 = r1 instanceof androidx.compose.foundation.gestures.snapping.SnapFlingBehaviorKt$animateWithTarget$1
            if (r2 == 0) goto L18
            r2 = r1
            androidx.compose.foundation.gestures.snapping.SnapFlingBehaviorKt$animateWithTarget$1 r2 = (androidx.compose.foundation.gestures.snapping.SnapFlingBehaviorKt$animateWithTarget$1) r2
            int r3 = r2.label
            r4 = -2147483648(0xffffffff80000000, float:-0.0)
            r5 = r3 & r4
            if (r5 == 0) goto L18
            int r3 = r3 - r4
            r2.label = r3
        L16:
            r8 = r2
            goto L1e
        L18:
            androidx.compose.foundation.gestures.snapping.SnapFlingBehaviorKt$animateWithTarget$1 r2 = new androidx.compose.foundation.gestures.snapping.SnapFlingBehaviorKt$animateWithTarget$1
            r2.<init>(r1)
            goto L16
        L1e:
            java.lang.Object r1 = r8.result
            int r2 = r8.label
            r9 = 0
            r3 = 1
            if (r2 == 0) goto L41
            if (r2 != r3) goto L3a
            float r0 = r8.F$1
            float r2 = r8.F$0
            java.lang.Object r3 = r8.L$1
            kotlin.jvm.internal.Ref$FloatRef r3 = (kotlin.jvm.internal.Ref$FloatRef) r3
            java.lang.Object r4 = r8.L$0
            androidx.compose.animation.core.AnimationState r4 = (androidx.compose.animation.core.AnimationState) r4
            kotlin.ResultKt.throwOnFailure(r1)
            r1 = r0
            r0 = r2
            goto L93
        L3a:
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1.m$2(r0)
            r0 = 0
            return r0
        L41:
            kotlin.ResultKt.throwOnFailure(r1)
            kotlin.jvm.internal.Ref$FloatRef r12 = new kotlin.jvm.internal.Ref$FloatRef
            r12.<init>()
            java.lang.Object r1 = r19.getVelocity()
            java.lang.Number r1 = (java.lang.Number) r1
            float r1 = r1.floatValue()
            java.lang.Float r4 = new java.lang.Float
            r4.<init>(r0)
            java.lang.Object r2 = r19.getVelocity()
            java.lang.Number r2 = (java.lang.Number) r2
            float r2 = r2.floatValue()
            int r2 = (r2 > r9 ? 1 : (r2 == r9 ? 0 : -1))
            if (r2 != 0) goto L68
            r2 = r3
            goto L69
        L68:
            r2 = 0
        L69:
            r6 = r2 ^ 1
            androidx.compose.foundation.gestures.snapping.SnapFlingBehaviorKt$$ExternalSyntheticLambda0 r10 = new androidx.compose.foundation.gestures.snapping.SnapFlingBehaviorKt$$ExternalSyntheticLambda0
            r15 = 1
            r13 = r16
            r11 = r18
            r14 = r21
            r10.<init>(r11, r12, r13, r14, r15)
            r2 = r19
            r8.L$0 = r2
            r8.L$1 = r12
            r8.F$0 = r0
            r8.F$1 = r1
            r8.label = r3
            r5 = r20
            r3 = r2
            r7 = r10
            java.lang.Object r2 = androidx.compose.animation.core.ArcSplineKt.animateTo(r3, r4, r5, r6, r7, r8)
            kotlin.coroutines.intrinsics.CoroutineSingletons r3 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r2 != r3) goto L90
            return r3
        L90:
            r4 = r19
            r3 = r12
        L93:
            java.lang.Object r2 = r4.getVelocity()
            java.lang.Number r2 = (java.lang.Number) r2
            float r2 = r2.floatValue()
            float r1 = coerceToTarget(r2, r1)
            androidx.compose.foundation.gestures.snapping.AnimationResult r2 = new androidx.compose.foundation.gestures.snapping.AnimationResult
            float r3 = r3.element
            float r0 = r0 - r3
            java.lang.Float r3 = new java.lang.Float
            r3.<init>(r0)
            r0 = 29
            androidx.compose.animation.core.AnimationState r0 = androidx.compose.animation.core.ArcSplineKt.copy$default(r4, r9, r1, r0)
            r2.<init>(r3, r0)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.snapping.SnapFlingBehaviorKt.access$animateWithTarget(androidx.compose.foundation.gestures.ScrollScope, float, float, androidx.compose.animation.core.AnimationState, androidx.compose.animation.core.SpringSpec, kotlin.jvm.functions.Function1, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public static final void animateDecay$consumeDelta(AnimationScope animationScope, ScrollScope scrollScope, Function1 function1, float f) {
        float f2;
        try {
            f2 = scrollScope.scrollBy(f);
        } catch (CancellationException unused) {
            animationScope.cancelAnimation();
            f2 = 0.0f;
        }
        function1.invoke(Float.valueOf(f2));
        if (Math.abs(f - f2) > 0.5f) {
            animationScope.cancelAnimation();
        }
    }

    public static final float coerceToTarget(float f, float f2) {
        if (f2 == 0.0f) {
            return 0.0f;
        }
        return (f2 <= 0.0f ? f >= f2 : f <= f2) ? f : f2;
    }

    public static final float dragGestureDelta(PagerState pagerState) {
        return pagerState.getLayoutInfo().orientation == Orientation.Horizontal ? Float.intBitsToFloat((int) (pagerState.m113getUpDownDifferenceF1C5BW0$foundation() >> 32)) : Float.intBitsToFloat((int) (pagerState.m113getUpDownDifferenceF1C5BW0$foundation() & 4294967295L));
    }

    public static final boolean isScrollingForward(PagerState pagerState, float f) {
        pagerState.getLayoutInfo().getClass();
        return !(((pagerState.isNotGestureAction$foundation() ? -f : dragGestureDelta(pagerState)) > 0.0f ? 1 : ((pagerState.isNotGestureAction$foundation() ? -f : dragGestureDelta(pagerState)) == 0.0f ? 0 : -1)) > 0);
    }
}
