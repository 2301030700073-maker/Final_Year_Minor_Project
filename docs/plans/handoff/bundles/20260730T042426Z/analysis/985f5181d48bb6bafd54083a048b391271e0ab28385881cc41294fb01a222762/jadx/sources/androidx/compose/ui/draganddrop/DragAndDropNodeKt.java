package androidx.compose.ui.draganddrop;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.LayoutCoordinatesKt;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.TraversableNode;
import androidx.compose.ui.node.TraversableNode$Companion$TraverseDescendantsAction;
import androidx.compose.ui.node.TraversableNodeKt;
import androidx.compose.ui.unit.IntSize;
import kotlin.jvm.functions.Function1;

/* compiled from: DragAndDropNode.kt */
/* loaded from: classes.dex */
public abstract class DragAndDropNodeKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final void dispatchEntered(DragAndDropTarget dragAndDropTarget, DragAndDropEvent dragAndDropEvent) {
        dragAndDropTarget.onEntered(dragAndDropEvent);
        dragAndDropTarget.onMoved(dragAndDropEvent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: contains-Uv8p0NA, reason: not valid java name */
    public static final boolean m1082containsUv8p0NA(DragAndDropModifierNode dragAndDropModifierNode, long j) {
        if (!dragAndDropModifierNode.getNode().isAttached()) {
            return false;
        }
        LayoutCoordinates coordinates = DelegatableNodeKt.requireLayoutNode(dragAndDropModifierNode).getCoordinates();
        if (!coordinates.isAttached()) {
            return false;
        }
        long mo1753getSizeYbymL2g = coordinates.mo1753getSizeYbymL2g();
        int m2484getWidthimpl = IntSize.m2484getWidthimpl(mo1753getSizeYbymL2g);
        int m2483getHeightimpl = IntSize.m2483getHeightimpl(mo1753getSizeYbymL2g);
        long positionInRoot = LayoutCoordinatesKt.positionInRoot(coordinates);
        float m1167getXimpl = Offset.m1167getXimpl(positionInRoot);
        float m1168getYimpl = Offset.m1168getYimpl(positionInRoot);
        float f = m2484getWidthimpl + m1167getXimpl;
        float f2 = m2483getHeightimpl + m1168getYimpl;
        float m1167getXimpl2 = Offset.m1167getXimpl(j);
        if (m1167getXimpl > m1167getXimpl2 || m1167getXimpl2 > f) {
            return false;
        }
        float m1168getYimpl2 = Offset.m1168getYimpl(j);
        return m1168getYimpl <= m1168getYimpl2 && m1168getYimpl2 <= f2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void traverseSelfAndDescendants(TraversableNode traversableNode, Function1 function1) {
        if (function1.invoke(traversableNode) != TraversableNode$Companion$TraverseDescendantsAction.ContinueTraversal) {
            return;
        }
        TraversableNodeKt.traverseDescendants(traversableNode, function1);
    }
}
