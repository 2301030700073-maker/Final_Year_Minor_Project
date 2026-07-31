package androidx.compose.foundation.layout;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
final class IntrinsicWidthElement extends ModifierNodeElement {
    public final IntrinsicSize width;

    public IntrinsicWidthElement(IntrinsicSize intrinsicSize) {
        this.width = intrinsicSize;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node create() {
        IntrinsicWidthNode intrinsicWidthNode = new IntrinsicWidthNode(0);
        intrinsicWidthNode.width = this.width;
        intrinsicWidthNode.enforceIncoming = true;
        return intrinsicWidthNode;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        IntrinsicWidthElement intrinsicWidthElement = obj instanceof IntrinsicWidthElement ? (IntrinsicWidthElement) obj : null;
        return intrinsicWidthElement != null && this.width == intrinsicWidthElement.width;
    }

    public final int hashCode() {
        return (this.width.hashCode() * 31) + 1231;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void update(Modifier.Node node) {
        IntrinsicWidthNode intrinsicWidthNode = (IntrinsicWidthNode) node;
        intrinsicWidthNode.width = this.width;
        intrinsicWidthNode.enforceIncoming = true;
    }
}
