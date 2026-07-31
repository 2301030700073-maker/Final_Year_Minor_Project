package androidx.compose.material.ripple;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.ArcSplineKt;
import androidx.compose.foundation.interaction.Interaction;
import androidx.compose.material3.DelegatingThemeAwareRippleNode$$ExternalSyntheticLambda0;
import java.util.ArrayList;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class StateLayer {
    public final boolean bounded;
    public Interaction currentInteraction;
    public final DelegatingThemeAwareRippleNode$$ExternalSyntheticLambda0 rippleAlpha;
    public final Animatable animatedAlpha = ArcSplineKt.Animatable$default(0.0f);
    public final ArrayList interactions = new ArrayList();

    public StateLayer(boolean z, DelegatingThemeAwareRippleNode$$ExternalSyntheticLambda0 delegatingThemeAwareRippleNode$$ExternalSyntheticLambda0) {
        this.bounded = z;
        this.rippleAlpha = delegatingThemeAwareRippleNode$$ExternalSyntheticLambda0;
    }
}
