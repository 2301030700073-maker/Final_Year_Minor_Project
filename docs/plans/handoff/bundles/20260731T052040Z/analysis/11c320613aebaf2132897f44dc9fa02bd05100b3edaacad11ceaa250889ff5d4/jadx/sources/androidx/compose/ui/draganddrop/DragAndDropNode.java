package androidx.compose.ui.draganddrop;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.LayoutAwareModifierNode;
import androidx.compose.ui.node.TraversableNode;
import androidx.compose.ui.node.TraversableNode$Companion$TraverseDescendantsAction;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.room.Room;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;
import net.newpipe.app.AppKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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

    public final void onMoved(final DragAndDropEvent dragAndDropEvent) {
        TraversableNode traversableNode;
        DragAndDropNode dragAndDropNode;
        DragAndDropNode dragAndDropNode2 = this.lastChildDragAndDropModifierNode;
        if (dragAndDropNode2 == null || !Room.m467access$containsUv8p0NA(dragAndDropNode2, AppKt.getPositionInRoot(dragAndDropEvent))) {
            if (this.node.isAttached) {
                final Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
                HitTestResultKt.traverseDescendants(this, new Function1() { // from class: androidx.compose.ui.draganddrop.DragAndDropNode$onMoved$$inlined$firstDescendantOrNull$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        TraversableNode traversableNode2 = (TraversableNode) obj;
                        DragAndDropNode dragAndDropNode3 = (DragAndDropNode) traversableNode2;
                        DragAndDropNode dragAndDropNode4 = this;
                        dragAndDropNode4.getClass();
                        if (!((AndroidDragAndDropManager) ((AndroidComposeView) HitTestResultKt.requireOwner(dragAndDropNode4)).m383getDragAndDropManager()).interestedTargets.contains(dragAndDropNode3) || !Room.m467access$containsUv8p0NA(dragAndDropNode3, AppKt.getPositionInRoot(dragAndDropEvent))) {
                            return TraversableNode$Companion$TraverseDescendantsAction.ContinueTraversal;
                        }
                        Ref$ObjectRef.this.element = traversableNode2;
                        return TraversableNode$Companion$TraverseDescendantsAction.CancelTraversal;
                    }
                });
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
            dragAndDropNode.onMoved(dragAndDropEvent);
            DragAndDropNode dragAndDropNode3 = this.thisDragAndDropTarget;
            if (dragAndDropNode3 != null) {
                dragAndDropNode3.onExited();
            }
        } else if (dragAndDropNode == null && dragAndDropNode2 != null) {
            DragAndDropNode dragAndDropNode4 = this.thisDragAndDropTarget;
            if (dragAndDropNode4 != null) {
                dragAndDropNode4.onEntered();
                dragAndDropNode4.onMoved(dragAndDropEvent);
            }
            dragAndDropNode2.onExited();
        } else if (!Intrinsics.areEqual(dragAndDropNode, dragAndDropNode2)) {
            if (dragAndDropNode != null) {
                dragAndDropNode.onEntered();
                dragAndDropNode.onMoved(dragAndDropEvent);
            }
            if (dragAndDropNode2 != null) {
                dragAndDropNode2.onExited();
            }
        } else if (dragAndDropNode != null) {
            dragAndDropNode.onMoved(dragAndDropEvent);
        } else {
            DragAndDropNode dragAndDropNode5 = this.thisDragAndDropTarget;
            if (dragAndDropNode5 != null) {
                dragAndDropNode5.onMoved(dragAndDropEvent);
            }
        }
        this.lastChildDragAndDropModifierNode = dragAndDropNode;
    }

    @Override // androidx.compose.ui.node.MeasuredSizeAwareModifierNode
    /* renamed from: onRemeasured-ozmzZPI */
    public final void mo40onRemeasuredozmzZPI(long j) {
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
    public final /* synthetic */ void onPlaced(LayoutCoordinates layoutCoordinates) {
    }
}
