package androidx.compose.foundation.gestures;

import androidx.compose.foundation.ScrollState$$ExternalSyntheticLambda4;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DraggableElement extends ModifierNodeElement {
    public static final ScrollState$$ExternalSyntheticLambda4 CanDrag = new ScrollState$$ExternalSyntheticLambda4(5);
    public final boolean enabled;
    public final Function3 onDragStarted;
    public final Function3 onDragStopped;
    public final boolean startDragImmediately;
    public final DraggableState state;

    public DraggableElement(DraggableState draggableState, boolean z, boolean z2, DraggableKt$NoOpOnDragStarted$1 draggableKt$NoOpOnDragStarted$1, Function3 function3) {
        this.state = draggableState;
        this.enabled = z;
        this.startDragImmediately = z2;
        this.onDragStarted = draggableKt$NoOpOnDragStarted$1;
        this.onDragStopped = function3;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node create() {
        ScrollState$$ExternalSyntheticLambda4 scrollState$$ExternalSyntheticLambda4 = CanDrag;
        boolean z = this.enabled;
        Orientation orientation = Orientation.Vertical;
        DraggableNode draggableNode = new DraggableNode(scrollState$$ExternalSyntheticLambda4, z, null, orientation);
        draggableNode.state = this.state;
        draggableNode.orientation = orientation;
        draggableNode.startDragImmediately = this.startDragImmediately;
        draggableNode.onDragStarted = this.onDragStarted;
        draggableNode.onDragStopped = this.onDragStopped;
        return draggableNode;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || DraggableElement.class != obj.getClass()) {
            return false;
        }
        DraggableElement draggableElement = (DraggableElement) obj;
        return Intrinsics.areEqual(this.state, draggableElement.state) && this.enabled == draggableElement.enabled && this.startDragImmediately == draggableElement.startDragImmediately && Intrinsics.areEqual(this.onDragStarted, draggableElement.onDragStarted) && Intrinsics.areEqual(this.onDragStopped, draggableElement.onDragStopped);
    }

    public final int hashCode() {
        int hashCode = (((Orientation.Vertical.hashCode() + (this.state.hashCode() * 31)) * 31) + (this.enabled ? 1231 : 1237)) * 961;
        int i = this.startDragImmediately ? 1231 : 1237;
        return ((this.onDragStopped.hashCode() + ((this.onDragStarted.hashCode() + ((hashCode + i) * 31)) * 31)) * 31) + 1237;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void update(Modifier.Node node) {
        boolean z;
        boolean z2;
        DraggableNode draggableNode = (DraggableNode) node;
        DraggableState draggableState = draggableNode.state;
        DraggableState draggableState2 = this.state;
        if (Intrinsics.areEqual(draggableState, draggableState2)) {
            z = false;
        } else {
            draggableNode.state = draggableState2;
            z = true;
        }
        Orientation orientation = draggableNode.orientation;
        Orientation orientation2 = Orientation.Vertical;
        if (orientation != orientation2) {
            draggableNode.orientation = orientation2;
            z2 = true;
        } else {
            z2 = z;
        }
        draggableNode.onDragStarted = this.onDragStarted;
        draggableNode.onDragStopped = this.onDragStopped;
        draggableNode.startDragImmediately = this.startDragImmediately;
        draggableNode.update(CanDrag, this.enabled, null, orientation2, z2);
    }
}
