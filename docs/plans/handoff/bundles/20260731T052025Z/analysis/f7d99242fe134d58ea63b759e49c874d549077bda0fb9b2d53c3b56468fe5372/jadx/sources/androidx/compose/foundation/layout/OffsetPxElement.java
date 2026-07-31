package androidx.compose.foundation.layout;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.ModifierNodeElement;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
final class OffsetPxElement extends ModifierNodeElement {
    public final Function1 offset;

    public OffsetPxElement(Function1 function1) {
        this.offset = function1;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node create() {
        OffsetPxNode offsetPxNode = new OffsetPxNode();
        offsetPxNode.offset = this.offset;
        return offsetPxNode;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        OffsetPxElement offsetPxElement = obj instanceof OffsetPxElement ? (OffsetPxElement) obj : null;
        return offsetPxElement != null && this.offset == offsetPxElement.offset;
    }

    public final int hashCode() {
        return (this.offset.hashCode() * 31) + 1237;
    }

    public final String toString() {
        return "OffsetPxModifier(offset=" + this.offset + ", rtlAware=false)";
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void update(Modifier.Node node) {
        OffsetPxNode offsetPxNode = (OffsetPxNode) node;
        Function1 function1 = offsetPxNode.offset;
        Function1 function12 = this.offset;
        if (function1 != function12) {
            HitTestResultKt.requireLayoutNode(offsetPxNode).requestRelayout$ui(false);
        }
        offsetPxNode.offset = function12;
    }
}
