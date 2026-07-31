package androidx.compose.foundation.layout;

import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class VerticalAlignElement extends ModifierNodeElement {
    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node create() {
        BiasAlignment.Vertical vertical = Alignment.Companion.CenterVertically;
        VerticalAlignNode verticalAlignNode = new VerticalAlignNode();
        verticalAlignNode.vertical = vertical;
        return verticalAlignNode;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof VerticalAlignElement ? (VerticalAlignElement) obj : null) == null) {
            return false;
        }
        BiasAlignment.Vertical vertical = Alignment.Companion.CenterVertically;
        return vertical.equals(vertical);
    }

    public final int hashCode() {
        return Float.floatToIntBits(0.0f);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void update(Modifier.Node node) {
        ((VerticalAlignNode) node).vertical = Alignment.Companion.CenterVertically;
    }
}
