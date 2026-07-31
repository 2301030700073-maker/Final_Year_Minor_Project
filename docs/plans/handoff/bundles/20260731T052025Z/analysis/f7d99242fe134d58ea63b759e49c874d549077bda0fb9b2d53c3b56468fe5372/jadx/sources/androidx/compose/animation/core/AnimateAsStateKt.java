package androidx.compose.animation.core;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.State;
import androidx.compose.ui.unit.Dp;
import java.util.Map;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class AnimateAsStateKt {
    public static final SpringSpec defaultAnimation = ArcSplineKt.spring$default(0.0f, 0.0f, null, 7);
    public static final SpringSpec dpDefaultSpring;

    static {
        Map map = VisibilityThresholdsKt.VisibilityThresholdMap;
        dpDefaultSpring = ArcSplineKt.spring$default(0.0f, 0.0f, new Dp(0.4f), 3);
        Float.floatToRawIntBits(1.0f);
        Float.floatToRawIntBits(1.0f);
        Float.floatToRawIntBits(1.0f);
        Float.floatToRawIntBits(1.0f);
    }

    /* renamed from: animateDpAsState-AjpBEmI, reason: not valid java name */
    public static final State m111animateDpAsStateAjpBEmI(float f, SpringSpec springSpec, Composer composer, int i, int i2) {
        if ((i2 & 2) != 0) {
            springSpec = dpDefaultSpring;
        }
        return animateValueAsState(new Dp(f), ArcSplineKt.DpToVector, springSpec, null, (i2 & 4) != 0 ? "DpAnimation" : "BottomBarElevation", composer, (i << 6) & 57344, 8);
    }

    public static final State animateFloatAsState(float f, FiniteAnimationSpec finiteAnimationSpec, String str, Composer composer, int i, int i2) {
        FiniteAnimationSpec finiteAnimationSpec2;
        int i3 = i2 & 2;
        SpringSpec springSpec = defaultAnimation;
        if (i3 != 0) {
            finiteAnimationSpec = springSpec;
        }
        if ((i2 & 8) != 0) {
            str = "FloatAnimation";
        }
        String str2 = str;
        if (finiteAnimationSpec == springSpec) {
            GapComposer gapComposer = (GapComposer) composer;
            gapComposer.startReplaceGroup(1144115775);
            boolean changed = gapComposer.changed(0.01f);
            Object rememberedValue = gapComposer.rememberedValue();
            if (changed || rememberedValue == Composer.Companion.Empty) {
                rememberedValue = ArcSplineKt.spring$default(0.0f, 0.0f, Float.valueOf(0.01f), 3);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            gapComposer.end(false);
            finiteAnimationSpec2 = (SpringSpec) rememberedValue;
        } else {
            GapComposer gapComposer2 = (GapComposer) composer;
            gapComposer2.startReplaceGroup(1144225701);
            gapComposer2.end(false);
            finiteAnimationSpec2 = finiteAnimationSpec;
        }
        return animateValueAsState(Float.valueOf(f), ArcSplineKt.FloatToVector, finiteAnimationSpec2, null, str2, composer, (i << 3) & 57344, 0);
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:31:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final androidx.compose.runtime.State animateValueAsState(java.lang.Object r12, androidx.compose.animation.core.TwoWayConverterImpl r13, androidx.compose.animation.core.AnimationSpec r14, java.lang.Float r15, java.lang.String r16, androidx.compose.runtime.Composer r17, int r18, int r19) {
        /*
            r2 = 8
            r3 = r19 & 8
            r4 = 0
            if (r3 == 0) goto L9
            r3 = r4
            goto La
        L9:
            r3 = r15
        La:
            r5 = r17
            androidx.compose.runtime.GapComposer r5 = (androidx.compose.runtime.GapComposer) r5
            java.lang.Object r6 = r5.rememberedValue()
            androidx.compose.runtime.NeverEqualPolicy r7 = androidx.compose.runtime.Composer.Companion.Empty
            if (r6 != r7) goto L1d
            androidx.compose.runtime.ParcelableSnapshotMutableState r6 = androidx.compose.runtime.Updater.mutableStateOf$default(r4)
            r5.updateRememberedValue(r6)
        L1d:
            androidx.compose.runtime.MutableState r6 = (androidx.compose.runtime.MutableState) r6
            java.lang.Object r8 = r5.rememberedValue()
            if (r8 != r7) goto L2d
            androidx.compose.animation.core.Animatable r8 = new androidx.compose.animation.core.Animatable
            r8.<init>(r12, r13, r3)
            r5.updateRememberedValue(r8)
        L2d:
            androidx.compose.animation.core.Animatable r8 = (androidx.compose.animation.core.Animatable) r8
            androidx.compose.runtime.MutableState r9 = androidx.compose.runtime.Updater.rememberUpdatedState(r4, r5)
            if (r3 == 0) goto L4e
            boolean r10 = r14 instanceof androidx.compose.animation.core.SpringSpec
            if (r10 == 0) goto L4e
            r10 = r14
            androidx.compose.animation.core.SpringSpec r10 = (androidx.compose.animation.core.SpringSpec) r10
            java.lang.Object r11 = r10.visibilityThreshold
            boolean r11 = kotlin.jvm.internal.Intrinsics.areEqual(r11, r3)
            if (r11 != 0) goto L4e
            float r1 = r10.dampingRatio
            float r10 = r10.stiffness
            androidx.compose.animation.core.SpringSpec r11 = new androidx.compose.animation.core.SpringSpec
            r11.<init>(r1, r10, r3)
            goto L4f
        L4e:
            r11 = r14
        L4f:
            androidx.compose.runtime.MutableState r1 = androidx.compose.runtime.Updater.rememberUpdatedState(r11, r5)
            java.lang.Object r3 = r5.rememberedValue()
            if (r3 != r7) goto L62
            r3 = -1
            r10 = 6
            kotlinx.coroutines.channels.BufferedChannel r3 = okhttp3.Cookie.Companion.Channel$default(r3, r4, r4, r10)
            r5.updateRememberedValue(r3)
        L62:
            kotlinx.coroutines.channels.Channel r3 = (kotlinx.coroutines.channels.Channel) r3
            boolean r4 = r5.changedInstance(r3)
            boolean r10 = r5.changedInstance(r12)
            r4 = r4 | r10
            java.lang.Object r10 = r5.rememberedValue()
            if (r4 != 0) goto L75
            if (r10 != r7) goto L7d
        L75:
            androidx.compose.runtime.Recomposer$$ExternalSyntheticLambda6 r10 = new androidx.compose.runtime.Recomposer$$ExternalSyntheticLambda6
            r10.<init>(r2, r3, r12)
            r5.updateRememberedValue(r10)
        L7d:
            kotlin.jvm.functions.Function0 r10 = (kotlin.jvm.functions.Function0) r10
            androidx.compose.runtime.Updater.SideEffect(r10, r5)
            boolean r0 = r5.changedInstance(r3)
            boolean r2 = r5.changedInstance(r8)
            r0 = r0 | r2
            boolean r2 = r5.changed(r1)
            r0 = r0 | r2
            boolean r2 = r5.changed(r9)
            r0 = r0 | r2
            java.lang.Object r2 = r5.rememberedValue()
            if (r0 != 0) goto L9d
            if (r2 != r7) goto Lb2
        L9d:
            androidx.compose.animation.core.MutatorMutex$mutate$2 r0 = new androidx.compose.animation.core.MutatorMutex$mutate$2
            r2 = 0
            r4 = 4
            r12 = r0
            r15 = r1
            r17 = r2
            r13 = r3
            r18 = r4
            r14 = r8
            r16 = r9
            r12.<init>(r13, r14, r15, r16, r17, r18)
            r2 = r12
            r5.updateRememberedValue(r2)
        Lb2:
            kotlin.jvm.functions.Function2 r2 = (kotlin.jvm.functions.Function2) r2
            androidx.compose.runtime.Updater.LaunchedEffect(r5, r3, r2)
            java.lang.Object r0 = r6.getValue()
            androidx.compose.runtime.State r0 = (androidx.compose.runtime.State) r0
            if (r0 != 0) goto Lc1
            androidx.compose.animation.core.AnimationState r0 = r8.internalState
        Lc1:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.animation.core.AnimateAsStateKt.animateValueAsState(java.lang.Object, androidx.compose.animation.core.TwoWayConverterImpl, androidx.compose.animation.core.AnimationSpec, java.lang.Float, java.lang.String, androidx.compose.runtime.Composer, int, int):androidx.compose.runtime.State");
    }
}
