package androidx.compose.ui.node;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.layout.AlignmentLine;
import androidx.compose.ui.platform.GraphicsLayerOwnerLayer;
import java.util.Map;
import okio.Options;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class LookaheadAlignmentLines extends AlignmentLines {
    public final /* synthetic */ int $r8$classId;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ LookaheadAlignmentLines(AlignmentLinesOwner alignmentLinesOwner, int i) {
        super(alignmentLinesOwner);
        this.$r8$classId = i;
    }

    @Override // androidx.compose.ui.node.AlignmentLines
    /* renamed from: calculatePositionInParent-R5De75A */
    public final long mo310calculatePositionInParentR5De75A(NodeCoordinator nodeCoordinator, long j) {
        switch (this.$r8$classId) {
            case 0:
                LookaheadDelegate lookaheadDelegate = nodeCoordinator.getLookaheadDelegate();
                lookaheadDelegate.getClass();
                long j2 = lookaheadDelegate.position;
                return Offset.m200plusMKHz9U((Float.floatToRawIntBits((int) (j2 & 4294967295L)) & 4294967295L) | (Float.floatToRawIntBits((int) (j2 >> 32)) << 32), j);
            default:
                OwnedLayer ownedLayer = nodeCoordinator.layer;
                if (ownedLayer != null) {
                    GraphicsLayerOwnerLayer graphicsLayerOwnerLayer = (GraphicsLayerOwnerLayer) ownedLayer;
                    float[] m390getMatrixsQKQjiQ = graphicsLayerOwnerLayer.m390getMatrixsQKQjiQ();
                    if (!graphicsLayerOwnerLayer.isIdentity) {
                        j = Brush.m230mapMKHz9U(m390getMatrixsQKQjiQ, j);
                    }
                }
                return Options.Companion.m727plusNvtHpc(j, nodeCoordinator.position);
        }
    }

    @Override // androidx.compose.ui.node.AlignmentLines
    public final Map getAlignmentLinesMap(NodeCoordinator nodeCoordinator) {
        switch (this.$r8$classId) {
            case 0:
                LookaheadDelegate lookaheadDelegate = nodeCoordinator.getLookaheadDelegate();
                lookaheadDelegate.getClass();
                return lookaheadDelegate.getMeasureResult$ui().getAlignmentLines();
            default:
                return nodeCoordinator.getMeasureResult$ui().getAlignmentLines();
        }
    }

    @Override // androidx.compose.ui.node.AlignmentLines
    public final int getPositionFor(NodeCoordinator nodeCoordinator, AlignmentLine alignmentLine) {
        switch (this.$r8$classId) {
            case 0:
                LookaheadDelegate lookaheadDelegate = nodeCoordinator.getLookaheadDelegate();
                lookaheadDelegate.getClass();
                return lookaheadDelegate.get(alignmentLine);
            default:
                return nodeCoordinator.get(alignmentLine);
        }
    }
}
