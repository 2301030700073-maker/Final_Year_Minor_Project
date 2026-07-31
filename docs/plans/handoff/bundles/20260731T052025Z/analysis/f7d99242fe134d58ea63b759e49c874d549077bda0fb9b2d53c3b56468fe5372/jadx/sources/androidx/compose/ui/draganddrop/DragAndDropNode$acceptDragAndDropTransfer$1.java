package androidx.compose.ui.draganddrop;

import androidx.camera.view.PreviewView;
import androidx.compose.ui.input.pointer.HoverIconModifierNode;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.node.TraversableNode$Companion$TraverseDescendantsAction;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Ref$BooleanRef;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DragAndDropNode$acceptDragAndDropTransfer$1 extends Lambda implements Function1 {
    public final /* synthetic */ Ref$BooleanRef $handled;
    public final /* synthetic */ int $r8$classId = 0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DragAndDropNode$acceptDragAndDropTransfer$1(PreviewView.AnonymousClass1 anonymousClass1, DragAndDropNode dragAndDropNode, Ref$BooleanRef ref$BooleanRef) {
        super(1);
        this.$handled = ref$BooleanRef;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        TraversableNode$Companion$TraverseDescendantsAction traversableNode$Companion$TraverseDescendantsAction = TraversableNode$Companion$TraverseDescendantsAction.ContinueTraversal;
        Ref$BooleanRef ref$BooleanRef = this.$handled;
        switch (i) {
            case 0:
                DragAndDropNode dragAndDropNode = (DragAndDropNode) obj;
                if (!dragAndDropNode.isAttached) {
                    return TraversableNode$Companion$TraverseDescendantsAction.SkipSubtreeAndContinueTraversal;
                }
                if (dragAndDropNode.thisDragAndDropTarget != null) {
                    InlineClassHelperKt.throwIllegalStateException("DragAndDropTarget self reference must be null at the start of a drag and drop session");
                }
                dragAndDropNode.thisDragAndDropTarget = null;
                ref$BooleanRef.element = ref$BooleanRef.element;
                return traversableNode$Companion$TraverseDescendantsAction;
            default:
                if (!((HoverIconModifierNode) obj).cursorInBoundsOfNode) {
                    return traversableNode$Companion$TraverseDescendantsAction;
                }
                ref$BooleanRef.element = false;
                return TraversableNode$Companion$TraverseDescendantsAction.CancelTraversal;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DragAndDropNode$acceptDragAndDropTransfer$1(Ref$BooleanRef ref$BooleanRef) {
        super(1);
        this.$handled = ref$BooleanRef;
    }
}
