package androidx.compose.foundation.layout;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
final class UnionInsetsConsumingModifierElement extends ModifierNodeElement {
    public final FixedIntInsets insets;

    public UnionInsetsConsumingModifierElement(FixedIntInsets fixedIntInsets) {
        this.insets = fixedIntInsets;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node create() {
        UnionInsetsConsumingModifierNode unionInsetsConsumingModifierNode = new UnionInsetsConsumingModifierNode();
        unionInsetsConsumingModifierNode.insets = this.insets;
        return unionInsetsConsumingModifierNode;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof UnionInsetsConsumingModifierElement) {
            return ((UnionInsetsConsumingModifierElement) obj).insets.equals(this.insets);
        }
        return false;
    }

    public final int hashCode() {
        return this.insets.hashCode();
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void update(Modifier.Node node) {
        UnionInsetsConsumingModifierNode unionInsetsConsumingModifierNode = (UnionInsetsConsumingModifierNode) node;
        FixedIntInsets fixedIntInsets = unionInsetsConsumingModifierNode.insets;
        FixedIntInsets fixedIntInsets2 = this.insets;
        if (fixedIntInsets2.equals(fixedIntInsets)) {
            return;
        }
        unionInsetsConsumingModifierNode.insets = fixedIntInsets2;
        unionInsetsConsumingModifierNode.insetsInvalidated();
    }
}
