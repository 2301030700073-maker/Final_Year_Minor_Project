package androidx.compose.ui.focus;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusDirection;
import androidx.compose.ui.layout.BeyondBoundsLayout;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.NodeChain;
import androidx.compose.ui.node.NodeKind;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: BeyondBoundsLayout.kt */
/* loaded from: classes.dex */
public abstract class BeyondBoundsLayoutKt {
    /* renamed from: searchBeyondBounds--OM-vw8, reason: not valid java name */
    public static final Object m1095searchBeyondBoundsOMvw8(FocusTargetNode focusTargetNode, int i, Function1 function1) {
        Modifier.Node node;
        BeyondBoundsLayout beyondBoundsLayoutParent;
        int m1737getBeforehoxUOeE;
        NodeChain nodes$ui_release;
        int m1903constructorimpl = NodeKind.m1903constructorimpl(1024);
        if (!focusTargetNode.getNode().isAttached()) {
            throw new IllegalStateException("visitAncestors called on an unattached node");
        }
        Modifier.Node parent$ui_release = focusTargetNode.getNode().getParent$ui_release();
        LayoutNode requireLayoutNode = DelegatableNodeKt.requireLayoutNode(focusTargetNode);
        loop0: while (true) {
            if (requireLayoutNode == null) {
                node = null;
                break;
            }
            if ((requireLayoutNode.getNodes$ui_release().getHead$ui_release().getAggregateChildKindSet$ui_release() & m1903constructorimpl) != 0) {
                while (parent$ui_release != null) {
                    if ((parent$ui_release.getKindSet$ui_release() & m1903constructorimpl) != 0) {
                        node = parent$ui_release;
                        MutableVector mutableVector = null;
                        while (node != null) {
                            if (node instanceof FocusTargetNode) {
                                break loop0;
                            }
                            if ((node.getKindSet$ui_release() & m1903constructorimpl) != 0 && (node instanceof DelegatingNode)) {
                                int i2 = 0;
                                for (Modifier.Node delegate$ui_release = ((DelegatingNode) node).getDelegate$ui_release(); delegate$ui_release != null; delegate$ui_release = delegate$ui_release.getChild$ui_release()) {
                                    if ((delegate$ui_release.getKindSet$ui_release() & m1903constructorimpl) != 0) {
                                        i2++;
                                        if (i2 == 1) {
                                            node = delegate$ui_release;
                                        } else {
                                            if (mutableVector == null) {
                                                mutableVector = new MutableVector(new Modifier.Node[16], 0);
                                            }
                                            if (node != null) {
                                                mutableVector.add(node);
                                                node = null;
                                            }
                                            mutableVector.add(delegate$ui_release);
                                        }
                                    }
                                }
                                if (i2 == 1) {
                                }
                            }
                            node = DelegatableNodeKt.pop(mutableVector);
                        }
                    }
                    parent$ui_release = parent$ui_release.getParent$ui_release();
                }
            }
            requireLayoutNode = requireLayoutNode.getParent$ui_release();
            parent$ui_release = (requireLayoutNode == null || (nodes$ui_release = requireLayoutNode.getNodes$ui_release()) == null) ? null : nodes$ui_release.getTail$ui_release();
        }
        FocusTargetNode focusTargetNode2 = (FocusTargetNode) node;
        if ((focusTargetNode2 != null && Intrinsics.areEqual(focusTargetNode2.getBeyondBoundsLayoutParent(), focusTargetNode.getBeyondBoundsLayoutParent())) || (beyondBoundsLayoutParent = focusTargetNode.getBeyondBoundsLayoutParent()) == null) {
            return null;
        }
        FocusDirection.Companion companion = FocusDirection.Companion;
        if (FocusDirection.m1099equalsimpl0(i, companion.m1110getUpdhqQ8s())) {
            m1737getBeforehoxUOeE = BeyondBoundsLayout.LayoutDirection.Companion.m1735getAbovehoxUOeE();
        } else if (FocusDirection.m1099equalsimpl0(i, companion.m1103getDowndhqQ8s())) {
            m1737getBeforehoxUOeE = BeyondBoundsLayout.LayoutDirection.Companion.m1738getBelowhoxUOeE();
        } else if (FocusDirection.m1099equalsimpl0(i, companion.m1106getLeftdhqQ8s())) {
            m1737getBeforehoxUOeE = BeyondBoundsLayout.LayoutDirection.Companion.m1739getLefthoxUOeE();
        } else if (FocusDirection.m1099equalsimpl0(i, companion.m1109getRightdhqQ8s())) {
            m1737getBeforehoxUOeE = BeyondBoundsLayout.LayoutDirection.Companion.m1740getRighthoxUOeE();
        } else if (FocusDirection.m1099equalsimpl0(i, companion.m1107getNextdhqQ8s())) {
            m1737getBeforehoxUOeE = BeyondBoundsLayout.LayoutDirection.Companion.m1736getAfterhoxUOeE();
        } else {
            if (!FocusDirection.m1099equalsimpl0(i, companion.m1108getPreviousdhqQ8s())) {
                throw new IllegalStateException("Unsupported direction for beyond bounds layout");
            }
            m1737getBeforehoxUOeE = BeyondBoundsLayout.LayoutDirection.Companion.m1737getBeforehoxUOeE();
        }
        return beyondBoundsLayoutParent.mo334layouto7g1Pn8(m1737getBeforehoxUOeE, function1);
    }
}
