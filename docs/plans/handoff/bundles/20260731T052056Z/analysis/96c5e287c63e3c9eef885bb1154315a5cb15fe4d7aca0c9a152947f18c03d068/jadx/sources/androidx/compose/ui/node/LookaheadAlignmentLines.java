package androidx.compose.ui.node;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.graphics.Matrix;
import androidx.compose.ui.layout.AlignmentLine;
import androidx.compose.ui.layout.AlignmentLineKt;
import androidx.compose.ui.layout.HorizontalAlignmentLine;
import androidx.compose.ui.platform.GraphicsLayerOwnerLayer;
import androidx.work.Operation$State;
import java.util.HashMap;
import java.util.Map;
import kotlin.collections.MapsKt__MapsKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LookaheadAlignmentLines {
    public final /* synthetic */ int $r8$classId;
    public final AlignmentLinesOwner alignmentLinesOwner;
    public boolean previousUsedDuringParentLayout;
    public AlignmentLinesOwner queryOwner;
    public boolean usedByModifierLayout;
    public boolean usedByModifierMeasurement;
    public boolean usedDuringParentLayout;
    public boolean usedDuringParentMeasurement;
    public boolean dirty = true;
    public final HashMap alignmentLineMap = new HashMap();

    public LookaheadAlignmentLines(AlignmentLinesOwner alignmentLinesOwner, int i) {
        this.$r8$classId = i;
        this.alignmentLinesOwner = alignmentLinesOwner;
    }

    public final void addAlignmentLine(AlignmentLine alignmentLine, int i, NodeCoordinator nodeCoordinator) {
        float f = i;
        long floatToRawIntBits = Float.floatToRawIntBits(f) << 32;
        long floatToRawIntBits2 = Float.floatToRawIntBits(f) & 4294967295L;
        while (true) {
            long j = floatToRawIntBits | floatToRawIntBits2;
            do {
                switch (this.$r8$classId) {
                    case 0:
                        LookaheadDelegate lookaheadDelegate = nodeCoordinator.getLookaheadDelegate();
                        lookaheadDelegate.getClass();
                        long j2 = lookaheadDelegate.position;
                        j = Offset.m386plusMKHz9U((Float.floatToRawIntBits((int) (j2 & 4294967295L)) & 4294967295L) | (Float.floatToRawIntBits((int) (j2 >> 32)) << 32), j);
                        break;
                    default:
                        OwnedLayer ownedLayer = nodeCoordinator.layer;
                        if (ownedLayer != null) {
                            GraphicsLayerOwnerLayer graphicsLayerOwnerLayer = (GraphicsLayerOwnerLayer) ownedLayer;
                            float[] m605getMatrixsQKQjiQ = graphicsLayerOwnerLayer.m605getMatrixsQKQjiQ();
                            if (!graphicsLayerOwnerLayer.isIdentity) {
                                j = Matrix.m447mapMKHz9U(j, m605getMatrixsQKQjiQ);
                            }
                        }
                        j = Operation$State.m766plusNvtHpc(j, nodeCoordinator.position);
                        break;
                }
                nodeCoordinator = nodeCoordinator.wrappedBy;
                nodeCoordinator.getClass();
                if (nodeCoordinator.equals(this.alignmentLinesOwner.getInnerCoordinator())) {
                    int round = Math.round(alignmentLine instanceof HorizontalAlignmentLine ? Float.intBitsToFloat((int) (j & 4294967295L)) : Float.intBitsToFloat((int) (j >> 32)));
                    HashMap hashMap = this.alignmentLineMap;
                    if (hashMap.containsKey(alignmentLine)) {
                        int intValue = ((Number) MapsKt__MapsKt.getValue(alignmentLine, hashMap)).intValue();
                        HorizontalAlignmentLine horizontalAlignmentLine = AlignmentLineKt.FirstBaseline;
                        round = ((Number) alignmentLine.merger.invoke(Integer.valueOf(intValue), Integer.valueOf(round))).intValue();
                    }
                    hashMap.put(alignmentLine, Integer.valueOf(round));
                    return;
                }
            } while (!getAlignmentLinesMap(nodeCoordinator).containsKey(alignmentLine));
            float positionFor = getPositionFor(nodeCoordinator, alignmentLine);
            long floatToRawIntBits3 = Float.floatToRawIntBits(positionFor);
            long floatToRawIntBits4 = Float.floatToRawIntBits(positionFor);
            floatToRawIntBits = floatToRawIntBits3 << 32;
            floatToRawIntBits2 = floatToRawIntBits4 & 4294967295L;
        }
    }

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

    public final boolean getQueried$ui() {
        return this.usedDuringParentMeasurement || this.previousUsedDuringParentLayout || this.usedByModifierMeasurement || this.usedByModifierLayout;
    }

    public final boolean getRequired$ui() {
        recalculateQueryOwner();
        return this.queryOwner != null;
    }

    public final void onAlignmentsChanged() {
        this.dirty = true;
        AlignmentLinesOwner alignmentLinesOwner = this.alignmentLinesOwner;
        AlignmentLinesOwner parentAlignmentLinesOwner = alignmentLinesOwner.getParentAlignmentLinesOwner();
        if (parentAlignmentLinesOwner == null) {
            return;
        }
        if (this.usedDuringParentMeasurement) {
            parentAlignmentLinesOwner.requestMeasure();
        } else if (this.previousUsedDuringParentLayout || this.usedDuringParentLayout) {
            parentAlignmentLinesOwner.requestLayout();
        }
        if (this.usedByModifierMeasurement) {
            alignmentLinesOwner.requestMeasure();
        }
        if (this.usedByModifierLayout) {
            alignmentLinesOwner.requestLayout();
        }
        parentAlignmentLinesOwner.getAlignmentLines().onAlignmentsChanged();
    }

    public final void recalculate() {
        HashMap hashMap = this.alignmentLineMap;
        hashMap.clear();
        NodeChainKt$fillVector$1 nodeChainKt$fillVector$1 = new NodeChainKt$fillVector$1(13, this);
        AlignmentLinesOwner alignmentLinesOwner = this.alignmentLinesOwner;
        alignmentLinesOwner.forEachChildAlignmentLinesOwner(nodeChainKt$fillVector$1);
        hashMap.putAll(getAlignmentLinesMap(alignmentLinesOwner.getInnerCoordinator()));
        this.dirty = false;
    }

    public final void recalculateQueryOwner() {
        LookaheadAlignmentLines alignmentLines;
        LookaheadAlignmentLines alignmentLines2;
        boolean queried$ui = getQueried$ui();
        AlignmentLinesOwner alignmentLinesOwner = this.alignmentLinesOwner;
        if (!queried$ui) {
            AlignmentLinesOwner parentAlignmentLinesOwner = alignmentLinesOwner.getParentAlignmentLinesOwner();
            if (parentAlignmentLinesOwner == null) {
                return;
            }
            alignmentLinesOwner = parentAlignmentLinesOwner.getAlignmentLines().queryOwner;
            if (alignmentLinesOwner == null || !alignmentLinesOwner.getAlignmentLines().getQueried$ui()) {
                AlignmentLinesOwner alignmentLinesOwner2 = this.queryOwner;
                if (alignmentLinesOwner2 == null || alignmentLinesOwner2.getAlignmentLines().getQueried$ui()) {
                    return;
                }
                AlignmentLinesOwner parentAlignmentLinesOwner2 = alignmentLinesOwner2.getParentAlignmentLinesOwner();
                if (parentAlignmentLinesOwner2 != null && (alignmentLines2 = parentAlignmentLinesOwner2.getAlignmentLines()) != null) {
                    alignmentLines2.recalculateQueryOwner();
                }
                AlignmentLinesOwner parentAlignmentLinesOwner3 = alignmentLinesOwner2.getParentAlignmentLinesOwner();
                alignmentLinesOwner = (parentAlignmentLinesOwner3 == null || (alignmentLines = parentAlignmentLinesOwner3.getAlignmentLines()) == null) ? null : alignmentLines.queryOwner;
            }
        }
        this.queryOwner = alignmentLinesOwner;
    }
}
