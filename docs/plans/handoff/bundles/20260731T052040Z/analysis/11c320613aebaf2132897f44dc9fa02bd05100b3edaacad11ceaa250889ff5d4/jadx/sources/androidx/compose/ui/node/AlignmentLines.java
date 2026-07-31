package androidx.compose.ui.node;

import androidx.compose.ui.layout.AlignmentLine;
import androidx.compose.ui.layout.AlignmentLineKt;
import androidx.compose.ui.layout.HorizontalAlignmentLine;
import java.util.HashMap;
import java.util.Map;
import kotlin.collections.MapsKt__MapsKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class AlignmentLines {
    public final AlignmentLinesOwner alignmentLinesOwner;
    public boolean previousUsedDuringParentLayout;
    public AlignmentLinesOwner queryOwner;
    public boolean usedByModifierLayout;
    public boolean usedByModifierMeasurement;
    public boolean usedDuringParentLayout;
    public boolean usedDuringParentMeasurement;
    public boolean dirty = true;
    public final HashMap alignmentLineMap = new HashMap();

    public AlignmentLines(AlignmentLinesOwner alignmentLinesOwner) {
        this.alignmentLinesOwner = alignmentLinesOwner;
    }

    public static final void access$addAlignmentLine(AlignmentLines alignmentLines, AlignmentLine alignmentLine, int i, NodeCoordinator nodeCoordinator) {
        long j;
        HashMap hashMap = alignmentLines.alignmentLineMap;
        float f = i;
        long floatToRawIntBits = Float.floatToRawIntBits(f) << 32;
        long floatToRawIntBits2 = Float.floatToRawIntBits(f) & 4294967295L;
        loop0: while (true) {
            j = floatToRawIntBits | floatToRawIntBits2;
            do {
                j = alignmentLines.mo310calculatePositionInParentR5De75A(nodeCoordinator, j);
                nodeCoordinator = nodeCoordinator.wrappedBy;
                nodeCoordinator.getClass();
                if (nodeCoordinator.equals(alignmentLines.alignmentLinesOwner.getInnerCoordinator())) {
                    break loop0;
                }
            } while (!alignmentLines.getAlignmentLinesMap(nodeCoordinator).containsKey(alignmentLine));
            float positionFor = alignmentLines.getPositionFor(nodeCoordinator, alignmentLine);
            long floatToRawIntBits3 = Float.floatToRawIntBits(positionFor);
            long floatToRawIntBits4 = Float.floatToRawIntBits(positionFor);
            floatToRawIntBits = floatToRawIntBits3 << 32;
            floatToRawIntBits2 = floatToRawIntBits4 & 4294967295L;
        }
        int round = Math.round(alignmentLine instanceof HorizontalAlignmentLine ? Float.intBitsToFloat((int) (j & 4294967295L)) : Float.intBitsToFloat((int) (j >> 32)));
        if (hashMap.containsKey(alignmentLine)) {
            int intValue = ((Number) MapsKt__MapsKt.getValue(alignmentLine, hashMap)).intValue();
            HorizontalAlignmentLine horizontalAlignmentLine = AlignmentLineKt.FirstBaseline;
            round = ((Number) alignmentLine.merger.invoke(Integer.valueOf(intValue), Integer.valueOf(round))).intValue();
        }
        hashMap.put(alignmentLine, Integer.valueOf(round));
    }

    /* renamed from: calculatePositionInParent-R5De75A, reason: not valid java name */
    public abstract long mo310calculatePositionInParentR5De75A(NodeCoordinator nodeCoordinator, long j);

    public abstract Map getAlignmentLinesMap(NodeCoordinator nodeCoordinator);

    public abstract int getPositionFor(NodeCoordinator nodeCoordinator, AlignmentLine alignmentLine);

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
        AlignmentLines$recalculate$1 alignmentLines$recalculate$1 = new AlignmentLines$recalculate$1(this);
        AlignmentLinesOwner alignmentLinesOwner = this.alignmentLinesOwner;
        alignmentLinesOwner.forEachChildAlignmentLinesOwner(alignmentLines$recalculate$1);
        hashMap.putAll(getAlignmentLinesMap(alignmentLinesOwner.getInnerCoordinator()));
        this.dirty = false;
    }

    public final void recalculateQueryOwner() {
        AlignmentLines alignmentLines;
        AlignmentLines alignmentLines2;
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
