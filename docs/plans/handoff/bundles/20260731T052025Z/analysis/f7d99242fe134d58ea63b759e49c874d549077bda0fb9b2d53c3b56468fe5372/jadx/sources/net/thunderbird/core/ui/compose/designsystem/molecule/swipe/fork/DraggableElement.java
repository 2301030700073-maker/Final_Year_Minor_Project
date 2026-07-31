package net.thunderbird.core.ui.compose.designsystem.molecule.swipe.fork;

import androidx.compose.foundation.ScrollState$$ExternalSyntheticLambda4;
import androidx.compose.foundation.gestures.DraggableState;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.core.view.MenuHostHelper;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DraggableElement extends ModifierNodeElement {
    public static final ScrollState$$ExternalSyntheticLambda4 CanDrag = new ScrollState$$ExternalSyntheticLambda4(5);
    public final boolean enabled;
    public final Function3 onDragStarted;
    public final Function3 onDragStopped;
    public final DraggableState state;

    public DraggableElement(MenuHostHelper menuHostHelper, boolean z, Function3 function3, Function3 function32) {
        menuHostHelper.getClass();
        this.state = menuHostHelper;
        this.enabled = z;
        this.onDragStarted = function3;
        this.onDragStopped = function32;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node create() {
        DraggableState draggableState = this.state;
        draggableState.getClass();
        DraggableNode draggableNode = new DraggableNode();
        draggableNode.state = draggableState;
        draggableNode.canDrag = CanDrag;
        draggableNode.orientation = Orientation.Horizontal;
        draggableNode.enabled = this.enabled;
        draggableNode.onDragStarted = this.onDragStarted;
        draggableNode.onDragStopped = this.onDragStopped;
        draggableNode.nodeOffset = 0L;
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
        return Intrinsics.areEqual(this.state, draggableElement.state) && this.enabled == draggableElement.enabled && this.onDragStarted.equals(draggableElement.onDragStarted) && this.onDragStopped.equals(draggableElement.onDragStopped);
    }

    public final int hashCode() {
        return ((this.onDragStopped.hashCode() + ((this.onDragStarted.hashCode() + ((((((Orientation.Horizontal.hashCode() + (this.state.hashCode() * 31)) * 31) + (this.enabled ? 1231 : 1237)) * 961) + 1237) * 31)) * 31)) * 31) + 1237;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void update(Modifier.Node node) {
        boolean z;
        SuspendingPointerInputModifierNodeImpl suspendingPointerInputModifierNodeImpl;
        DraggableNode draggableNode = (DraggableNode) node;
        draggableNode.getClass();
        DraggableState draggableState = this.state;
        draggableState.getClass();
        boolean z2 = true;
        if (Intrinsics.areEqual(draggableNode.state, draggableState)) {
            z = false;
        } else {
            draggableNode.state = draggableState;
            z = true;
        }
        Orientation orientation = draggableNode.orientation;
        Orientation orientation2 = Orientation.Horizontal;
        if (orientation != orientation2) {
            draggableNode.orientation = orientation2;
            z = true;
        }
        draggableNode.onDragStarted = this.onDragStarted;
        draggableNode.onDragStopped = this.onDragStopped;
        draggableNode.canDrag = CanDrag;
        boolean z3 = draggableNode.enabled;
        boolean z4 = this.enabled;
        if (z3 != z4) {
            draggableNode.enabled = z4;
            if (!z4) {
                if (draggableNode.dragInteraction != null) {
                    draggableNode.dragInteraction = null;
                }
                SuspendingPointerInputModifierNodeImpl suspendingPointerInputModifierNodeImpl2 = draggableNode.pointerInputNode;
                if (suspendingPointerInputModifierNodeImpl2 != null) {
                    draggableNode.undelegate(suspendingPointerInputModifierNodeImpl2);
                }
                draggableNode.pointerInputNode = null;
            }
        } else {
            z2 = z;
        }
        if (!z2 || (suspendingPointerInputModifierNodeImpl = draggableNode.pointerInputNode) == null) {
            return;
        }
        suspendingPointerInputModifierNodeImpl.resetPointerInputHandler();
    }
}
