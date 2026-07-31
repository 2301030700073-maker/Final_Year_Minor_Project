package androidx.compose.material3.internal;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.ModifierNodeElement;
import coil3.compose.internal.UtilsKt$$ExternalSyntheticLambda1;
import kotlin.Metadata;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"Landroidx/compose/material3/internal/ParentSemanticsNodeElement;", "Landroidx/compose/ui/node/ModifierNodeElement;", "Landroidx/compose/material3/internal/ParentSemanticsNode;", "material3"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ParentSemanticsNodeElement extends ModifierNodeElement {
    public final UtilsKt$$ExternalSyntheticLambda1 properties;

    public ParentSemanticsNodeElement(UtilsKt$$ExternalSyntheticLambda1 utilsKt$$ExternalSyntheticLambda1) {
        this.properties = utilsKt$$ExternalSyntheticLambda1;
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
