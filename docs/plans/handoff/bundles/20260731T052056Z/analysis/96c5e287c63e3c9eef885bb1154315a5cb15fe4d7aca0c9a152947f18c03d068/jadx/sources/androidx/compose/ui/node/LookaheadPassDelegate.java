package androidx.compose.ui.node;

import androidx.collection.MutableObjectList;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.layout.AlignmentLine;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.InnerNodeCoordinator;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.IntOffset;
import kotlin.Unit;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesList;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LookaheadPassDelegate extends Placeable implements Measurable, AlignmentLinesOwner, MotionReferencePlacementDelegate {
    public boolean duringAlignmentLinesQuery;
    public GraphicsLayer lastExplicitLayer;
    public Function1 lastLayerBlock;
    public boolean layingOutChildren;
    public final LookaheadPassDelegate$layoutChildrenBlock$1 layoutChildrenBlock;
    public final LookaheadPassDelegate$layoutChildrenBlock$1 layoutModifierBlock;
    public final LayoutNodeLayoutDelegate layoutNodeLayoutDelegate;
    public Constraints lookaheadConstraints;
    public boolean measuredOnce;
    public boolean onNodePlacedCalled;
    public Object parentData;
    public final LookaheadPassDelegate$layoutChildrenBlock$1 performMeasureBlock;
    public boolean placedOnce;
    public boolean relayoutWithoutParentInProgress;
    public int previousPlaceOrder = Integer.MAX_VALUE;
    public int placeOrder = Integer.MAX_VALUE;
    public LayoutNode.UsageByParent measuredByParent = LayoutNode.UsageByParent.NotUsed;
    public long lastPosition = 0;
    public PlacedState _placedState = PlacedState.IsNotPlaced;
    public final LookaheadAlignmentLines alignmentLines = new LookaheadAlignmentLines(this, 0);
    public final MutableVector _childDelegates = new MutableVector(new LookaheadPassDelegate[16]);
    public boolean childDelegatesDirty = true;
    public boolean parentDataDirty = true;
    public long performMeasureConstraints = ConstraintsKt.Constraints$default(0, 0, 0, 0, 15);

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class PlacedState {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ PlacedState[] $VALUES;
        public static final PlacedState IsNotPlaced;
        public static final PlacedState IsPlacedInApproach;
        public static final PlacedState IsPlacedInLookahead;

        static {
            PlacedState placedState = new PlacedState("IsPlacedInLookahead", 0);
            IsPlacedInLookahead = placedState;
            PlacedState placedState2 = new PlacedState("IsPlacedInApproach", 1);
            IsPlacedInApproach = placedState2;
            PlacedState placedState3 = new PlacedState("IsNotPlaced", 2);
            IsNotPlaced = placedState3;
            PlacedState[] placedStateArr = {placedState, placedState2, placedState3};
            $VALUES = placedStateArr;
            $ENTRIES = new EnumEntriesList(placedStateArr);
        }

        public static PlacedState valueOf(String str) {
            return (PlacedState) Enum.valueOf(PlacedState.class, str);
        }

        public static PlacedState[] values() {
            return (PlacedState[]) $VALUES.clone();
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[LayoutNode.LayoutState.values().length];
            try {
                iArr[LayoutNode.LayoutState.LookaheadMeasuring.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LayoutNode.LayoutState.Measuring.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[LayoutNode.LayoutState.LayingOut.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[LayoutNode.LayoutState.LookaheadLayingOut.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[LayoutNode.UsageByParent.values().length];
            try {
                iArr2[LayoutNode.UsageByParent.InMeasureBlock.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr2[LayoutNode.UsageByParent.InLayoutBlock.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    /* JADX WARN: Type inference failed for: r1v3, types: [androidx.compose.ui.node.LookaheadPassDelegate$layoutChildrenBlock$1] */
    /* JADX WARN: Type inference failed for: r4v4, types: [androidx.compose.ui.node.LookaheadPassDelegate$layoutChildrenBlock$1] */
    /* JADX WARN: Type inference failed for: r4v5, types: [androidx.compose.ui.node.LookaheadPassDelegate$layoutChildrenBlock$1] */
    public LookaheadPassDelegate(LayoutNodeLayoutDelegate layoutNodeLayoutDelegate) {
        this.layoutNodeLayoutDelegate = layoutNodeLayoutDelegate;
        final int i = 0;
        this.layoutChildrenBlock = new Function0(this) { // from class: androidx.compose.ui.node.LookaheadPassDelegate$layoutChildrenBlock$1
            public final /* synthetic */ LookaheadPassDelegate this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
                this.this$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                LookaheadDelegate lookaheadDelegate;
                int i2 = i;
                Unit unit = Unit.INSTANCE;
                LookaheadPassDelegate lookaheadPassDelegate = this.this$0;
                switch (i2) {
                    case 0:
                        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate2 = lookaheadPassDelegate.layoutNodeLayoutDelegate;
                        layoutNodeLayoutDelegate2.nextChildLookaheadPlaceOrder = 0;
                        MutableVector mutableVector = layoutNodeLayoutDelegate2.layoutNode.get_children$ui();
                        Object[] objArr = mutableVector.content;
                        int i3 = mutableVector.size;
                        for (int i4 = 0; i4 < i3; i4++) {
                            LookaheadPassDelegate lookaheadPassDelegate2 = ((LayoutNode) objArr[i4]).layoutDelegate.lookaheadPassDelegate;
                            lookaheadPassDelegate2.getClass();
                            lookaheadPassDelegate2.previousPlaceOrder = lookaheadPassDelegate2.placeOrder;
                            lookaheadPassDelegate2.placeOrder = Integer.MAX_VALUE;
                            if (lookaheadPassDelegate2.measuredByParent == LayoutNode.UsageByParent.InLayoutBlock) {
                                lookaheadPassDelegate2.measuredByParent = LayoutNode.UsageByParent.NotUsed;
                            }
                        }
                        LayoutNode layoutNode = layoutNodeLayoutDelegate2.layoutNode;
                        LayoutNode layoutNode2 = layoutNodeLayoutDelegate2.layoutNode;
                        MutableVector mutableVector2 = layoutNode.get_children$ui();
                        Object[] objArr2 = mutableVector2.content;
                        int i5 = mutableVector2.size;
                        for (int i6 = 0; i6 < i5; i6++) {
                            LookaheadPassDelegate lookaheadPassDelegate3 = ((LayoutNode) objArr2[i6]).layoutDelegate.lookaheadPassDelegate;
                            lookaheadPassDelegate3.getClass();
                            lookaheadPassDelegate3.alignmentLines.usedDuringParentLayout = false;
                        }
                        InnerNodeCoordinator.LookaheadDelegateImpl lookaheadDelegateImpl = lookaheadPassDelegate.getInnerCoordinator().lookaheadDelegate;
                        if (lookaheadDelegateImpl != null) {
                            boolean z = lookaheadDelegateImpl.isPlacingForAlignment;
                            MutableObjectList.ObjectListMutableList objectListMutableList = (MutableObjectList.ObjectListMutableList) layoutNode2.getChildren$ui();
                            int i7 = ((MutableVector) objectListMutableList.objectList).size;
                            for (int i8 = 0; i8 < i7; i8++) {
                                LookaheadDelegate lookaheadDelegate2 = ((NodeCoordinator) ((LayoutNode) objectListMutableList.get(i8)).nodes.outerCoordinator).getLookaheadDelegate();
                                if (lookaheadDelegate2 != null) {
                                    lookaheadDelegate2.isPlacingForAlignment = z;
                                }
                            }
                        }
                        InnerNodeCoordinator.LookaheadDelegateImpl lookaheadDelegateImpl2 = lookaheadPassDelegate.getInnerCoordinator().lookaheadDelegate;
                        lookaheadDelegateImpl2.getClass();
                        lookaheadDelegateImpl2.getMeasureResult$ui().placeChildren();
                        if (lookaheadPassDelegate.getInnerCoordinator().lookaheadDelegate != null) {
                            MutableObjectList.ObjectListMutableList objectListMutableList2 = (MutableObjectList.ObjectListMutableList) layoutNode2.getChildren$ui();
                            int i9 = ((MutableVector) objectListMutableList2.objectList).size;
                            for (int i10 = 0; i10 < i9; i10++) {
                                LookaheadDelegate lookaheadDelegate3 = ((NodeCoordinator) ((LayoutNode) objectListMutableList2.get(i10)).nodes.outerCoordinator).getLookaheadDelegate();
                                if (lookaheadDelegate3 != null) {
                                    lookaheadDelegate3.isPlacingForAlignment = false;
                                }
                            }
                        }
                        MutableVector mutableVector3 = layoutNode2.get_children$ui();
                        Object[] objArr3 = mutableVector3.content;
                        int i11 = mutableVector3.size;
                        for (int i12 = 0; i12 < i11; i12++) {
                            LookaheadPassDelegate lookaheadPassDelegate4 = ((LayoutNode) objArr3[i12]).layoutDelegate.lookaheadPassDelegate;
                            lookaheadPassDelegate4.getClass();
                            int i13 = lookaheadPassDelegate4.previousPlaceOrder;
                            int i14 = lookaheadPassDelegate4.placeOrder;
                            if (i13 != i14 && i14 == Integer.MAX_VALUE) {
                                lookaheadPassDelegate4.markNodeAndSubtreeAsNotPlaced$ui(true);
                            }
                        }
                        MutableVector mutableVector4 = layoutNode2.get_children$ui();
                        Object[] objArr4 = mutableVector4.content;
                        int i15 = mutableVector4.size;
                        for (int i16 = 0; i16 < i15; i16++) {
                            LookaheadPassDelegate lookaheadPassDelegate5 = ((LayoutNode) objArr4[i16]).layoutDelegate.lookaheadPassDelegate;
                            lookaheadPassDelegate5.getClass();
                            LookaheadAlignmentLines lookaheadAlignmentLines = lookaheadPassDelegate5.alignmentLines;
                            lookaheadAlignmentLines.previousUsedDuringParentLayout = lookaheadAlignmentLines.usedDuringParentLayout;
                        }
                        break;
                    case 1:
                        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate3 = lookaheadPassDelegate.layoutNodeLayoutDelegate;
                        Placeable.PlacementScope placementScope = null;
                        if (HitTestResultKt.isOutMostLookaheadRoot(layoutNodeLayoutDelegate3.layoutNode) || layoutNodeLayoutDelegate3.detachedFromParentLookaheadPlacement) {
                            NodeCoordinator nodeCoordinator = layoutNodeLayoutDelegate3.getOuterCoordinator().wrappedBy;
                            if (nodeCoordinator != null) {
                                placementScope = nodeCoordinator.placementScope;
                            }
                        } else {
                            NodeCoordinator nodeCoordinator2 = layoutNodeLayoutDelegate3.getOuterCoordinator().wrappedBy;
                            if (nodeCoordinator2 != null && (lookaheadDelegate = nodeCoordinator2.getLookaheadDelegate()) != null) {
                                placementScope = lookaheadDelegate.placementScope;
                            }
                        }
                        if (placementScope == null) {
                            placementScope = ((AndroidComposeView) LayoutNodeKt.requireOwner(layoutNodeLayoutDelegate3.layoutNode)).getPlacementScope();
                        }
                        LookaheadDelegate lookaheadDelegate4 = layoutNodeLayoutDelegate3.getOuterCoordinator().getLookaheadDelegate();
                        lookaheadDelegate4.getClass();
                        Placeable.PlacementScope.m533place70tqf50$default(placementScope, lookaheadDelegate4, lookaheadPassDelegate.lastPosition);
                        break;
                    default:
                        LookaheadDelegate lookaheadDelegate5 = lookaheadPassDelegate.layoutNodeLayoutDelegate.getOuterCoordinator().getLookaheadDelegate();
                        lookaheadDelegate5.getClass();
                        lookaheadDelegate5.mo512measureBRTryo0(lookaheadPassDelegate.performMeasureConstraints);
                        break;
                }
                return unit;
            }
        };
        this.parentData = layoutNodeLayoutDelegate.measurePassDelegate.parentData;
        final int i2 = 2;
        this.performMeasureBlock = new Function0(this) { // from class: androidx.compose.ui.node.LookaheadPassDelegate$layoutChildrenBlock$1
            public final /* synthetic */ LookaheadPassDelegate this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
                this.this$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                LookaheadDelegate lookaheadDelegate;
                int i22 = i2;
                Unit unit = Unit.INSTANCE;
                LookaheadPassDelegate lookaheadPassDelegate = this.this$0;
                switch (i22) {
                    case 0:
                        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate2 = lookaheadPassDelegate.layoutNodeLayoutDelegate;
                        layoutNodeLayoutDelegate2.nextChildLookaheadPlaceOrder = 0;
                        MutableVector mutableVector = layoutNodeLayoutDelegate2.layoutNode.get_children$ui();
                        Object[] objArr = mutableVector.content;
                        int i3 = mutableVector.size;
                        for (int i4 = 0; i4 < i3; i4++) {
                            LookaheadPassDelegate lookaheadPassDelegate2 = ((LayoutNode) objArr[i4]).layoutDelegate.lookaheadPassDelegate;
                            lookaheadPassDelegate2.getClass();
                            lookaheadPassDelegate2.previousPlaceOrder = lookaheadPassDelegate2.placeOrder;
                            lookaheadPassDelegate2.placeOrder = Integer.MAX_VALUE;
                            if (lookaheadPassDelegate2.measuredByParent == LayoutNode.UsageByParent.InLayoutBlock) {
                                lookaheadPassDelegate2.measuredByParent = LayoutNode.UsageByParent.NotUsed;
                            }
                        }
                        LayoutNode layoutNode = layoutNodeLayoutDelegate2.layoutNode;
                        LayoutNode layoutNode2 = layoutNodeLayoutDelegate2.layoutNode;
                        MutableVector mutableVector2 = layoutNode.get_children$ui();
                        Object[] objArr2 = mutableVector2.content;
                        int i5 = mutableVector2.size;
                        for (int i6 = 0; i6 < i5; i6++) {
                            LookaheadPassDelegate lookaheadPassDelegate3 = ((LayoutNode) objArr2[i6]).layoutDelegate.lookaheadPassDelegate;
                            lookaheadPassDelegate3.getClass();
                            lookaheadPassDelegate3.alignmentLines.usedDuringParentLayout = false;
                        }
                        InnerNodeCoordinator.LookaheadDelegateImpl lookaheadDelegateImpl = lookaheadPassDelegate.getInnerCoordinator().lookaheadDelegate;
                        if (lookaheadDelegateImpl != null) {
                            boolean z = lookaheadDelegateImpl.isPlacingForAlignment;
                            MutableObjectList.ObjectListMutableList objectListMutableList = (MutableObjectList.ObjectListMutableList) layoutNode2.getChildren$ui();
                            int i7 = ((MutableVector) objectListMutableList.objectList).size;
                            for (int i8 = 0; i8 < i7; i8++) {
                                LookaheadDelegate lookaheadDelegate2 = ((NodeCoordinator) ((LayoutNode) objectListMutableList.get(i8)).nodes.outerCoordinator).getLookaheadDelegate();
                                if (lookaheadDelegate2 != null) {
                                    lookaheadDelegate2.isPlacingForAlignment = z;
                                }
                            }
                        }
                        InnerNodeCoordinator.LookaheadDelegateImpl lookaheadDelegateImpl2 = lookaheadPassDelegate.getInnerCoordinator().lookaheadDelegate;
                        lookaheadDelegateImpl2.getClass();
                        lookaheadDelegateImpl2.getMeasureResult$ui().placeChildren();
                        if (lookaheadPassDelegate.getInnerCoordinator().lookaheadDelegate != null) {
                            MutableObjectList.ObjectListMutableList objectListMutableList2 = (MutableObjectList.ObjectListMutableList) layoutNode2.getChildren$ui();
                            int i9 = ((MutableVector) objectListMutableList2.objectList).size;
                            for (int i10 = 0; i10 < i9; i10++) {
                                LookaheadDelegate lookaheadDelegate3 = ((NodeCoordinator) ((LayoutNode) objectListMutableList2.get(i10)).nodes.outerCoordinator).getLookaheadDelegate();
                                if (lookaheadDelegate3 != null) {
                                    lookaheadDelegate3.isPlacingForAlignment = false;
                                }
                            }
                        }
                        MutableVector mutableVector3 = layoutNode2.get_children$ui();
                        Object[] objArr3 = mutableVector3.content;
                        int i11 = mutableVector3.size;
                        for (int i12 = 0; i12 < i11; i12++) {
                            LookaheadPassDelegate lookaheadPassDelegate4 = ((LayoutNode) objArr3[i12]).layoutDelegate.lookaheadPassDelegate;
                            lookaheadPassDelegate4.getClass();
                            int i13 = lookaheadPassDelegate4.previousPlaceOrder;
                            int i14 = lookaheadPassDelegate4.placeOrder;
                            if (i13 != i14 && i14 == Integer.MAX_VALUE) {
                                lookaheadPassDelegate4.markNodeAndSubtreeAsNotPlaced$ui(true);
                            }
                        }
                        MutableVector mutableVector4 = layoutNode2.get_children$ui();
                        Object[] objArr4 = mutableVector4.content;
                        int i15 = mutableVector4.size;
                        for (int i16 = 0; i16 < i15; i16++) {
                            LookaheadPassDelegate lookaheadPassDelegate5 = ((LayoutNode) objArr4[i16]).layoutDelegate.lookaheadPassDelegate;
                            lookaheadPassDelegate5.getClass();
                            LookaheadAlignmentLines lookaheadAlignmentLines = lookaheadPassDelegate5.alignmentLines;
                            lookaheadAlignmentLines.previousUsedDuringParentLayout = lookaheadAlignmentLines.usedDuringParentLayout;
                        }
                        break;
                    case 1:
                        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate3 = lookaheadPassDelegate.layoutNodeLayoutDelegate;
                        Placeable.PlacementScope placementScope = null;
                        if (HitTestResultKt.isOutMostLookaheadRoot(layoutNodeLayoutDelegate3.layoutNode) || layoutNodeLayoutDelegate3.detachedFromParentLookaheadPlacement) {
                            NodeCoordinator nodeCoordinator = layoutNodeLayoutDelegate3.getOuterCoordinator().wrappedBy;
                            if (nodeCoordinator != null) {
                                placementScope = nodeCoordinator.placementScope;
                            }
                        } else {
                            NodeCoordinator nodeCoordinator2 = layoutNodeLayoutDelegate3.getOuterCoordinator().wrappedBy;
                            if (nodeCoordinator2 != null && (lookaheadDelegate = nodeCoordinator2.getLookaheadDelegate()) != null) {
                                placementScope = lookaheadDelegate.placementScope;
                            }
                        }
                        if (placementScope == null) {
                            placementScope = ((AndroidComposeView) LayoutNodeKt.requireOwner(layoutNodeLayoutDelegate3.layoutNode)).getPlacementScope();
                        }
                        LookaheadDelegate lookaheadDelegate4 = layoutNodeLayoutDelegate3.getOuterCoordinator().getLookaheadDelegate();
                        lookaheadDelegate4.getClass();
                        Placeable.PlacementScope.m533place70tqf50$default(placementScope, lookaheadDelegate4, lookaheadPassDelegate.lastPosition);
                        break;
                    default:
                        LookaheadDelegate lookaheadDelegate5 = lookaheadPassDelegate.layoutNodeLayoutDelegate.getOuterCoordinator().getLookaheadDelegate();
                        lookaheadDelegate5.getClass();
                        lookaheadDelegate5.mo512measureBRTryo0(lookaheadPassDelegate.performMeasureConstraints);
                        break;
                }
                return unit;
            }
        };
        final int i3 = 1;
        this.layoutModifierBlock = new Function0(this) { // from class: androidx.compose.ui.node.LookaheadPassDelegate$layoutChildrenBlock$1
            public final /* synthetic */ LookaheadPassDelegate this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
                this.this$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                LookaheadDelegate lookaheadDelegate;
                int i22 = i3;
                Unit unit = Unit.INSTANCE;
                LookaheadPassDelegate lookaheadPassDelegate = this.this$0;
                switch (i22) {
                    case 0:
                        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate2 = lookaheadPassDelegate.layoutNodeLayoutDelegate;
                        layoutNodeLayoutDelegate2.nextChildLookaheadPlaceOrder = 0;
                        MutableVector mutableVector = layoutNodeLayoutDelegate2.layoutNode.get_children$ui();
                        Object[] objArr = mutableVector.content;
                        int i32 = mutableVector.size;
                        for (int i4 = 0; i4 < i32; i4++) {
                            LookaheadPassDelegate lookaheadPassDelegate2 = ((LayoutNode) objArr[i4]).layoutDelegate.lookaheadPassDelegate;
                            lookaheadPassDelegate2.getClass();
                            lookaheadPassDelegate2.previousPlaceOrder = lookaheadPassDelegate2.placeOrder;
                            lookaheadPassDelegate2.placeOrder = Integer.MAX_VALUE;
                            if (lookaheadPassDelegate2.measuredByParent == LayoutNode.UsageByParent.InLayoutBlock) {
                                lookaheadPassDelegate2.measuredByParent = LayoutNode.UsageByParent.NotUsed;
                            }
                        }
                        LayoutNode layoutNode = layoutNodeLayoutDelegate2.layoutNode;
                        LayoutNode layoutNode2 = layoutNodeLayoutDelegate2.layoutNode;
                        MutableVector mutableVector2 = layoutNode.get_children$ui();
                        Object[] objArr2 = mutableVector2.content;
                        int i5 = mutableVector2.size;
                        for (int i6 = 0; i6 < i5; i6++) {
                            LookaheadPassDelegate lookaheadPassDelegate3 = ((LayoutNode) objArr2[i6]).layoutDelegate.lookaheadPassDelegate;
                            lookaheadPassDelegate3.getClass();
                            lookaheadPassDelegate3.alignmentLines.usedDuringParentLayout = false;
                        }
                        InnerNodeCoordinator.LookaheadDelegateImpl lookaheadDelegateImpl = lookaheadPassDelegate.getInnerCoordinator().lookaheadDelegate;
                        if (lookaheadDelegateImpl != null) {
                            boolean z = lookaheadDelegateImpl.isPlacingForAlignment;
                            MutableObjectList.ObjectListMutableList objectListMutableList = (MutableObjectList.ObjectListMutableList) layoutNode2.getChildren$ui();
                            int i7 = ((MutableVector) objectListMutableList.objectList).size;
                            for (int i8 = 0; i8 < i7; i8++) {
                                LookaheadDelegate lookaheadDelegate2 = ((NodeCoordinator) ((LayoutNode) objectListMutableList.get(i8)).nodes.outerCoordinator).getLookaheadDelegate();
                                if (lookaheadDelegate2 != null) {
                                    lookaheadDelegate2.isPlacingForAlignment = z;
                                }
                            }
                        }
                        InnerNodeCoordinator.LookaheadDelegateImpl lookaheadDelegateImpl2 = lookaheadPassDelegate.getInnerCoordinator().lookaheadDelegate;
                        lookaheadDelegateImpl2.getClass();
                        lookaheadDelegateImpl2.getMeasureResult$ui().placeChildren();
                        if (lookaheadPassDelegate.getInnerCoordinator().lookaheadDelegate != null) {
                            MutableObjectList.ObjectListMutableList objectListMutableList2 = (MutableObjectList.ObjectListMutableList) layoutNode2.getChildren$ui();
                            int i9 = ((MutableVector) objectListMutableList2.objectList).size;
                            for (int i10 = 0; i10 < i9; i10++) {
                                LookaheadDelegate lookaheadDelegate3 = ((NodeCoordinator) ((LayoutNode) objectListMutableList2.get(i10)).nodes.outerCoordinator).getLookaheadDelegate();
                                if (lookaheadDelegate3 != null) {
                                    lookaheadDelegate3.isPlacingForAlignment = false;
                                }
                            }
                        }
                        MutableVector mutableVector3 = layoutNode2.get_children$ui();
                        Object[] objArr3 = mutableVector3.content;
                        int i11 = mutableVector3.size;
                        for (int i12 = 0; i12 < i11; i12++) {
                            LookaheadPassDelegate lookaheadPassDelegate4 = ((LayoutNode) objArr3[i12]).layoutDelegate.lookaheadPassDelegate;
                            lookaheadPassDelegate4.getClass();
                            int i13 = lookaheadPassDelegate4.previousPlaceOrder;
                            int i14 = lookaheadPassDelegate4.placeOrder;
                            if (i13 != i14 && i14 == Integer.MAX_VALUE) {
                                lookaheadPassDelegate4.markNodeAndSubtreeAsNotPlaced$ui(true);
                            }
                        }
                        MutableVector mutableVector4 = layoutNode2.get_children$ui();
                        Object[] objArr4 = mutableVector4.content;
                        int i15 = mutableVector4.size;
                        for (int i16 = 0; i16 < i15; i16++) {
                            LookaheadPassDelegate lookaheadPassDelegate5 = ((LayoutNode) objArr4[i16]).layoutDelegate.lookaheadPassDelegate;
                            lookaheadPassDelegate5.getClass();
                            LookaheadAlignmentLines lookaheadAlignmentLines = lookaheadPassDelegate5.alignmentLines;
                            lookaheadAlignmentLines.previousUsedDuringParentLayout = lookaheadAlignmentLines.usedDuringParentLayout;
                        }
                        break;
                    case 1:
                        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate3 = lookaheadPassDelegate.layoutNodeLayoutDelegate;
                        Placeable.PlacementScope placementScope = null;
                        if (HitTestResultKt.isOutMostLookaheadRoot(layoutNodeLayoutDelegate3.layoutNode) || layoutNodeLayoutDelegate3.detachedFromParentLookaheadPlacement) {
                            NodeCoordinator nodeCoordinator = layoutNodeLayoutDelegate3.getOuterCoordinator().wrappedBy;
                            if (nodeCoordinator != null) {
                                placementScope = nodeCoordinator.placementScope;
                            }
                        } else {
                            NodeCoordinator nodeCoordinator2 = layoutNodeLayoutDelegate3.getOuterCoordinator().wrappedBy;
                            if (nodeCoordinator2 != null && (lookaheadDelegate = nodeCoordinator2.getLookaheadDelegate()) != null) {
                                placementScope = lookaheadDelegate.placementScope;
                            }
                        }
                        if (placementScope == null) {
                            placementScope = ((AndroidComposeView) LayoutNodeKt.requireOwner(layoutNodeLayoutDelegate3.layoutNode)).getPlacementScope();
                        }
                        LookaheadDelegate lookaheadDelegate4 = layoutNodeLayoutDelegate3.getOuterCoordinator().getLookaheadDelegate();
                        lookaheadDelegate4.getClass();
                        Placeable.PlacementScope.m533place70tqf50$default(placementScope, lookaheadDelegate4, lookaheadPassDelegate.lastPosition);
                        break;
                    default:
                        LookaheadDelegate lookaheadDelegate5 = lookaheadPassDelegate.layoutNodeLayoutDelegate.getOuterCoordinator().getLookaheadDelegate();
                        lookaheadDelegate5.getClass();
                        lookaheadDelegate5.mo512measureBRTryo0(lookaheadPassDelegate.performMeasureConstraints);
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
            LookaheadPassDelegate lookaheadPassDelegate = ((LayoutNode) objArr[i2]).layoutDelegate.lookaheadPassDelegate;
            lookaheadPassDelegate.getClass();
            nodeChainKt$fillVector$1.invoke(lookaheadPassDelegate);
        }
    }

    @Override // androidx.compose.ui.layout.Placeable
    public final int get(AlignmentLine alignmentLine) {
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = this.layoutNodeLayoutDelegate;
        LayoutNode parent$ui = layoutNodeLayoutDelegate.layoutNode.getParent$ui();
        LayoutNode.LayoutState layoutState = parent$ui != null ? parent$ui.layoutDelegate.layoutState : null;
        LayoutNode.LayoutState layoutState2 = LayoutNode.LayoutState.LookaheadMeasuring;
        LookaheadAlignmentLines lookaheadAlignmentLines = this.alignmentLines;
        if (layoutState == layoutState2) {
            lookaheadAlignmentLines.usedDuringParentMeasurement = true;
        } else {
            LayoutNode parent$ui2 = layoutNodeLayoutDelegate.layoutNode.getParent$ui();
            if ((parent$ui2 != null ? parent$ui2.layoutDelegate.layoutState : null) == LayoutNode.LayoutState.LookaheadLayingOut) {
                lookaheadAlignmentLines.usedDuringParentLayout = true;
            }
        }
        this.duringAlignmentLinesQuery = true;
        LookaheadDelegate lookaheadDelegate = layoutNodeLayoutDelegate.getOuterCoordinator().getLookaheadDelegate();
        lookaheadDelegate.getClass();
        int i = lookaheadDelegate.get(alignmentLine);
        this.duringAlignmentLinesQuery = false;
        return i;
    }

    @Override // androidx.compose.ui.node.AlignmentLinesOwner
    public final LookaheadAlignmentLines getAlignmentLines() {
        return this.alignmentLines;
    }

    @Override // androidx.compose.ui.node.AlignmentLinesOwner
    public final InnerNodeCoordinator getInnerCoordinator() {
        return (InnerNodeCoordinator) this.layoutNodeLayoutDelegate.layoutNode.nodes.innerCoordinator;
    }

    @Override // androidx.compose.ui.layout.Placeable
    public final int getMeasuredHeight() {
        LookaheadDelegate lookaheadDelegate = this.layoutNodeLayoutDelegate.getOuterCoordinator().getLookaheadDelegate();
        lookaheadDelegate.getClass();
        return lookaheadDelegate.getMeasuredHeight();
    }

    @Override // androidx.compose.ui.layout.Placeable
    public final int getMeasuredWidth() {
        LookaheadDelegate lookaheadDelegate = this.layoutNodeLayoutDelegate.getOuterCoordinator().getLookaheadDelegate();
        lookaheadDelegate.getClass();
        return lookaheadDelegate.getMeasuredWidth();
    }

    public final boolean getNeedsToBePlacedInApproach() {
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = this.layoutNodeLayoutDelegate;
        return HitTestResultKt.isOutMostLookaheadRoot(layoutNodeLayoutDelegate.layoutNode) || layoutNodeLayoutDelegate.detachedFromParentLookaheadPlacement;
    }

    @Override // androidx.compose.ui.node.AlignmentLinesOwner
    public final AlignmentLinesOwner getParentAlignmentLinesOwner() {
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate;
        LayoutNode parent$ui = this.layoutNodeLayoutDelegate.layoutNode.getParent$ui();
        if (parent$ui == null || (layoutNodeLayoutDelegate = parent$ui.layoutDelegate) == null) {
            return null;
        }
        return layoutNodeLayoutDelegate.lookaheadPassDelegate;
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
        this.layingOutChildren = true;
        LookaheadAlignmentLines lookaheadAlignmentLines = this.alignmentLines;
        lookaheadAlignmentLines.recalculateQueryOwner();
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = this.layoutNodeLayoutDelegate;
        boolean z = layoutNodeLayoutDelegate.lookaheadLayoutPending;
        LayoutNode layoutNode = layoutNodeLayoutDelegate.layoutNode;
        if (z) {
            MutableVector mutableVector = layoutNode.get_children$ui();
            Object[] objArr = mutableVector.content;
            int i = mutableVector.size;
            for (int i2 = 0; i2 < i; i2++) {
                LayoutNode layoutNode2 = (LayoutNode) objArr[i2];
                LayoutNodeLayoutDelegate layoutNodeLayoutDelegate2 = layoutNode2.layoutDelegate;
                if (layoutNodeLayoutDelegate2.lookaheadMeasurePending && layoutNode2.getMeasuredByParentInLookahead$ui() == LayoutNode.UsageByParent.InMeasureBlock) {
                    LookaheadPassDelegate lookaheadPassDelegate = layoutNodeLayoutDelegate2.lookaheadPassDelegate;
                    lookaheadPassDelegate.getClass();
                    LookaheadPassDelegate lookaheadPassDelegate2 = layoutNodeLayoutDelegate2.lookaheadPassDelegate;
                    Constraints constraints = lookaheadPassDelegate2 != null ? lookaheadPassDelegate2.lookaheadConstraints : null;
                    constraints.getClass();
                    if (lookaheadPassDelegate.m559remeasureBRTryo0(constraints.value)) {
                        LayoutNode.requestLookaheadRemeasure$ui$default(layoutNode, false, 7);
                    }
                }
            }
        }
        InnerNodeCoordinator.LookaheadDelegateImpl lookaheadDelegateImpl = getInnerCoordinator().lookaheadDelegate;
        lookaheadDelegateImpl.getClass();
        if (layoutNodeLayoutDelegate.lookaheadLayoutPendingForAlignment || (!this.duringAlignmentLinesQuery && !lookaheadDelegateImpl.isPlacingForAlignment && layoutNodeLayoutDelegate.lookaheadLayoutPending)) {
            layoutNodeLayoutDelegate.lookaheadLayoutPending = false;
            LayoutNode.LayoutState layoutState = layoutNodeLayoutDelegate.layoutState;
            layoutNodeLayoutDelegate.layoutState = LayoutNode.LayoutState.LookaheadLayingOut;
            layoutNodeLayoutDelegate.setLookaheadCoordinatesAccessedDuringPlacement(false);
            OwnerSnapshotObserver snapshotObserver = ((AndroidComposeView) LayoutNodeKt.requireOwner(layoutNode)).getSnapshotObserver();
            snapshotObserver.getClass();
            snapshotObserver.observer.observeReads(layoutNode, OwnerSnapshotObserver$onCommitAffectingLayout$1.INSTANCE$8, this.layoutChildrenBlock);
            layoutNodeLayoutDelegate.layoutState = layoutState;
            if (layoutNodeLayoutDelegate.lookaheadCoordinatesAccessedDuringPlacement && lookaheadDelegateImpl.isPlacingForAlignment) {
                requestLayout();
            }
            layoutNodeLayoutDelegate.lookaheadLayoutPendingForAlignment = false;
        }
        if (lookaheadAlignmentLines.usedDuringParentLayout) {
            lookaheadAlignmentLines.previousUsedDuringParentLayout = true;
        }
        if (lookaheadAlignmentLines.dirty && lookaheadAlignmentLines.getRequired$ui()) {
            lookaheadAlignmentLines.recalculate();
        }
        this.layingOutChildren = false;
    }

    public final void markNodeAndSubtreeAsNotPlaced$ui(boolean z) {
        if (z && getNeedsToBePlacedInApproach()) {
            return;
        }
        if (z || getNeedsToBePlacedInApproach()) {
            this._placedState = PlacedState.IsNotPlaced;
            MutableVector mutableVector = this.layoutNodeLayoutDelegate.layoutNode.get_children$ui();
            Object[] objArr = mutableVector.content;
            int i = mutableVector.size;
            for (int i2 = 0; i2 < i; i2++) {
                LookaheadPassDelegate lookaheadPassDelegate = ((LayoutNode) objArr[i2]).layoutDelegate.lookaheadPassDelegate;
                lookaheadPassDelegate.getClass();
                lookaheadPassDelegate.markNodeAndSubtreeAsNotPlaced$ui(true);
            }
        }
    }

    public final void markNodeAndSubtreeAsPlaced() {
        PlacedState placedState = this._placedState;
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = this.layoutNodeLayoutDelegate;
        boolean z = layoutNodeLayoutDelegate.detachedFromParentLookaheadPlacement;
        LayoutNode layoutNode = layoutNodeLayoutDelegate.layoutNode;
        if (z) {
            this._placedState = PlacedState.IsPlacedInApproach;
        } else {
            this._placedState = PlacedState.IsPlacedInLookahead;
        }
        if (placedState != PlacedState.IsPlacedInLookahead && layoutNodeLayoutDelegate.lookaheadMeasurePending) {
            LayoutNode.requestLookaheadRemeasure$ui$default(layoutNode, true, 6);
        }
        MutableVector mutableVector = layoutNode.get_children$ui();
        Object[] objArr = mutableVector.content;
        int i = mutableVector.size;
        for (int i2 = 0; i2 < i; i2++) {
            LayoutNode layoutNode2 = (LayoutNode) objArr[i2];
            LookaheadPassDelegate lookaheadPassDelegate = layoutNode2.layoutDelegate.lookaheadPassDelegate;
            if (lookaheadPassDelegate == null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m("Error: Child node's lookahead pass delegate cannot be null when in a lookahead scope.");
                return;
            }
            if (lookaheadPassDelegate.placeOrder != Integer.MAX_VALUE) {
                lookaheadPassDelegate.markNodeAndSubtreeAsPlaced();
                LayoutNode.rescheduleRemeasureOrRelayout$ui(layoutNode2);
            }
        }
    }

    @Override // androidx.compose.ui.layout.Measurable
    public final int maxIntrinsicHeight(int i) {
        onIntrinsicsQueried();
        LookaheadDelegate lookaheadDelegate = this.layoutNodeLayoutDelegate.getOuterCoordinator().getLookaheadDelegate();
        lookaheadDelegate.getClass();
        return lookaheadDelegate.maxIntrinsicHeight(i);
    }

    @Override // androidx.compose.ui.layout.Measurable
    public final int maxIntrinsicWidth(int i) {
        onIntrinsicsQueried();
        LookaheadDelegate lookaheadDelegate = this.layoutNodeLayoutDelegate.getOuterCoordinator().getLookaheadDelegate();
        lookaheadDelegate.getClass();
        return lookaheadDelegate.maxIntrinsicWidth(i);
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0025, code lost:
    
        if ((r1 != null ? r1.layoutDelegate.layoutState : null) == androidx.compose.ui.node.LayoutNode.LayoutState.LookaheadLayingOut) goto L14;
     */
    @Override // androidx.compose.ui.layout.Measurable
    /* renamed from: measure-BRTryo0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final androidx.compose.ui.layout.Placeable mo512measureBRTryo0(long r7) {
        /*
            r6 = this;
            androidx.compose.ui.node.LayoutNodeLayoutDelegate r0 = r6.layoutNodeLayoutDelegate
            androidx.compose.ui.node.LayoutNode r1 = r0.layoutNode
            androidx.compose.ui.node.LayoutNode r2 = r0.layoutNode
            androidx.compose.ui.node.LayoutNode r1 = r1.getParent$ui()
            r3 = 0
            if (r1 == 0) goto L12
            androidx.compose.ui.node.LayoutNodeLayoutDelegate r1 = r1.layoutDelegate
            androidx.compose.ui.node.LayoutNode$LayoutState r1 = r1.layoutState
            goto L13
        L12:
            r1 = r3
        L13:
            androidx.compose.ui.node.LayoutNode$LayoutState r4 = androidx.compose.ui.node.LayoutNode.LayoutState.LookaheadMeasuring
            if (r1 == r4) goto L27
            androidx.compose.ui.node.LayoutNode r1 = r2.getParent$ui()
            if (r1 == 0) goto L22
            androidx.compose.ui.node.LayoutNodeLayoutDelegate r1 = r1.layoutDelegate
            androidx.compose.ui.node.LayoutNode$LayoutState r1 = r1.layoutState
            goto L23
        L22:
            r1 = r3
        L23:
            androidx.compose.ui.node.LayoutNode$LayoutState r4 = androidx.compose.ui.node.LayoutNode.LayoutState.LookaheadLayingOut
            if (r1 != r4) goto L2a
        L27:
            r1 = 0
            r0.detachedFromParentLookaheadPass = r1
        L2a:
            androidx.compose.ui.node.LayoutNode r0 = r2.getParent$ui()
            if (r0 == 0) goto L69
            androidx.compose.ui.node.LayoutNodeLayoutDelegate r0 = r0.layoutDelegate
            androidx.compose.ui.node.LayoutNode$UsageByParent r1 = r6.measuredByParent
            androidx.compose.ui.node.LayoutNode$UsageByParent r4 = androidx.compose.ui.node.LayoutNode.UsageByParent.NotUsed
            if (r1 == r4) goto L42
            boolean r1 = r2.canMultiMeasure
            if (r1 == 0) goto L3d
            goto L42
        L3d:
            java.lang.String r1 = "measure() may not be called multiple times on the same Measurable. If you want to get the content size of the Measurable before calculating the final constraints, please use methods like minIntrinsicWidth()/maxIntrinsicWidth() and minIntrinsicHeight()/maxIntrinsicHeight()"
            androidx.compose.ui.internal.InlineClassHelperKt.throwIllegalStateException(r1)
        L42:
            androidx.compose.ui.node.LayoutNode$LayoutState r1 = r0.layoutState
            int[] r5 = androidx.compose.ui.node.LookaheadPassDelegate.WhenMappings.$EnumSwitchMapping$0
            int r1 = r1.ordinal()
            r1 = r5[r1]
            r5 = 1
            if (r1 == r5) goto L64
            r5 = 2
            if (r1 == r5) goto L64
            r5 = 3
            if (r1 == r5) goto L61
            r5 = 4
            if (r1 != r5) goto L59
            goto L61
        L59:
            java.lang.String r6 = "Measurable could be only measured from the parent's measure or layout block. Parents state is "
            androidx.compose.ui.node.LayoutNode$LayoutState r7 = r0.layoutState
            com.google.gson.Gson$$ExternalSyntheticBUOutline0.m$3(r6, r7)
            return r3
        L61:
            androidx.compose.ui.node.LayoutNode$UsageByParent r0 = androidx.compose.ui.node.LayoutNode.UsageByParent.InLayoutBlock
            goto L66
        L64:
            androidx.compose.ui.node.LayoutNode$UsageByParent r0 = androidx.compose.ui.node.LayoutNode.UsageByParent.InMeasureBlock
        L66:
            r6.measuredByParent = r0
            goto L6d
        L69:
            androidx.compose.ui.node.LayoutNode$UsageByParent r4 = androidx.compose.ui.node.LayoutNode.UsageByParent.NotUsed
            r6.measuredByParent = r4
        L6d:
            androidx.compose.ui.node.LayoutNode$UsageByParent r0 = r2.intrinsicsUsageByParent
            if (r0 != r4) goto L74
            r2.clearSubtreeIntrinsicsUsage$ui()
        L74:
            r6.m559remeasureBRTryo0(r7)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.node.LookaheadPassDelegate.mo512measureBRTryo0(long):androidx.compose.ui.layout.Placeable");
    }

    @Override // androidx.compose.ui.layout.Measurable
    public final int minIntrinsicHeight(int i) {
        onIntrinsicsQueried();
        LookaheadDelegate lookaheadDelegate = this.layoutNodeLayoutDelegate.getOuterCoordinator().getLookaheadDelegate();
        lookaheadDelegate.getClass();
        return lookaheadDelegate.minIntrinsicHeight(i);
    }

    @Override // androidx.compose.ui.layout.Measurable
    public final int minIntrinsicWidth(int i) {
        onIntrinsicsQueried();
        LookaheadDelegate lookaheadDelegate = this.layoutNodeLayoutDelegate.getOuterCoordinator().getLookaheadDelegate();
        lookaheadDelegate.getClass();
        return lookaheadDelegate.minIntrinsicWidth(i);
    }

    public final void notifyChildrenUsingLookaheadCoordinatesWhilePlacing() {
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = this.layoutNodeLayoutDelegate;
        if (layoutNodeLayoutDelegate.childrenAccessingLookaheadCoordinatesDuringPlacement > 0) {
            MutableVector mutableVector = layoutNodeLayoutDelegate.layoutNode.get_children$ui();
            Object[] objArr = mutableVector.content;
            int i = mutableVector.size;
            for (int i2 = 0; i2 < i; i2++) {
                LayoutNode layoutNode = (LayoutNode) objArr[i2];
                LayoutNodeLayoutDelegate layoutNodeLayoutDelegate2 = layoutNode.layoutDelegate;
                if ((layoutNodeLayoutDelegate2.lookaheadCoordinatesAccessedDuringPlacement || layoutNodeLayoutDelegate2.lookaheadCoordinatesAccessedDuringModifierPlacement) && !layoutNodeLayoutDelegate2.lookaheadLayoutPending) {
                    layoutNode.requestLookaheadRelayout$ui(false);
                }
                LookaheadPassDelegate lookaheadPassDelegate = layoutNodeLayoutDelegate2.lookaheadPassDelegate;
                if (lookaheadPassDelegate != null) {
                    lookaheadPassDelegate.notifyChildrenUsingLookaheadCoordinatesWhilePlacing();
                }
            }
        }
    }

    public final void onIntrinsicsQueried() {
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = this.layoutNodeLayoutDelegate;
        LayoutNode.requestLookaheadRemeasure$ui$default(layoutNodeLayoutDelegate.layoutNode, false, 7);
        LayoutNode layoutNode = layoutNodeLayoutDelegate.layoutNode;
        LayoutNode parent$ui = layoutNode.getParent$ui();
        if (parent$ui == null || layoutNode.intrinsicsUsageByParent != LayoutNode.UsageByParent.NotUsed) {
            return;
        }
        int i = WhenMappings.$EnumSwitchMapping$0[parent$ui.layoutDelegate.layoutState.ordinal()];
        layoutNode.intrinsicsUsageByParent = i != 2 ? i != 3 ? parent$ui.intrinsicsUsageByParent : LayoutNode.UsageByParent.InLayoutBlock : LayoutNode.UsageByParent.InMeasureBlock;
    }

    public final void onNodePlaced$ui() {
        LayoutNode.LayoutState layoutState;
        this.onNodePlacedCalled = true;
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = this.layoutNodeLayoutDelegate;
        LayoutNode parent$ui = layoutNodeLayoutDelegate.layoutNode.getParent$ui();
        PlacedState placedState = this._placedState;
        if ((placedState != PlacedState.IsPlacedInLookahead && !layoutNodeLayoutDelegate.detachedFromParentLookaheadPlacement) || (placedState != PlacedState.IsPlacedInApproach && layoutNodeLayoutDelegate.detachedFromParentLookaheadPlacement)) {
            markNodeAndSubtreeAsPlaced();
            if (this.relayoutWithoutParentInProgress && parent$ui != null) {
                parent$ui.requestLookaheadRelayout$ui(false);
            }
        }
        if (parent$ui != null) {
            LayoutNodeLayoutDelegate layoutNodeLayoutDelegate2 = parent$ui.layoutDelegate;
            if (!this.relayoutWithoutParentInProgress && ((layoutState = layoutNodeLayoutDelegate2.layoutState) == LayoutNode.LayoutState.LayingOut || layoutState == LayoutNode.LayoutState.LookaheadLayingOut)) {
                if (this.placeOrder != Integer.MAX_VALUE) {
                    InlineClassHelperKt.throwIllegalStateException("Place was called on a node which was placed already");
                }
                int i = layoutNodeLayoutDelegate2.nextChildLookaheadPlaceOrder;
                this.placeOrder = i;
                layoutNodeLayoutDelegate2.nextChildLookaheadPlaceOrder = i + 1;
            }
        } else {
            this.placeOrder = 0;
        }
        layoutChildren();
    }

    @Override // androidx.compose.ui.layout.Placeable
    /* renamed from: placeAt-f8xVGno */
    public final void mo516placeAtf8xVGno(long j, float f, Function1 function1) {
        m558placeSelfMLgxB_4$1(j, function1, null);
    }

    /* renamed from: placeSelf-MLgxB_4$1, reason: not valid java name */
    public final void m558placeSelfMLgxB_4$1(long j, Function1 function1, GraphicsLayer graphicsLayer) {
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = this.layoutNodeLayoutDelegate;
        LayoutNode layoutNode = layoutNodeLayoutDelegate.layoutNode;
        LayoutNode layoutNode2 = layoutNodeLayoutDelegate.layoutNode;
        try {
            LayoutNode parent$ui = layoutNode.getParent$ui();
            LayoutNode.LayoutState layoutState = parent$ui != null ? parent$ui.layoutDelegate.layoutState : null;
            LayoutNode.LayoutState layoutState2 = LayoutNode.LayoutState.LookaheadLayingOut;
            if (layoutState == layoutState2) {
                layoutNodeLayoutDelegate.detachedFromParentLookaheadPlacement = false;
            }
            if (layoutNode2.isDeactivated) {
                InlineClassHelperKt.throwIllegalArgumentException("place is called on a deactivated node");
            }
            layoutNodeLayoutDelegate.layoutState = layoutState2;
            boolean z = true;
            this.placedOnce = true;
            this.onNodePlacedCalled = false;
            if (!IntOffset.m715equalsimpl0(j, this.lastPosition)) {
                if (layoutNodeLayoutDelegate.lookaheadCoordinatesAccessedDuringModifierPlacement || layoutNodeLayoutDelegate.lookaheadCoordinatesAccessedDuringPlacement) {
                    layoutNodeLayoutDelegate.lookaheadLayoutPending = true;
                }
                notifyChildrenUsingLookaheadCoordinatesWhilePlacing();
            }
            Owner requireOwner = LayoutNodeKt.requireOwner(layoutNode2);
            this.lastPosition = j;
            if (!layoutNodeLayoutDelegate.lookaheadLayoutPending) {
                if (this._placedState == PlacedState.IsNotPlaced) {
                    z = false;
                }
                if (z) {
                    LookaheadDelegate lookaheadDelegate = layoutNodeLayoutDelegate.getOuterCoordinator().getLookaheadDelegate();
                    lookaheadDelegate.getClass();
                    lookaheadDelegate.m556placeSelfgyyYBs(IntOffset.m717plusqkQi6aY(j, lookaheadDelegate.apparentToRealOffset));
                    onNodePlaced$ui();
                    this.lastLayerBlock = function1;
                    this.lastExplicitLayer = graphicsLayer;
                    layoutNodeLayoutDelegate.layoutState = LayoutNode.LayoutState.Idle;
                }
            }
            layoutNodeLayoutDelegate.setLookaheadCoordinatesAccessedDuringModifierPlacement(false);
            this.alignmentLines.usedByModifierLayout = false;
            OwnerSnapshotObserver snapshotObserver = ((AndroidComposeView) requireOwner).getSnapshotObserver();
            LookaheadPassDelegate$layoutChildrenBlock$1 lookaheadPassDelegate$layoutChildrenBlock$1 = this.layoutModifierBlock;
            snapshotObserver.getClass();
            snapshotObserver.observer.observeReads(layoutNode2, OwnerSnapshotObserver$onCommitAffectingLayout$1.INSTANCE$7, lookaheadPassDelegate$layoutChildrenBlock$1);
            this.lastLayerBlock = function1;
            this.lastExplicitLayer = graphicsLayer;
            layoutNodeLayoutDelegate.layoutState = LayoutNode.LayoutState.Idle;
        } catch (Throwable th) {
            layoutNode.rethrowWithComposeStackTrace(th);
            throw null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x002f A[Catch: all -> 0x0010, TryCatch #0 {all -> 0x0010, blocks: (B:3:0x0006, B:5:0x000a, B:6:0x0013, B:9:0x001f, B:13:0x0027, B:15:0x002f, B:20:0x003e, B:22:0x0042, B:23:0x0047, B:26:0x0035, B:27:0x004b, B:29:0x0064, B:31:0x0076, B:33:0x007a, B:34:0x0082, B:37:0x0094, B:39:0x00b1, B:43:0x008f), top: B:2:0x0006 }] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0064 A[Catch: all -> 0x0010, LOOP:0: B:28:0x0062->B:29:0x0064, LOOP_END, TryCatch #0 {all -> 0x0010, blocks: (B:3:0x0006, B:5:0x000a, B:6:0x0013, B:9:0x001f, B:13:0x0027, B:15:0x002f, B:20:0x003e, B:22:0x0042, B:23:0x0047, B:26:0x0035, B:27:0x004b, B:29:0x0064, B:31:0x0076, B:33:0x007a, B:34:0x0082, B:37:0x0094, B:39:0x00b1, B:43:0x008f), top: B:2:0x0006 }] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x007a A[Catch: all -> 0x0010, TryCatch #0 {all -> 0x0010, blocks: (B:3:0x0006, B:5:0x000a, B:6:0x0013, B:9:0x001f, B:13:0x0027, B:15:0x002f, B:20:0x003e, B:22:0x0042, B:23:0x0047, B:26:0x0035, B:27:0x004b, B:29:0x0064, B:31:0x0076, B:33:0x007a, B:34:0x0082, B:37:0x0094, B:39:0x00b1, B:43:0x008f), top: B:2:0x0006 }] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x008f A[Catch: all -> 0x0010, TryCatch #0 {all -> 0x0010, blocks: (B:3:0x0006, B:5:0x000a, B:6:0x0013, B:9:0x001f, B:13:0x0027, B:15:0x002f, B:20:0x003e, B:22:0x0042, B:23:0x0047, B:26:0x0035, B:27:0x004b, B:29:0x0064, B:31:0x0076, B:33:0x007a, B:34:0x0082, B:37:0x0094, B:39:0x00b1, B:43:0x008f), top: B:2:0x0006 }] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x007d  */
    /* renamed from: remeasure-BRTryo0, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m559remeasureBRTryo0(long r14) {
        /*
            r13 = this;
            androidx.compose.ui.node.LayoutNodeLayoutDelegate r0 = r13.layoutNodeLayoutDelegate
            androidx.compose.ui.node.LayoutNode r1 = r0.layoutNode
            androidx.compose.ui.node.LayoutNode r2 = r0.layoutNode
            boolean r3 = r1.isDeactivated     // Catch: java.lang.Throwable -> L10
            if (r3 == 0) goto L13
            java.lang.String r3 = "measure is called on a deactivated node"
            androidx.compose.ui.internal.InlineClassHelperKt.throwIllegalArgumentException(r3)     // Catch: java.lang.Throwable -> L10
            goto L13
        L10:
            r13 = move-exception
            goto Lbb
        L13:
            androidx.compose.ui.node.LayoutNode r3 = r2.getParent$ui()     // Catch: java.lang.Throwable -> L10
            boolean r4 = r2.canMultiMeasure     // Catch: java.lang.Throwable -> L10
            r5 = 1
            r6 = 0
            if (r4 != 0) goto L26
            if (r3 == 0) goto L24
            boolean r3 = r3.canMultiMeasure     // Catch: java.lang.Throwable -> L10
            if (r3 == 0) goto L24
            goto L26
        L24:
            r3 = r6
            goto L27
        L26:
            r3 = r5
        L27:
            r2.canMultiMeasure = r3     // Catch: java.lang.Throwable -> L10
            androidx.compose.ui.node.LayoutNodeLayoutDelegate r3 = r2.layoutDelegate     // Catch: java.lang.Throwable -> L10
            boolean r3 = r3.lookaheadMeasurePending     // Catch: java.lang.Throwable -> L10
            if (r3 != 0) goto L4b
            androidx.compose.ui.unit.Constraints r3 = r13.lookaheadConstraints     // Catch: java.lang.Throwable -> L10
            if (r3 != 0) goto L35
            r3 = r6
            goto L3b
        L35:
            long r3 = r3.value     // Catch: java.lang.Throwable -> L10
            boolean r3 = androidx.compose.ui.unit.Constraints.m675equalsimpl0(r3, r14)     // Catch: java.lang.Throwable -> L10
        L3b:
            if (r3 != 0) goto L3e
            goto L4b
        L3e:
            androidx.compose.ui.node.Owner r13 = r2.owner     // Catch: java.lang.Throwable -> L10
            if (r13 == 0) goto L47
            androidx.compose.ui.platform.AndroidComposeView r13 = (androidx.compose.ui.platform.AndroidComposeView) r13     // Catch: java.lang.Throwable -> L10
            r13.forceMeasureTheSubtree(r2, r5)     // Catch: java.lang.Throwable -> L10
        L47:
            r2.resetSubtreeIntrinsicsUsage$ui()     // Catch: java.lang.Throwable -> L10
            return r6
        L4b:
            androidx.compose.ui.unit.Constraints r3 = new androidx.compose.ui.unit.Constraints     // Catch: java.lang.Throwable -> L10
            r3.<init>(r14)     // Catch: java.lang.Throwable -> L10
            r13.lookaheadConstraints = r3     // Catch: java.lang.Throwable -> L10
            r13.m532setMeasurementConstraintsBRTryo0(r14)     // Catch: java.lang.Throwable -> L10
            androidx.compose.ui.node.LookaheadAlignmentLines r3 = r13.alignmentLines     // Catch: java.lang.Throwable -> L10
            r3.usedByModifierMeasurement = r6     // Catch: java.lang.Throwable -> L10
            androidx.compose.runtime.collection.MutableVector r2 = r2.get_children$ui()     // Catch: java.lang.Throwable -> L10
            java.lang.Object[] r3 = r2.content     // Catch: java.lang.Throwable -> L10
            int r2 = r2.size     // Catch: java.lang.Throwable -> L10
            r4 = r6
        L62:
            if (r4 >= r2) goto L76
            r7 = r3[r4]     // Catch: java.lang.Throwable -> L10
            androidx.compose.ui.node.LayoutNode r7 = (androidx.compose.ui.node.LayoutNode) r7     // Catch: java.lang.Throwable -> L10
            androidx.compose.ui.node.LayoutNodeLayoutDelegate r7 = r7.layoutDelegate     // Catch: java.lang.Throwable -> L10
            androidx.compose.ui.node.LookaheadPassDelegate r7 = r7.lookaheadPassDelegate     // Catch: java.lang.Throwable -> L10
            r7.getClass()     // Catch: java.lang.Throwable -> L10
            androidx.compose.ui.node.LookaheadAlignmentLines r7 = r7.alignmentLines     // Catch: java.lang.Throwable -> L10
            r7.usedDuringParentMeasurement = r6     // Catch: java.lang.Throwable -> L10
            int r4 = r4 + 1
            goto L62
        L76:
            boolean r2 = r13.measuredOnce     // Catch: java.lang.Throwable -> L10
            if (r2 == 0) goto L7d
            long r2 = r13.measuredSize     // Catch: java.lang.Throwable -> L10
            goto L82
        L7d:
            r2 = -9223372034707292160(0x8000000080000000, double:-1.0609978955E-314)
        L82:
            r13.measuredOnce = r5     // Catch: java.lang.Throwable -> L10
            androidx.compose.ui.node.NodeCoordinator r4 = r0.getOuterCoordinator()     // Catch: java.lang.Throwable -> L10
            androidx.compose.ui.node.LookaheadDelegate r4 = r4.getLookaheadDelegate()     // Catch: java.lang.Throwable -> L10
            if (r4 == 0) goto L8f
            goto L94
        L8f:
            java.lang.String r7 = "Lookahead result from lookaheadRemeasure cannot be null"
            androidx.compose.ui.internal.InlineClassHelperKt.throwIllegalStateException(r7)     // Catch: java.lang.Throwable -> L10
        L94:
            r0.m553performLookaheadMeasureBRTryo0$ui(r14)     // Catch: java.lang.Throwable -> L10
            int r14 = r4.width     // Catch: java.lang.Throwable -> L10
            int r15 = r4.height     // Catch: java.lang.Throwable -> L10
            long r7 = (long) r14     // Catch: java.lang.Throwable -> L10
            r14 = 32
            long r7 = r7 << r14
            long r9 = (long) r15     // Catch: java.lang.Throwable -> L10
            r11 = 4294967295(0xffffffff, double:2.1219957905E-314)
            long r9 = r9 & r11
            long r7 = r7 | r9
            r13.m531setMeasuredSizeozmzZPI(r7)     // Catch: java.lang.Throwable -> L10
            long r13 = r2 >> r14
            int r13 = (int) r13     // Catch: java.lang.Throwable -> L10
            int r14 = r4.width     // Catch: java.lang.Throwable -> L10
            if (r13 != r14) goto Lba
            long r13 = r2 & r11
            int r13 = (int) r13     // Catch: java.lang.Throwable -> L10
            int r14 = r4.height     // Catch: java.lang.Throwable -> L10
            if (r13 == r14) goto Lb9
            goto Lba
        Lb9:
            return r6
        Lba:
            return r5
        Lbb:
            r1.rethrowWithComposeStackTrace(r13)
            r13 = 0
            throw r13
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.node.LookaheadPassDelegate.m559remeasureBRTryo0(long):boolean");
    }

    @Override // androidx.compose.ui.node.AlignmentLinesOwner
    public final void requestLayout() {
        this.layoutNodeLayoutDelegate.layoutNode.requestLookaheadRelayout$ui(false);
    }

    @Override // androidx.compose.ui.node.AlignmentLinesOwner
    public final void requestMeasure() {
        LayoutNode.requestLookaheadRemeasure$ui$default(this.layoutNodeLayoutDelegate.layoutNode, false, 7);
    }

    @Override // androidx.compose.ui.node.MotionReferencePlacementDelegate
    public final void updatePlacedUnderMotionFrameOfReference(boolean z) {
        LookaheadDelegate lookaheadDelegate;
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = this.layoutNodeLayoutDelegate;
        LookaheadDelegate lookaheadDelegate2 = layoutNodeLayoutDelegate.getOuterCoordinator().getLookaheadDelegate();
        if (Boolean.valueOf(z).equals(lookaheadDelegate2 != null ? Boolean.valueOf(lookaheadDelegate2.isPlacedUnderMotionFrameOfReference) : null) || (lookaheadDelegate = layoutNodeLayoutDelegate.getOuterCoordinator().getLookaheadDelegate()) == null) {
            return;
        }
        lookaheadDelegate.isPlacedUnderMotionFrameOfReference = z;
    }

    @Override // androidx.compose.ui.layout.Placeable
    /* renamed from: placeAt-f8xVGno */
    public final void mo530placeAtf8xVGno(long j, float f, GraphicsLayer graphicsLayer) {
        m558placeSelfMLgxB_4$1(j, null, graphicsLayer);
    }
}
