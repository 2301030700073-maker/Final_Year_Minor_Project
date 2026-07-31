package androidx.compose.ui.semantics;

import android.graphics.Region;
import android.os.Trace;
import androidx.collection.IntObjectMapKt;
import androidx.collection.MutableIntObjectMap;
import androidx.collection.MutableScatterMap;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.layout.RulerKt;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.InnerNodeCoordinator;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.NodeCoordinator;
import androidx.compose.ui.node.SemanticsModifierNode;
import androidx.compose.ui.unit.IntRect;
import androidx.paging.HintHandler;
import androidx.recyclerview.widget.RecyclerView;
import androidx.work.OperationKt;
import java.util.List;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class SemanticsNodeKt {
    public static final Rect DefaultFakeNodeBounds = new Rect(RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 10.0f, 10.0f);

    public static final SemanticsNode SemanticsNode(LayoutNode layoutNode, boolean z) {
        Modifier.Node node = (Modifier.Node) layoutNode.nodes.head;
        Object obj = null;
        if ((node.aggregateChildKindSet & 8) != 0) {
            loop0: while (true) {
                if (node == null) {
                    break;
                }
                if ((node.kindSet & 8) != 0) {
                    Modifier.Node node2 = node;
                    MutableVector mutableVector = null;
                    while (node2 != null) {
                        if (node2 instanceof SemanticsModifierNode) {
                            obj = node2;
                            break loop0;
                        }
                        if ((node2.kindSet & 8) != 0 && (node2 instanceof DelegatingNode)) {
                            int i = 0;
                            for (Modifier.Node node3 = ((DelegatingNode) node2).delegate; node3 != null; node3 = node3.child) {
                                if ((node3.kindSet & 8) != 0) {
                                    i++;
                                    if (i == 1) {
                                        node2 = node3;
                                    } else {
                                        if (mutableVector == null) {
                                            mutableVector = new MutableVector(new Modifier.Node[16]);
                                        }
                                        if (node2 != null) {
                                            mutableVector.add(node2);
                                            node2 = null;
                                        }
                                        mutableVector.add(node3);
                                    }
                                }
                            }
                            if (i == 1) {
                            }
                        }
                        node2 = HitTestResultKt.pop(mutableVector);
                    }
                }
                if ((node.aggregateChildKindSet & 8) == 0) {
                    break;
                }
                node = node.child;
            }
        }
        obj.getClass();
        Modifier.Node node4 = ((Modifier.Node) ((SemanticsModifierNode) obj)).node;
        SemanticsConfiguration semanticsConfiguration = layoutNode.getSemanticsConfiguration();
        if (semanticsConfiguration == null) {
            semanticsConfiguration = new SemanticsConfiguration();
        }
        return new SemanticsNode(node4, z, layoutNode, semanticsConfiguration);
    }

    public static final MutableIntObjectMap getAllUncoveredSemanticsNodesToIntObjectMap(SemanticsOwner semanticsOwner, Function1 function1) {
        Trace.beginSection("getAllUncoveredSemanticsNodesToIntObjectMap");
        try {
            SemanticsNode unmergedRootSemanticsNode = semanticsOwner.getUnmergedRootSemanticsNode();
            LayoutNode layoutNode = unmergedRootSemanticsNode.layoutNode;
            if (layoutNode.isPlaced() && layoutNode.isAttached()) {
                Rect boundsInRoot = unmergedRootSemanticsNode.getBoundsInRoot();
                MutableIntObjectMap mutableIntObjectMap = new MutableIntObjectMap(48);
                HintHandler hintHandler = new HintHandler(7);
                hintHandler.set(OperationKt.roundToIntRect(boundsInRoot));
                getAllUncoveredSemanticsNodesToIntObjectMap$lambda$0$findAllSemanticNodesRecursive(mutableIntObjectMap, unmergedRootSemanticsNode, unmergedRootSemanticsNode, new HintHandler(7), hintHandler, function1);
                return mutableIntObjectMap;
            }
            MutableIntObjectMap mutableIntObjectMap2 = IntObjectMapKt.EmptyIntObjectMap;
            mutableIntObjectMap2.getClass();
            return mutableIntObjectMap2;
        } finally {
            Trace.endSection();
        }
    }

    public static final void getAllUncoveredSemanticsNodesToIntObjectMap$lambda$0$addDescendantsOfMergingNodePartiallyVisibleInScrollParent(MutableIntObjectMap mutableIntObjectMap, SemanticsNode semanticsNode, SemanticsNode semanticsNode2, HintHandler hintHandler, HintHandler hintHandler2, Function1 function1) {
        HintHandler hintHandler3 = hintHandler;
        Region region = (Region) hintHandler3.state;
        HintHandler hintHandler4 = hintHandler2;
        Region region2 = (Region) hintHandler4.state;
        LayoutNode layoutNode = semanticsNode2.layoutNode;
        LayoutNode layoutNode2 = semanticsNode2.layoutNode;
        if (!layoutNode.isPlaced() || !layoutNode2.isAttached() || region2.isEmpty()) {
            if (semanticsNode2.isFake$ui()) {
                getAllUncoveredSemanticsNodesToIntObjectMap$lambda$0$addFakeNode(mutableIntObjectMap, semanticsNode, semanticsNode2);
                return;
            }
            return;
        }
        Rect touchBoundsInRoot = semanticsNode2.getTouchBoundsInRoot();
        if (touchBoundsInRoot.isEmpty()) {
            Object findSemanticsModifierNodeToGetBounds = semanticsNode2.findSemanticsModifierNodeToGetBounds();
            if (findSemanticsModifierNodeToGetBounds == null) {
                InnerNodeCoordinator innerNodeCoordinator = (InnerNodeCoordinator) layoutNode2.nodes.innerCoordinator;
                touchBoundsInRoot = RulerKt.findRootCoordinates(innerNodeCoordinator).localBoundingBoxOf(innerNodeCoordinator, false);
            } else {
                Modifier.Node node = ((Modifier.Node) findSemanticsModifierNodeToGetBounds).node;
                Object obj = semanticsNode2.unmergedConfig.props.get(SemanticsActions.OnClick);
                if (obj == null) {
                    obj = null;
                }
                touchBoundsInRoot = HitTestResultKt.effectiveBoundsInRoot(node, obj != null, false);
            }
        }
        IntRect roundToIntRect = OperationKt.roundToIntRect(touchBoundsInRoot);
        hintHandler3.set(roundToIntRect);
        if (region.op(region2, Region.Op.INTERSECT)) {
            int i = semanticsNode2.id;
            SemanticsNode semanticsNode3 = semanticsNode;
            if (i == semanticsNode3.id) {
                i = -1;
            }
            android.graphics.Rect bounds = region.getBounds();
            SemanticsNodeWithAdjustedBounds semanticsNodeWithAdjustedBounds = new SemanticsNodeWithAdjustedBounds(semanticsNode2, new IntRect(bounds.left, bounds.top, bounds.right, bounds.bottom));
            MutableIntObjectMap mutableIntObjectMap2 = mutableIntObjectMap;
            mutableIntObjectMap2.set(i, semanticsNodeWithAdjustedBounds);
            List children$ui$default = SemanticsNode.getChildren$ui$default(4, semanticsNode2);
            int size = children$ui$default.size() - 1;
            while (-1 < size) {
                if (!((Boolean) function1.invoke(children$ui$default.get(size))).booleanValue()) {
                    getAllUncoveredSemanticsNodesToIntObjectMap$lambda$0$addDescendantsOfMergingNodePartiallyVisibleInScrollParent(mutableIntObjectMap2, semanticsNode3, (SemanticsNode) children$ui$default.get(size), hintHandler3, hintHandler4, function1);
                }
                size--;
                mutableIntObjectMap2 = mutableIntObjectMap;
                semanticsNode3 = semanticsNode;
                hintHandler3 = hintHandler;
                hintHandler4 = hintHandler2;
            }
            if (isImportantForAccessibility(semanticsNode2)) {
                region2.op(roundToIntRect.left, roundToIntRect.top, roundToIntRect.right, roundToIntRect.bottom, Region.Op.DIFFERENCE);
            }
        }
    }

    public static final void getAllUncoveredSemanticsNodesToIntObjectMap$lambda$0$addFakeNode(MutableIntObjectMap mutableIntObjectMap, SemanticsNode semanticsNode, SemanticsNode semanticsNode2) {
        LayoutNode layoutNode;
        SemanticsNode parent = semanticsNode2.getParent();
        Rect boundsInRoot = (parent == null || (layoutNode = parent.layoutNode) == null || !layoutNode.isPlaced()) ? DefaultFakeNodeBounds : parent.getBoundsInRoot();
        int i = semanticsNode2.id;
        if (i == semanticsNode.id) {
            i = -1;
        }
        mutableIntObjectMap.set(i, new SemanticsNodeWithAdjustedBounds(semanticsNode2, OperationKt.roundToIntRect(boundsInRoot)));
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x00ad, code lost:
    
        if (r4 != null) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00c1, code lost:
    
        if (r1 != null) goto L51;
     */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00e9  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0195  */
    /* JADX WARN: Removed duplicated region for block: B:64:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void getAllUncoveredSemanticsNodesToIntObjectMap$lambda$0$findAllSemanticNodesRecursive(androidx.collection.MutableIntObjectMap r17, androidx.compose.ui.semantics.SemanticsNode r18, androidx.compose.ui.semantics.SemanticsNode r19, androidx.paging.HintHandler r20, androidx.paging.HintHandler r21, kotlin.jvm.functions.Function1 r22) {
        /*
            Method dump skipped, instructions count: 470
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.semantics.SemanticsNodeKt.getAllUncoveredSemanticsNodesToIntObjectMap$lambda$0$findAllSemanticNodesRecursive(androidx.collection.MutableIntObjectMap, androidx.compose.ui.semantics.SemanticsNode, androidx.compose.ui.semantics.SemanticsNode, androidx.paging.HintHandler, androidx.paging.HintHandler, kotlin.jvm.functions.Function1):void");
    }

    public static final Object getOrNull(SemanticsConfiguration semanticsConfiguration, SemanticsPropertyKey semanticsPropertyKey) {
        Object obj = semanticsConfiguration.props.get(semanticsPropertyKey);
        if (obj == null) {
            return null;
        }
        return obj;
    }

    public static final boolean isHidden(SemanticsNode semanticsNode) {
        NodeCoordinator findCoordinatorToGetBounds$ui = semanticsNode.findCoordinatorToGetBounds$ui();
        MutableScatterMap mutableScatterMap = semanticsNode.unmergedConfig.props;
        return (findCoordinatorToGetBounds$ui != null ? findCoordinatorToGetBounds$ui.isTransparent() : false) || mutableScatterMap.containsKey(SemanticsProperties.HideFromAccessibility) || mutableScatterMap.containsKey(SemanticsProperties.InvisibleToUser);
    }

    public static final boolean isImportantForAccessibility(SemanticsNode semanticsNode) {
        if (!isHidden(semanticsNode)) {
            SemanticsConfiguration semanticsConfiguration = semanticsNode.unmergedConfig;
            if (semanticsConfiguration.isMergingSemanticsOfDescendants) {
                return true;
            }
            MutableScatterMap mutableScatterMap = semanticsConfiguration.props;
            Object[] objArr = mutableScatterMap.keys;
            Object[] objArr2 = mutableScatterMap.values;
            long[] jArr = mutableScatterMap.metadata;
            int length = jArr.length - 2;
            if (length >= 0) {
                int i = 0;
                while (true) {
                    long j = jArr[i];
                    if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                        int i2 = 8 - ((~(i - length)) >>> 31);
                        for (int i3 = 0; i3 < i2; i3++) {
                            if ((255 & j) < 128) {
                                int i4 = (i << 3) + i3;
                                Object obj = objArr[i4];
                                Object obj2 = objArr2[i4];
                                if (((SemanticsPropertyKey) obj).isImportantForAccessibility) {
                                    return true;
                                }
                            }
                            j >>= 8;
                        }
                        if (i2 != 8) {
                            break;
                        }
                    }
                    if (i == length) {
                        break;
                    }
                    i++;
                }
            }
        }
        return false;
    }
}
