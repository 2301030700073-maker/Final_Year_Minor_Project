package androidx.compose.material3.internal;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
final class DraggableAnchorsElement<T> extends ModifierNodeElement {
    public final Function2 anchors;
    public final AnchoredDraggableState state;

    public DraggableAnchorsElement(AnchoredDraggableState anchoredDraggableState, Function2 function2) {
        this.state = anchoredDraggableState;
        this.anchors = function2;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node create() {
        DraggableAnchorsNode draggableAnchorsNode = new DraggableAnchorsNode();
        draggableAnchorsNode.state = this.state;
        draggableAnchorsNode.anchors = this.anchors;
        draggableAnchorsNode.orientation = Orientation.Vertical;
        return draggableAnchorsNode;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DraggableAnchorsElement)) {
            return false;
        }
        DraggableAnchorsElement draggableAnchorsElement = (DraggableAnchorsElement) obj;
        return Intrinsics.areEqual(this.state, draggableAnchorsElement.state) && this.anchors == draggableAnchorsElement.anchors;
    }

    public final int hashCode() {
        return Orientation.Vertical.hashCode() + ((this.anchors.hashCode() + (this.state.hashCode() * 31)) * 31);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void update(Modifier.Node node) {
        DraggableAnchorsNode draggableAnchorsNode = (DraggableAnchorsNode) node;
        draggableAnchorsNode.state = this.state;
        draggableAnchorsNode.anchors = this.anchors;
        draggableAnchorsNode.orientation = Orientation.Vertical;
    }
}
