package androidx.compose.material3;

import androidx.compose.animation.core.ArcSplineKt;
import androidx.compose.animation.core.CubicBezierEasing;
import androidx.compose.animation.core.InfiniteTransition;
import androidx.compose.animation.core.KeyframesSpec;
import androidx.compose.foundation.BorderKt$$ExternalSyntheticLambda1;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.internal.AccessibilityUtilKt;
import androidx.compose.material3.tokens.MotionTokens;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.State;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.drawscope.Stroke;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class ProgressIndicatorKt {
    public static final CubicBezierEasing LinearIndeterminateProgressEasing = MotionTokens.EasingEmphasizedAccelerateCubicBezier;
    public static final CubicBezierEasing CircularProgressEasing = MotionTokens.EasingStandardCubicBezier;

    /* JADX WARN: Removed duplicated region for block: B:13:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x01df  */
    /* JADX WARN: Removed duplicated region for block: B:40:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x01cd  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0062  */
    /* renamed from: CircularProgressIndicator-4lLiAd8, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m290CircularProgressIndicator4lLiAd8(androidx.compose.ui.Modifier r29, final long r30, float r32, long r33, int r35, float r36, androidx.compose.runtime.GapComposer r37, final int r38, final int r39) {
        /*
            Method dump skipped, instructions count: 492
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.ProgressIndicatorKt.m290CircularProgressIndicator4lLiAd8(androidx.compose.ui.Modifier, long, float, long, int, float, androidx.compose.runtime.GapComposer, int, int):void");
    }

    /* renamed from: LinearProgressIndicator-rIrjwxo, reason: not valid java name */
    public static final void m291LinearProgressIndicatorrIrjwxo(Modifier modifier, final long j, final long j2, int i, float f, GapComposer gapComposer, int i2) {
        Modifier modifier2;
        int i3;
        float f2;
        float f3;
        int i4;
        Object obj;
        final int i5;
        final float f4;
        GapComposer gapComposer2 = gapComposer;
        Float valueOf = Float.valueOf(1.0f);
        Float valueOf2 = Float.valueOf(RecyclerView.DECELERATION_RATE);
        gapComposer2.startRestartGroup(567589233);
        int i6 = i2 | (gapComposer2.changed(j) ? 32 : 16) | (gapComposer2.changed(j2) ? 256 : 128) | 27648;
        if (gapComposer2.shouldExecute(i6 & 1, (i6 & 9363) != 9362)) {
            gapComposer2.startDefaults();
            if ((i2 & 1) == 0 || gapComposer2.getDefaultsInvalid()) {
                f3 = 4.0f;
                i4 = 1;
            } else {
                gapComposer2.skipToGroupEnd();
                i4 = i;
                f3 = f;
            }
            gapComposer2.endDefaults();
            InfiniteTransition rememberInfiniteTransition = ArcSplineKt.rememberInfiniteTransition(null, gapComposer2, 1);
            KeyframesSpec.KeyframesSpecConfig keyframesSpecConfig = new KeyframesSpec.KeyframesSpecConfig();
            keyframesSpecConfig.durationMillis = 1750;
            KeyframesSpec.KeyframeEntity at = keyframesSpecConfig.at(valueOf2, 0);
            CubicBezierEasing cubicBezierEasing = LinearIndeterminateProgressEasing;
            at.easing = cubicBezierEasing;
            keyframesSpecConfig.at(valueOf, 1000);
            int i7 = i4;
            final InfiniteTransition.TransitionAnimationState animateFloat = ArcSplineKt.animateFloat(rememberInfiniteTransition, RecyclerView.DECELERATION_RATE, 1.0f, ArcSplineKt.m24infiniteRepeatable9IiC70o$default(new KeyframesSpec(keyframesSpecConfig), null, 6), gapComposer2, 4536);
            KeyframesSpec.KeyframesSpecConfig keyframesSpecConfig2 = new KeyframesSpec.KeyframesSpecConfig();
            keyframesSpecConfig2.durationMillis = 1750;
            keyframesSpecConfig2.at(valueOf2, 250).easing = cubicBezierEasing;
            keyframesSpecConfig2.at(valueOf, 1250);
            final InfiniteTransition.TransitionAnimationState animateFloat2 = ArcSplineKt.animateFloat(rememberInfiniteTransition, RecyclerView.DECELERATION_RATE, 1.0f, ArcSplineKt.m24infiniteRepeatable9IiC70o$default(new KeyframesSpec(keyframesSpecConfig2), null, 6), gapComposer, 4536);
            KeyframesSpec.KeyframesSpecConfig keyframesSpecConfig3 = new KeyframesSpec.KeyframesSpecConfig();
            keyframesSpecConfig3.durationMillis = 1750;
            keyframesSpecConfig3.at(valueOf2, 650).easing = cubicBezierEasing;
            keyframesSpecConfig3.at(valueOf, 1500);
            final InfiniteTransition.TransitionAnimationState animateFloat3 = ArcSplineKt.animateFloat(rememberInfiniteTransition, RecyclerView.DECELERATION_RATE, 1.0f, ArcSplineKt.m24infiniteRepeatable9IiC70o$default(new KeyframesSpec(keyframesSpecConfig3), null, 6), gapComposer, 4536);
            KeyframesSpec.KeyframesSpecConfig keyframesSpecConfig4 = new KeyframesSpec.KeyframesSpecConfig();
            keyframesSpecConfig4.durationMillis = 1750;
            keyframesSpecConfig4.at(valueOf2, 900).easing = cubicBezierEasing;
            keyframesSpecConfig4.at(valueOf, 1750);
            gapComposer2 = gapComposer;
            final InfiniteTransition.TransitionAnimationState animateFloat4 = ArcSplineKt.animateFloat(rememberInfiniteTransition, RecyclerView.DECELERATION_RATE, 1.0f, ArcSplineKt.m24infiniteRepeatable9IiC70o$default(new KeyframesSpec(keyframesSpecConfig4), null, 6), gapComposer2, 4536);
            modifier2 = modifier;
            boolean z = true;
            Modifier m146sizeVpY3zN4 = SizeKt.m146sizeVpY3zN4(SemanticsModifierKt.semantics(modifier2.then(AccessibilityUtilKt.IncreaseVerticalSemanticsBounds), true, new BorderKt$$ExternalSyntheticLambda1(26)), 240.0f, 4.0f);
            boolean changed = gapComposer2.changed(animateFloat) | ((((i6 & 896) ^ 384) > 256 && gapComposer2.changed(j2)) || (i6 & 384) == 256) | gapComposer2.changed(animateFloat2);
            if ((((i6 & 112) ^ 48) <= 32 || !gapComposer2.changed(j)) && (i6 & 48) != 32) {
                z = false;
            }
            boolean changed2 = changed | z | gapComposer2.changed(animateFloat3) | gapComposer2.changed(animateFloat4);
            Object rememberedValue = gapComposer2.rememberedValue();
            if (changed2 || rememberedValue == Composer$Companion.Empty) {
                i5 = i7;
                f4 = f3;
                obj = new Function1() { // from class: androidx.compose.material3.ProgressIndicatorKt$$ExternalSyntheticLambda2
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj2) {
                        long j3;
                        DrawScope drawScope = (DrawScope) obj2;
                        float intBitsToFloat = Float.intBitsToFloat((int) (drawScope.mo476getSizeNHjbRc() & 4294967295L));
                        int i8 = i5;
                        float f5 = f4;
                        if (i8 != 0 && Float.intBitsToFloat((int) (4294967295L & drawScope.mo476getSizeNHjbRc())) <= Float.intBitsToFloat((int) (drawScope.mo476getSizeNHjbRc() >> 32))) {
                            f5 += drawScope.mo83toDpu2uoSUM(intBitsToFloat);
                        }
                        float mo83toDpu2uoSUM = f5 / drawScope.mo83toDpu2uoSUM(Float.intBitsToFloat((int) (drawScope.mo476getSizeNHjbRc() >> 32)));
                        State state = animateFloat;
                        float floatValue = ((Number) state.getValue()).floatValue();
                        float f6 = 1.0f - mo83toDpu2uoSUM;
                        long j4 = j2;
                        if (floatValue < f6) {
                            ProgressIndicatorKt.m293drawLinearIndicatorqYKTg0g(drawScope, ((Number) state.getValue()).floatValue() > RecyclerView.DECELERATION_RATE ? ((Number) state.getValue()).floatValue() + mo83toDpu2uoSUM : 0.0f, 1.0f, j4, intBitsToFloat, i8);
                        }
                        long j5 = j4;
                        float floatValue2 = ((Number) state.getValue()).floatValue();
                        State state2 = animateFloat2;
                        float floatValue3 = floatValue2 - ((Number) state2.getValue()).floatValue();
                        long j6 = j;
                        if (floatValue3 > RecyclerView.DECELERATION_RATE) {
                            ProgressIndicatorKt.m293drawLinearIndicatorqYKTg0g(drawScope, ((Number) state.getValue()).floatValue(), ((Number) state2.getValue()).floatValue(), j6, intBitsToFloat, i8);
                            j3 = j6;
                        } else {
                            j3 = j6;
                        }
                        float floatValue4 = ((Number) state2.getValue()).floatValue();
                        State state3 = animateFloat3;
                        if (floatValue4 > mo83toDpu2uoSUM) {
                            ProgressIndicatorKt.m293drawLinearIndicatorqYKTg0g(drawScope, ((Number) state3.getValue()).floatValue() > RecyclerView.DECELERATION_RATE ? ((Number) state3.getValue()).floatValue() + mo83toDpu2uoSUM : 0.0f, ((Number) state2.getValue()).floatValue() < 1.0f ? ((Number) state2.getValue()).floatValue() - mo83toDpu2uoSUM : 1.0f, j5, intBitsToFloat, i8);
                            j5 = j5;
                        }
                        float floatValue5 = ((Number) state3.getValue()).floatValue();
                        State state4 = animateFloat4;
                        if (floatValue5 - ((Number) state4.getValue()).floatValue() > RecyclerView.DECELERATION_RATE) {
                            ProgressIndicatorKt.m293drawLinearIndicatorqYKTg0g(drawScope, ((Number) state3.getValue()).floatValue(), ((Number) state4.getValue()).floatValue(), j3, intBitsToFloat, i8);
                            drawScope = drawScope;
                            intBitsToFloat = intBitsToFloat;
                        }
                        if (((Number) state4.getValue()).floatValue() > mo83toDpu2uoSUM) {
                            ProgressIndicatorKt.m293drawLinearIndicatorqYKTg0g(drawScope, RecyclerView.DECELERATION_RATE, ((Number) state4.getValue()).floatValue() < 1.0f ? ((Number) state4.getValue()).floatValue() - mo83toDpu2uoSUM : 1.0f, j5, intBitsToFloat, i8);
                        }
                        return Unit.INSTANCE;
                    }
                };
                gapComposer2.updateRememberedValue(obj);
            } else {
                i5 = i7;
                obj = rememberedValue;
                f4 = f3;
            }
            ImageKt.Canvas(m146sizeVpY3zN4, (Function1) obj, gapComposer2, 0);
            i3 = i5;
            f2 = f4;
        } else {
            modifier2 = modifier;
            gapComposer2.skipToGroupEnd();
            i3 = i;
            f2 = f;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer2.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new ProgressIndicatorKt$$ExternalSyntheticLambda3(modifier2, j, j2, i3, f2, i2);
        }
    }

    /* renamed from: drawCircularIndicator-42QJj7c, reason: not valid java name */
    public static final void m292drawCircularIndicator42QJj7c(DrawScope drawScope, float f, float f2, long j, Stroke stroke) {
        float intBitsToFloat = Float.intBitsToFloat((int) (drawScope.mo476getSizeNHjbRc() >> 32)) - (2.0f * (stroke.width / 2.0f));
        drawScope.mo465drawArcyD3GUKo(j, f, f2, (Float.floatToRawIntBits(r0) << 32) | (Float.floatToRawIntBits(r0) & 4294967295L), (Float.floatToRawIntBits(intBitsToFloat) << 32) | (Float.floatToRawIntBits(intBitsToFloat) & 4294967295L), (r23 & 64) != 0 ? 1.0f : RecyclerView.DECELERATION_RATE, stroke);
    }

    /* renamed from: drawLinearIndicator-qYKTg0g, reason: not valid java name */
    public static final void m293drawLinearIndicatorqYKTg0g(DrawScope drawScope, float f, float f2, long j, float f3, int i) {
        float intBitsToFloat = Float.intBitsToFloat((int) (drawScope.mo476getSizeNHjbRc() >> 32));
        float intBitsToFloat2 = Float.intBitsToFloat((int) (drawScope.mo476getSizeNHjbRc() & 4294967295L));
        float f4 = intBitsToFloat2 / 2.0f;
        boolean z = drawScope.getLayoutDirection() == LayoutDirection.Ltr;
        float f5 = (z ? f : 1.0f - f2) * intBitsToFloat;
        float f6 = (z ? f2 : 1.0f - f) * intBitsToFloat;
        if (i == 0 || intBitsToFloat2 > intBitsToFloat) {
            drawScope.mo469drawLineNGM6Ib0(j, (Float.floatToRawIntBits(f5) << 32) | (Float.floatToRawIntBits(f4) & 4294967295L), (Float.floatToRawIntBits(f6) << 32) | (Float.floatToRawIntBits(f4) & 4294967295L), f3, (r19 & 16) != 0 ? 0 : 0);
            return;
        }
        float f7 = f3 / 2.0f;
        float f8 = intBitsToFloat - f7;
        if (f5 < f7) {
            f5 = f7;
        }
        if (f5 > f8) {
            f5 = f8;
        }
        if (f6 < f7) {
            f6 = f7;
        }
        if (f6 <= f8) {
            f8 = f6;
        }
        if (Math.abs(f2 - f) > RecyclerView.DECELERATION_RATE) {
            drawScope.mo469drawLineNGM6Ib0(j, (Float.floatToRawIntBits(f5) << 32) | (Float.floatToRawIntBits(f4) & 4294967295L), (Float.floatToRawIntBits(f8) << 32) | (Float.floatToRawIntBits(f4) & 4294967295L), f3, (r19 & 16) != 0 ? 0 : i);
        }
    }
}
