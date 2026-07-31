package androidx.compose.ui.semantics;

import android.graphics.Region;
import android.os.Trace;
import androidx.camera.view.PreviewView;
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
import androidx.compose.ui.unit.IntRectKt;
import java.util.List;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class SemanticsNodeKt {
    public static final Rect DefaultFakeNodeBounds = new Rect(0.0f, 0.0f, 10.0f, 10.0f);

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
                        node2 = HitTestResultKt.access$pop(mutableVector);
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
            if (layoutNode.isPlaced() && layoutNode.isAttached$1()) {
                Rect boundsInRoot = unmergedRootSemanticsNode.getBoundsInRoot();
                MutableIntObjectMap mutableIntObjectMap = new MutableIntObjectMap(48);
                PreviewView.AnonymousClass1 anonymousClass1 = new PreviewView.AnonymousClass1(28);
                anonymousClass1.set(IntRectKt.roundToIntRect(boundsInRoot));
                getAllUncoveredSemanticsNodesToIntObjectMap$lambda$0$findAllSemanticNodesRecursive(new PreviewView.AnonymousClass1(28), anonymousClass1, mutableIntObjectMap, unmergedRootSemanticsNode, unmergedRootSemanticsNode, function1);
                return mutableIntObjectMap;
            }
            MutableIntObjectMap mutableIntObjectMap2 = IntObjectMapKt.EmptyIntObjectMap;
            mutableIntObjectMap2.getClass();
            return mutableIntObjectMap2;
        } finally {
            Trace.endSection();
        }
    }

    public static final void getAllUncoveredSemanticsNodesToIntObjectMap$lambda$0$addDescendantsOfMergingNodePartiallyVisibleInScrollParent(PreviewView.AnonymousClass1 anonymousClass1, PreviewView.AnonymousClass1 anonymousClass12, MutableIntObjectMap mutableIntObjectMap, SemanticsNode semanticsNode, SemanticsNode semanticsNode2, Function1 function1) {
        PreviewView.AnonymousClass1 anonymousClass13 = anonymousClass1;
        Region region = (Region) anonymousClass13.this$0;
        PreviewView.AnonymousClass1 anonymousClass14 = anonymousClass12;
        Region region2 = (Region) anonymousClass14.this$0;
        LayoutNode layoutNode = semanticsNode2.layoutNode;
        LayoutNode layoutNode2 = semanticsNode2.layoutNode;
        if (!layoutNode.isPlaced() || !layoutNode2.isAttached$1() || region2.isEmpty()) {
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
        IntRect roundToIntRect = IntRectKt.roundToIntRect(touchBoundsInRoot);
        anonymousClass13.set(roundToIntRect);
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
                    getAllUncoveredSemanticsNodesToIntObjectMap$lambda$0$addDescendantsOfMergingNodePartiallyVisibleInScrollParent(anonymousClass13, anonymousClass14, mutableIntObjectMap2, semanticsNode3, (SemanticsNode) children$ui$default.get(size), function1);
                }
                size--;
                anonymousClass13 = anonymousClass1;
                anonymousClass14 = anonymousClass12;
                mutableIntObjectMap2 = mutableIntObjectMap;
                semanticsNode3 = semanticsNode;
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
        mutableIntObjectMap.set(i, new SemanticsNodeWithAdjustedBounds(semanticsNode2, IntRectKt.roundToIntRect(boundsInRoot)));
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x00ad, code lost:
    
        if (r4 != null) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00c1, code lost:
    
        if (r0 != null) goto L51;
     */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00e9  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0196  */
    /* JADX WARN: Removed duplicated region for block: B:64:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void getAllUncoveredSemanticsNodesToIntObjectMap$lambda$0$findAllSemanticNodesRecursive(androidx.camera.view.PreviewView.AnonymousClass1 r17, androidx.camera.view.PreviewView.AnonymousClass1 r18, androidx.collection.MutableIntObjectMap r19, androidx.compose.ui.semantics.SemanticsNode r20, androidx.compose.ui.semantics.SemanticsNode r21, kotlin.jvm.functions.Function1 r22) {
        /*
            Method dump skipped, instructions count: 471
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.semantics.SemanticsNodeKt.getAllUncoveredSemanticsNodesToIntObjectMap$lambda$0$findAllSemanticNodesRecursive(androidx.camera.view.PreviewView$1, androidx.camera.view.PreviewView$1, androidx.collection.MutableIntObjectMap, androidx.compose.ui.semantics.SemanticsNode, androidx.compose.ui.semantics.SemanticsNode, kotlin.jvm.functions.Function1):void");
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
