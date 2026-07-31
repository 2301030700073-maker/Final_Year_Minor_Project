package androidx.compose.material3.internal;

import androidx.compose.animation.core.CubicBezierEasing;
import androidx.compose.animation.core.EasingKt;
import androidx.compose.animation.core.TweenSpec;
import androidx.recyclerview.widget.RecyclerView;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class ElevationKt {
    public static final TweenSpec DefaultIncomingSpec;
    public static final TweenSpec DefaultOutgoingSpec;
    public static final TweenSpec HoveredOutgoingSpec;

    static {
        CubicBezierEasing cubicBezierEasing = new CubicBezierEasing(0.4f, RecyclerView.DECELERATION_RATE, 0.6f, 1.0f);
        DefaultIncomingSpec = new TweenSpec(120, 0, EasingKt.FastOutSlowInEasing);
        DefaultOutgoingSpec = new TweenSpec(150, 0, cubicBezierEasing);
        HoveredOutgoingSpec = new TweenSpec(120, 0, cubicBezierEasing);
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0017, code lost:
    
        if ((r10 instanceof androidx.compose.foundation.interaction.FocusInteraction$Focus) != false) goto L6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0033, code lost:
    
        if ((r9 instanceof androidx.compose.foundation.interaction.FocusInteraction$Focus) != false) goto L6;
     */
    /* renamed from: animateElevation-rAjV9yQ, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object m314animateElevationrAjV9yQ(androidx.compose.animation.core.Animatable r7, float r8, androidx.compose.foundation.interaction.Interaction r9, androidx.compose.foundation.interaction.Interaction r10, kotlin.coroutines.jvm.internal.SuspendLambda r11) {
        /*
            r0 = 0
            if (r10 == 0) goto L1c
            boolean r9 = r10 instanceof androidx.compose.foundation.interaction.PressInteraction.Press
            androidx.compose.animation.core.TweenSpec r1 = androidx.compose.material3.internal.ElevationKt.DefaultIncomingSpec
            if (r9 == 0) goto Lb
        L9:
            r0 = r1
            goto L1a
        Lb:
            boolean r9 = r10 instanceof androidx.compose.foundation.interaction.DragInteraction$Start
            if (r9 == 0) goto L10
            goto L9
        L10:
            boolean r9 = r10 instanceof androidx.compose.foundation.interaction.HoverInteraction$Enter
            if (r9 == 0) goto L15
            goto L9
        L15:
            boolean r9 = r10 instanceof androidx.compose.foundation.interaction.FocusInteraction$Focus
            if (r9 == 0) goto L1a
            goto L9
        L1a:
            r3 = r0
            goto L36
        L1c:
            if (r9 == 0) goto L1a
            boolean r10 = r9 instanceof androidx.compose.foundation.interaction.PressInteraction.Press
            androidx.compose.animation.core.TweenSpec r1 = androidx.compose.material3.internal.ElevationKt.DefaultOutgoingSpec
            if (r10 == 0) goto L25
        L24:
            goto L9
        L25:
            boolean r10 = r9 instanceof androidx.compose.foundation.interaction.DragInteraction$Start
            if (r10 == 0) goto L2a
            goto L24
        L2a:
            boolean r10 = r9 instanceof androidx.compose.foundation.interaction.HoverInteraction$Enter
            if (r10 == 0) goto L31
            androidx.compose.animation.core.TweenSpec r0 = androidx.compose.material3.internal.ElevationKt.HoveredOutgoingSpec
            goto L1a
        L31:
            boolean r9 = r9 instanceof androidx.compose.foundation.interaction.FocusInteraction$Focus
            if (r9 == 0) goto L1a
            goto L24
        L36:
            if (r3 == 0) goto L4b
            androidx.compose.ui.unit.Dp r2 = new androidx.compose.ui.unit.Dp
            r2.<init>(r8)
            r4 = 0
            r6 = 12
            r1 = r7
            r5 = r11
            java.lang.Object r7 = androidx.compose.animation.core.Animatable.animateTo$default(r1, r2, r3, r4, r5, r6)
            kotlin.coroutines.intrinsics.CoroutineSingletons r8 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r7 != r8) goto L5b
            return r7
        L4b:
            r1 = r7
            r5 = r11
            androidx.compose.ui.unit.Dp r7 = new androidx.compose.ui.unit.Dp
            r7.<init>(r8)
            java.lang.Object r7 = r1.snapTo(r7, r5)
            kotlin.coroutines.intrinsics.CoroutineSingletons r8 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r7 != r8) goto L5b
            return r7
        L5b:
            kotlin.Unit r7 = kotlin.Unit.INSTANCE
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.internal.ElevationKt.m314animateElevationrAjV9yQ(androidx.compose.animation.core.Animatable, float, androidx.compose.foundation.interaction.Interaction, androidx.compose.foundation.interaction.Interaction, kotlin.coroutines.jvm.internal.SuspendLambda):java.lang.Object");
    }
}
