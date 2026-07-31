package androidx.compose.ui.node;

import androidx.compose.ui.layout.AlignmentLine;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class AlignmentLines$recalculate$1 extends Lambda implements Function1 {
    final /* synthetic */ AlignmentLines this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AlignmentLines$recalculate$1(AlignmentLines alignmentLines) {
        super(1);
        this.this$0 = alignmentLines;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        AlignmentLinesOwner alignmentLinesOwner = (AlignmentLinesOwner) obj;
        if (alignmentLinesOwner.getPlaceOrder() != Integer.MAX_VALUE) {
            if (alignmentLinesOwner.getAlignmentLines().dirty) {
                alignmentLinesOwner.layoutChildren();
            }
            HashMap hashMap = alignmentLinesOwner.getAlignmentLines().alignmentLineMap;
            AlignmentLines alignmentLines = this.this$0;
            for (Map.Entry entry : hashMap.entrySet()) {
                AlignmentLines.access$addAlignmentLine(alignmentLines, (AlignmentLine) entry.getKey(), ((Number) entry.getValue()).intValue(), alignmentLinesOwner.getInnerCoordinator());
            }
            NodeCoordinator nodeCoordinator = alignmentLinesOwner.getInnerCoordinator().wrappedBy;
            nodeCoordinator.getClass();
            while (!nodeCoordinator.equals(this.this$0.alignmentLinesOwner.getInnerCoordinator())) {
                Set<AlignmentLine> keySet = this.this$0.getAlignmentLinesMap(nodeCoordinator).keySet();
                AlignmentLines alignmentLines2 = this.this$0;
                for (AlignmentLine alignmentLine : keySet) {
                    AlignmentLines.access$addAlignmentLine(alignmentLines2, alignmentLine, alignmentLines2.getPositionFor(nodeCoordinator, alignmentLine), nodeCoordinator);
                }
                nodeCoordinator = nodeCoordinator.wrappedBy;
                nodeCoordinator.getClass();
            }
        }
        return Unit.INSTANCE;
    }
}
