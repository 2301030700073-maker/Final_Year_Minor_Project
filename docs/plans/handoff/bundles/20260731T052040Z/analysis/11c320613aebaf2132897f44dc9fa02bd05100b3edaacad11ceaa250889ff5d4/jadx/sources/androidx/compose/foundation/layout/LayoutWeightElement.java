package androidx.compose.foundation.layout;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class LayoutWeightElement extends ModifierNodeElement {
    public final float weight;

    public LayoutWeightElement(float f) {
        this.weight = f;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node create() {
        LayoutWeightNode layoutWeightNode = new LayoutWeightNode();
        layoutWeightNode.weight = this.weight;
        return layoutWeightNode;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        LayoutWeightElement layoutWeightElement = obj instanceof LayoutWeightElement ? (LayoutWeightElement) obj : null;
        return layoutWeightElement != null && this.weight == layoutWeightElement.weight;
    }

    public final int hashCode() {
        return (Float.floatToIntBits(this.weight) * 31) + 1237;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void update(Modifier.Node node) {
        ((LayoutWeightNode) node).weight = this.weight;
    }
}
