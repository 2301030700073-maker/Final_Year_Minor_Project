package androidx.compose.material.ripple;

import androidx.compose.animation.ChangeSize$$ExternalSyntheticBackport0;
import androidx.compose.foundation.Indication;
import androidx.compose.foundation.IndicationInstance;
import androidx.compose.foundation.interaction.InteractionSource;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.unit.Dp;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Ripple.kt */
/* loaded from: classes.dex */
public abstract class Ripple implements Indication {
    private final boolean bounded;
    private final State color;
    private final float radius;

    public /* synthetic */ Ripple(boolean z, float f, State state, DefaultConstructorMarker defaultConstructorMarker) {
        this(z, f, state);
    }

    /* renamed from: rememberUpdatedRippleInstance-942rkJo */
    public abstract RippleIndicationInstance mo587rememberUpdatedRippleInstance942rkJo(InteractionSource interactionSource, boolean z, float f, State state, State state2, Composer composer, int i);

    private Ripple(boolean z, float f, State state) {
        this.bounded = z;
        this.radius = f;
        this.color = state;
    }

    @Override // androidx.compose.foundation.Indication
    public final IndicationInstance rememberUpdatedInstance(InteractionSource interactionSource, Composer composer, int i) {
        long mo586defaultColorWaAFU9c;
        composer.startReplaceGroup(988743187);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(988743187, i, -1, "androidx.compose.material.ripple.Ripple.rememberUpdatedInstance (Ripple.kt:196)");
        }
        RippleTheme rippleTheme = (RippleTheme) composer.consume(RippleThemeKt.getLocalRippleTheme());
        if (((Color) this.color.getValue()).m1312unboximpl() != 16) {
            composer.startReplaceGroup(-303571590);
            composer.endReplaceGroup();
            mo586defaultColorWaAFU9c = ((Color) this.color.getValue()).m1312unboximpl();
        } else {
            composer.startReplaceGroup(-303521246);
            mo586defaultColorWaAFU9c = rippleTheme.mo586defaultColorWaAFU9c(composer, 0);
            composer.endReplaceGroup();
        }
        State rememberUpdatedState = SnapshotStateKt.rememberUpdatedState(Color.m1298boximpl(mo586defaultColorWaAFU9c), composer, 0);
        State rememberUpdatedState2 = SnapshotStateKt.rememberUpdatedState(rippleTheme.rippleAlpha(composer, 0), composer, 0);
        int i2 = i & 14;
        RippleIndicationInstance mo587rememberUpdatedRippleInstance942rkJo = mo587rememberUpdatedRippleInstance942rkJo(interactionSource, this.bounded, this.radius, rememberUpdatedState, rememberUpdatedState2, composer, i2 | ((i << 12) & 458752));
        boolean changedInstance = composer.changedInstance(mo587rememberUpdatedRippleInstance942rkJo) | (((i2 ^ 6) > 4 && composer.changed(interactionSource)) || (i & 6) == 4);
        Object rememberedValue = composer.rememberedValue();
        if (changedInstance || rememberedValue == Composer.Companion.getEmpty()) {
            rememberedValue = new Ripple$rememberUpdatedInstance$1$1(interactionSource, mo587rememberUpdatedRippleInstance942rkJo, null);
            composer.updateRememberedValue(rememberedValue);
        }
        EffectsKt.LaunchedEffect(mo587rememberUpdatedRippleInstance942rkJo, interactionSource, (Function2) rememberedValue, composer, (i << 3) & 112);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceGroup();
        return mo587rememberUpdatedRippleInstance942rkJo;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Ripple)) {
            return false;
        }
        Ripple ripple = (Ripple) obj;
        return this.bounded == ripple.bounded && Dp.m2426equalsimpl0(this.radius, ripple.radius) && Intrinsics.areEqual(this.color, ripple.color);
    }

    public int hashCode() {
        return (((ChangeSize$$ExternalSyntheticBackport0.m(this.bounded) * 31) + Dp.m2427hashCodeimpl(this.radius)) * 31) + this.color.hashCode();
    }
}
