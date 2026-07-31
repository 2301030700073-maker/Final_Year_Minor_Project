package androidx.compose.ui.node;

import androidx.collection.MutableObjectList;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.layout.AlignmentLine;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.IntOffset;
import com.google.android.exoplayer2.util.Log;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class MeasurePassDelegate extends Placeable implements Measurable, AlignmentLinesOwner, MotionReferencePlacementDelegate {
    public boolean duringAlignmentLinesQuery;
    public boolean isPlaced;
    public boolean isPlacedByParent;
    public Function1 lastLayerBlock;
    public float lastZIndex;
    public boolean layingOutChildren;
    public final LayoutNodeLayoutDelegate layoutNodeLayoutDelegate;
    public boolean layoutPending;
    public boolean layoutPendingForAlignment;
    public boolean measurePending;
    public boolean measuredOnce;
    public boolean needsCoordinatesUpdate;
    public boolean onNodePlacedCalled;
    public Object parentData;
    public Function1 placeOuterCoordinatorLayerBlock;
    public float placeOuterCoordinatorZIndex;
    public boolean placedOnce;
    public boolean relayoutWithoutParentInProgress;
    public float zIndex;
    public int previousPlaceOrder = Log.LOG_LEVEL_OFF;
    public int placeOrder = Log.LOG_LEVEL_OFF;
    public LayoutNode.UsageByParent measuredByParent = LayoutNode.UsageByParent.NotUsed;
    public long lastPosition = 0;
    public boolean parentDataDirty = true;
    public final LookaheadAlignmentLines alignmentLines = new LookaheadAlignmentLines(this, 1);
    public final MutableVector _childDelegates = new MutableVector(new MeasurePassDelegate[16]);
    public boolean childDelegatesDirty = true;
    public long performMeasureConstraints = ConstraintsKt.Constraints$default(0, 0, 15);
    public final MeasurePassDelegate$performMeasureBlock$1 performMeasureBlock = new Function0() { // from class: androidx.compose.ui.node.MeasurePassDelegate$performMeasureBlock$1
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            MeasurePassDelegate.this.layoutNodeLayoutDelegate.getOuterCoordinator().mo292measureBRTryo0(MeasurePassDelegate.this.performMeasureConstraints);
            return Unit.INSTANCE;
        }
    };
    public final MeasurePassDelegate$layoutChildrenBlock$1 layoutChildrenBlock = new Function0() { // from class: androidx.compose.ui.node.MeasurePassDelegate$layoutChildrenBlock$1
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = MeasurePassDelegate.this.layoutNodeLayoutDelegate;
            layoutNodeLayoutDelegate.nextChildPlaceOrder = 0;
            MutableVector mutableVector = layoutNodeLayoutDelegate.layoutNode.get_children$ui();
            Object[] objArr = mutableVector.content;
            int i = mutableVector.size;
            for (int i2 = 0; i2 < i; i2++) {
                MeasurePassDelegate measurePassDelegate = ((LayoutNode) objArr[i2]).layoutDelegate.measurePassDelegate;
                measurePassDelegate.previousPlaceOrder = measurePassDelegate.placeOrder;
                measurePassDelegate.placeOrder = Log.LOG_LEVEL_OFF;
                measurePassDelegate.isPlacedByParent = false;
                if (measurePassDelegate.measuredByParent == LayoutNode.UsageByParent.InLayoutBlock) {
                    measurePassDelegate.measuredByParent = LayoutNode.UsageByParent.NotUsed;
                }
            }
            MutableVector mutableVector2 = MeasurePassDelegate.this.layoutNodeLayoutDelegate.layoutNode.get_children$ui();
            Object[] objArr2 = mutableVector2.content;
            int i3 = mutableVector2.size;
            for (int i4 = 0; i4 < i3; i4++) {
                ((LayoutNode) objArr2[i4]).layoutDelegate.measurePassDelegate.alignmentLines.usedDuringParentLayout = false;
            }
            if (MeasurePassDelegate.this.getInnerCoordinator().isPlacingForAlignment) {
                MutableObjectList.ObjectListMutableList objectListMutableList = (MutableObjectList.ObjectListMutableList) MeasurePassDelegate.this.layoutNodeLayoutDelegate.layoutNode.getChildren$ui();
                int i5 = ((MutableVector) objectListMutableList.objectList).size;
                for (int i6 = 0; i6 < i5; i6++) {
                    ((LayoutNode) objectListMutableList.get(i6)).nodes.outerCoordinator.isPlacingForAlignment = true;
                }
            }
            MeasurePassDelegate.this.getInnerCoordinator().getMeasureResult$ui().placeChildren();
            if (MeasurePassDelegate.this.getInnerCoordinator().isPlacingForAlignment) {
                MutableObjectList.ObjectListMutableList objectListMutableList2 = (MutableObjectList.ObjectListMutableList) MeasurePassDelegate.this.layoutNodeLayoutDelegate.layoutNode.getChildren$ui();
                int i7 = ((MutableVector) objectListMutableList2.objectList).size;
                for (int i8 = 0; i8 < i7; i8++) {
                    ((LayoutNode) objectListMutableList2.get(i8)).nodes.outerCoordinator.isPlacingForAlignment = false;
                }
            }
            LayoutNode layoutNode = MeasurePassDelegate.this.layoutNodeLayoutDelegate.layoutNode;
            MutableVector mutableVector3 = layoutNode.get_children$ui();
            Object[] objArr3 = mutableVector3.content;
            int i9 = mutableVector3.size;
            for (int i10 = 0; i10 < i9; i10++) {
                LayoutNode layoutNode2 = (LayoutNode) objArr3[i10];
                LayoutNodeLayoutDelegate layoutNodeLayoutDelegate2 = layoutNode2.layoutDelegate;
                if (layoutNodeLayoutDelegate2.measurePassDelegate.previousPlaceOrder != layoutNode2.getPlaceOrder$ui()) {
                    layoutNode.onZSortedChildrenInvalidated$ui();
                    layoutNode.invalidateLayer$ui();
                    if (layoutNode2.getPlaceOrder$ui() == Integer.MAX_VALUE) {
                        if (layoutNodeLayoutDelegate2.detachedFromParentLookaheadPlacement || HitTestResultKt.isOutMostLookaheadRoot(layoutNode2)) {
                            LookaheadPassDelegate lookaheadPassDelegate = layoutNodeLayoutDelegate2.lookaheadPassDelegate;
                            lookaheadPassDelegate.getClass();
                            lookaheadPassDelegate.markNodeAndSubtreeAsNotPlaced$ui(false);
                        }
                        layoutNodeLayoutDelegate2.measurePassDelegate.markSubtreeAsNotPlaced();
                    }
                }
            }
            MutableVector mutableVector4 = MeasurePassDelegate.this.layoutNodeLayoutDelegate.layoutNode.get_children$ui();
            Object[] objArr4 = mutableVector4.content;
            int i11 = mutableVector4.size;
            for (int i12 = 0; i12 < i11; i12++) {
                LookaheadAlignmentLines lookaheadAlignmentLines = ((LayoutNode) objArr4[i12]).layoutDelegate.measurePassDelegate.alignmentLines;
                lookaheadAlignmentLines.previousUsedDuringParentLayout = lookaheadAlignmentLines.usedDuringParentLayout;
            }
            return Unit.INSTANCE;
        }
    };
    public long placeOuterCoordinatorPosition = 0;
    public final MeasurePassDelegate$placeOuterCoordinatorBlock$1 placeOuterCoordinatorBlock = new Function0() { // from class: androidx.compose.ui.node.MeasurePassDelegate$placeOuterCoordinatorBlock$1
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            Placeable.PlacementScope placementScope;
            NodeCoordinator nodeCoordinator = MeasurePassDelegate.this.layoutNodeLayoutDelegate.getOuterCoordinator().wrappedBy;
            if (nodeCoordinator == null || (placementScope = nodeCoordinator.placementScope) == null) {
                placementScope = ((AndroidComposeView) LayoutNodeKt.requireOwner(MeasurePassDelegate.this.layoutNodeLayoutDelegate.layoutNode)).getPlacementScope();
            }
            MeasurePassDelegate measurePassDelegate = MeasurePassDelegate.this;
            Function1 function1 = measurePassDelegate.placeOuterCoordinatorLayerBlock;
            LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = measurePassDelegate.layoutNodeLayoutDelegate;
            if (function1 == null) {
                NodeCoordinator outerCoordinator = layoutNodeLayoutDelegate.getOuterCoordinator();
                long j = measurePassDelegate.placeOuterCoordinatorPosition;
                float f = measurePassDelegate.placeOuterCoordinatorZIndex;
                placementScope.getClass();
                Placeable.PlacementScope.access$handleMotionFrameOfReferencePlacement(placementScope, outerCoordinator);
                outerCoordinator.mo295placeAtf8xVGno(IntOffset.m447plusqkQi6aY(j, outerCoordinator.apparentToRealOffset), f, null);
            } else {
                NodeCoordinator outerCoordinator2 = layoutNodeLayoutDelegate.getOuterCoordinator();
                long j2 = measurePassDelegate.placeOuterCoordinatorPosition;
                float f2 = measurePassDelegate.placeOuterCoordinatorZIndex;
                placementScope.getClass();
                Placeable.PlacementScope.access$handleMotionFrameOfReferencePlacement(placementScope, outerCoordinator2);
                outerCoordinator2.mo295placeAtf8xVGno(IntOffset.m447plusqkQi6aY(j2, outerCoordinator2.apparentToRealOffset), f2, function1);
            }
            return Unit.INSTANCE;
        }
    };

    /* JADX WARN: Type inference failed for: r5v5, types: [androidx.compose.ui.node.MeasurePassDelegate$performMeasureBlock$1] */
    /* JADX WARN: Type inference failed for: r5v6, types: [androidx.compose.ui.node.MeasurePassDelegate$layoutChildrenBlock$1] */
    /* JADX WARN: Type inference failed for: r5v7, types: [androidx.compose.ui.node.MeasurePassDelegate$placeOuterCoordinatorBlock$1] */
    public MeasurePassDelegate(LayoutNodeLayoutDelegate layoutNodeLayoutDelegate) {
        this.layoutNodeLayoutDelegate = layoutNodeLayoutDelegate;
    }

    @Override // androidx.compose.ui.node.AlignmentLinesOwner
    public final void forEachChildAlignmentLinesOwner(AlignmentLines$recalculate$1 alignmentLines$recalculate$1) {
        MutableVector mutableVector = this.layoutNodeLayoutDelegate.layoutNode.get_children$ui();
        Object[] objArr = mutableVector.content;
        int i = mutableVector.size;
        for (int i2 = 0; i2 < i; i2++) {
            alignmentLines$recalculate$1.invoke(((LayoutNode) objArr[i2]).layoutDelegate.measurePassDelegate);
        }
    }

    @Override // androidx.compose.ui.layout.Placeable
    public final int get(AlignmentLine alignmentLine) {
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = this.layoutNodeLayoutDelegate;
        LayoutNode parent$ui = layoutNodeLayoutDelegate.layoutNode.getParent$ui();
        LayoutNode.LayoutState layoutState = parent$ui != null ? parent$ui.layoutDelegate.layoutState : null;
        LayoutNode.LayoutState layoutState2 = LayoutNode.LayoutState.Measuring;
        LookaheadAlignmentLines lookaheadAlignmentLines = this.alignmentLines;
        if (layoutState == layoutState2) {
            lookaheadAlignmentLines.usedDuringParentMeasurement = true;
        } else {
            LayoutNode parent$ui2 = layoutNodeLayoutDelegate.layoutNode.getParent$ui();
            if ((parent$ui2 != null ? parent$ui2.layoutDelegate.layoutState : null) == LayoutNode.LayoutState.LayingOut) {
                lookaheadAlignmentLines.usedDuringParentLayout = true;
            }
        }
        this.duringAlignmentLinesQuery = true;
        int i = layoutNodeLayoutDelegate.getOuterCoordinator().get(alignmentLine);
        this.duringAlignmentLinesQuery = false;
        return i;
    }

    @Override // androidx.compose.ui.node.AlignmentLinesOwner
    public final AlignmentLines getAlignmentLines() {
        return this.alignmentLines;
    }

    public final List getChildDelegates$ui() {
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = this.layoutNodeLayoutDelegate;
        layoutNodeLayoutDelegate.layoutNode.updateChildrenIfDirty$ui();
        boolean z = this.childDelegatesDirty;
        MutableVector mutableVector = this._childDelegates;
        if (!z) {
            return mutableVector.asMutableList();
        }
        LayoutNode layoutNode = layoutNodeLayoutDelegate.layoutNode;
        MutableVector mutableVector2 = layoutNode.get_children$ui();
        Object[] objArr = mutableVector2.content;
        int i = mutableVector2.size;
        for (int i2 = 0; i2 < i; i2++) {
            LayoutNode layoutNode2 = (LayoutNode) objArr[i2];
            if (mutableVector.size <= i2) {
                mutableVector.add(layoutNode2.layoutDelegate.measurePassDelegate);
            } else {
                MeasurePassDelegate measurePassDelegate = layoutNode2.layoutDelegate.measurePassDelegate;
                Object[] objArr2 = mutableVector.content;
                Object obj = objArr2[i2];
                objArr2[i2] = measurePassDelegate;
            }
        }
        mutableVector.removeRange(((MutableVector) ((MutableObjectList.ObjectListMutableList) layoutNode.getChildren$ui()).objectList).size, mutableVector.size);
        this.childDelegatesDirty = false;
        return mutableVector.asMutableList();
    }

    @Override // androidx.compose.ui.node.AlignmentLinesOwner
    public final InnerNodeCoordinator getInnerCoordinator() {
        return this.layoutNodeLayoutDelegate.layoutNode.nodes.innerCoordinator;
    }

    @Override // androidx.compose.ui.layout.Placeable
    public final int getMeasuredHeight() {
        return this.layoutNodeLayoutDelegate.getOuterCoordinator().getMeasuredHeight();
    }

    @Override // androidx.compose.ui.layout.Placeable
    public final int getMeasuredWidth() {
        return this.layoutNodeLayoutDelegate.getOuterCoordinator().getMeasuredWidth();
    }

    @Override // androidx.compose.ui.node.AlignmentLinesOwner
    public final AlignmentLinesOwner getParentAlignmentLinesOwner() {
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate;
        LayoutNode parent$ui = this.layoutNodeLayoutDelegate.layoutNode.getParent$ui();
        if (parent$ui == null || (layoutNodeLayoutDelegate = parent$ui.layoutDelegate) == null) {
            return null;
        }
        return layoutNodeLayoutDelegate.measurePassDelegate;
    }

    @Override // androidx.compose.ui.layout.Placeable, androidx.compose.ui.layout.Measurable
    public final Object getParentData() {
        return this.parentData;
    }

    @Override // androidx.compose.ui.node.AlignmentLinesOwner
    public final int getPlaceOrder() {
        return this.placeOrder;
    }

    @Override // androidx.compose.ui.node.AlignmentLinesOwner
    public final void layoutChildren() {
        boolean z;
        this.layingOutChildren = true;
        LookaheadAlignmentLines lookaheadAlignmentLines = this.alignmentLines;
        lookaheadAlignmentLines.recalculateQueryOwner();
        boolean z2 = this.layoutPending;
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = this.layoutNodeLayoutDelegate;
        if (z2) {
            MutableVector mutableVector = layoutNodeLayoutDelegate.layoutNode.get_children$ui();
            Object[] objArr = mutableVector.content;
            int i = mutableVector.size;
            for (int i2 = 0; i2 < i; i2++) {
                LayoutNode layoutNode = (LayoutNode) objArr[i2];
                boolean measurePending$ui = layoutNode.getMeasurePending$ui();
                LayoutNodeLayoutDelegate layoutNodeLayoutDelegate2 = layoutNode.layoutDelegate;
                if (measurePending$ui && layoutNode.getMeasuredByParent$ui() == LayoutNode.UsageByParent.InMeasureBlock) {
                    MeasurePassDelegate measurePassDelegate = layoutNodeLayoutDelegate2.measurePassDelegate;
                    Constraints constraints = measurePassDelegate.measuredOnce ? new Constraints(measurePassDelegate.measurementConstraints) : null;
                    if (constraints != null) {
                        if (layoutNode.intrinsicsUsageByParent == LayoutNode.UsageByParent.NotUsed) {
                            layoutNode.clearSubtreeIntrinsicsUsage$ui();
                        }
                        z = layoutNodeLayoutDelegate2.measurePassDelegate.m338remeasureBRTryo0(constraints.value);
                    } else {
                        z = false;
                    }
                    if (z) {
                        LayoutNode.requestRemeasure$ui$default(layoutNodeLayoutDelegate.layoutNode, false, 7);
                    }
                }
            }
        }
        if (this.layoutPendingForAlignment || (!this.duringAlignmentLinesQuery && !getInnerCoordinator().isPlacingForAlignment && this.layoutPending)) {
            this.layoutPending = false;
            LayoutNode.LayoutState layoutState = layoutNodeLayoutDelegate.layoutState;
            layoutNodeLayoutDelegate.layoutState = LayoutNode.LayoutState.LayingOut;
            layoutNodeLayoutDelegate.setCoordinatesAccessedDuringPlacement(false);
            LayoutNode layoutNode2 = layoutNodeLayoutDelegate.layoutNode;
            OwnerSnapshotObserver snapshotObserver = ((AndroidComposeView) LayoutNodeKt.requireOwner(layoutNode2)).getSnapshotObserver();
            snapshotObserver.observer.observeReads(layoutNode2, snapshotObserver.onCommitAffectingLayout, this.layoutChildrenBlock);
            layoutNodeLayoutDelegate.layoutState = layoutState;
            this.layoutPendingForAlignment = false;
        }
        if (lookaheadAlignmentLines.usedDuringParentLayout) {
            lookaheadAlignmentLines.previousUsedDuringParentLayout = true;
        }
        if (lookaheadAlignmentLines.dirty && lookaheadAlignmentLines.getRequired$ui()) {
            lookaheadAlignmentLines.recalculate();
        }
        this.layingOutChildren = false;
    }

    public final void markNodeAndSubtreeAsPlaced$1() {
        boolean z = this.isPlaced;
        this.isPlaced = true;
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = this.layoutNodeLayoutDelegate;
        LayoutNode layoutNode = layoutNodeLayoutDelegate.layoutNode;
        NodeChain nodeChain = layoutNode.nodes;
        if (!z) {
            nodeChain.innerCoordinator.onPlaced();
            ((AndroidComposeView) LayoutNodeKt.requireOwner(layoutNode)).getRectManager().recalculateRectIfDirty(layoutNodeLayoutDelegate.layoutNode);
            if (layoutNode.getMeasurePending$ui()) {
                LayoutNode.requestRemeasure$ui$default(layoutNode, true, 6);
            } else if (layoutNode.layoutDelegate.lookaheadMeasurePending) {
                LayoutNode.requestLookaheadRemeasure$ui$default(layoutNode, true, 6);
            }
        }
        NodeCoordinator nodeCoordinator = nodeChain.innerCoordinator.wrapped;
        for (NodeCoordinator nodeCoordinator2 = nodeChain.outerCoordinator; !Intrinsics.areEqual(nodeCoordinator2, nodeCoordinator) && nodeCoordinator2 != null; nodeCoordinator2 = nodeCoordinator2.wrapped) {
            if (nodeCoordinator2.lastLayerDrawingWasSkipped) {
                nodeCoordinator2.invalidateLayer();
            }
        }
        MutableVector mutableVector = layoutNode.get_children$ui();
        Object[] objArr = mutableVector.content;
        int i = mutableVector.size;
        for (int i2 = 0; i2 < i; i2++) {
            LayoutNode layoutNode2 = (LayoutNode) objArr[i2];
            if (layoutNode2.getPlaceOrder$ui() != Integer.MAX_VALUE) {
                layoutNode2.layoutDelegate.measurePassDelegate.markNodeAndSubtreeAsPlaced$1();
                LayoutNode.rescheduleRemeasureOrRelayout$ui(layoutNode2);
            }
        }
    }

    public final void markSubtreeAsNotPlaced() {
        if (this.isPlaced) {
            this.isPlaced = false;
            LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = this.layoutNodeLayoutDelegate;
            LayoutNode layoutNode = layoutNodeLayoutDelegate.layoutNode;
            LayoutNode layoutNode2 = layoutNodeLayoutDelegate.layoutNode;
            ((AndroidComposeView) LayoutNodeKt.requireOwner(layoutNode)).getRectManager().remove(layoutNode2);
            NodeChain nodeChain = layoutNode2.nodes;
            NodeCoordinator nodeCoordinator = nodeChain.innerCoordinator.wrapped;
            for (NodeCoordinator nodeCoordinator2 = nodeChain.outerCoordinator; !Intrinsics.areEqual(nodeCoordinator2, nodeCoordinator) && nodeCoordinator2 != null; nodeCoordinator2 = nodeCoordinator2.wrapped) {
                nodeCoordinator2.onUnplaced();
                nodeCoordinator2.releaseLayer();
            }
            MutableVector mutableVector = layoutNode2.get_children$ui();
            Object[] objArr = mutableVector.content;
            int i = mutableVector.size;
            for (int i2 = 0; i2 < i; i2++) {
                ((LayoutNode) objArr[i2]).layoutDelegate.measurePassDelegate.markSubtreeAsNotPlaced();
            }
        }
    }

    @Override // androidx.compose.ui.layout.Measurable
    public final int maxIntrinsicHeight(int i) {
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = this.layoutNodeLayoutDelegate;
        if (!HitTestResultKt.isOutMostLookaheadRoot(layoutNodeLayoutDelegate.layoutNode)) {
            onIntrinsicsQueried$1();
            return layoutNodeLayoutDelegate.getOuterCoordinator().maxIntrinsicHeight(i);
        }
        LookaheadPassDelegate lookaheadPassDelegate = layoutNodeLayoutDelegate.lookaheadPassDelegate;
        lookaheadPassDelegate.getClass();
        return lookaheadPassDelegate.maxIntrinsicHeight(i);
    }

    @Override // androidx.compose.ui.layout.Measurable
    public final int maxIntrinsicWidth(int i) {
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = this.layoutNodeLayoutDelegate;
        if (!HitTestResultKt.isOutMostLookaheadRoot(layoutNodeLayoutDelegate.layoutNode)) {
            onIntrinsicsQueried$1();
            return layoutNodeLayoutDelegate.getOuterCoordinator().maxIntrinsicWidth(i);
        }
        LookaheadPassDelegate lookaheadPassDelegate = layoutNodeLayoutDelegate.lookaheadPassDelegate;
        lookaheadPassDelegate.getClass();
        return lookaheadPassDelegate.maxIntrinsicWidth(i);
    }

    @Override // androidx.compose.ui.layout.Measurable
    /* renamed from: measure-BRTryo0 */
    public final Placeable mo292measureBRTryo0(long j) {
        LayoutNode.UsageByParent usageByParent;
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = this.layoutNodeLayoutDelegate;
        LayoutNode layoutNode = layoutNodeLayoutDelegate.layoutNode;
        LayoutNode layoutNode2 = layoutNodeLayoutDelegate.layoutNode;
        LayoutNode.UsageByParent usageByParent2 = layoutNode.intrinsicsUsageByParent;
        LayoutNode.UsageByParent usageByParent3 = LayoutNode.UsageByParent.NotUsed;
        if (usageByParent2 == usageByParent3) {
            layoutNode.clearSubtreeIntrinsicsUsage$ui();
        }
        if (HitTestResultKt.isOutMostLookaheadRoot(layoutNode2)) {
            LookaheadPassDelegate lookaheadPassDelegate = layoutNodeLayoutDelegate.lookaheadPassDelegate;
            lookaheadPassDelegate.getClass();
            lookaheadPassDelegate.measuredByParent = usageByParent3;
            lookaheadPassDelegate.mo292measureBRTryo0(j);
        }
        LayoutNode parent$ui = layoutNode2.getParent$ui();
        if (parent$ui != null) {
            LayoutNodeLayoutDelegate layoutNodeLayoutDelegate2 = parent$ui.layoutDelegate;
            if (this.measuredByParent != usageByParent3 && !layoutNode2.canMultiMeasure) {
                InlineClassHelperKt.throwIllegalStateException("measure() may not be called multiple times on the same Measurable. If you want to get the content size of the Measurable before calculating the final constraints, please use methods like minIntrinsicWidth()/maxIntrinsicWidth() and minIntrinsicHeight()/maxIntrinsicHeight()");
            }
            int ordinal = layoutNodeLayoutDelegate2.layoutState.ordinal();
            if (ordinal == 0) {
                usageByParent = LayoutNode.UsageByParent.InMeasureBlock;
            } else {
                if (ordinal != 2) {
                    LayoutNode$$ExternalSyntheticBUOutline0.m(layoutNodeLayoutDelegate2.layoutState, "Measurable could be only measured from the parent's measure or layout block. Parents state is ");
                    return null;
                }
                usageByParent = LayoutNode.UsageByParent.InLayoutBlock;
            }
            this.measuredByParent = usageByParent;
        } else {
            this.measuredByParent = usageByParent3;
        }
        m338remeasureBRTryo0(j);
        return this;
    }

    @Override // androidx.compose.ui.layout.Measurable
    public final int minIntrinsicHeight(int i) {
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = this.layoutNodeLayoutDelegate;
        if (!HitTestResultKt.isOutMostLookaheadRoot(layoutNodeLayoutDelegate.layoutNode)) {
            onIntrinsicsQueried$1();
            return layoutNodeLayoutDelegate.getOuterCoordinator().minIntrinsicHeight(i);
        }
        LookaheadPassDelegate lookaheadPassDelegate = layoutNodeLayoutDelegate.lookaheadPassDelegate;
        lookaheadPassDelegate.getClass();
        return lookaheadPassDelegate.minIntrinsicHeight(i);
    }

    @Override // androidx.compose.ui.layout.Measurable
    public final int minIntrinsicWidth(int i) {
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = this.layoutNodeLayoutDelegate;
        if (!HitTestResultKt.isOutMostLookaheadRoot(layoutNodeLayoutDelegate.layoutNode)) {
            onIntrinsicsQueried$1();
            return layoutNodeLayoutDelegate.getOuterCoordinator().minIntrinsicWidth(i);
        }
        LookaheadPassDelegate lookaheadPassDelegate = layoutNodeLayoutDelegate.lookaheadPassDelegate;
        lookaheadPassDelegate.getClass();
        return lookaheadPassDelegate.minIntrinsicWidth(i);
    }

    public final void onIntrinsicsQueried$1() {
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = this.layoutNodeLayoutDelegate;
        LayoutNode.requestRemeasure$ui$default(layoutNodeLayoutDelegate.layoutNode, false, 7);
        LayoutNode layoutNode = layoutNodeLayoutDelegate.layoutNode;
        LayoutNode parent$ui = layoutNode.getParent$ui();
        if (parent$ui == null || layoutNode.intrinsicsUsageByParent != LayoutNode.UsageByParent.NotUsed) {
            return;
        }
        int ordinal = parent$ui.layoutDelegate.layoutState.ordinal();
        layoutNode.intrinsicsUsageByParent = ordinal != 0 ? ordinal != 2 ? parent$ui.intrinsicsUsageByParent : LayoutNode.UsageByParent.InLayoutBlock : LayoutNode.UsageByParent.InMeasureBlock;
    }

    public final void onNodePlaced$ui() {
        this.onNodePlacedCalled = true;
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = this.layoutNodeLayoutDelegate;
        LayoutNode parent$ui = layoutNodeLayoutDelegate.layoutNode.getParent$ui();
        float f = getInnerCoordinator().zIndex;
        LayoutNode layoutNode = layoutNodeLayoutDelegate.layoutNode;
        NodeChain nodeChain = layoutNode.nodes;
        NodeCoordinator nodeCoordinator = nodeChain.outerCoordinator;
        InnerNodeCoordinator innerNodeCoordinator = nodeChain.innerCoordinator;
        while (nodeCoordinator != innerNodeCoordinator) {
            nodeCoordinator.getClass();
            LayoutModifierNodeCoordinator layoutModifierNodeCoordinator = (LayoutModifierNodeCoordinator) nodeCoordinator;
            f += layoutModifierNodeCoordinator.zIndex;
            nodeCoordinator = layoutModifierNodeCoordinator.wrapped;
        }
        if (f != this.zIndex) {
            this.zIndex = f;
            if (parent$ui != null) {
                parent$ui.onZSortedChildrenInvalidated$ui();
            }
            if (parent$ui != null) {
                parent$ui.invalidateLayer$ui();
            }
        }
        if (!getInnerCoordinator().isPlacingForAlignment) {
            boolean z = this.isPlaced;
            if (!z || this.alignmentLines.getQueried$ui()) {
                markNodeAndSubtreeAsPlaced$1();
            }
            if (z) {
                layoutNode.nodes.innerCoordinator.onPlaced();
            } else {
                if (parent$ui != null) {
                    parent$ui.invalidateLayer$ui();
                }
                if (this.relayoutWithoutParentInProgress && parent$ui != null) {
                    parent$ui.requestRelayout$ui(false);
                }
            }
        }
        if (parent$ui != null) {
            LayoutNodeLayoutDelegate layoutNodeLayoutDelegate2 = parent$ui.layoutDelegate;
            if (!this.relayoutWithoutParentInProgress && layoutNodeLayoutDelegate2.layoutState == LayoutNode.LayoutState.LayingOut) {
                if (this.placeOrder != Integer.MAX_VALUE) {
                    InlineClassHelperKt.throwIllegalStateException("Place was called on a node which was placed already");
                }
                int i = layoutNodeLayoutDelegate2.nextChildPlaceOrder;
                this.placeOrder = i;
                layoutNodeLayoutDelegate2.nextChildPlaceOrder = i + 1;
            }
        } else {
            this.placeOrder = 0;
        }
        layoutChildren();
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0032 A[Catch: all -> 0x001b, TryCatch #0 {all -> 0x001b, blocks: (B:3:0x0007, B:5:0x0012, B:7:0x0016, B:10:0x002e, B:12:0x0032, B:14:0x003a, B:17:0x0043, B:18:0x0045, B:20:0x0049, B:22:0x004f, B:24:0x0057, B:26:0x0065, B:28:0x0070, B:29:0x0074, B:30:0x005b, B:31:0x0088, B:33:0x008c, B:35:0x0090, B:36:0x0095, B:40:0x001e, B:42:0x0022, B:44:0x0026, B:46:0x002a), top: B:2:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0070 A[Catch: all -> 0x001b, TryCatch #0 {all -> 0x001b, blocks: (B:3:0x0007, B:5:0x0012, B:7:0x0016, B:10:0x002e, B:12:0x0032, B:14:0x003a, B:17:0x0043, B:18:0x0045, B:20:0x0049, B:22:0x004f, B:24:0x0057, B:26:0x0065, B:28:0x0070, B:29:0x0074, B:30:0x005b, B:31:0x0088, B:33:0x008c, B:35:0x0090, B:36:0x0095, B:40:0x001e, B:42:0x0022, B:44:0x0026, B:46:0x002a), top: B:2:0x0007 }] */
    @Override // androidx.compose.ui.layout.Placeable
    /* renamed from: placeAt-f8xVGno */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo295placeAtf8xVGno(long r9, float r11, kotlin.jvm.functions.Function1 r12) {
        /*
            r8 = this;
            androidx.compose.ui.node.LayoutNodeLayoutDelegate r0 = r8.layoutNodeLayoutDelegate
            androidx.compose.ui.node.LayoutNode r1 = r0.layoutNode
            androidx.compose.ui.node.LayoutNode r2 = r0.layoutNode
            r3 = 1
            r8.isPlacedByParent = r3     // Catch: java.lang.Throwable -> L1b
            long r4 = r8.lastPosition     // Catch: java.lang.Throwable -> L1b
            boolean r4 = androidx.compose.ui.unit.IntOffset.m445equalsimpl0(r9, r4)     // Catch: java.lang.Throwable -> L1b
            r5 = 0
            if (r4 == 0) goto L1e
            kotlin.jvm.functions.Function1 r4 = r8.lastLayerBlock     // Catch: java.lang.Throwable -> L1b
            if (r12 != r4) goto L1e
            boolean r4 = r8.needsCoordinatesUpdate     // Catch: java.lang.Throwable -> L1b
            if (r4 == 0) goto L2e
            goto L1e
        L1b:
            r8 = move-exception
            goto L99
        L1e:
            boolean r4 = r0.coordinatesAccessedDuringModifierPlacement     // Catch: java.lang.Throwable -> L1b
            if (r4 != 0) goto L2a
            boolean r4 = r0.coordinatesAccessedDuringPlacement     // Catch: java.lang.Throwable -> L1b
            if (r4 != 0) goto L2a
            boolean r4 = r8.needsCoordinatesUpdate     // Catch: java.lang.Throwable -> L1b
            if (r4 == 0) goto L2e
        L2a:
            r8.layoutPending = r3     // Catch: java.lang.Throwable -> L1b
            r8.needsCoordinatesUpdate = r5     // Catch: java.lang.Throwable -> L1b
        L2e:
            androidx.compose.ui.node.LookaheadPassDelegate r4 = r0.lookaheadPassDelegate     // Catch: java.lang.Throwable -> L1b
            if (r4 == 0) goto L45
            androidx.compose.ui.node.LayoutNodeLayoutDelegate r6 = r4.layoutNodeLayoutDelegate     // Catch: java.lang.Throwable -> L1b
            androidx.compose.ui.node.LookaheadPassDelegate$PlacedState r4 = r4._placedState     // Catch: java.lang.Throwable -> L1b
            androidx.compose.ui.node.LookaheadPassDelegate$PlacedState r7 = androidx.compose.ui.node.LookaheadPassDelegate.PlacedState.IsNotPlaced     // Catch: java.lang.Throwable -> L1b
            if (r4 != r7) goto L45
            androidx.compose.ui.node.LayoutNode r4 = r6.layoutNode     // Catch: java.lang.Throwable -> L1b
            boolean r4 = androidx.compose.ui.node.HitTestResultKt.isOutMostLookaheadRoot(r4)     // Catch: java.lang.Throwable -> L1b
            if (r4 == 0) goto L43
            goto L45
        L43:
            r6.detachedFromParentLookaheadPlacement = r3     // Catch: java.lang.Throwable -> L1b
        L45:
            androidx.compose.ui.node.LookaheadPassDelegate r4 = r0.lookaheadPassDelegate     // Catch: java.lang.Throwable -> L1b
            if (r4 == 0) goto L88
            boolean r4 = r4.getNeedsToBePlacedInApproach()     // Catch: java.lang.Throwable -> L1b
            if (r4 != r3) goto L88
            androidx.compose.ui.node.NodeCoordinator r3 = r0.getOuterCoordinator()     // Catch: java.lang.Throwable -> L1b
            androidx.compose.ui.node.NodeCoordinator r3 = r3.wrappedBy     // Catch: java.lang.Throwable -> L1b
            if (r3 == 0) goto L5b
            androidx.compose.ui.layout.OuterPlacementScope r3 = r3.placementScope     // Catch: java.lang.Throwable -> L1b
            if (r3 != 0) goto L65
        L5b:
            androidx.compose.ui.node.Owner r3 = androidx.compose.ui.node.LayoutNodeKt.requireOwner(r2)     // Catch: java.lang.Throwable -> L1b
            androidx.compose.ui.platform.AndroidComposeView r3 = (androidx.compose.ui.platform.AndroidComposeView) r3     // Catch: java.lang.Throwable -> L1b
            androidx.compose.ui.layout.Placeable$PlacementScope r3 = r3.getPlacementScope()     // Catch: java.lang.Throwable -> L1b
        L65:
            androidx.compose.ui.node.LookaheadPassDelegate r4 = r0.lookaheadPassDelegate     // Catch: java.lang.Throwable -> L1b
            r4.getClass()     // Catch: java.lang.Throwable -> L1b
            androidx.compose.ui.node.LayoutNode r2 = r2.getParent$ui()     // Catch: java.lang.Throwable -> L1b
            if (r2 == 0) goto L74
            androidx.compose.ui.node.LayoutNodeLayoutDelegate r2 = r2.layoutDelegate     // Catch: java.lang.Throwable -> L1b
            r2.nextChildLookaheadPlaceOrder = r5     // Catch: java.lang.Throwable -> L1b
        L74:
            r2 = 2147483647(0x7fffffff, float:NaN)
            r4.placeOrder = r2     // Catch: java.lang.Throwable -> L1b
            r2 = 32
            long r5 = r9 >> r2
            int r2 = (int) r5     // Catch: java.lang.Throwable -> L1b
            r5 = 4294967295(0xffffffff, double:2.1219957905E-314)
            long r5 = r5 & r9
            int r5 = (int) r5     // Catch: java.lang.Throwable -> L1b
            androidx.compose.ui.layout.Placeable.PlacementScope.place$default(r3, r4, r2, r5)     // Catch: java.lang.Throwable -> L1b
        L88:
            androidx.compose.ui.node.LookaheadPassDelegate r0 = r0.lookaheadPassDelegate     // Catch: java.lang.Throwable -> L1b
            if (r0 == 0) goto L95
            boolean r0 = r0.placedOnce     // Catch: java.lang.Throwable -> L1b
            if (r0 != 0) goto L95
            java.lang.String r0 = "Error: Placement happened before lookahead."
            androidx.compose.ui.internal.InlineClassHelperKt.throwIllegalStateException(r0)     // Catch: java.lang.Throwable -> L1b
        L95:
            r8.m337placeOuterCoordinatorMLgxB_4(r9, r11, r12)     // Catch: java.lang.Throwable -> L1b
            return
        L99:
            r1.rethrowWithComposeStackTrace(r8)
            r8 = 0
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.node.MeasurePassDelegate.mo295placeAtf8xVGno(long, float, kotlin.jvm.functions.Function1):void");
    }

    /* renamed from: placeOuterCoordinator-MLgxB_4, reason: not valid java name */
    public final void m337placeOuterCoordinatorMLgxB_4(long j, float f, Function1 function1) {
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = this.layoutNodeLayoutDelegate;
        LayoutNode layoutNode = layoutNodeLayoutDelegate.layoutNode;
        LayoutNode layoutNode2 = layoutNodeLayoutDelegate.layoutNode;
        if (layoutNode.isDeactivated) {
            InlineClassHelperKt.throwIllegalArgumentException("place is called on a deactivated node");
        }
        layoutNodeLayoutDelegate.layoutState = LayoutNode.LayoutState.LayingOut;
        this.lastPosition = j;
        this.lastZIndex = f;
        this.lastLayerBlock = function1;
        this.onNodePlacedCalled = false;
        Owner requireOwner = LayoutNodeKt.requireOwner(layoutNode2);
        if (this.layoutPending || !this.isPlaced) {
            this.alignmentLines.usedByModifierLayout = false;
            layoutNodeLayoutDelegate.setCoordinatesAccessedDuringModifierPlacement(false);
            this.placeOuterCoordinatorLayerBlock = function1;
            this.placeOuterCoordinatorPosition = j;
            this.placeOuterCoordinatorZIndex = f;
            OwnerSnapshotObserver snapshotObserver = ((AndroidComposeView) requireOwner).getSnapshotObserver();
            snapshotObserver.observer.observeReads(layoutNode2, snapshotObserver.onCommitAffectingLayoutModifier, this.placeOuterCoordinatorBlock);
        } else {
            NodeCoordinator outerCoordinator = layoutNodeLayoutDelegate.getOuterCoordinator();
            outerCoordinator.m351placeSelfMLgxB_4(IntOffset.m447plusqkQi6aY(j, outerCoordinator.apparentToRealOffset), f, function1);
            onNodePlaced$ui();
        }
        layoutNodeLayoutDelegate.layoutState = LayoutNode.LayoutState.Idle;
        if (layoutNodeLayoutDelegate.getOuterCoordinator().isPlacingForAlignment && (layoutNodeLayoutDelegate.coordinatesAccessedDuringModifierPlacement || layoutNodeLayoutDelegate.coordinatesAccessedDuringPlacement)) {
            requestLayout();
        }
        this.placedOnce = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0054 A[Catch: all -> 0x0010, LOOP:0: B:22:0x0052->B:23:0x0054, LOOP_END, TryCatch #0 {all -> 0x0010, blocks: (B:3:0x0006, B:5:0x000a, B:6:0x0013, B:9:0x0023, B:13:0x002b, B:15:0x0033, B:18:0x003c, B:21:0x0045, B:23:0x0054, B:25:0x0063, B:28:0x007a, B:30:0x0099, B:31:0x009f, B:33:0x00ab, B:35:0x00b5, B:39:0x00c1, B:41:0x0075), top: B:2:0x0006 }] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0099 A[Catch: all -> 0x0010, TryCatch #0 {all -> 0x0010, blocks: (B:3:0x0006, B:5:0x000a, B:6:0x0013, B:9:0x0023, B:13:0x002b, B:15:0x0033, B:18:0x003c, B:21:0x0045, B:23:0x0054, B:25:0x0063, B:28:0x007a, B:30:0x0099, B:31:0x009f, B:33:0x00ab, B:35:0x00b5, B:39:0x00c1, B:41:0x0075), top: B:2:0x0006 }] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0075 A[Catch: all -> 0x0010, TryCatch #0 {all -> 0x0010, blocks: (B:3:0x0006, B:5:0x000a, B:6:0x0013, B:9:0x0023, B:13:0x002b, B:15:0x0033, B:18:0x003c, B:21:0x0045, B:23:0x0054, B:25:0x0063, B:28:0x007a, B:30:0x0099, B:31:0x009f, B:33:0x00ab, B:35:0x00b5, B:39:0x00c1, B:41:0x0075), top: B:2:0x0006 }] */
    /* renamed from: remeasure-BRTryo0, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m338remeasureBRTryo0(long r11) {
        /*
            Method dump skipped, instructions count: 226
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.node.MeasurePassDelegate.m338remeasureBRTryo0(long):boolean");
    }

    @Override // androidx.compose.ui.node.AlignmentLinesOwner
    public final void requestLayout() {
        this.layoutNodeLayoutDelegate.layoutNode.requestRelayout$ui(false);
    }

    public final void requestLayoutIfCoordinatesAreUsedAndNotifyChildren() {
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = this.layoutNodeLayoutDelegate;
        LayoutNode layoutNode = layoutNodeLayoutDelegate.layoutNode;
        LayoutNode layoutNode2 = layoutNodeLayoutDelegate.layoutNode;
        if (!layoutNode.isPlaced() || layoutNodeLayoutDelegate.childrenAccessingCoordinatesDuringPlacement <= 0) {
            return;
        }
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate2 = layoutNode2.layoutDelegate;
        if ((layoutNodeLayoutDelegate2.coordinatesAccessedDuringPlacement || layoutNodeLayoutDelegate2.coordinatesAccessedDuringModifierPlacement) && !layoutNodeLayoutDelegate2.measurePassDelegate.layoutPending) {
            layoutNode2.requestRelayout$ui(false);
        }
        MutableVector mutableVector = layoutNode2.get_children$ui();
        Object[] objArr = mutableVector.content;
        int i = mutableVector.size;
        for (int i2 = 0; i2 < i; i2++) {
            ((LayoutNode) objArr[i2]).layoutDelegate.measurePassDelegate.requestLayoutIfCoordinatesAreUsedAndNotifyChildren();
        }
    }

    @Override // androidx.compose.ui.node.AlignmentLinesOwner
    public final void requestMeasure() {
        LayoutNode.requestRemeasure$ui$default(this.layoutNodeLayoutDelegate.layoutNode, false, 7);
    }

    @Override // androidx.compose.ui.node.MotionReferencePlacementDelegate
    public final void updatePlacedUnderMotionFrameOfReference(boolean z) {
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = this.layoutNodeLayoutDelegate;
        if (z != layoutNodeLayoutDelegate.getOuterCoordinator().isPlacedUnderMotionFrameOfReference) {
            layoutNodeLayoutDelegate.getOuterCoordinator().isPlacedUnderMotionFrameOfReference = z;
            this.needsCoordinatesUpdate = true;
        }
    }
}
