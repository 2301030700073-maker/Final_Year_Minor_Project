package androidx.compose.ui.draganddrop;

import androidx.appcompat.widget.PopupMenu$1;
import androidx.compose.ui.input.pointer.HoverIconModifierNode;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.node.TraversableNode$Companion$TraverseDescendantsAction;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Ref$BooleanRef;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class DragAndDropNode$acceptDragAndDropTransfer$1 extends Lambda implements Function1 {
    public final /* synthetic */ Ref$BooleanRef $handled;
    public final /* synthetic */ int $r8$classId = 0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DragAndDropNode$acceptDragAndDropTransfer$1(PopupMenu$1 popupMenu$1, DragAndDropNode dragAndDropNode, Ref$BooleanRef ref$BooleanRef) {
        super(1);
        this.$handled = ref$BooleanRef;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Ref$BooleanRef ref$BooleanRef = this.$handled;
        switch (i) {
            case 0:
                DragAndDropNode dragAndDropNode = (DragAndDropNode) obj;
                if (!dragAndDropNode.isAttached) {
                    break;
                } else {
                    if (dragAndDropNode.thisDragAndDropTarget != null) {
                        InlineClassHelperKt.throwIllegalStateException("DragAndDropTarget self reference must be null at the start of a drag and drop session");
                    }
                    dragAndDropNode.thisDragAndDropTarget = null;
                    ref$BooleanRef.element = ref$BooleanRef.element;
                    break;
                }
            default:
                if (!((HoverIconModifierNode) obj).cursorInBoundsOfNode) {
                    break;
                } else {
                    ref$BooleanRef.element = false;
                    break;
                }
        }
        return TraversableNode$Companion$TraverseDescendantsAction.ContinueTraversal;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DragAndDropNode$acceptDragAndDropTransfer$1(Ref$BooleanRef ref$BooleanRef) {
        super(1);
        this.$handled = ref$BooleanRef;
    }
}
