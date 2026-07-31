package androidx.compose.ui.layout;

import androidx.compose.runtime.PausedCompositionImpl;
import androidx.compose.ui.layout.LayoutNodeSubcompositionsState;
import androidx.compose.ui.node.LayoutNode;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LayoutNodeSubcompositionsState$precomposePaused$1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object $slotId;
    public final /* synthetic */ LayoutNodeSubcompositionsState this$0;

    public /* synthetic */ LayoutNodeSubcompositionsState$precomposePaused$1(LayoutNodeSubcompositionsState layoutNodeSubcompositionsState, Object obj, int i) {
        this.$r8$classId = i;
        this.this$0 = layoutNodeSubcompositionsState;
        this.$slotId = obj;
    }

    public LayoutNodeSubcompositionsState.NodeState getNodeState() {
        LayoutNodeSubcompositionsState layoutNodeSubcompositionsState = this.this$0;
        LayoutNode layoutNode = (LayoutNode) layoutNodeSubcompositionsState.precomposeMap.get(this.$slotId);
        if (layoutNode != null) {
            return (LayoutNodeSubcompositionsState.NodeState) layoutNodeSubcompositionsState.nodeToNodeState.get(layoutNode);
        }
        return null;
    }

    public final boolean isComplete() {
        PausedCompositionImpl pausedCompositionImpl;
        switch (this.$r8$classId) {
            case 0:
                return true;
            default:
                LayoutNodeSubcompositionsState.NodeState nodeState = getNodeState();
                if (nodeState == null || (pausedCompositionImpl = nodeState.pausedComposition) == null) {
                    return true;
                }
                return pausedCompositionImpl.isComplete();
        }
    }

    private final void cancel$androidx$compose$ui$layout$LayoutNodeSubcompositionsState$precomposePaused$1() {
    }
}
