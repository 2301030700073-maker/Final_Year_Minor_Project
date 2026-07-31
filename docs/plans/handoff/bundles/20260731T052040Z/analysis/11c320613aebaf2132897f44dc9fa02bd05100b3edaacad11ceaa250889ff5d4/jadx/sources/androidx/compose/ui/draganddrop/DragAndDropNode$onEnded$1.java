package androidx.compose.ui.draganddrop;

import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.TraversableNode$Companion$TraverseDescendantsAction;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class DragAndDropNode$onEnded$1 extends Lambda implements Function1 {
    final /* synthetic */ DragAndDropEvent $event;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DragAndDropNode$onEnded$1(DragAndDropEvent dragAndDropEvent) {
        super(1);
        this.$event = dragAndDropEvent;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        DragAndDropNode dragAndDropNode = (DragAndDropNode) obj;
        if (!dragAndDropNode.node.isAttached) {
            return TraversableNode$Companion$TraverseDescendantsAction.SkipSubtreeAndContinueTraversal;
        }
        DragAndDropNode dragAndDropNode2 = dragAndDropNode.thisDragAndDropTarget;
        TraversableNode$Companion$TraverseDescendantsAction traversableNode$Companion$TraverseDescendantsAction = TraversableNode$Companion$TraverseDescendantsAction.ContinueTraversal;
        if (dragAndDropNode2 != null) {
            DragAndDropNode$onEnded$1 dragAndDropNode$onEnded$1 = new DragAndDropNode$onEnded$1(this.$event);
            if (dragAndDropNode$onEnded$1.invoke(dragAndDropNode2) == traversableNode$Companion$TraverseDescendantsAction) {
                HitTestResultKt.traverseDescendants(dragAndDropNode2, dragAndDropNode$onEnded$1);
            }
        }
        dragAndDropNode.thisDragAndDropTarget = null;
        dragAndDropNode.lastChildDragAndDropModifierNode = null;
        return traversableNode$Companion$TraverseDescendantsAction;
    }
}
