package androidx.compose.material.ripple;

import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.EasingKt;
import androidx.compose.animation.core.TweenSpec;
import androidx.compose.foundation.Indication;
import androidx.compose.foundation.interaction.DragInteraction$Start;
import androidx.compose.foundation.interaction.FocusInteraction$Focus;
import androidx.compose.foundation.interaction.HoverInteraction$Enter;
import androidx.compose.foundation.interaction.Interaction;
import androidx.compose.foundation.interaction.InteractionSource;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorProducer;
import androidx.compose.ui.node.DelegatableNode;
import androidx.compose.ui.unit.Dp;
import kotlin.jvm.functions.Function0;

/* compiled from: Ripple.kt */
/* loaded from: classes.dex */
public abstract class RippleKt {
    private static final TweenSpec DefaultTweenSpec = new TweenSpec(15, 0, EasingKt.getLinearEasing(), 2, null);

    /* renamed from: createRippleModifierNode-TDGSqEk, reason: not valid java name */
    public static final DelegatableNode m595createRippleModifierNodeTDGSqEk(InteractionSource interactionSource, boolean z, float f, ColorProducer colorProducer, Function0 function0) {
        return Ripple_androidKt.m601createPlatformRippleNodeTDGSqEk(interactionSource, z, f, colorProducer, function0);
    }

    /* renamed from: rememberRipple-9IZ8Weo, reason: not valid java name */
    public static final Indication m596rememberRipple9IZ8Weo(boolean z, float f, long j, Composer composer, int i, int i2) {
        boolean z2 = true;
        if ((i2 & 1) != 0) {
            z = true;
        }
        if ((i2 & 2) != 0) {
            f = Dp.Companion.m2433getUnspecifiedD9Ej5fM();
        }
        if ((i2 & 4) != 0) {
            j = Color.Companion.m1317getUnspecified0d7_KjU();
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1635163520, i, -1, "androidx.compose.material.ripple.rememberRipple (Ripple.kt:146)");
        }
        State rememberUpdatedState = SnapshotStateKt.rememberUpdatedState(Color.m1298boximpl(j), composer, (i >> 6) & 14);
        boolean z3 = (((i & 14) ^ 6) > 4 && composer.changed(z)) || (i & 6) == 4;
        if ((((i & 112) ^ 48) <= 32 || !composer.changed(f)) && (i & 48) != 32) {
            z2 = false;
        }
        boolean z4 = z3 | z2;
        Object rememberedValue = composer.rememberedValue();
        if (z4 || rememberedValue == Composer.Companion.getEmpty()) {
            rememberedValue = new PlatformRipple(z, f, rememberUpdatedState, null);
            composer.updateRememberedValue(rememberedValue);
        }
        PlatformRipple platformRipple = (PlatformRipple) rememberedValue;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return platformRipple;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final AnimationSpec incomingStateLayerAnimationSpecFor(Interaction interaction) {
        if (interaction instanceof HoverInteraction$Enter) {
            return DefaultTweenSpec;
        }
        if (!(interaction instanceof FocusInteraction$Focus) && !(interaction instanceof DragInteraction$Start)) {
            return DefaultTweenSpec;
        }
        return new TweenSpec(45, 0, EasingKt.getLinearEasing(), 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final AnimationSpec outgoingStateLayerAnimationSpecFor(Interaction interaction) {
        if (!(interaction instanceof HoverInteraction$Enter) && !(interaction instanceof FocusInteraction$Focus)) {
            return interaction instanceof DragInteraction$Start ? new TweenSpec(150, 0, EasingKt.getLinearEasing(), 2, null) : DefaultTweenSpec;
        }
        return DefaultTweenSpec;
    }
}
