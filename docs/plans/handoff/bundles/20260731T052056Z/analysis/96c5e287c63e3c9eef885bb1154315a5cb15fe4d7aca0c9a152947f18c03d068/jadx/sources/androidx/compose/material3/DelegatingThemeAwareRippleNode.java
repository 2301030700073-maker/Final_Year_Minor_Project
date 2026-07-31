package androidx.compose.material3;

import androidx.compose.foundation.interaction.MutableInteractionSourceImpl;
import androidx.compose.material.ripple.AndroidRippleNode;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNode;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.ObserverModifierNode;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class DelegatingThemeAwareRippleNode extends DelegatingNode implements CompositionLocalConsumerModifierNode, ObserverModifierNode {
    public final boolean bounded;
    public final RippleNodeFactory$create$colorProducer$1 color;
    public final MutableInteractionSourceImpl interactionSource;
    public final float radius;
    public AndroidRippleNode rippleNode;

    public DelegatingThemeAwareRippleNode(MutableInteractionSourceImpl mutableInteractionSourceImpl, boolean z, float f, RippleNodeFactory$create$colorProducer$1 rippleNodeFactory$create$colorProducer$1) {
        this.interactionSource = mutableInteractionSourceImpl;
        this.bounded = z;
        this.radius = f;
        this.color = rippleNodeFactory$create$colorProducer$1;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void onAttach() {
        HitTestResultKt.observeReads(this, new DelegatingThemeAwareRippleNode$$ExternalSyntheticLambda0(this, 0));
    }

    @Override // androidx.compose.ui.node.ObserverModifierNode
    public final void onObservedReadsChanged() {
        HitTestResultKt.observeReads(this, new DelegatingThemeAwareRippleNode$$ExternalSyntheticLambda0(this, 0));
    }
}
