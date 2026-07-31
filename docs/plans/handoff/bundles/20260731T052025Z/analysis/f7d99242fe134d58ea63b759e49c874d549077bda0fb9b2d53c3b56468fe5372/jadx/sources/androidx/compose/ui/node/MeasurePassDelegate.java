package androidx.compose.ui.node;

import androidx.camera.core.streamsharing.StreamSharing$$ExternalSyntheticLambda0;
import androidx.collection.MutableObjectList;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.layout.AlignmentLine;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.IntOffset;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MeasurePassDelegate extends Placeable implements Measurable, AlignmentLinesOwner, MotionReferencePlacementDelegate {
    public boolean duringAlignmentLinesQuery;
    public boolean isPlaced;
    public boolean isPlacedByParent;
    public GraphicsLayer lastExplicitLayer;
    public Function1 lastLayerBlock;
    public float lastZIndex;
    public boolean layingOutChildren;
    public final MeasurePassDelegate$layoutChildrenBlock$1 layoutChildrenBlock;
    public final LayoutNodeLayoutDelegate layoutNodeLayoutDelegate;
    public boolean layoutPending;
    public boolean layoutPendingForAlignment;
    public boolean measurePending;
    public boolean measuredOnce;
    public boolean needsCoordinatesUpdate;
    public boolean onNodePlacedCalled;
    public Object parentData;
    public final MeasurePassDelegate$layoutChildrenBlock$1 performMeasureBlock;
    public final MeasurePassDelegate$layoutChildrenBlock$1 placeOuterCoordinatorBlock;
    public GraphicsLayer placeOuterCoordinatorLayer;
    public Function1 placeOuterCoordinatorLayerBlock;
    public float placeOuterCoordinatorZIndex;
    public boolean placedOnce;
    public boolean relayoutWithoutParentInProgress;
    public float zIndex;
    public int previousPlaceOrder = Integer.MAX_VALUE;
    public int placeOrder = Integer.MAX_VALUE;
    public LayoutNode.UsageByParent measuredByParent = LayoutNode.UsageByParent.NotUsed;
    public long lastPosition = 0;
    public boolean parentDataDirty = true;
    public final LookaheadAlignmentLines alignmentLines = new LookaheadAlignmentLines(this, 1);
    public final MutableVector _childDelegates = new MutableVector(new MeasurePassDelegate[16]);
    public boolean childDelegatesDirty = true;
    public long performMeasureConstraints = ConstraintsKt.Constraints$default(0, 0, 0, 0, 15);
    public long placeOuterCoordinatorPosition = 0;

    /* JADX WARN: Type inference failed for: r2v3, types: [androidx.compose.ui.node.MeasurePassDelegate$layoutChildrenBlock$1] */
    /* JADX WARN: Type inference failed for: r7v4, types: [androidx.compose.ui.node.MeasurePassDelegate$layoutChildrenBlock$1] */
    /* JADX WARN: Type inference failed for: r7v5, types: [androidx.compose.ui.node.MeasurePassDelegate$layoutChildrenBlock$1] */
    public MeasurePassDelegate(LayoutNodeLayoutDelegate layoutNodeLayoutDelegate) {
        this.layoutNodeLayoutDelegate = layoutNodeLayoutDelegate;
        final int i = 1;
        final int i2 = 0;
        this.performMeasureBlock = new Function0(this) { // from class: androidx.compose.ui.node.MeasurePassDelegate$layoutChildrenBlock$1
            public final /* synthetic */ MeasurePassDelegate this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
                this.this$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Placeable.PlacementScope placementScope;
                int i3 = i;
                Unit unit = Unit.INSTANCE;
                MeasurePassDelegate measurePassDelegate = this.this$0;
                switch (i3) {
                    case 0:
                        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate2 = measurePassDelegate.layoutNodeLayoutDelegate;
                        layoutNodeLayoutDelegate2.nextChildPlaceOrder = 0;
                        MutableVector mutableVector = layoutNodeLayoutDelegate2.layoutNode.get_children$ui();
                        Object[] objArr = mutableVector.content;
                        int i4 = mutableVector.size;
                        for (int i5 = 0; i5 < i4; i5++) {
                            MeasurePassDelegate measurePassDelegate2 = ((LayoutNode) objArr[i5]).layoutDelegate.measurePassDelegate;
                            measurePassDelegate2.previousPlaceOrder = measurePassDelegate2.placeOrder;
                            measurePassDelegate2.placeOrder = Integer.MAX_VALUE;
                            measurePassDelegate2.isPlacedByParent = false;
                            if (measurePassDelegate2.measuredByParent == LayoutNode.UsageByParent.InLayoutBlock) {
                                measurePassDelegate2.measuredByParent = LayoutNode.UsageByParent.NotUsed;
                            }
                        }
                        LayoutNode layoutNode = layoutNodeLayoutDelegate2.layoutNode;
                        LayoutNode layoutNode2 = layoutNodeLayoutDelegate2.layoutNode;
                        MutableVector mutableVector2 = layoutNode.get_children$ui();
                        Object[] objArr2 = mutableVector2.content;
                        int i6 = mutableVector2.size;
                        for (int i7 = 0; i7 < i6; i7++) {
                            ((LayoutNode) objArr2[i7]).layoutDelegate.measurePassDelegate.alignmentLines.usedDuringParentLayout = false;
                        }
                        if (measurePassDelegate.getInnerCoordinator().isPlacingForAlignment) {
                            MutableObjectList.ObjectListMutableList objectListMutableList = (MutableObjectList.ObjectListMutableList) layoutNode2.getChildren$ui();
                            int i8 = ((MutableVector) objectListMutableList.objectList).size;
                            for (int i9 = 0; i9 < i8; i9++) {
                                ((NodeCoordinator) ((LayoutNode) objectListMutableList.get(i9)).nodes.outerCoordinator).isPlacingForAlignment = true;
                            }
                        }
                        measurePassDelegate.getInnerCoordinator().getMeasureResult$ui().placeChildren();
                        if (measurePassDelegate.getInnerCoordinator().isPlacingForAlignment) {
                            MutableObjectList.ObjectListMutableList objectListMutableList2 = (MutableObjectList.ObjectListMutableList) layoutNode2.getChildren$ui();
                            int i10 = ((MutableVector) objectListMutableList2.objectList).size;
                            for (int i11 = 0; i11 < i10; i11++) {
                                ((NodeCoordinator) ((LayoutNode) objectListMutableList2.get(i11)).nodes.outerCoordinator).isPlacingForAlignment = false;
                            }
                        }
                        MutableVector mutableVector3 = layoutNode2.get_children$ui();
                        Object[] objArr3 = mutableVector3.content;
                        int i12 = mutableVector3.size;
                        for (int i13 = 0; i13 < i12; i13++) {
                            LayoutNode layoutNode3 = (LayoutNode) objArr3[i13];
                            LayoutNodeLayoutDelegate layoutNodeLayoutDelegate3 = layoutNode3.layoutDelegate;
                            if (layoutNodeLayoutDelegate3.measurePassDelegate.previousPlaceOrder != layoutNode3.getPlaceOrder$ui()) {
                                layoutNode2.onZSortedChildrenInvalidated$ui();
                                layoutNode2.invalidateLayer$ui();
                                if (layoutNode3.getPlaceOrder$ui() == Integer.MAX_VALUE) {
                                    if (layoutNodeLayoutDelegate3.detachedFromParentLookaheadPlacement || HitTestResultKt.isOutMostLookaheadRoot(layoutNode3)) {
                                        LookaheadPassDelegate lookaheadPassDelegate = layoutNodeLayoutDelegate3.lookaheadPassDelegate;
                                        lookaheadPassDelegate.getClass();
                                        lookaheadPassDelegate.markNodeAndSubtreeAsNotPlaced$ui(false);
                                    }
                                    layoutNodeLayoutDelegate3.measurePassDelegate.markSubtreeAsNotPlaced();
                                }
                            }
                        }
                        MutableVector mutableVector4 = layoutNode2.get_children$ui();
                        Object[] objArr4 = mutableVector4.content;
                        int i14 = mutableVector4.size;
                        for (int i15 = 0; i15 < i14; i15++) {
                            LookaheadAlignmentLines lookaheadAlignmentLines = ((LayoutNode) objArr4[i15]).layoutDelegate.measurePassDelegate.alignmentLines;
                            lookaheadAlignmentLines.previousUsedDuringParentLayout = lookaheadAlignmentLines.usedDuringParentLayout;
                        }
                        break;
                    case 1:
                        measurePassDelegate.layoutNodeLayoutDelegate.getOuterCoordinator().mo571measureBRTryo0(measurePassDelegate.performMeasureConstraints);
                        break;
                    default:
                        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate4 = measurePassDelegate.layoutNodeLayoutDelegate;
                        NodeCoordinator nodeCoordinator = layoutNodeLayoutDelegate4.getOuterCoordinator().wrappedBy;
                        if (nodeCoordinator == null || (placementScope = nodeCoordinator.placementScope) == null) {
                            placementScope = ((AndroidComposeView) LayoutNodeKt.requireOwner(layoutNodeLayoutDelegate4.layoutNode)).getPlacementScope();
                        }
                        Function1 function1 = measurePassDelegate.placeOuterCoordinatorLayerBlock;
                        GraphicsLayer graphicsLayer = measurePassDelegate.placeOuterCoordinatorLayer;
                        if (graphicsLayer != null) {
                            NodeCoordinator outerCoordinator = layoutNodeLayoutDelegate4.getOuterCoordinator();
                            long j = measurePassDelegate.placeOuterCoordinatorPosition;
                            float f = measurePassDelegate.placeOuterCoordinatorZIndex;
                            placementScope.getClass();
                            Placeable.PlacementScope.access$handleMotionFrameOfReferencePlacement(placementScope, outerCoordinator);
                            outerCoordinator.mo589placeAtf8xVGno(IntOffset.m754plusqkQi6aY(j, outerCoordinator.apparentToRealOffset), f, graphicsLayer);
                            break;
                        } else if (function1 == null) {
                            NodeCoordinator outerCoordinator2 = layoutNodeLayoutDelegate4.getOuterCoordinator();
                            long j2 = measurePassDelegate.placeOuterCoordinatorPosition;
                            float f2 = measurePassDelegate.placeOuterCoordinatorZIndex;
                            placementScope.getClass();
                            Placeable.PlacementScope.access$handleMotionFrameOfReferencePlacement(placementScope, outerCoordinator2);
                            outerCoordinator2.mo575placeAtf8xVGno(IntOffset.m754plusqkQi6aY(j2, outerCoordinator2.apparentToRealOffset), f2, (Function1) null);
                            break;
                        } else {
                            NodeCoordinator outerCoordinator3 = layoutNodeLayoutDelegate4.getOuterCoordinator();
                            long j3 = measurePassDelegate.placeOuterCoordinatorPosition;
                            float f3 = measurePassDelegate.placeOuterCoordinatorZIndex;
                            placementScope.getClass();
                            Placeable.PlacementScope.access$handleMotionFrameOfReferencePlacement(placementScope, outerCoordinator3);
                            outerCoordinator3.mo575placeAtf8xVGno(IntOffset.m754plusqkQi6aY(j3, outerCoordinator3.apparentToRealOffset), f3, function1);
                            break;
                        }
                        break;
                }
                return unit;
            }
        };
        this.layoutChildrenBlock = new Function0(this) { // from class: androidx.compose.ui.node.MeasurePassDelegate$layoutChildrenBlock$1
            public final /* synthetic */ MeasurePassDelegate this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
                this.this$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Placeable.PlacementScope placementScope;
                int i3 = i2;
                Unit unit = Unit.INSTANCE;
                MeasurePassDelegate measurePassDelegate = this.this$0;
                switch (i3) {
                    case 0:
                        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate2 = measurePassDelegate.layoutNodeLayoutDelegate;
                        layoutNodeLayoutDelegate2.nextChildPlaceOrder = 0;
                        MutableVector mutableVector = layoutNodeLayoutDelegate2.layoutNode.get_children$ui();
                        Object[] objArr = mutableVector.content;
                        int i4 = mutableVector.size;
                        for (int i5 = 0; i5 < i4; i5++) {
                            MeasurePassDelegate measurePassDelegate2 = ((LayoutNode) objArr[i5]).layoutDelegate.measurePassDelegate;
                            measurePassDelegate2.previousPlaceOrder = measurePassDelegate2.placeOrder;
                            measurePassDelegate2.placeOrder = Integer.MAX_VALUE;
                            measurePassDelegate2.isPlacedByParent = false;
                            if (measurePassDelegate2.measuredByParent == LayoutNode.UsageByParent.InLayoutBlock) {
                                measurePassDelegate2.measuredByParent = LayoutNode.UsageByParent.NotUsed;
                            }
                        }
                        LayoutNode layoutNode = layoutNodeLayoutDelegate2.layoutNode;
                        LayoutNode layoutNode2 = layoutNodeLayoutDelegate2.layoutNode;
                        MutableVector mutableVector2 = layoutNode.get_children$ui();
                        Object[] objArr2 = mutableVector2.content;
                        int i6 = mutableVector2.size;
                        for (int i7 = 0; i7 < i6; i7++) {
                            ((LayoutNode) objArr2[i7]).layoutDelegate.measurePassDelegate.alignmentLines.usedDuringParentLayout = false;
                        }
                        if (measurePassDelegate.getInnerCoordinator().isPlacingForAlignment) {
                            MutableObjectList.ObjectListMutableList objectListMutableList = (MutableObjectList.ObjectListMutableList) layoutNode2.getChildren$ui();
                            int i8 = ((MutableVector) objectListMutableList.objectList).size;
                            for (int i9 = 0; i9 < i8; i9++) {
                                ((NodeCoordinator) ((LayoutNode) objectListMutableList.get(i9)).nodes.outerCoordinator).isPlacingForAlignment = true;
                            }
                        }
                        measurePassDelegate.getInnerCoordinator().getMeasureResult$ui().placeChildren();
                        if (measurePassDelegate.getInnerCoordinator().isPlacingForAlignment) {
                            MutableObjectList.ObjectListMutableList objectListMutableList2 = (MutableObjectList.ObjectListMutableList) layoutNode2.getChildren$ui();
                            int i10 = ((MutableVector) objectListMutableList2.objectList).size;
                            for (int i11 = 0; i11 < i10; i11++) {
                                ((NodeCoordinator) ((LayoutNode) objectListMutableList2.get(i11)).nodes.outerCoordinator).isPlacingForAlignment = false;
                            }
                        }
                        MutableVector mutableVector3 = layoutNode2.get_children$ui();
                        Object[] objArr3 = mutableVector3.content;
                        int i12 = mutableVector3.size;
                        for (int i13 = 0; i13 < i12; i13++) {
                            LayoutNode layoutNode3 = (LayoutNode) objArr3[i13];
                            LayoutNodeLayoutDelegate layoutNodeLayoutDelegate3 = layoutNode3.layoutDelegate;
                            if (layoutNodeLayoutDelegate3.measurePassDelegate.previousPlaceOrder != layoutNode3.getPlaceOrder$ui()) {
                                layoutNode2.onZSortedChildrenInvalidated$ui();
                                layoutNode2.invalidateLayer$ui();
                                if (layoutNode3.getPlaceOrder$ui() == Integer.MAX_VALUE) {
                                    if (layoutNodeLayoutDelegate3.detachedFromParentLookaheadPlacement || HitTestResultKt.isOutMostLookaheadRoot(layoutNode3)) {
                                        LookaheadPassDelegate lookaheadPassDelegate = layoutNodeLayoutDelegate3.lookaheadPassDelegate;
                                        lookaheadPassDelegate.getClass();
                                        lookaheadPassDelegate.markNodeAndSubtreeAsNotPlaced$ui(false);
                                    }
                                    layoutNodeLayoutDelegate3.measurePassDelegate.markSubtreeAsNotPlaced();
                                }
                            }
                        }
                        MutableVector mutableVector4 = layoutNode2.get_children$ui();
                        Object[] objArr4 = mutableVector4.content;
                        int i14 = mutableVector4.size;
                        for (int i15 = 0; i15 < i14; i15++) {
                            LookaheadAlignmentLines lookaheadAlignmentLines = ((LayoutNode) objArr4[i15]).layoutDelegate.measurePassDelegate.alignmentLines;
                            lookaheadAlignmentLines.previousUsedDuringParentLayout = lookaheadAlignmentLines.usedDuringParentLayout;
                        }
                        break;
                    case 1:
                        measurePassDelegate.layoutNodeLayoutDelegate.getOuterCoordinator().mo571measureBRTryo0(measurePassDelegate.performMeasureConstraints);
                        break;
                    default:
                        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate4 = measurePassDelegate.layoutNodeLayoutDelegate;
                        NodeCoordinator nodeCoordinator = layoutNodeLayoutDelegate4.getOuterCoordinator().wrappedBy;
                        if (nodeCoordinator == null || (placementScope = nodeCoordinator.placementScope) == null) {
                            placementScope = ((AndroidComposeView) LayoutNodeKt.requireOwner(layoutNodeLayoutDelegate4.layoutNode)).getPlacementScope();
                        }
                        Function1 function1 = measurePassDelegate.placeOuterCoordinatorLayerBlock;
                        GraphicsLayer graphicsLayer = measurePassDelegate.placeOuterCoordinatorLayer;
                        if (graphicsLayer != null) {
                            NodeCoordinator outerCoordinator = layoutNodeLayoutDelegate4.getOuterCoordinator();
                            long j = measurePassDelegate.placeOuterCoordinatorPosition;
                            float f = measurePassDelegate.placeOuterCoordinatorZIndex;
                            placementScope.getClass();
                            Placeable.PlacementScope.access$handleMotionFrameOfReferencePlacement(placementScope, outerCoordinator);
                            outerCoordinator.mo589placeAtf8xVGno(IntOffset.m754plusqkQi6aY(j, outerCoordinator.apparentToRealOffset), f, graphicsLayer);
                            break;
                        } else if (function1 == null) {
                            NodeCoordinator outerCoordinator2 = layoutNodeLayoutDelegate4.getOuterCoordinator();
                            long j2 = measurePassDelegate.placeOuterCoordinatorPosition;
                            float f2 = measurePassDelegate.placeOuterCoordinatorZIndex;
                            placementScope.getClass();
                            Placeable.PlacementScope.access$handleMotionFrameOfReferencePlacement(placementScope, outerCoordinator2);
                            outerCoordinator2.mo575placeAtf8xVGno(IntOffset.m754plusqkQi6aY(j2, outerCoordinator2.apparentToRealOffset), f2, (Function1) null);
                            break;
                        } else {
                            NodeCoordinator outerCoordinator3 = layoutNodeLayoutDelegate4.getOuterCoordinator();
                            long j3 = measurePassDelegate.placeOuterCoordinatorPosition;
                            float f3 = measurePassDelegate.placeOuterCoordinatorZIndex;
                            placementScope.getClass();
                            Placeable.PlacementScope.access$handleMotionFrameOfReferencePlacement(placementScope, outerCoordinator3);
                            outerCoordinator3.mo575placeAtf8xVGno(IntOffset.m754plusqkQi6aY(j3, outerCoordinator3.apparentToRealOffset), f3, function1);
                            break;
                        }
                        break;
                }
                return unit;
            }
        };
        final int i3 = 2;
        this.placeOuterCoordinatorBlock = new Function0(this) { // from class: androidx.compose.ui.node.MeasurePassDelegate$layoutChildrenBlock$1
            public final /* synthetic */ MeasurePassDelegate this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
                this.this$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Placeable.PlacementScope placementScope;
                int i32 = i3;
                Unit unit = Unit.INSTANCE;
                MeasurePassDelegate measurePassDelegate = this.this$0;
                switch (i32) {
                    case 0:
                        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate2 = measurePassDelegate.layoutNodeLayoutDelegate;
                        layoutNodeLayoutDelegate2.nextChildPlaceOrder = 0;
                        MutableVector mutableVector = layoutNodeLayoutDelegate2.layoutNode.get_children$ui();
                        Object[] objArr = mutableVector.content;
                        int i4 = mutableVector.size;
                        for (int i5 = 0; i5 < i4; i5++) {
                            MeasurePassDelegate measurePassDelegate2 = ((LayoutNode) objArr[i5]).layoutDelegate.measurePassDelegate;
                            measurePassDelegate2.previousPlaceOrder = measurePassDelegate2.placeOrder;
                            measurePassDelegate2.placeOrder = Integer.MAX_VALUE;
                            measurePassDelegate2.isPlacedByParent = false;
                            if (measurePassDelegate2.measuredByParent == LayoutNode.UsageByParent.InLayoutBlock) {
                                measurePassDelegate2.measuredByParent = LayoutNode.UsageByParent.NotUsed;
                            }
                        }
                        LayoutNode layoutNode = layoutNodeLayoutDelegate2.layoutNode;
                        LayoutNode layoutNode2 = layoutNodeLayoutDelegate2.layoutNode;
                        MutableVector mutableVector2 = layoutNode.get_children$ui();
                        Object[] objArr2 = mutableVector2.content;
                        int i6 = mutableVector2.size;
                        for (int i7 = 0; i7 < i6; i7++) {
                            ((LayoutNode) objArr2[i7]).layoutDelegate.measurePassDelegate.alignmentLines.usedDuringParentLayout = false;
                        }
                        if (measurePassDelegate.getInnerCoordinator().isPlacingForAlignment) {
                            MutableObjectList.ObjectListMutableList objectListMutableList = (MutableObjectList.ObjectListMutableList) layoutNode2.getChildren$ui();
                            int i8 = ((MutableVector) objectListMutableList.objectList).size;
                            for (int i9 = 0; i9 < i8; i9++) {
                                ((NodeCoordinator) ((LayoutNode) objectListMutableList.get(i9)).nodes.outerCoordinator).isPlacingForAlignment = true;
                            }
                        }
                        measurePassDelegate.getInnerCoordinator().getMeasureResult$ui().placeChildren();
                        if (measurePassDelegate.getInnerCoordinator().isPlacingForAlignment) {
                            MutableObjectList.ObjectListMutableList objectListMutableList2 = (MutableObjectList.ObjectListMutableList) layoutNode2.getChildren$ui();
                            int i10 = ((MutableVector) objectListMutableList2.objectList).size;
                            for (int i11 = 0; i11 < i10; i11++) {
                                ((NodeCoordinator) ((LayoutNode) objectListMutableList2.get(i11)).nodes.outerCoordinator).isPlacingForAlignment = false;
                            }
                        }
                        MutableVector mutableVector3 = layoutNode2.get_children$ui();
                        Object[] objArr3 = mutableVector3.content;
                        int i12 = mutableVector3.size;
                        for (int i13 = 0; i13 < i12; i13++) {
                            LayoutNode layoutNode3 = (LayoutNode) objArr3[i13];
                            LayoutNodeLayoutDelegate layoutNodeLayoutDelegate3 = layoutNode3.layoutDelegate;
                            if (layoutNodeLayoutDelegate3.measurePassDelegate.previousPlaceOrder != layoutNode3.getPlaceOrder$ui()) {
                                layoutNode2.onZSortedChildrenInvalidated$ui();
                                layoutNode2.invalidateLayer$ui();
                                if (layoutNode3.getPlaceOrder$ui() == Integer.MAX_VALUE) {
                                    if (layoutNodeLayoutDelegate3.detachedFromParentLookaheadPlacement || HitTestResultKt.isOutMostLookaheadRoot(layoutNode3)) {
                                        LookaheadPassDelegate lookaheadPassDelegate = layoutNodeLayoutDelegate3.lookaheadPassDelegate;
                                        lookaheadPassDelegate.getClass();
                                        lookaheadPassDelegate.markNodeAndSubtreeAsNotPlaced$ui(false);
                                    }
                                    layoutNodeLayoutDelegate3.measurePassDelegate.markSubtreeAsNotPlaced();
                                }
                            }
                        }
                        MutableVector mutableVector4 = layoutNode2.get_children$ui();
                        Object[] objArr4 = mutableVector4.content;
                        int i14 = mutableVector4.size;
                        for (int i15 = 0; i15 < i14; i15++) {
                            LookaheadAlignmentLines lookaheadAlignmentLines = ((LayoutNode) objArr4[i15]).layoutDelegate.measurePassDelegate.alignmentLines;
                            lookaheadAlignmentLines.previousUsedDuringParentLayout = lookaheadAlignmentLines.usedDuringParentLayout;
                        }
                        break;
                    case 1:
                        measurePassDelegate.layoutNodeLayoutDelegate.getOuterCoordinator().mo571measureBRTryo0(measurePassDelegate.performMeasureConstraints);
                        break;
                    default:
                        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate4 = measurePassDelegate.layoutNodeLayoutDelegate;
                        NodeCoordinator nodeCoordinator = layoutNodeLayoutDelegate4.getOuterCoordinator().wrappedBy;
                        if (nodeCoordinator == null || (placementScope = nodeCoordinator.placementScope) == null) {
                            placementScope = ((AndroidComposeView) LayoutNodeKt.requireOwner(layoutNodeLayoutDelegate4.layoutNode)).getPlacementScope();
                        }
                        Function1 function1 = measurePassDelegate.placeOuterCoordinatorLayerBlock;
                        GraphicsLayer graphicsLayer = measurePassDelegate.placeOuterCoordinatorLayer;
                        if (graphicsLayer != null) {
                            NodeCoordinator outerCoordinator = layoutNodeLayoutDelegate4.getOuterCoordinator();
                            long j = measurePassDelegate.placeOuterCoordinatorPosition;
                            float f = measurePassDelegate.placeOuterCoordinatorZIndex;
                            placementScope.getClass();
                            Placeable.PlacementScope.access$handleMotionFrameOfReferencePlacement(placementScope, outerCoordinator);
                            outerCoordinator.mo589placeAtf8xVGno(IntOffset.m754plusqkQi6aY(j, outerCoordinator.apparentToRealOffset), f, graphicsLayer);
                            break;
                        } else if (function1 == null) {
                            NodeCoordinator outerCoordinator2 = layoutNodeLayoutDelegate4.getOuterCoordinator();
                            long j2 = measurePassDelegate.placeOuterCoordinatorPosition;
                            float f2 = measurePassDelegate.placeOuterCoordinatorZIndex;
                            placementScope.getClass();
                            Placeable.PlacementScope.access$handleMotionFrameOfReferencePlacement(placementScope, outerCoordinator2);
                            outerCoordinator2.mo575placeAtf8xVGno(IntOffset.m754plusqkQi6aY(j2, outerCoordinator2.apparentToRealOffset), f2, (Function1) null);
                            break;
                        } else {
                            NodeCoordinator outerCoordinator3 = layoutNodeLayoutDelegate4.getOuterCoordinator();
                            long j3 = measurePassDelegate.placeOuterCoordinatorPosition;
                            float f3 = measurePassDelegate.placeOuterCoordinatorZIndex;
                            placementScope.getClass();
                            Placeable.PlacementScope.access$handleMotionFrameOfReferencePlacement(placementScope, outerCoordinator3);
                            outerCoordinator3.mo575placeAtf8xVGno(IntOffset.m754plusqkQi6aY(j3, outerCoordinator3.apparentToRealOffset), f3, function1);
                            break;
                        }
                        break;
                }
                return unit;
            }
        };
    }

    @Override // androidx.compose.ui.node.AlignmentLinesOwner
    public final void forEachChildAlignmentLinesOwner(NodeChainKt$fillVector$1 nodeChainKt$fillVector$1) {
        MutableVector mutableVector = this.layoutNodeLayoutDelegate.layoutNode.get_children$ui();
        Object[] objArr = mutableVector.content;
        int i = mutableVector.size;
        for (int i2 = 0; i2 < i; i2++) {
            nodeChainKt$fillVector$1.invoke(((LayoutNode) objArr[i2]).layoutDelegate.measurePassDelegate);
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
    public final LookaheadAlignmentLines getAlignmentLines() {
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
        return (InnerNodeCoordinator) this.layoutNodeLayoutDelegate.layoutNode.nodes.innerCoordinator;
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
                        z = layoutNodeLayoutDelegate2.measurePassDelegate.m622remeasureBRTryo0(constraints.value);
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
            ((InnerNodeCoordinator) nodeChain.innerCoordinator).onPlaced();
            ((AndroidComposeView) LayoutNodeKt.requireOwner(layoutNode)).getRectManager().recalculateRectIfDirty(layoutNodeLayoutDelegate.layoutNode);
            if (layoutNode.getMeasurePending$ui()) {
                LayoutNode.requestRemeasure$ui$default(layoutNode, true, 6);
            } else if (layoutNode.layoutDelegate.lookaheadMeasurePending) {
                LayoutNode.requestLookaheadRemeasure$ui$default(layoutNode, true, 6);
            }
        }
        NodeCoordinator nodeCoordinator = ((InnerNodeCoordinator) nodeChain.innerCoordinator).wrapped;
        for (NodeCoordinator nodeCoordinator2 = (NodeCoordinator) nodeChain.outerCoordinator; !Intrinsics.areEqual(nodeCoordinator2, nodeCoordinator) && nodeCoordinator2 != null; nodeCoordinator2 = nodeCoordinator2.wrapped) {
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
            NodeCoordinator nodeCoordinator = ((InnerNodeCoordinator) nodeChain.innerCoordinator).wrapped;
            for (NodeCoordinator nodeCoordinator2 = (NodeCoordinator) nodeChain.outerCoordinator; !Intrinsics.areEqual(nodeCoordinator2, nodeCoordinator) && nodeCoordinator2 != null; nodeCoordinator2 = nodeCoordinator2.wrapped) {
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
    public final Placeable mo571measureBRTryo0(long j) {
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
            lookaheadPassDelegate.mo571measureBRTryo0(j);
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
                    StreamSharing$$ExternalSyntheticLambda0.m(layoutNodeLayoutDelegate2.layoutState, "Measurable could be only measured from the parent's measure or layout block. Parents state is ");
                    return null;
                }
                usageByParent = LayoutNode.UsageByParent.InLayoutBlock;
            }
            this.measuredByParent = usageByParent;
        } else {
            this.measuredByParent = usageByParent3;
        }
        m622remeasureBRTryo0(j);
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
        NodeCoordinator nodeCoordinator = (NodeCoordinator) nodeChain.outerCoordinator;
        InnerNodeCoordinator innerNodeCoordinator = (InnerNodeCoordinator) nodeChain.innerCoordinator;
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
                ((InnerNodeCoordinator) layoutNode.nodes.innerCoordinator).onPlaced();
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

    @Override // androidx.compose.ui.layout.Placeable
    /* renamed from: placeAt-f8xVGno */
    public final void mo575placeAtf8xVGno(long j, float f, Function1 function1) {
        m621placeSelfMLgxB_4$2(j, f, function1, null);
    }

    /* renamed from: placeOuterCoordinator-MLgxB_4, reason: not valid java name */
    public final void m620placeOuterCoordinatorMLgxB_4(long j, float f, Function1 function1, GraphicsLayer graphicsLayer) {
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
        this.lastExplicitLayer = graphicsLayer;
        this.onNodePlacedCalled = false;
        Owner requireOwner = LayoutNodeKt.requireOwner(layoutNode2);
        if (this.layoutPending || !this.isPlaced) {
            this.alignmentLines.usedByModifierLayout = false;
            layoutNodeLayoutDelegate.setCoordinatesAccessedDuringModifierPlacement(false);
            this.placeOuterCoordinatorLayerBlock = function1;
            this.placeOuterCoordinatorPosition = j;
            this.placeOuterCoordinatorZIndex = f;
            this.placeOuterCoordinatorLayer = graphicsLayer;
            OwnerSnapshotObserver snapshotObserver = ((AndroidComposeView) requireOwner).getSnapshotObserver();
            snapshotObserver.observer.observeReads(layoutNode2, snapshotObserver.onCommitAffectingLayoutModifier, this.placeOuterCoordinatorBlock);
        } else {
            NodeCoordinator outerCoordinator = layoutNodeLayoutDelegate.getOuterCoordinator();
            outerCoordinator.m634placeSelfMLgxB_4(IntOffset.m754plusqkQi6aY(j, outerCoordinator.apparentToRealOffset), f, function1, graphicsLayer);
            onNodePlaced$ui();
        }
        layoutNodeLayoutDelegate.layoutState = LayoutNode.LayoutState.Idle;
        if (layoutNodeLayoutDelegate.getOuterCoordinator().isPlacingForAlignment && (layoutNodeLayoutDelegate.coordinatesAccessedDuringModifierPlacement || layoutNodeLayoutDelegate.coordinatesAccessedDuringPlacement)) {
            requestLayout();
        }
        this.placedOnce = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0033 A[Catch: all -> 0x001b, TryCatch #0 {all -> 0x001b, blocks: (B:3:0x0007, B:5:0x0012, B:7:0x0016, B:10:0x002f, B:12:0x0033, B:14:0x003b, B:17:0x0044, B:18:0x0046, B:20:0x004a, B:22:0x0050, B:24:0x0058, B:26:0x0066, B:28:0x0071, B:29:0x0075, B:30:0x005c, B:31:0x0089, B:33:0x008d, B:35:0x0091, B:36:0x0096, B:40:0x001f, B:42:0x0023, B:44:0x0027, B:46:0x002b), top: B:2:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0071 A[Catch: all -> 0x001b, TryCatch #0 {all -> 0x001b, blocks: (B:3:0x0007, B:5:0x0012, B:7:0x0016, B:10:0x002f, B:12:0x0033, B:14:0x003b, B:17:0x0044, B:18:0x0046, B:20:0x004a, B:22:0x0050, B:24:0x0058, B:26:0x0066, B:28:0x0071, B:29:0x0075, B:30:0x005c, B:31:0x0089, B:33:0x008d, B:35:0x0091, B:36:0x0096, B:40:0x001f, B:42:0x0023, B:44:0x0027, B:46:0x002b), top: B:2:0x0007 }] */
    /* renamed from: placeSelf-MLgxB_4$2, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m621placeSelfMLgxB_4$2(long r9, float r11, kotlin.jvm.functions.Function1 r12, androidx.compose.ui.graphics.layer.GraphicsLayer r13) {
        /*
            r8 = this;
            androidx.compose.ui.node.LayoutNodeLayoutDelegate r0 = r8.layoutNodeLayoutDelegate
            androidx.compose.ui.node.LayoutNode r1 = r0.layoutNode
            androidx.compose.ui.node.LayoutNode r2 = r0.layoutNode
            r3 = 1
            r8.isPlacedByParent = r3     // Catch: java.lang.Throwable -> L1b
            long r4 = r8.lastPosition     // Catch: java.lang.Throwable -> L1b
            boolean r4 = androidx.compose.ui.unit.IntOffset.m752equalsimpl0(r9, r4)     // Catch: java.lang.Throwable -> L1b
            r5 = 0
            if (r4 == 0) goto L1f
            kotlin.jvm.functions.Function1 r4 = r8.lastLayerBlock     // Catch: java.lang.Throwable -> L1b
            if (r12 != r4) goto L1f
            boolean r4 = r8.needsCoordinatesUpdate     // Catch: java.lang.Throwable -> L1b
            if (r4 == 0) goto L2f
            goto L1f
        L1b:
            r0 = move-exception
            r8 = r0
            goto L9f
        L1f:
            boolean r4 = r0.coordinatesAccessedDuringModifierPlacement     // Catch: java.lang.Throwable -> L1b
            if (r4 != 0) goto L2b
            boolean r4 = r0.coordinatesAccessedDuringPlacement     // Catch: java.lang.Throwable -> L1b
            if (r4 != 0) goto L2b
            boolean r4 = r8.needsCoordinatesUpdate     // Catch: java.lang.Throwable -> L1b
            if (r4 == 0) goto L2f
        L2b:
            r8.layoutPending = r3     // Catch: java.lang.Throwable -> L1b
            r8.needsCoordinatesUpdate = r5     // Catch: java.lang.Throwable -> L1b
        L2f:
            androidx.compose.ui.node.LookaheadPassDelegate r4 = r0.lookaheadPassDelegate     // Catch: java.lang.Throwable -> L1b
            if (r4 == 0) goto L46
            androidx.compose.ui.node.LayoutNodeLayoutDelegate r6 = r4.layoutNodeLayoutDelegate     // Catch: java.lang.Throwable -> L1b
            androidx.compose.ui.node.LookaheadPassDelegate$PlacedState r4 = r4._placedState     // Catch: java.lang.Throwable -> L1b
            androidx.compose.ui.node.LookaheadPassDelegate$PlacedState r7 = androidx.compose.ui.node.LookaheadPassDelegate.PlacedState.IsNotPlaced     // Catch: java.lang.Throwable -> L1b
            if (r4 != r7) goto L46
            androidx.compose.ui.node.LayoutNode r4 = r6.layoutNode     // Catch: java.lang.Throwable -> L1b
            boolean r4 = androidx.compose.ui.node.HitTestResultKt.isOutMostLookaheadRoot(r4)     // Catch: java.lang.Throwable -> L1b
            if (r4 == 0) goto L44
            goto L46
        L44:
            r6.detachedFromParentLookaheadPlacement = r3     // Catch: java.lang.Throwable -> L1b
        L46:
            androidx.compose.ui.node.LookaheadPassDelegate r4 = r0.lookaheadPassDelegate     // Catch: java.lang.Throwable -> L1b
            if (r4 == 0) goto L89
            boolean r4 = r4.getNeedsToBePlacedInApproach()     // Catch: java.lang.Throwable -> L1b
            if (r4 != r3) goto L89
            androidx.compose.ui.node.NodeCoordinator r3 = r0.getOuterCoordinator()     // Catch: java.lang.Throwable -> L1b
            androidx.compose.ui.node.NodeCoordinator r3 = r3.wrappedBy     // Catch: java.lang.Throwable -> L1b
            if (r3 == 0) goto L5c
            androidx.compose.ui.layout.OuterPlacementScope r3 = r3.placementScope     // Catch: java.lang.Throwable -> L1b
            if (r3 != 0) goto L66
        L5c:
            androidx.compose.ui.node.Owner r3 = androidx.compose.ui.node.LayoutNodeKt.requireOwner(r2)     // Catch: java.lang.Throwable -> L1b
            androidx.compose.ui.platform.AndroidComposeView r3 = (androidx.compose.ui.platform.AndroidComposeView) r3     // Catch: java.lang.Throwable -> L1b
            androidx.compose.ui.layout.Placeable$PlacementScope r3 = r3.getPlacementScope()     // Catch: java.lang.Throwable -> L1b
        L66:
            androidx.compose.ui.node.LookaheadPassDelegate r4 = r0.lookaheadPassDelegate     // Catch: java.lang.Throwable -> L1b
            r4.getClass()     // Catch: java.lang.Throwable -> L1b
            androidx.compose.ui.node.LayoutNode r2 = r2.getParent$ui()     // Catch: java.lang.Throwable -> L1b
            if (r2 == 0) goto L75
            androidx.compose.ui.node.LayoutNodeLayoutDelegate r2 = r2.layoutDelegate     // Catch: java.lang.Throwable -> L1b
            r2.nextChildLookaheadPlaceOrder = r5     // Catch: java.lang.Throwable -> L1b
        L75:
            r2 = 2147483647(0x7fffffff, float:NaN)
            r4.placeOrder = r2     // Catch: java.lang.Throwable -> L1b
            r2 = 32
            long r5 = r9 >> r2
            int r2 = (int) r5     // Catch: java.lang.Throwable -> L1b
            r5 = 4294967295(0xffffffff, double:2.1219957905E-314)
            long r5 = r5 & r9
            int r5 = (int) r5     // Catch: java.lang.Throwable -> L1b
            androidx.compose.ui.layout.Placeable.PlacementScope.place$default(r3, r4, r2, r5)     // Catch: java.lang.Throwable -> L1b
        L89:
            androidx.compose.ui.node.LookaheadPassDelegate r0 = r0.lookaheadPassDelegate     // Catch: java.lang.Throwable -> L1b
            if (r0 == 0) goto L96
            boolean r0 = r0.placedOnce     // Catch: java.lang.Throwable -> L1b
            if (r0 != 0) goto L96
            java.lang.String r0 = "Error: Placement happened before lookahead."
            androidx.compose.ui.internal.InlineClassHelperKt.throwIllegalStateException(r0)     // Catch: java.lang.Throwable -> L1b
        L96:
            r2 = r8
            r3 = r9
            r5 = r11
            r6 = r12
            r7 = r13
            r2.m620placeOuterCoordinatorMLgxB_4(r3, r5, r6, r7)     // Catch: java.lang.Throwable -> L1b
            return
        L9f:
            r1.rethrowWithComposeStackTrace(r8)
            r8 = 0
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.node.MeasurePassDelegate.m621placeSelfMLgxB_4$2(long, float, kotlin.jvm.functions.Function1, androidx.compose.ui.graphics.layer.GraphicsLayer):void");
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
    public final boolean m622remeasureBRTryo0(long r11) {
        /*
            Method dump skipped, instructions count: 226
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.node.MeasurePassDelegate.m622remeasureBRTryo0(long):boolean");
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

    @Override // androidx.compose.ui.layout.Placeable
    /* renamed from: placeAt-f8xVGno */
    public final void mo589placeAtf8xVGno(long j, float f, GraphicsLayer graphicsLayer) {
        m621placeSelfMLgxB_4$2(j, f, null, graphicsLayer);
    }
}
