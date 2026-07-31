package androidx.compose.foundation.layout;

import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
final class BoxChildDataElement extends ModifierNodeElement {
    public final BiasAlignment alignment;
    public final boolean matchParentSize;

    public BoxChildDataElement(BiasAlignment biasAlignment, boolean z) {
        this.alignment = biasAlignment;
        this.matchParentSize = z;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node create() {
        BoxChildDataNode boxChildDataNode = new BoxChildDataNode();
        boxChildDataNode.alignment = this.alignment;
        boxChildDataNode.matchParentSize = this.matchParentSize;
        return boxChildDataNode;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        BoxChildDataElement boxChildDataElement = obj instanceof BoxChildDataElement ? (BoxChildDataElement) obj : null;
        return boxChildDataElement != null && this.alignment.equals(boxChildDataElement.alignment) && this.matchParentSize == boxChildDataElement.matchParentSize;
    }

    public final int hashCode() {
        return (this.alignment.hashCode() * 31) + (this.matchParentSize ? 1231 : 1237);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void update(Modifier.Node node) {
        BoxChildDataNode boxChildDataNode = (BoxChildDataNode) node;
        boxChildDataNode.alignment = this.alignment;
        boxChildDataNode.matchParentSize = this.matchParentSize;
    }
}
