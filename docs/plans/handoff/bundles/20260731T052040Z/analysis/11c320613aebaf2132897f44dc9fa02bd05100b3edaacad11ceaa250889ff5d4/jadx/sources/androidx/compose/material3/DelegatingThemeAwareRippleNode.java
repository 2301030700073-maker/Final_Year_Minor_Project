package androidx.compose.material3;

import androidx.appcompat.widget.PopupMenu$1;
import androidx.compose.foundation.interaction.InteractionSource;
import androidx.compose.material.ripple.AndroidRippleNode;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNode;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.ObserverModifierNode;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class DelegatingThemeAwareRippleNode extends DelegatingNode implements CompositionLocalConsumerModifierNode, ObserverModifierNode {
    public final boolean bounded;
    public final PopupMenu$1 color;
    public final InteractionSource interactionSource;
    public final float radius = Float.NaN;
    public AndroidRippleNode rippleNode;

    public DelegatingThemeAwareRippleNode(InteractionSource interactionSource, boolean z, PopupMenu$1 popupMenu$1) {
        this.interactionSource = interactionSource;
        this.bounded = z;
        this.color = popupMenu$1;
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
