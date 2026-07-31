package androidx.compose.foundation.layout;

import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class HorizontalAlignElement extends ModifierNodeElement {
    public final BiasAlignment.Horizontal horizontal;

    public HorizontalAlignElement(BiasAlignment.Horizontal horizontal) {
        this.horizontal = horizontal;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node create() {
        HorizontalAlignNode horizontalAlignNode = new HorizontalAlignNode();
        horizontalAlignNode.horizontal = this.horizontal;
        return horizontalAlignNode;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        HorizontalAlignElement horizontalAlignElement = obj instanceof HorizontalAlignElement ? (HorizontalAlignElement) obj : null;
        if (horizontalAlignElement == null) {
            return false;
        }
        return this.horizontal.equals(horizontalAlignElement.horizontal);
    }

    public final int hashCode() {
        return Float.floatToIntBits(this.horizontal.bias);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void update(Modifier.Node node) {
        ((HorizontalAlignNode) node).horizontal = this.horizontal;
    }
}
