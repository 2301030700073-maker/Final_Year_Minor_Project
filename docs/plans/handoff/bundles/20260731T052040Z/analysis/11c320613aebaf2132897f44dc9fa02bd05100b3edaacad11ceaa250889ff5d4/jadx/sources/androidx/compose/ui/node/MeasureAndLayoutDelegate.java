package androidx.compose.ui.node;

import android.os.Trace;
import androidx.appcompat.widget.PopupMenu$1;
import androidx.cardview.widget.CardView;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.ReusableGraphicsLayerScope;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.compose.ui.platform.AndroidComposeView$resendMotionEventOnLayout$1;
import androidx.compose.ui.unit.Constraints;
import coil3.decode.DecodeUtils$$ExternalSyntheticBUOutline0;
import kotlin.jvm.internal.Intrinsics;
import org.acra.util.ProcessFinisher;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class MeasureAndLayoutDelegate {
    public boolean duringFullMeasureLayoutPass;
    public boolean duringMeasureLayout;
    public final LayoutNode root;
    public Constraints rootConstraints;
    public final ProcessFinisher relayoutNodes = new ProcessFinisher(11);
    public final CardView.AnonymousClass1 onPositionedDispatcher = new CardView.AnonymousClass1(18);
    public final MutableVector onLayoutCompletedListeners = new MutableVector(new LayoutNode[16]);
    public final long measureIteration = 1;
    public final MutableVector postponedMeasureRequests = new MutableVector(new PostponedRequest[16]);

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class PostponedRequest {
        public final boolean isForced;
        public final boolean isLookahead;
        public final LayoutNode node;

        public PostponedRequest(LayoutNode layoutNode, boolean z, boolean z2) {
            this.node = layoutNode;
            this.isLookahead = z;
            this.isForced = z2;
        }
    }

    public MeasureAndLayoutDelegate(LayoutNode layoutNode) {
        this.root = layoutNode;
    }

    public static final boolean access$remeasureAndRelayoutIfNeeded(MeasureAndLayoutDelegate measureAndLayoutDelegate, LayoutNode layoutNode, boolean z) {
        Constraints constraints;
        Placeable.PlacementScope placementScope;
        InnerNodeCoordinator innerNodeCoordinator;
        LayoutNode parent$ui;
        LayoutNode layoutNode2 = measureAndLayoutDelegate.root;
        boolean z2 = layoutNode.isDeactivated;
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = layoutNode.layoutDelegate;
        if (!z2 && isUsedInMeasureOrLayout(layoutNode)) {
            if (layoutNode == layoutNode2) {
                constraints = measureAndLayoutDelegate.rootConstraints;
                constraints.getClass();
            } else {
                constraints = null;
            }
            if (z) {
                r3 = layoutNodeLayoutDelegate.lookaheadMeasurePending ? m333doLookaheadRemeasuresdFAvZA(layoutNode, constraints) : false;
                if ((r3 || layoutNodeLayoutDelegate.lookaheadLayoutPending) && Intrinsics.areEqual(layoutNode.isPlacedInLookahead(), Boolean.TRUE)) {
                    layoutNode.lookaheadReplace$ui();
                }
            } else {
                boolean m334doRemeasuresdFAvZA = layoutNode.getMeasurePending$ui() ? m334doRemeasuresdFAvZA(layoutNode, constraints) : false;
                if (layoutNode.getLayoutPending$ui() && (layoutNode == layoutNode2 || ((parent$ui = layoutNode.getParent$ui()) != null && parent$ui.isPlaced() && layoutNodeLayoutDelegate.measurePassDelegate.isPlacedByParent))) {
                    if (layoutNode == layoutNode2) {
                        if (layoutNode.intrinsicsUsageByParent == LayoutNode.UsageByParent.NotUsed) {
                            layoutNode.clearSubtreePlacementIntrinsicsUsage();
                        }
                        LayoutNode parent$ui2 = layoutNode.getParent$ui();
                        if (parent$ui2 == null || (innerNodeCoordinator = parent$ui2.nodes.innerCoordinator) == null || (placementScope = innerNodeCoordinator.placementScope) == null) {
                            placementScope = ((AndroidComposeView) LayoutNodeKt.requireOwner(layoutNode)).getPlacementScope();
                        }
                        Placeable.PlacementScope.placeRelative$default(placementScope, layoutNodeLayoutDelegate.measurePassDelegate, 0, 0);
                    } else {
                        layoutNode.replace$ui();
                    }
                    CardView.AnonymousClass1 anonymousClass1 = measureAndLayoutDelegate.onPositionedDispatcher;
                    anonymousClass1.getClass();
                    if (layoutNode.globallyPositionedObservers > 0) {
                        ((MutableVector) anonymousClass1.mCardBackground).add(layoutNode);
                        layoutNode.needsOnGloballyPositionedDispatch = true;
                    }
                }
                r3 = m334doRemeasuresdFAvZA;
            }
            measureAndLayoutDelegate.drainPostponedMeasureRequests();
        }
        return r3;
    }

    /* renamed from: doLookaheadRemeasure-sdFAvZA, reason: not valid java name */
    public static boolean m333doLookaheadRemeasuresdFAvZA(LayoutNode layoutNode, Constraints constraints) {
        boolean m332remeasureBRTryo0;
        LayoutNode layoutNode2 = layoutNode.lookaheadRoot;
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = layoutNode.layoutDelegate;
        if (layoutNode2 == null) {
            return false;
        }
        if (constraints != null) {
            if (layoutNode2 != null) {
                LookaheadPassDelegate lookaheadPassDelegate = layoutNodeLayoutDelegate.lookaheadPassDelegate;
                lookaheadPassDelegate.getClass();
                m332remeasureBRTryo0 = lookaheadPassDelegate.m332remeasureBRTryo0(constraints.value);
            }
            m332remeasureBRTryo0 = false;
        } else {
            LookaheadPassDelegate lookaheadPassDelegate2 = layoutNodeLayoutDelegate.lookaheadPassDelegate;
            Constraints constraints2 = lookaheadPassDelegate2 != null ? lookaheadPassDelegate2.lookaheadConstraints : null;
            if (constraints2 != null && layoutNode2 != null) {
                lookaheadPassDelegate2.getClass();
                m332remeasureBRTryo0 = lookaheadPassDelegate2.m332remeasureBRTryo0(constraints2.value);
            }
            m332remeasureBRTryo0 = false;
        }
        LayoutNode parent$ui = layoutNode.getParent$ui();
        if (m332remeasureBRTryo0 && parent$ui != null) {
            if (parent$ui.lookaheadRoot == null) {
                LayoutNode.requestRemeasure$ui$default(parent$ui, false, 3);
                return m332remeasureBRTryo0;
            }
            if (layoutNode.getMeasuredByParentInLookahead$ui() == LayoutNode.UsageByParent.InMeasureBlock) {
                LayoutNode.requestLookaheadRemeasure$ui$default(parent$ui, false, 3);
                return m332remeasureBRTryo0;
            }
            if (layoutNode.getMeasuredByParentInLookahead$ui() == LayoutNode.UsageByParent.InLayoutBlock) {
                parent$ui.requestLookaheadRelayout$ui(false);
            }
        }
        return m332remeasureBRTryo0;
    }

    /* renamed from: doRemeasure-sdFAvZA, reason: not valid java name */
    public static boolean m334doRemeasuresdFAvZA(LayoutNode layoutNode, Constraints constraints) {
        boolean z;
        LayoutNode.UsageByParent usageByParent = LayoutNode.UsageByParent.NotUsed;
        if (constraints != null) {
            if (layoutNode.intrinsicsUsageByParent == usageByParent) {
                layoutNode.clearSubtreeIntrinsicsUsage$ui();
            }
            z = layoutNode.layoutDelegate.measurePassDelegate.m338remeasureBRTryo0(constraints.value);
        } else {
            MeasurePassDelegate measurePassDelegate = layoutNode.layoutDelegate.measurePassDelegate;
            Constraints constraints2 = measurePassDelegate.measuredOnce ? new Constraints(measurePassDelegate.measurementConstraints) : null;
            if (constraints2 != null) {
                if (layoutNode.intrinsicsUsageByParent == usageByParent) {
                    layoutNode.clearSubtreeIntrinsicsUsage$ui();
                }
                z = layoutNode.layoutDelegate.measurePassDelegate.m338remeasureBRTryo0(constraints2.value);
            } else {
                layoutNode.getClass();
                z = false;
            }
        }
        LayoutNode parent$ui = layoutNode.getParent$ui();
        if (z && parent$ui != null) {
            if (layoutNode.getMeasuredByParent$ui() == LayoutNode.UsageByParent.InMeasureBlock) {
                LayoutNode.requestRemeasure$ui$default(parent$ui, false, 3);
                return z;
            }
            if (layoutNode.getMeasuredByParent$ui() == LayoutNode.UsageByParent.InLayoutBlock) {
                parent$ui.requestRelayout$ui(false);
            }
        }
        return z;
    }

    public static boolean getCanAffectParentInLookahead(LayoutNode layoutNode) {
        LookaheadPassDelegate lookaheadPassDelegate;
        LookaheadAlignmentLines lookaheadAlignmentLines;
        if (layoutNode.layoutDelegate.lookaheadMeasurePending) {
            return (layoutNode.getMeasuredByParentInLookahead$ui() == LayoutNode.UsageByParent.NotUsed && ((lookaheadPassDelegate = layoutNode.layoutDelegate.lookaheadPassDelegate) == null || (lookaheadAlignmentLines = lookaheadPassDelegate.alignmentLines) == null || !lookaheadAlignmentLines.getRequired$ui())) ? false : true;
        }
        return false;
    }

    public static boolean getCanAffectPlacedParent(LayoutNode layoutNode) {
        if (!layoutNode.getMeasurePending$ui()) {
            return false;
        }
        do {
            if (layoutNode.getMeasuredByParent$ui() == LayoutNode.UsageByParent.NotUsed && !layoutNode.layoutDelegate.measurePassDelegate.alignmentLines.getRequired$ui()) {
                LayoutNode parent$ui = layoutNode.getParent$ui();
                if ((parent$ui != null ? parent$ui.layoutDelegate.layoutState : null) != LayoutNode.LayoutState.Measuring) {
                    return false;
                }
            }
            layoutNode = layoutNode.getParent$ui();
            if (layoutNode == null) {
                return false;
            }
        } while (!layoutNode.isPlaced());
        return true;
    }

    public static boolean isUsedInMeasureOrLayout(LayoutNode layoutNode) {
        LookaheadPassDelegate lookaheadPassDelegate;
        LookaheadAlignmentLines lookaheadAlignmentLines;
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = layoutNode.layoutDelegate;
        return layoutNode.isPlaced() || layoutNodeLayoutDelegate.measurePassDelegate.isPlacedByParent || getCanAffectPlacedParent(layoutNode) || Intrinsics.areEqual(layoutNode.isPlacedInLookahead(), Boolean.TRUE) || getCanAffectParentInLookahead(layoutNode) || layoutNodeLayoutDelegate.measurePassDelegate.alignmentLines.getRequired$ui() || !((lookaheadPassDelegate = layoutNodeLayoutDelegate.lookaheadPassDelegate) == null || (lookaheadAlignmentLines = lookaheadPassDelegate.alignmentLines) == null || !lookaheadAlignmentLines.getRequired$ui());
    }

    public final void dispatchOnPositionedCallbacks(boolean z) {
        CardView.AnonymousClass1 anonymousClass1 = this.onPositionedDispatcher;
        if (z) {
            MutableVector mutableVector = (MutableVector) anonymousClass1.mCardBackground;
            LayoutNode layoutNode = this.root;
            if (layoutNode.globallyPositionedObservers > 0) {
                mutableVector.clear();
                mutableVector.add(layoutNode);
                layoutNode.needsOnGloballyPositionedDispatch = true;
            }
        }
        if (((MutableVector) anonymousClass1.mCardBackground).size != 0) {
            Trace.beginSection("Compose:onPositionedCallbacks");
            try {
                anonymousClass1.dispatch();
            } finally {
                Trace.endSection();
            }
        }
    }

    public final void drainPostponedMeasureRequests() {
        MutableVector mutableVector = this.postponedMeasureRequests;
        int i = mutableVector.size;
        if (i != 0) {
            Object[] objArr = mutableVector.content;
            for (int i2 = 0; i2 < i; i2++) {
                PostponedRequest postponedRequest = (PostponedRequest) objArr[i2];
                if (postponedRequest.node.isAttached()) {
                    boolean z = postponedRequest.isLookahead;
                    LayoutNode layoutNode = postponedRequest.node;
                    boolean z2 = postponedRequest.isForced;
                    if (z) {
                        LayoutNode.requestLookaheadRemeasure$ui$default(layoutNode, z2, 2);
                    } else {
                        LayoutNode.requestRemeasure$ui$default(layoutNode, z2, 2);
                    }
                }
            }
            mutableVector.clear();
        }
    }

    public final void ensureSubtreeLookaheadReplaced(LayoutNode layoutNode) {
        MutableVector mutableVector = layoutNode.get_children$ui();
        Object[] objArr = mutableVector.content;
        int i = mutableVector.size;
        for (int i2 = 0; i2 < i; i2++) {
            LayoutNode layoutNode2 = (LayoutNode) objArr[i2];
            if (Intrinsics.areEqual(layoutNode2.isPlacedInLookahead(), Boolean.TRUE) && !layoutNode2.isDeactivated) {
                if (this.relayoutNodes.contains(layoutNode2)) {
                    layoutNode2.lookaheadReplace$ui();
                }
                ensureSubtreeLookaheadReplaced(layoutNode2);
            }
        }
    }

    public final void forceMeasureTheSubtree(LayoutNode layoutNode, boolean z) {
        if (!this.duringMeasureLayout) {
            InlineClassHelperKt.throwIllegalStateException("forceMeasureTheSubtree should be executed during the measureAndLayout pass");
        }
        if (z ? layoutNode.layoutDelegate.lookaheadMeasurePending : layoutNode.getMeasurePending$ui()) {
            InlineClassHelperKt.throwIllegalArgumentException("node not yet measured");
        }
        forceMeasureTheSubtreeInternal(layoutNode, z);
    }

    public final void forceMeasureTheSubtreeInternal(LayoutNode layoutNode, boolean z) {
        LookaheadPassDelegate lookaheadPassDelegate;
        LookaheadAlignmentLines lookaheadAlignmentLines;
        MutableVector mutableVector = layoutNode.get_children$ui();
        Object[] objArr = mutableVector.content;
        int i = mutableVector.size;
        for (int i2 = 0; i2 < i; i2++) {
            LayoutNode layoutNode2 = (LayoutNode) objArr[i2];
            LayoutNode.UsageByParent usageByParent = LayoutNode.UsageByParent.InMeasureBlock;
            if ((!z && (layoutNode2.getMeasuredByParent$ui() == usageByParent || layoutNode2.layoutDelegate.measurePassDelegate.alignmentLines.getRequired$ui())) || (z && (layoutNode2.getMeasuredByParentInLookahead$ui() == usageByParent || ((lookaheadPassDelegate = layoutNode2.layoutDelegate.lookaheadPassDelegate) != null && (lookaheadAlignmentLines = lookaheadPassDelegate.alignmentLines) != null && lookaheadAlignmentLines.getRequired$ui())))) {
                boolean isOutMostLookaheadRoot = HitTestResultKt.isOutMostLookaheadRoot(layoutNode2);
                LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = layoutNode2.layoutDelegate;
                if (isOutMostLookaheadRoot && !z) {
                    if (layoutNodeLayoutDelegate.lookaheadMeasurePending && this.relayoutNodes.contains(layoutNode2)) {
                        remeasureIfNeeded(layoutNode2, true);
                    } else {
                        forceMeasureTheSubtree(layoutNode2, true);
                    }
                }
                if (z ? layoutNodeLayoutDelegate.lookaheadMeasurePending : layoutNode2.getMeasurePending$ui()) {
                    remeasureIfNeeded(layoutNode2, z);
                }
                if (!(z ? layoutNodeLayoutDelegate.lookaheadMeasurePending : layoutNode2.getMeasurePending$ui())) {
                    forceMeasureTheSubtreeInternal(layoutNode2, z);
                }
            }
        }
        if (z ? layoutNode.layoutDelegate.lookaheadMeasurePending : layoutNode.getMeasurePending$ui()) {
            remeasureIfNeeded(layoutNode, z);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v11 */
    /* JADX WARN: Type inference failed for: r12v2, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r15v1, types: [int] */
    /* JADX WARN: Type inference failed for: r15v2 */
    /* JADX WARN: Type inference failed for: r15v3, types: [int] */
    /* JADX WARN: Type inference failed for: r15v4 */
    public final boolean measureAndLayout(AndroidComposeView$resendMotionEventOnLayout$1 androidComposeView$resendMotionEventOnLayout$1) {
        boolean z;
        Modifier.Node node;
        Modifier.Node node2;
        boolean z2;
        LayoutNode layoutNode;
        boolean z3;
        boolean remeasureIfNeeded;
        ProcessFinisher processFinisher = this.relayoutNodes;
        LayoutNode layoutNode2 = this.root;
        if (!layoutNode2.isAttached()) {
            InlineClassHelperKt.throwIllegalArgumentException("performMeasureAndLayout called with unattached root");
        }
        if (!layoutNode2.isPlaced()) {
            InlineClassHelperKt.throwIllegalArgumentException("performMeasureAndLayout called with unplaced root");
        }
        if (this.duringMeasureLayout) {
            InlineClassHelperKt.throwIllegalArgumentException("performMeasureAndLayout called during measure layout");
        }
        boolean z4 = false;
        if (this.rootConstraints != null) {
            this.duringMeasureLayout = true;
            this.duringFullMeasureLayoutPass = true;
            try {
                boolean isNotEmpty = processFinisher.isNotEmpty();
                PopupMenu$1 popupMenu$1 = (PopupMenu$1) processFinisher.context;
                if (isNotEmpty) {
                    z = false;
                    while (true) {
                        PopupMenu$1 popupMenu$12 = (PopupMenu$1) processFinisher.lastActivityManager;
                        PopupMenu$1 popupMenu$13 = (PopupMenu$1) processFinisher.config;
                        if (!((SortedSet) popupMenu$1.this$0).isEmpty()) {
                            layoutNode = (LayoutNode) ((SortedSet) popupMenu$1.this$0).first();
                            popupMenu$1.remove(layoutNode);
                            z3 = layoutNode.lookaheadRoot != null;
                            z2 = false;
                        } else if (!((SortedSet) popupMenu$13.this$0).isEmpty()) {
                            layoutNode = (LayoutNode) ((SortedSet) popupMenu$13.this$0).first();
                            popupMenu$13.remove(layoutNode);
                            z3 = layoutNode.lookaheadRoot != null;
                            z2 = true;
                        } else {
                            if (((SortedSet) popupMenu$12.this$0).isEmpty()) {
                                break;
                            }
                            LayoutNode layoutNode3 = (LayoutNode) ((SortedSet) popupMenu$12.this$0).first();
                            popupMenu$12.remove(layoutNode3);
                            z2 = true;
                            layoutNode = layoutNode3;
                            z3 = false;
                        }
                        if (z2) {
                            remeasureIfNeeded = access$remeasureAndRelayoutIfNeeded(this, layoutNode, z3);
                        } else {
                            remeasureIfNeeded = remeasureIfNeeded(layoutNode, z3);
                            if (layoutNode.layoutDelegate.lookaheadLayoutPending) {
                                processFinisher.add(layoutNode, Invalidation.LookaheadPlacement);
                            }
                            if (layoutNode.getLayoutPending$ui()) {
                                processFinisher.add(layoutNode, Invalidation.Placement);
                            }
                        }
                        if (layoutNode == layoutNode2 && remeasureIfNeeded) {
                            z = true;
                        }
                    }
                    if (androidComposeView$resendMotionEventOnLayout$1 != null) {
                        androidComposeView$resendMotionEventOnLayout$1.invoke();
                    }
                } else {
                    z = false;
                }
            } finally {
            }
        } else {
            z = false;
        }
        MutableVector mutableVector = this.onLayoutCompletedListeners;
        Object[] objArr = mutableVector.content;
        int i = mutableVector.size;
        int i2 = 0;
        while (i2 < i) {
            NodeChain nodeChain = ((LayoutNode) objArr[i2]).nodes;
            InnerNodeCoordinator innerNodeCoordinator = nodeChain.innerCoordinator;
            boolean m356getIncludeSelfInTraversalH91voCI = NodeKindKt.m356getIncludeSelfInTraversalH91voCI(4194304);
            if (m356getIncludeSelfInTraversalH91voCI) {
                node = innerNodeCoordinator.tail;
            } else {
                node = innerNodeCoordinator.tail.parent;
                if (node == null) {
                    i2++;
                    z4 = false;
                }
            }
            ReusableGraphicsLayerScope reusableGraphicsLayerScope = NodeCoordinator.graphicsLayerScope;
            Modifier.Node headNode = innerNodeCoordinator.headNode(m356getIncludeSelfInTraversalH91voCI);
            while (headNode != null && (headNode.aggregateChildKindSet & 4194304) != 0) {
                if ((headNode.kindSet & 4194304) != 0) {
                    DelegatingNode delegatingNode = headNode;
                    MutableVector mutableVector2 = null;
                    while (delegatingNode != 0) {
                        if (delegatingNode instanceof LayoutAwareModifierNode) {
                            ((LayoutAwareModifierNode) delegatingNode).onPlaced(nodeChain.innerCoordinator);
                        } else if ((delegatingNode.kindSet & 4194304) != 0 && (delegatingNode instanceof DelegatingNode)) {
                            Modifier.Node node3 = delegatingNode.delegate;
                            ?? r15 = z4;
                            node2 = delegatingNode;
                            mutableVector2 = mutableVector2;
                            while (node3 != null) {
                                if ((node3.kindSet & 4194304) != 0) {
                                    r15++;
                                    mutableVector2 = mutableVector2;
                                    if (r15 == 1) {
                                        node2 = node3;
                                    } else {
                                        if (mutableVector2 == null) {
                                            mutableVector2 = new MutableVector(new Modifier.Node[16]);
                                        }
                                        if (node2 != null) {
                                            mutableVector2.add(node2);
                                            node2 = null;
                                        }
                                        mutableVector2.add(node3);
                                    }
                                }
                                node3 = node3.child;
                                node2 = node2;
                                mutableVector2 = mutableVector2;
                                r15 = r15;
                            }
                            if (r15 == 1) {
                                z4 = false;
                                delegatingNode = node2;
                                mutableVector2 = mutableVector2;
                            }
                        }
                        node2 = HitTestResultKt.access$pop(mutableVector2);
                        z4 = false;
                        delegatingNode = node2;
                        mutableVector2 = mutableVector2;
                    }
                }
                if (headNode != node) {
                    headNode = headNode.child;
                    z4 = false;
                }
            }
            i2++;
            z4 = false;
        }
        mutableVector.clear();
        return z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:28:0x007b A[Catch: all -> 0x0061, TryCatch #0 {all -> 0x0061, blocks: (B:21:0x003a, B:23:0x005c, B:26:0x0072, B:28:0x007b, B:29:0x007e, B:32:0x008c, B:34:0x0094, B:35:0x0099, B:37:0x00a1, B:38:0x00a4, B:40:0x00aa, B:42:0x00b0, B:44:0x00bc, B:45:0x00c5, B:48:0x0063, B:50:0x006f), top: B:20:0x003a }] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0094 A[Catch: all -> 0x0061, TryCatch #0 {all -> 0x0061, blocks: (B:21:0x003a, B:23:0x005c, B:26:0x0072, B:28:0x007b, B:29:0x007e, B:32:0x008c, B:34:0x0094, B:35:0x0099, B:37:0x00a1, B:38:0x00a4, B:40:0x00aa, B:42:0x00b0, B:44:0x00bc, B:45:0x00c5, B:48:0x0063, B:50:0x006f), top: B:20:0x003a }] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0099 A[Catch: all -> 0x0061, TryCatch #0 {all -> 0x0061, blocks: (B:21:0x003a, B:23:0x005c, B:26:0x0072, B:28:0x007b, B:29:0x007e, B:32:0x008c, B:34:0x0094, B:35:0x0099, B:37:0x00a1, B:38:0x00a4, B:40:0x00aa, B:42:0x00b0, B:44:0x00bc, B:45:0x00c5, B:48:0x0063, B:50:0x006f), top: B:20:0x003a }] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00bc A[Catch: all -> 0x0061, TryCatch #0 {all -> 0x0061, blocks: (B:21:0x003a, B:23:0x005c, B:26:0x0072, B:28:0x007b, B:29:0x007e, B:32:0x008c, B:34:0x0094, B:35:0x0099, B:37:0x00a1, B:38:0x00a4, B:40:0x00aa, B:42:0x00b0, B:44:0x00bc, B:45:0x00c5, B:48:0x0063, B:50:0x006f), top: B:20:0x003a }] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v10 */
    /* JADX WARN: Type inference failed for: r7v11 */
    /* JADX WARN: Type inference failed for: r7v12 */
    /* JADX WARN: Type inference failed for: r7v2, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Type inference failed for: r7v5, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r7v6, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v7 */
    /* JADX WARN: Type inference failed for: r7v8 */
    /* JADX WARN: Type inference failed for: r7v9 */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v10 */
    /* JADX WARN: Type inference failed for: r8v11 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v3, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Type inference failed for: r8v5 */
    /* JADX WARN: Type inference failed for: r8v6, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r8v8 */
    /* JADX WARN: Type inference failed for: r8v9 */
    /* renamed from: measureAndLayout-0kLqBqw, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m335measureAndLayout0kLqBqw(androidx.compose.ui.node.LayoutNode r13, long r14) {
        /*
            Method dump skipped, instructions count: 355
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.node.MeasureAndLayoutDelegate.m335measureAndLayout0kLqBqw(androidx.compose.ui.node.LayoutNode, long):void");
    }

    public final void measureOnly() {
        ProcessFinisher processFinisher = this.relayoutNodes;
        if (processFinisher.isNotEmpty()) {
            LayoutNode layoutNode = this.root;
            if (!layoutNode.isAttached()) {
                InlineClassHelperKt.throwIllegalArgumentException("performMeasureAndLayout called with unattached root");
            }
            if (!layoutNode.isPlaced()) {
                InlineClassHelperKt.throwIllegalArgumentException("performMeasureAndLayout called with unplaced root");
            }
            if (this.duringMeasureLayout) {
                InlineClassHelperKt.throwIllegalArgumentException("performMeasureAndLayout called during measure layout");
            }
            if (this.rootConstraints != null) {
                this.duringMeasureLayout = true;
                this.duringFullMeasureLayoutPass = false;
                try {
                    if ((((SortedSet) ((PopupMenu$1) processFinisher.lastActivityManager).this$0).isEmpty() || ((SortedSet) ((PopupMenu$1) processFinisher.context).this$0).isEmpty()) ? false : true) {
                        if (layoutNode.lookaheadRoot != null) {
                            remeasureOnly(layoutNode, true);
                        } else {
                            remeasureLookaheadRootsInSubtree(layoutNode);
                        }
                    }
                    remeasureOnly(layoutNode, false);
                } catch (Throwable th) {
                    try {
                        throw th;
                    } finally {
                        this.duringMeasureLayout = false;
                        this.duringFullMeasureLayoutPass = false;
                    }
                }
            }
        }
    }

    public final boolean remeasureIfNeeded(LayoutNode layoutNode, boolean z) {
        Constraints constraints;
        boolean z2 = false;
        if (!layoutNode.isDeactivated && isUsedInMeasureOrLayout(layoutNode)) {
            if (layoutNode == this.root) {
                constraints = this.rootConstraints;
                constraints.getClass();
            } else {
                constraints = null;
            }
            if (z) {
                if (layoutNode.layoutDelegate.lookaheadMeasurePending) {
                    z2 = m333doLookaheadRemeasuresdFAvZA(layoutNode, constraints);
                }
            } else if (layoutNode.getMeasurePending$ui()) {
                z2 = m334doRemeasuresdFAvZA(layoutNode, constraints);
            }
            drainPostponedMeasureRequests();
        }
        return z2;
    }

    public final void remeasureLookaheadRootsInSubtree(LayoutNode layoutNode) {
        MutableVector mutableVector = layoutNode.get_children$ui();
        Object[] objArr = mutableVector.content;
        int i = mutableVector.size;
        for (int i2 = 0; i2 < i; i2++) {
            LayoutNode layoutNode2 = (LayoutNode) objArr[i2];
            if (layoutNode2.getMeasuredByParent$ui() == LayoutNode.UsageByParent.InMeasureBlock || layoutNode2.layoutDelegate.measurePassDelegate.alignmentLines.getRequired$ui()) {
                if (HitTestResultKt.isOutMostLookaheadRoot(layoutNode2)) {
                    remeasureOnly(layoutNode2, true);
                } else {
                    remeasureLookaheadRootsInSubtree(layoutNode2);
                }
            }
        }
    }

    public final void remeasureOnly(LayoutNode layoutNode, boolean z) {
        Constraints constraints;
        if (layoutNode.isDeactivated) {
            return;
        }
        if (layoutNode == this.root) {
            constraints = this.rootConstraints;
            constraints.getClass();
        } else {
            constraints = null;
        }
        if (z) {
            m333doLookaheadRemeasuresdFAvZA(layoutNode, constraints);
        } else {
            m334doRemeasuresdFAvZA(layoutNode, constraints);
        }
    }

    public final boolean requestRemeasure(LayoutNode layoutNode, boolean z) {
        int ordinal = layoutNode.layoutDelegate.layoutState.ordinal();
        if (ordinal != 0 && ordinal != 1) {
            if (ordinal == 2 || ordinal == 3) {
                this.postponedMeasureRequests.add(new PostponedRequest(layoutNode, false, z));
            } else {
                if (ordinal != 4) {
                    DecodeUtils$$ExternalSyntheticBUOutline0.m();
                    return false;
                }
                if (!layoutNode.getMeasurePending$ui() || z) {
                    layoutNode.layoutDelegate.measurePassDelegate.measurePending = true;
                    if (!layoutNode.isDeactivated && (layoutNode.isPlaced() || getCanAffectPlacedParent(layoutNode))) {
                        LayoutNode parent$ui = layoutNode.getParent$ui();
                        if (parent$ui == null || !parent$ui.getMeasurePending$ui()) {
                            this.relayoutNodes.add(layoutNode, Invalidation.Measurement);
                        }
                        if (!this.duringFullMeasureLayoutPass) {
                            return true;
                        }
                    }
                }
            }
        }
        return false;
    }

    /* renamed from: updateRootConstraints-BRTryo0, reason: not valid java name */
    public final void m336updateRootConstraintsBRTryo0(long j) {
        Constraints constraints = this.rootConstraints;
        if (constraints == null ? false : Constraints.m428equalsimpl0(constraints.value, j)) {
            return;
        }
        if (this.duringMeasureLayout) {
            InlineClassHelperKt.throwIllegalArgumentException("updateRootConstraints called while measuring");
        }
        this.rootConstraints = new Constraints(j);
        LayoutNode layoutNode = this.root;
        LayoutNode layoutNode2 = layoutNode.lookaheadRoot;
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = layoutNode.layoutDelegate;
        if (layoutNode2 != null) {
            layoutNodeLayoutDelegate.lookaheadMeasurePending = true;
        }
        layoutNodeLayoutDelegate.measurePassDelegate.measurePending = true;
        this.relayoutNodes.add(layoutNode, layoutNode2 != null ? Invalidation.LookaheadMeasurement : Invalidation.Measurement);
    }
}
