package androidx.compose.ui.scrollcapture;

import androidx.compose.ui.node.NodeCoordinator;
import androidx.compose.ui.semantics.SemanticsNode;
import androidx.compose.ui.unit.IntRect;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ScrollCaptureCandidate {
    public final NodeCoordinator coordinates;
    public final int depth;
    public final SemanticsNode node;
    public final IntRect viewportBoundsInWindow;

    public ScrollCaptureCandidate(SemanticsNode semanticsNode, int i, IntRect intRect, NodeCoordinator nodeCoordinator) {
        this.node = semanticsNode;
        this.depth = i;
        this.viewportBoundsInWindow = intRect;
        this.coordinates = nodeCoordinator;
    }

    public final String toString() {
        return "ScrollCaptureCandidate(node=" + this.node + ", depth=" + this.depth + ", viewportBoundsInWindow=" + this.viewportBoundsInWindow + ", coordinates=" + this.coordinates + ')';
    }
}
