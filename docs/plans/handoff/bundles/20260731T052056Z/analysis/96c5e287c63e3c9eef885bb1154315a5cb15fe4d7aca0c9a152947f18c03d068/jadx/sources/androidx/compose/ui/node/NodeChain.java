package androidx.compose.ui.node;

import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.collection.MutableObjectIntMap;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.compose.ui.platform.GraphicsLayerOwnerLayer;
import java.util.HashSet;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class NodeChain {
    public final /* synthetic */ int $r8$classId;
    public Object buffer;
    public Object cachedDiffer;
    public Object current;
    public Object head;
    public final Object innerCoordinator;
    public final Object layoutNode;
    public Object outerCoordinator;
    public final Object sentinelHead;
    public final Object stack;
    public final Object tail;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Differ {
        public MutableVector after;
        public MutableVector before;
        public Modifier.Node node;
        public int offset;
        public boolean shouldAttachOnInsert;

        public Differ(Modifier.Node node, int i, MutableVector mutableVector, MutableVector mutableVector2, boolean z) {
            this.node = node;
            this.offset = i;
            this.before = mutableVector;
            this.after = mutableVector2;
            this.shouldAttachOnInsert = z;
        }

        public final boolean areItemsTheSame(int i, int i2) {
            MutableVector mutableVector = this.before;
            int i3 = this.offset;
            Modifier.Element element = (Modifier.Element) mutableVector.content[i + i3];
            Modifier.Element element2 = (Modifier.Element) this.after.content[i3 + i2];
            return Intrinsics.areEqual(element, element2) || element.getClass() == element2.getClass();
        }
    }

    public NodeChain(LayoutNode layoutNode) {
        this.$r8$classId = 0;
        this.layoutNode = layoutNode;
        NodeChain$sentinelHead$1 nodeChain$sentinelHead$1 = new NodeChain$sentinelHead$1();
        nodeChain$sentinelHead$1.aggregateChildKindSet = -1;
        this.sentinelHead = nodeChain$sentinelHead$1;
        InnerNodeCoordinator innerNodeCoordinator = new InnerNodeCoordinator(layoutNode);
        this.innerCoordinator = innerNodeCoordinator;
        this.outerCoordinator = innerNodeCoordinator;
        TailModifierNode tailModifierNode = innerNodeCoordinator.tail;
        this.tail = tailModifierNode;
        this.head = tailModifierNode;
        this.stack = new MutableVector(new Modifier[16]);
    }

    public static Modifier.Node createAndInsertNodeAsChild(Modifier.Element element, Modifier.Node node) {
        Modifier.Node node2;
        if (element instanceof ModifierNodeElement) {
            node2 = ((ModifierNodeElement) element).create();
            node2.kindSet = NodeKindKt.calculateNodeKindSetFromIncludingDelegates(node2);
        } else {
            BackwardsCompatNode backwardsCompatNode = new BackwardsCompatNode();
            backwardsCompatNode.kindSet = NodeKindKt.calculateNodeKindSetFrom(element);
            backwardsCompatNode.element = element;
            new HashSet();
            node2 = backwardsCompatNode;
        }
        if (node2.isAttached) {
            InlineClassHelperKt.throwIllegalStateException("A ModifierNodeElement cannot return an already attached node from create() ");
        }
        node2.insertedNodeAwaitingAttachForInvalidation = true;
        Modifier.Node node3 = node.child;
        if (node3 != null) {
            node3.parent = node2;
            node2.child = node3;
        }
        node.child = node2;
        node2.parent = node;
        return node2;
    }

    public static Modifier.Node detachAndRemoveNode(Modifier.Node node) {
        boolean z = node.isAttached;
        if (z) {
            MutableObjectIntMap mutableObjectIntMap = NodeKindKt.classToKindSetMap;
            if (!z) {
                InlineClassHelperKt.throwIllegalStateException("autoInvalidateRemovedNode called on unattached node");
            }
            NodeKindKt.autoInvalidateNodeIncludingDelegates(node, -1, 2);
            node.runDetachLifecycle$ui();
            node.markAsDetached$ui();
        }
        Modifier.Node node2 = node.child;
        Modifier.Node node3 = node.parent;
        if (node2 != null) {
            node2.parent = node3;
            node.child = null;
        }
        if (node3 != null) {
            node3.child = node2;
            node.parent = null;
        }
        node3.getClass();
        return node3;
    }

    public static void updateNode(Modifier.Element element, Modifier.Element element2, Modifier.Node node) {
        if ((element instanceof ModifierNodeElement) && (element2 instanceof ModifierNodeElement)) {
            node.getClass();
            ((ModifierNodeElement) element2).update(node);
            if (node.isAttached) {
                NodeKindKt.autoInvalidateUpdatedNode(node);
                return;
            } else {
                node.updatedNodeAwaitingAttachForInvalidation = true;
                return;
            }
        }
        if (!(node instanceof BackwardsCompatNode)) {
            InlineClassHelperKt.throwIllegalStateException("Unknown Modifier.Node type");
            return;
        }
        BackwardsCompatNode backwardsCompatNode = (BackwardsCompatNode) node;
        boolean z = backwardsCompatNode.isAttached;
        if (z) {
            if (!z) {
                InlineClassHelperKt.throwIllegalStateException("unInitializeModifier called on unattached node");
            }
            if ((backwardsCompatNode.kindSet & 8) != 0) {
                ((AndroidComposeView) HitTestResultKt.requireOwner(backwardsCompatNode)).onSemanticsChange();
            }
        }
        backwardsCompatNode.element = element2;
        backwardsCompatNode.kindSet = NodeKindKt.calculateNodeKindSetFrom(element2);
        if (backwardsCompatNode.isAttached) {
            backwardsCompatNode.initializeModifier(false);
        }
        if (node.isAttached) {
            NodeKindKt.autoInvalidateUpdatedNode(node);
        } else {
            node.updatedNodeAwaitingAttachForInvalidation = true;
        }
    }

    /* renamed from: has-H91voCI$ui, reason: not valid java name */
    public boolean m563hasH91voCI$ui(int i) {
        return (((Modifier.Node) this.head).aggregateChildKindSet & i) != 0;
    }

    public void propagateCoordinator(Modifier.Node node, NodeCoordinator nodeCoordinator) {
        for (Modifier.Node node2 = node.parent; node2 != null; node2 = node2.parent) {
            if (node2 == ((NodeChain$sentinelHead$1) this.sentinelHead)) {
                LayoutNode parent$ui = ((LayoutNode) this.layoutNode).getParent$ui();
                nodeCoordinator.wrappedBy = parent$ui != null ? (InnerNodeCoordinator) parent$ui.nodes.innerCoordinator : null;
                this.outerCoordinator = nodeCoordinator;
                return;
            } else {
                if ((node2.kindSet & 2) != 0) {
                    return;
                }
                node2.updateCoordinator$ui(nodeCoordinator);
            }
        }
    }

    public void runAttachLifecycle() {
        for (Modifier.Node node = (Modifier.Node) this.head; node != null; node = node.child) {
            node.runAttachLifecycle$ui();
            if (node.insertedNodeAwaitingAttachForInvalidation) {
                MutableObjectIntMap mutableObjectIntMap = NodeKindKt.classToKindSetMap;
                if (!node.isAttached) {
                    InlineClassHelperKt.throwIllegalStateException("autoInvalidateInsertedNode called on unattached node");
                }
                NodeKindKt.autoInvalidateNodeIncludingDelegates(node, -1, 1);
            }
            if (node.updatedNodeAwaitingAttachForInvalidation) {
                NodeKindKt.autoInvalidateUpdatedNode(node);
            }
            node.insertedNodeAwaitingAttachForInvalidation = false;
            node.updatedNodeAwaitingAttachForInvalidation = false;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x0191, code lost:
    
        r27 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x0196, code lost:
    
        r25 = r22 + (r25 & r27);
        r22 = r11;
        r11 = r22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x01a0, code lost:
    
        if (r14 <= r7) goto L185;
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x01a2, code lost:
    
        if (r11 <= r15) goto L187;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x01a4, code lost:
    
        r27 = r11;
        r28 = r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x01b0, code lost:
    
        if (r0.areItemsTheSame(r14 - 1, r27 - 1) == false) goto L186;
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x01b2, code lost:
    
        r14 = r14 - 1;
        r11 = r27 - 1;
        r13 = r28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x01bd, code lost:
    
        r20[r17 + r28] = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x01c1, code lost:
    
        if (r24 == 0) goto L181;
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x01c3, code lost:
    
        r11 = r19 - r28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x01c5, code lost:
    
        if (r11 < r12) goto L182;
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x01c7, code lost:
    
        if (r11 > r3) goto L183;
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x01cd, code lost:
    
        if (r16[r17 + r11] < r14) goto L184;
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x01cf, code lost:
    
        r26[r33] = r14;
        r11 = 1;
        r26[1] = r27;
        r26[r32] = r22;
        r26[3] = r25;
        r26[4] = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x0264, code lost:
    
        r13 = r28 + 2;
        r11 = r24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:123:0x01b9, code lost:
    
        r27 = r11;
        r28 = r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:125:0x0194, code lost:
    
        r27 = r33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:126:0x018d, code lost:
    
        r25 = r33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:127:0x017b, code lost:
    
        r11 = r20[(r13 + 1) + r17];
        r14 = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:128:0x016e, code lost:
    
        r24 = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:129:0x0179, code lost:
    
        r24 = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:131:0x026a, code lost:
    
        r3 = r3 + 1;
        r12 = r20;
        r11 = r21;
        r13 = r26;
        r14 = r29;
        r35 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:132:0x0154, code lost:
    
        r11 = r33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x00d0, code lost:
    
        if (r16[(r11 + 1) + r17] > r16[(r25 - 1) + r17]) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x014a, code lost:
    
        r26 = r13;
        r29 = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x0150, code lost:
    
        if ((r19 & 1) != 0) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x0152, code lost:
    
        r11 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x0156, code lost:
    
        r13 = r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x0157, code lost:
    
        if (r13 > r3) goto L180;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x0159, code lost:
    
        if (r13 == r12) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x015b, code lost:
    
        if (r13 == r3) goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x015d, code lost:
    
        r24 = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x016b, code lost:
    
        if (r20[(r13 + 1) + r17] >= r20[(r13 - 1) + r17]) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x0170, code lost:
    
        r11 = r20[(r13 - 1) + r17];
        r14 = r11 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x0182, code lost:
    
        r22 = r10 - ((r6 - r14) - r13);
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x0188, code lost:
    
        if (r3 == 0) goto L73;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x018a, code lost:
    
        r25 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x018f, code lost:
    
        if (r14 != r11) goto L76;
     */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00f3  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00fa  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x011e  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0140  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x00fd  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x00f6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void structuralUpdate(int r32, androidx.compose.runtime.collection.MutableVector r33, androidx.compose.runtime.collection.MutableVector r34, androidx.compose.ui.Modifier.Node r35, boolean r36) {
        /*
            Method dump skipped, instructions count: 929
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.node.NodeChain.structuralUpdate(int, androidx.compose.runtime.collection.MutableVector, androidx.compose.runtime.collection.MutableVector, androidx.compose.ui.Modifier$Node, boolean):void");
    }

    public void syncCoordinators() {
        LayoutModifierNodeCoordinator layoutModifierNodeCoordinator;
        LayoutNode layoutNode = (LayoutNode) this.layoutNode;
        NodeCoordinator nodeCoordinator = (InnerNodeCoordinator) this.innerCoordinator;
        for (Modifier.Node node = ((TailModifierNode) this.tail).parent; node != null; node = node.parent) {
            LayoutModifierNode asLayoutModifierNode = HitTestResultKt.asLayoutModifierNode(node);
            if (asLayoutModifierNode != null) {
                NodeCoordinator nodeCoordinator2 = node.coordinator;
                if (nodeCoordinator2 != null) {
                    LayoutModifierNodeCoordinator layoutModifierNodeCoordinator2 = (LayoutModifierNodeCoordinator) nodeCoordinator2;
                    LayoutModifierNode layoutModifierNode = layoutModifierNodeCoordinator2.layoutModifierNode;
                    layoutModifierNodeCoordinator2.setLayoutModifierNode$ui(asLayoutModifierNode);
                    layoutModifierNodeCoordinator = layoutModifierNodeCoordinator2;
                    if (layoutModifierNode != node) {
                        OwnedLayer ownedLayer = layoutModifierNodeCoordinator2.layer;
                        layoutModifierNodeCoordinator = layoutModifierNodeCoordinator2;
                        if (ownedLayer != null) {
                            ((GraphicsLayerOwnerLayer) ownedLayer).invalidate();
                            layoutModifierNodeCoordinator = layoutModifierNodeCoordinator2;
                        }
                    }
                } else {
                    LayoutModifierNodeCoordinator layoutModifierNodeCoordinator3 = new LayoutModifierNodeCoordinator(layoutNode, asLayoutModifierNode);
                    node.updateCoordinator$ui(layoutModifierNodeCoordinator3);
                    layoutModifierNodeCoordinator = layoutModifierNodeCoordinator3;
                }
                nodeCoordinator.wrappedBy = layoutModifierNodeCoordinator;
                layoutModifierNodeCoordinator.wrapped = nodeCoordinator;
                nodeCoordinator = layoutModifierNodeCoordinator;
            } else {
                node.updateCoordinator$ui(nodeCoordinator);
            }
        }
        LayoutNode parent$ui = layoutNode.getParent$ui();
        nodeCoordinator.wrappedBy = parent$ui != null ? (InnerNodeCoordinator) parent$ui.nodes.innerCoordinator : null;
        this.outerCoordinator = nodeCoordinator;
    }

    public String toString() {
        switch (this.$r8$classId) {
            case 0:
                StringBuilder sb = new StringBuilder("[");
                Modifier.Node node = (Modifier.Node) this.head;
                TailModifierNode tailModifierNode = (TailModifierNode) this.tail;
                if (node == tailModifierNode) {
                    sb.append("]");
                } else {
                    while (true) {
                        if (node != null && node != tailModifierNode) {
                            sb.append(String.valueOf(node));
                            if (node.child == tailModifierNode) {
                                sb.append("]");
                            } else {
                                sb.append(",");
                                node = node.child;
                            }
                        }
                    }
                }
                return sb.toString();
            default:
                return super.toString();
        }
    }

    public /* synthetic */ NodeChain(ViewGroup viewGroup, FrameLayout frameLayout, View view, View view2, View view3, TextView textView, View view4, View view5, View view6, View view7, ViewGroup viewGroup2, int i) {
        this.$r8$classId = i;
        this.layoutNode = frameLayout;
        this.sentinelHead = view;
        this.innerCoordinator = view2;
        this.outerCoordinator = view3;
        this.tail = textView;
        this.head = view4;
        this.current = view5;
        this.buffer = view6;
        this.stack = view7;
        this.cachedDiffer = viewGroup2;
    }

    public /* synthetic */ NodeChain(ViewGroup viewGroup, View view, View view2, View view3, Object obj, View view4, View view5, View view6, View view7, View view8, int i) {
        this.$r8$classId = i;
        this.layoutNode = viewGroup;
        this.sentinelHead = view;
        this.innerCoordinator = view2;
        this.outerCoordinator = view3;
        this.tail = obj;
        this.head = view4;
        this.current = view5;
        this.buffer = view6;
        this.stack = view7;
        this.cachedDiffer = view8;
    }
}
