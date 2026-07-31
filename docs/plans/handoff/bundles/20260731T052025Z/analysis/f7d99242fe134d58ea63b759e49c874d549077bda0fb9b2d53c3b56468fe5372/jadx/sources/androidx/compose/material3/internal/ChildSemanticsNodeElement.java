package androidx.compose.material3.internal;

import androidx.compose.material3.TextKt$$ExternalSyntheticLambda1;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.ModifierNodeElement;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ChildSemanticsNodeElement extends ModifierNodeElement {
    public final TextKt$$ExternalSyntheticLambda1 properties;

    public ChildSemanticsNodeElement(TextKt$$ExternalSyntheticLambda1 textKt$$ExternalSyntheticLambda1) {
        this.properties = textKt$$ExternalSyntheticLambda1;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node create() {
        ChildSemanticsNode childSemanticsNode = new ChildSemanticsNode();
        childSemanticsNode.properties = this.properties;
        return childSemanticsNode;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ChildSemanticsNodeElement) {
            return this.properties == ((ChildSemanticsNodeElement) obj).properties;
        }
        return false;
    }

    public final int hashCode() {
        return this.properties.hashCode();
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void update(Modifier.Node node) {
        ChildSemanticsNode childSemanticsNode = (ChildSemanticsNode) node;
        childSemanticsNode.properties = this.properties;
        HitTestResultKt.invalidateSemantics(childSemanticsNode);
    }
}
