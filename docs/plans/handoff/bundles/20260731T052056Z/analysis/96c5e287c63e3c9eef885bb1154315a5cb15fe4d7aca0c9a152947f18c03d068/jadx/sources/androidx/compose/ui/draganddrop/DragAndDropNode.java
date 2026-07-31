package androidx.compose.ui.draganddrop;

import androidx.appcompat.widget.PopupMenu$1;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.LayoutAwareModifierNode;
import androidx.compose.ui.node.TraversableNode;
import androidx.glance.session.SessionWorkerKt$runSession$6;
import coil3.util.ContextsKt;
import kotlin.ResultKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class DragAndDropNode extends Modifier.Node implements TraversableNode, LayoutAwareModifierNode {
    public DragAndDropNode lastChildDragAndDropModifierNode;
    public long size;
    public DragAndDropNode thisDragAndDropTarget;

    @Override // androidx.compose.ui.node.TraversableNode
    public final Object getTraverseKey() {
        return DragAndDropNode$Companion$DragAndDropTraversableKey.INSTANCE;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void onDetach() {
        this.thisDragAndDropTarget = null;
        this.lastChildDragAndDropModifierNode = null;
    }

    public final boolean onDrop() {
        DragAndDropNode dragAndDropNode = this.lastChildDragAndDropModifierNode;
        if (dragAndDropNode != null) {
            return dragAndDropNode.onDrop();
        }
        DragAndDropNode dragAndDropNode2 = this.thisDragAndDropTarget;
        if (dragAndDropNode2 != null) {
            return dragAndDropNode2.onDrop();
        }
        return false;
    }

    public final void onEntered() {
        DragAndDropNode dragAndDropNode = this.thisDragAndDropTarget;
        if (dragAndDropNode != null) {
            dragAndDropNode.onEntered();
            return;
        }
        DragAndDropNode dragAndDropNode2 = this.lastChildDragAndDropModifierNode;
        if (dragAndDropNode2 != null) {
            dragAndDropNode2.onEntered();
        }
    }

    public final void onExited() {
        DragAndDropNode dragAndDropNode = this.thisDragAndDropTarget;
        if (dragAndDropNode != null) {
            dragAndDropNode.onExited();
        }
        DragAndDropNode dragAndDropNode2 = this.lastChildDragAndDropModifierNode;
        if (dragAndDropNode2 != null) {
            dragAndDropNode2.onExited();
        }
        this.lastChildDragAndDropModifierNode = null;
    }

    public final void onMoved(PopupMenu$1 popupMenu$1) {
        TraversableNode traversableNode;
        DragAndDropNode dragAndDropNode;
        DragAndDropNode dragAndDropNode2 = this.lastChildDragAndDropModifierNode;
        if (dragAndDropNode2 == null || !ContextsKt.m790containsUv8p0NA(dragAndDropNode2, ResultKt.getPositionInRoot(popupMenu$1))) {
            if (this.node.isAttached) {
                Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
                HitTestResultKt.traverseDescendants(this, new SessionWorkerKt$runSession$6(ref$ObjectRef, this, popupMenu$1, 4));
                traversableNode = (TraversableNode) ref$ObjectRef.element;
            } else {
                traversableNode = null;
            }
            dragAndDropNode = (DragAndDropNode) traversableNode;
        } else {
            dragAndDropNode = dragAndDropNode2;
        }
        if (dragAndDropNode != null && dragAndDropNode2 == null) {
            dragAndDropNode.onEntered();
            dragAndDropNode.onMoved(popupMenu$1);
            DragAndDropNode dragAndDropNode3 = this.thisDragAndDropTarget;
            if (dragAndDropNode3 != null) {
                dragAndDropNode3.onExited();
            }
        } else if (dragAndDropNode == null && dragAndDropNode2 != null) {
            DragAndDropNode dragAndDropNode4 = this.thisDragAndDropTarget;
            if (dragAndDropNode4 != null) {
                dragAndDropNode4.onEntered();
                dragAndDropNode4.onMoved(popupMenu$1);
            }
            dragAndDropNode2.onExited();
        } else if (!Intrinsics.areEqual(dragAndDropNode, dragAndDropNode2)) {
            if (dragAndDropNode != null) {
                dragAndDropNode.onEntered();
                dragAndDropNode.onMoved(popupMenu$1);
            }
            if (dragAndDropNode2 != null) {
                dragAndDropNode2.onExited();
            }
        } else if (dragAndDropNode != null) {
            dragAndDropNode.onMoved(popupMenu$1);
        } else {
            DragAndDropNode dragAndDropNode5 = this.thisDragAndDropTarget;
            if (dragAndDropNode5 != null) {
                dragAndDropNode5.onMoved(popupMenu$1);
            }
        }
        this.lastChildDragAndDropModifierNode = dragAndDropNode;
    }

    @Override // androidx.compose.ui.node.MeasuredSizeAwareModifierNode
    /* renamed from: onRemeasured-ozmzZPI */
    public final void mo66onRemeasuredozmzZPI(long j) {
        this.size = j;
    }

    public final void onStarted() {
        DragAndDropNode dragAndDropNode = this.thisDragAndDropTarget;
        if (dragAndDropNode != null) {
            dragAndDropNode.onStarted();
            return;
        }
        DragAndDropNode dragAndDropNode2 = this.lastChildDragAndDropModifierNode;
        if (dragAndDropNode2 != null) {
            dragAndDropNode2.onStarted();
        }
    }

    @Override // androidx.compose.ui.node.LayoutAwareModifierNode
    public final void onPlaced(LayoutCoordinates layoutCoordinates) {
    }
}
