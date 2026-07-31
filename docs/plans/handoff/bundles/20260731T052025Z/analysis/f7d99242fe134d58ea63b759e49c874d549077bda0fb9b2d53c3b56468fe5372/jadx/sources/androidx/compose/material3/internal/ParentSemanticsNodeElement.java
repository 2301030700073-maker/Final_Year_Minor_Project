package androidx.compose.material3.internal;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.datastore.core.SimpleActor$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ParentSemanticsNodeElement extends ModifierNodeElement {
    public final SimpleActor$$ExternalSyntheticLambda0 properties;

    public ParentSemanticsNodeElement(SimpleActor$$ExternalSyntheticLambda0 simpleActor$$ExternalSyntheticLambda0) {
        this.properties = simpleActor$$ExternalSyntheticLambda0;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node create() {
        ParentSemanticsNode parentSemanticsNode = new ParentSemanticsNode();
        parentSemanticsNode.properties = this.properties;
        return parentSemanticsNode;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ParentSemanticsNodeElement) {
            return this.properties == ((ParentSemanticsNodeElement) obj).properties;
        }
        return false;
    }

    public final int hashCode() {
        return this.properties.hashCode();
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void update(Modifier.Node node) {
        ParentSemanticsNode parentSemanticsNode = (ParentSemanticsNode) node;
        parentSemanticsNode.properties = this.properties;
        HitTestResultKt.invalidateSemantics(parentSemanticsNode);
    }
}
