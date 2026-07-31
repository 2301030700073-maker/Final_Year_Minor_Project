package androidx.compose.material3.internal;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.text.SaversKt$$ExternalSyntheticLambda2;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ChildSemanticsNodeElement extends ModifierNodeElement {
    public final SaversKt$$ExternalSyntheticLambda2 properties;

    public ChildSemanticsNodeElement(SaversKt$$ExternalSyntheticLambda2 saversKt$$ExternalSyntheticLambda2) {
        this.properties = saversKt$$ExternalSyntheticLambda2;
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
