package androidx.compose.ui.focus;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.LayoutNode;
import java.util.Comparator;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: OneDimensionalFocusSearch.kt */
/* loaded from: classes.dex */
final class FocusableChildrenComparator implements Comparator {
    public static final FocusableChildrenComparator INSTANCE = new FocusableChildrenComparator();

    private FocusableChildrenComparator() {
    }

    @Override // java.util.Comparator
    public int compare(FocusTargetNode focusTargetNode, FocusTargetNode focusTargetNode2) {
        int i = 0;
        if (!FocusTraversalKt.isEligibleForFocusSearch(focusTargetNode) || !FocusTraversalKt.isEligibleForFocusSearch(focusTargetNode2)) {
            if (FocusTraversalKt.isEligibleForFocusSearch(focusTargetNode)) {
                return -1;
            }
            return FocusTraversalKt.isEligibleForFocusSearch(focusTargetNode2) ? 1 : 0;
        }
        LayoutNode requireLayoutNode = DelegatableNodeKt.requireLayoutNode(focusTargetNode);
        LayoutNode requireLayoutNode2 = DelegatableNodeKt.requireLayoutNode(focusTargetNode2);
        if (Intrinsics.areEqual(requireLayoutNode, requireLayoutNode2)) {
            return 0;
        }
        MutableVector pathFromRoot = pathFromRoot(requireLayoutNode);
        MutableVector pathFromRoot2 = pathFromRoot(requireLayoutNode2);
        int min = Math.min(pathFromRoot.getSize() - 1, pathFromRoot2.getSize() - 1);
        if (min >= 0) {
            while (Intrinsics.areEqual(pathFromRoot.getContent()[i], pathFromRoot2.getContent()[i])) {
                if (i != min) {
                    i++;
                }
            }
            return Intrinsics.compare(((LayoutNode) pathFromRoot.getContent()[i]).getPlaceOrder$ui_release(), ((LayoutNode) pathFromRoot2.getContent()[i]).getPlaceOrder$ui_release());
        }
        throw new IllegalStateException("Could not find a common ancestor between the two FocusModifiers.");
    }

    private final MutableVector pathFromRoot(LayoutNode layoutNode) {
        MutableVector mutableVector = new MutableVector(new LayoutNode[16], 0);
        while (layoutNode != null) {
            mutableVector.add(0, layoutNode);
            layoutNode = layoutNode.getParent$ui_release();
        }
        return mutableVector;
    }
}
