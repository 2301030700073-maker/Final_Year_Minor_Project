package androidx.compose.material3.internal;

import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.TweenSpec;
import androidx.compose.foundation.interaction.DragInteraction$Start;
import androidx.compose.foundation.interaction.FocusInteraction$Focus;
import androidx.compose.foundation.interaction.HoverInteraction$Enter;
import androidx.compose.foundation.interaction.Interaction;
import androidx.compose.foundation.interaction.PressInteraction;

/* compiled from: Elevation.kt */
/* loaded from: classes.dex */
final class ElevationDefaults {
    public static final ElevationDefaults INSTANCE = new ElevationDefaults();

    private ElevationDefaults() {
    }

    public final AnimationSpec incomingAnimationSpecForInteraction(Interaction interaction) {
        TweenSpec tweenSpec;
        TweenSpec tweenSpec2;
        TweenSpec tweenSpec3;
        TweenSpec tweenSpec4;
        if (interaction instanceof PressInteraction.Press) {
            tweenSpec4 = ElevationKt.DefaultIncomingSpec;
            return tweenSpec4;
        }
        if (interaction instanceof DragInteraction$Start) {
            tweenSpec3 = ElevationKt.DefaultIncomingSpec;
            return tweenSpec3;
        }
        if (interaction instanceof HoverInteraction$Enter) {
            tweenSpec2 = ElevationKt.DefaultIncomingSpec;
            return tweenSpec2;
        }
        if (!(interaction instanceof FocusInteraction$Focus)) {
            return null;
        }
        tweenSpec = ElevationKt.DefaultIncomingSpec;
        return tweenSpec;
    }

    public final AnimationSpec outgoingAnimationSpecForInteraction(Interaction interaction) {
        TweenSpec tweenSpec;
        TweenSpec tweenSpec2;
        TweenSpec tweenSpec3;
        TweenSpec tweenSpec4;
        if (interaction instanceof PressInteraction.Press) {
            tweenSpec4 = ElevationKt.DefaultOutgoingSpec;
            return tweenSpec4;
        }
        if (interaction instanceof DragInteraction$Start) {
            tweenSpec3 = ElevationKt.DefaultOutgoingSpec;
            return tweenSpec3;
        }
        if (interaction instanceof HoverInteraction$Enter) {
            tweenSpec2 = ElevationKt.HoveredOutgoingSpec;
            return tweenSpec2;
        }
        if (!(interaction instanceof FocusInteraction$Focus)) {
            return null;
        }
        tweenSpec = ElevationKt.DefaultOutgoingSpec;
        return tweenSpec;
    }
}
