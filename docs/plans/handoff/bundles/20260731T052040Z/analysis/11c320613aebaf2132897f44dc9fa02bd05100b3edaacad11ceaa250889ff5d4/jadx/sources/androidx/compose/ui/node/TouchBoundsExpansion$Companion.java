package androidx.compose.ui.node;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.ReusableGraphicsLayerScope;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.node.NodeCoordinator;
import androidx.compose.ui.semantics.SemanticsConfiguration;
import androidx.compose.ui.semantics.SemanticsNodeKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class TouchBoundsExpansion$Companion implements NodeCoordinator.HitTestSource {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ TouchBoundsExpansion$Companion(int i) {
        this.$r8$classId = i;
    }

    public static final int access$unpack(int i, long j) {
        int i2 = HitTestResultKt.$r8$clinit;
        return ((int) (j >> (i * 15))) & 32767;
    }

    @Override // androidx.compose.ui.node.NodeCoordinator.HitTestSource
    /* renamed from: childHitTest-qzLsGqo */
    public void mo354childHitTestqzLsGqo(LayoutNode layoutNode, long j, HitTestResult hitTestResult, int i, boolean z) {
        switch (this.$r8$classId) {
            case 1:
                layoutNode.m319hitTest6fMxITs$ui(j, hitTestResult, i, z);
                break;
            default:
                NodeChain nodeChain = layoutNode.nodes;
                NodeCoordinator nodeCoordinator = nodeChain.outerCoordinator;
                ReusableGraphicsLayerScope reusableGraphicsLayerScope = NodeCoordinator.graphicsLayerScope;
                nodeChain.outerCoordinator.m348hitTestqzLsGqo(NodeCoordinator.SemanticsSource, nodeCoordinator.m343fromParentPosition8S9VItk(j), hitTestResult, 1, z);
                break;
        }
    }

    @Override // androidx.compose.ui.node.NodeCoordinator.HitTestSource
    /* renamed from: entityType-OLwlOKw */
    public int mo355entityTypeOLwlOKw() {
        switch (this.$r8$classId) {
            case 1:
                return 16;
            default:
                return 8;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v3, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v6, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r1v8 */
    /* JADX WARN: Type inference failed for: r1v9 */
    /* JADX WARN: Type inference failed for: r8v0, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r8v1, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r8v10 */
    /* JADX WARN: Type inference failed for: r8v11 */
    /* JADX WARN: Type inference failed for: r8v12 */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Type inference failed for: r8v5, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r8v6, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v7 */
    /* JADX WARN: Type inference failed for: r8v8 */
    /* JADX WARN: Type inference failed for: r8v9 */
    @Override // androidx.compose.ui.node.NodeCoordinator.HitTestSource
    public boolean interceptOutOfBoundsChildEvents(Modifier.Node node) {
        switch (this.$r8$classId) {
            case 1:
                ?? r1 = 0;
                while (node != 0) {
                    if (node instanceof PointerInputModifierNode) {
                        if (((PointerInputModifierNode) node).interceptOutOfBoundsChildEvents()) {
                            return true;
                        }
                    } else if ((node.kindSet & 16) != 0 && (node instanceof DelegatingNode)) {
                        Modifier.Node node2 = node.delegate;
                        int i = 0;
                        r1 = r1;
                        node = node;
                        while (node2 != null) {
                            if ((node2.kindSet & 16) != 0) {
                                i++;
                                r1 = r1;
                                if (i == 1) {
                                    node = node2;
                                } else {
                                    if (r1 == 0) {
                                        r1 = new MutableVector(new Modifier.Node[16]);
                                    }
                                    if (node != 0) {
                                        r1.add(node);
                                        node = 0;
                                    }
                                    r1.add(node2);
                                }
                            }
                            node2 = node2.child;
                            r1 = r1;
                            node = node;
                        }
                        if (i == 1) {
                        }
                    }
                    node = HitTestResultKt.access$pop(r1);
                }
                return false;
            default:
                return false;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v11 */
    /* JADX WARN: Type inference failed for: r2v12 */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v5, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r2v6, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v7 */
    /* JADX WARN: Type inference failed for: r2v8 */
    /* JADX WARN: Type inference failed for: r2v9 */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v10 */
    /* JADX WARN: Type inference failed for: r3v11 */
    /* JADX WARN: Type inference failed for: r3v2 */
    /* JADX WARN: Type inference failed for: r3v3, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* JADX WARN: Type inference failed for: r3v5 */
    /* JADX WARN: Type inference failed for: r3v6, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r3v8 */
    /* JADX WARN: Type inference failed for: r3v9 */
    @Override // androidx.compose.ui.node.NodeCoordinator.HitTestSource
    public boolean shareWithSiblings(HitTestResult hitTestResult, LayoutNode layoutNode) {
        switch (this.$r8$classId) {
            case 1:
                NodeCoordinator nodeCoordinator = layoutNode.nodes.outerCoordinator;
                nodeCoordinator.getClass();
                Modifier.Node headNode = nodeCoordinator.headNode(NodeKindKt.m356getIncludeSelfInTraversalH91voCI(16));
                if (headNode != null && headNode.isAttached) {
                    if (!headNode.node.isAttached) {
                        InlineClassHelperKt.throwIllegalStateException("visitLocalDescendants called on an unattached node");
                    }
                    Modifier.Node node = headNode.node;
                    if ((node.aggregateChildKindSet & 16) != 0) {
                        while (node != null) {
                            if ((node.kindSet & 16) != 0) {
                                DelegatingNode delegatingNode = node;
                                ?? r3 = 0;
                                while (delegatingNode != 0) {
                                    if (delegatingNode instanceof PointerInputModifierNode) {
                                        if (((PointerInputModifierNode) delegatingNode).sharePointerInputWithSiblings()) {
                                            hitTestResult.hitDepth = hitTestResult.values._size - 1;
                                            break;
                                        }
                                    } else if ((delegatingNode.kindSet & 16) != 0 && (delegatingNode instanceof DelegatingNode)) {
                                        Modifier.Node node2 = delegatingNode.delegate;
                                        int i = 0;
                                        delegatingNode = delegatingNode;
                                        r3 = r3;
                                        while (node2 != null) {
                                            if ((node2.kindSet & 16) != 0) {
                                                i++;
                                                r3 = r3;
                                                if (i == 1) {
                                                    delegatingNode = node2;
                                                } else {
                                                    if (r3 == 0) {
                                                        r3 = new MutableVector(new Modifier.Node[16]);
                                                    }
                                                    if (delegatingNode != 0) {
                                                        r3.add(delegatingNode);
                                                        delegatingNode = 0;
                                                    }
                                                    r3.add(node2);
                                                }
                                            }
                                            node2 = node2.child;
                                            delegatingNode = delegatingNode;
                                            r3 = r3;
                                        }
                                        if (i == 1) {
                                        }
                                    }
                                    delegatingNode = HitTestResultKt.access$pop(r3);
                                }
                            }
                            node = node.child;
                        }
                        break;
                    }
                }
                break;
        }
        return false;
    }

    @Override // androidx.compose.ui.node.NodeCoordinator.HitTestSource
    public boolean shouldHitTest(Modifier.Node node) {
        switch (this.$r8$classId) {
            case 1:
                return true;
            default:
                return SemanticsNodeKt.isImportantForAccessibility(SemanticsNodeKt.SemanticsNode(HitTestResultKt.requireLayoutNode(node), false));
        }
    }

    @Override // androidx.compose.ui.node.NodeCoordinator.HitTestSource
    public boolean shouldHitTestChildren(LayoutNode layoutNode) {
        switch (this.$r8$classId) {
            case 1:
                return true;
            default:
                SemanticsConfiguration semanticsConfiguration = layoutNode.getSemanticsConfiguration();
                boolean z = false;
                if (semanticsConfiguration != null && semanticsConfiguration.isClearingSemantics) {
                    z = true;
                }
                return !z;
        }
    }
}
