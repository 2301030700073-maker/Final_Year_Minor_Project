package androidx.compose.ui.node;

import androidx.compose.ui.layout.AlignmentLine;
import java.util.Map;

/* compiled from: LayoutNodeAlignmentLines.kt */
/* loaded from: classes.dex */
public final class LayoutNodeAlignmentLines extends AlignmentLines {
    public LayoutNodeAlignmentLines(AlignmentLinesOwner alignmentLinesOwner) {
        super(alignmentLinesOwner, null);
    }

    @Override // androidx.compose.ui.node.AlignmentLines
    protected Map getAlignmentLinesMap(NodeCoordinator nodeCoordinator) {
        return nodeCoordinator.getMeasureResult$ui_release().getAlignmentLines();
    }

    @Override // androidx.compose.ui.node.AlignmentLines
    protected int getPositionFor(NodeCoordinator nodeCoordinator, AlignmentLine alignmentLine) {
        return nodeCoordinator.get(alignmentLine);
    }

    @Override // androidx.compose.ui.node.AlignmentLines
    /* renamed from: calculatePositionInParent-R5De75A */
    protected long mo1795calculatePositionInParentR5De75A(NodeCoordinator nodeCoordinator, long j) {
        return NodeCoordinator.m1878toParentPosition8S9VItk$default(nodeCoordinator, j, false, 2, null);
    }
}
