package androidx.compose.foundation.layout;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
final class InsetsPaddingModifierElement extends ModifierNodeElement {
    public final WindowInsets insets;

    public InsetsPaddingModifierElement(WindowInsets windowInsets) {
        this.insets = windowInsets;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node create() {
        InsetsPaddingModifierNode insetsPaddingModifierNode = new InsetsPaddingModifierNode();
        insetsPaddingModifierNode.insets = this.insets;
        return insetsPaddingModifierNode;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof InsetsPaddingModifierElement) {
            return Intrinsics.areEqual(((InsetsPaddingModifierElement) obj).insets, this.insets);
        }
        return false;
    }

    public final int hashCode() {
        return this.insets.hashCode();
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void update(Modifier.Node node) {
        InsetsPaddingModifierNode insetsPaddingModifierNode = (InsetsPaddingModifierNode) node;
        WindowInsets windowInsets = insetsPaddingModifierNode.insets;
        WindowInsets windowInsets2 = this.insets;
        if (Intrinsics.areEqual(windowInsets2, windowInsets)) {
            return;
        }
        insetsPaddingModifierNode.insets = windowInsets2;
        insetsPaddingModifierNode.insetsInvalidated();
    }
}
