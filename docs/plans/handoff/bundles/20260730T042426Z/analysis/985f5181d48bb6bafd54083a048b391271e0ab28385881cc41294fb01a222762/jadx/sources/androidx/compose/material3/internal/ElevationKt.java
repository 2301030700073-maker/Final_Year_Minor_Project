package androidx.compose.material3.internal;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.CubicBezierEasing;
import androidx.compose.animation.core.Easing;
import androidx.compose.animation.core.EasingKt;
import androidx.compose.animation.core.TweenSpec;
import androidx.compose.foundation.interaction.Interaction;
import androidx.compose.ui.unit.Dp;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: Elevation.kt */
/* loaded from: classes.dex */
public abstract class ElevationKt {
    private static final TweenSpec DefaultIncomingSpec;
    private static final TweenSpec DefaultOutgoingSpec;
    private static final TweenSpec HoveredOutgoingSpec;
    private static final Easing OutgoingSpecEasing;

    /* renamed from: animateElevation-rAjV9yQ, reason: not valid java name */
    public static final Object m789animateElevationrAjV9yQ(Animatable animatable, float f, Interaction interaction, Interaction interaction2, Continuation continuation) {
        AnimationSpec outgoingAnimationSpecForInteraction;
        if (interaction2 != null) {
            outgoingAnimationSpecForInteraction = ElevationDefaults.INSTANCE.incomingAnimationSpecForInteraction(interaction2);
        } else {
            outgoingAnimationSpecForInteraction = interaction != null ? ElevationDefaults.INSTANCE.outgoingAnimationSpecForInteraction(interaction) : null;
        }
        AnimationSpec animationSpec = outgoingAnimationSpecForInteraction;
        if (animationSpec != null) {
            Object animateTo$default = Animatable.animateTo$default(animatable, Dp.m2422boximpl(f), animationSpec, null, null, continuation, 12, null);
            return animateTo$default == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? animateTo$default : Unit.INSTANCE;
        }
        Object snapTo = animatable.snapTo(Dp.m2422boximpl(f), continuation);
        return snapTo == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? snapTo : Unit.INSTANCE;
    }

    static {
        CubicBezierEasing cubicBezierEasing = new CubicBezierEasing(0.4f, 0.0f, 0.6f, 1.0f);
        OutgoingSpecEasing = cubicBezierEasing;
        DefaultIncomingSpec = new TweenSpec(120, 0, EasingKt.getFastOutSlowInEasing(), 2, null);
        int i = 2;
        DefaultConstructorMarker defaultConstructorMarker = null;
        int i2 = 0;
        DefaultOutgoingSpec = new TweenSpec(150, i2, cubicBezierEasing, i, defaultConstructorMarker);
        HoveredOutgoingSpec = new TweenSpec(120, i2, cubicBezierEasing, i, defaultConstructorMarker);
    }
}
