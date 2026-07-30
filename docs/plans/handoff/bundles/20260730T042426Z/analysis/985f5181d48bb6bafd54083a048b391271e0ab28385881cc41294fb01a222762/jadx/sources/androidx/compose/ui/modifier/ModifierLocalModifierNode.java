package androidx.compose.ui.modifier;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.node.DelegatableNode;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.NodeChain;
import androidx.compose.ui.node.NodeKind;

/* compiled from: ModifierLocalModifierNode.kt */
/* loaded from: classes.dex */
public interface ModifierLocalModifierNode extends ModifierLocalReadScope, DelegatableNode {
    ModifierLocalMap getProvidedValues();

    /* compiled from: ModifierLocalModifierNode.kt */
    /* renamed from: androidx.compose.ui.modifier.ModifierLocalModifierNode$-CC, reason: invalid class name */
    public abstract /* synthetic */ class CC {
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r2v10, types: [androidx.compose.ui.Modifier$Node] */
        /* JADX WARN: Type inference failed for: r2v11, types: [java.lang.Object] */
        /* JADX WARN: Type inference failed for: r2v12 */
        /* JADX WARN: Type inference failed for: r2v13 */
        /* JADX WARN: Type inference failed for: r2v14 */
        /* JADX WARN: Type inference failed for: r2v15 */
        /* JADX WARN: Type inference failed for: r2v16 */
        /* JADX WARN: Type inference failed for: r2v17 */
        /* JADX WARN: Type inference failed for: r2v6 */
        /* JADX WARN: Type inference failed for: r2v7, types: [androidx.compose.ui.Modifier$Node] */
        /* JADX WARN: Type inference failed for: r2v9 */
        /* JADX WARN: Type inference failed for: r4v0 */
        /* JADX WARN: Type inference failed for: r4v1 */
        /* JADX WARN: Type inference failed for: r4v10 */
        /* JADX WARN: Type inference failed for: r4v11 */
        /* JADX WARN: Type inference failed for: r4v2 */
        /* JADX WARN: Type inference failed for: r4v3, types: [androidx.compose.runtime.collection.MutableVector] */
        /* JADX WARN: Type inference failed for: r4v4 */
        /* JADX WARN: Type inference failed for: r4v5 */
        /* JADX WARN: Type inference failed for: r4v6, types: [androidx.compose.runtime.collection.MutableVector] */
        /* JADX WARN: Type inference failed for: r4v8 */
        /* JADX WARN: Type inference failed for: r4v9 */
        public static Object $default$getCurrent(ModifierLocalModifierNode modifierLocalModifierNode, ModifierLocal modifierLocal) {
            NodeChain nodes$ui_release;
            if (!modifierLocalModifierNode.getNode().isAttached()) {
                InlineClassHelperKt.throwIllegalArgumentException("ModifierLocal accessed from an unattached node");
            }
            int m1903constructorimpl = NodeKind.m1903constructorimpl(32);
            if (!modifierLocalModifierNode.getNode().isAttached()) {
                throw new IllegalStateException("visitAncestors called on an unattached node");
            }
            Modifier.Node parent$ui_release = modifierLocalModifierNode.getNode().getParent$ui_release();
            LayoutNode requireLayoutNode = DelegatableNodeKt.requireLayoutNode(modifierLocalModifierNode);
            while (requireLayoutNode != null) {
                if ((requireLayoutNode.getNodes$ui_release().getHead$ui_release().getAggregateChildKindSet$ui_release() & m1903constructorimpl) != 0) {
                    while (parent$ui_release != null) {
                        if ((parent$ui_release.getKindSet$ui_release() & m1903constructorimpl) != 0) {
                            DelegatingNode delegatingNode = parent$ui_release;
                            ?? r4 = 0;
                            while (delegatingNode != 0) {
                                if (delegatingNode instanceof ModifierLocalModifierNode) {
                                    ModifierLocalModifierNode modifierLocalModifierNode2 = (ModifierLocalModifierNode) delegatingNode;
                                    if (modifierLocalModifierNode2.getProvidedValues().contains$ui_release(modifierLocal)) {
                                        return modifierLocalModifierNode2.getProvidedValues().get$ui_release(modifierLocal);
                                    }
                                } else if ((delegatingNode.getKindSet$ui_release() & m1903constructorimpl) != 0 && (delegatingNode instanceof DelegatingNode)) {
                                    Modifier.Node delegate$ui_release = delegatingNode.getDelegate$ui_release();
                                    int i = 0;
                                    delegatingNode = delegatingNode;
                                    r4 = r4;
                                    while (delegate$ui_release != null) {
                                        if ((delegate$ui_release.getKindSet$ui_release() & m1903constructorimpl) != 0) {
                                            i++;
                                            r4 = r4;
                                            if (i == 1) {
                                                delegatingNode = delegate$ui_release;
                                            } else {
                                                if (r4 == 0) {
                                                    r4 = new MutableVector(new Modifier.Node[16], 0);
                                                }
                                                if (delegatingNode != 0) {
                                                    r4.add(delegatingNode);
                                                    delegatingNode = 0;
                                                }
                                                r4.add(delegate$ui_release);
                                            }
                                        }
                                        delegate$ui_release = delegate$ui_release.getChild$ui_release();
                                        delegatingNode = delegatingNode;
                                        r4 = r4;
                                    }
                                    if (i == 1) {
                                    }
                                }
                                delegatingNode = DelegatableNodeKt.pop(r4);
                            }
                        }
                        parent$ui_release = parent$ui_release.getParent$ui_release();
                    }
                }
                requireLayoutNode = requireLayoutNode.getParent$ui_release();
                parent$ui_release = (requireLayoutNode == null || (nodes$ui_release = requireLayoutNode.getNodes$ui_release()) == null) ? null : nodes$ui_release.getTail$ui_release();
            }
            return modifierLocal.getDefaultFactory$ui_release().invoke();
        }
    }
}
