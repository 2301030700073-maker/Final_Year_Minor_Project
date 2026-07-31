package androidx.compose.material3;

import androidx.compose.foundation.interaction.MutableInteractionSourceImpl;
import androidx.compose.material.ripple.AndroidRippleNode;
import androidx.compose.ui.graphics.ColorProducer;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNode;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.ObserverModifierNode;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DelegatingThemeAwareRippleNode extends DelegatingNode implements CompositionLocalConsumerModifierNode, ObserverModifierNode {
    public final boolean bounded;
    public final ColorProducer color;
    public final MutableInteractionSourceImpl interactionSource;
    public final float radius;
    public AndroidRippleNode rippleNode;

    public DelegatingThemeAwareRippleNode(MutableInteractionSourceImpl mutableInteractionSourceImpl, boolean z, float f, ColorProducer colorProducer) {
        this.interactionSource = mutableInteractionSourceImpl;
        this.bounded = z;
        this.radius = f;
        this.color = colorProducer;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void onAttach() {
        HitTestResultKt.observeReads(this, new DelegatingThemeAwareRippleNode$$ExternalSyntheticLambda0(this, 1));
    }

    @Override // androidx.compose.ui.node.ObserverModifierNode
    public final void onObservedReadsChanged() {
        HitTestResultKt.observeReads(this, new DelegatingThemeAwareRippleNode$$ExternalSyntheticLambda0(this, 1));
    }
}
