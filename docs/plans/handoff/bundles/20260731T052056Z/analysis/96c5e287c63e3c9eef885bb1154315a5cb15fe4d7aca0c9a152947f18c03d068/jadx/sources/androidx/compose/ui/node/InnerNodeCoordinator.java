package androidx.compose.ui.node;

import androidx.cardview.widget.CardView;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.AndroidPaint;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.layout.AlignmentLine;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.platform.AndroidComposeView;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class InnerNodeCoordinator extends NodeCoordinator {
    public static final AndroidPaint innerBoundsPaint;
    public LookaheadDelegateImpl lookaheadDelegate;
    public final TailModifierNode tail;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class LookaheadDelegateImpl extends LookaheadDelegate {
        @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
        public final int calculateAlignmentLine(AlignmentLine alignmentLine) {
            LookaheadPassDelegate lookaheadPassDelegate = this.coordinator.layoutNode.layoutDelegate.lookaheadPassDelegate;
            lookaheadPassDelegate.getClass();
            LookaheadAlignmentLines lookaheadAlignmentLines = lookaheadPassDelegate.alignmentLines;
            if (!lookaheadPassDelegate.duringAlignmentLinesQuery) {
                LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = lookaheadPassDelegate.layoutNodeLayoutDelegate;
                if (layoutNodeLayoutDelegate.layoutState == LayoutNode.LayoutState.LookaheadMeasuring) {
                    lookaheadAlignmentLines.usedByModifierMeasurement = true;
                    if (lookaheadAlignmentLines.dirty) {
                        layoutNodeLayoutDelegate.lookaheadLayoutPending = true;
                        layoutNodeLayoutDelegate.lookaheadLayoutPendingForAlignment = true;
                    }
                } else {
                    lookaheadAlignmentLines.usedByModifierLayout = true;
                }
            }
            LookaheadDelegateImpl lookaheadDelegateImpl = lookaheadPassDelegate.getInnerCoordinator().lookaheadDelegate;
            if (lookaheadDelegateImpl != null) {
                lookaheadDelegateImpl.isPlacingForAlignment = true;
            }
            lookaheadPassDelegate.layoutChildren();
            LookaheadDelegateImpl lookaheadDelegateImpl2 = lookaheadPassDelegate.getInnerCoordinator().lookaheadDelegate;
            if (lookaheadDelegateImpl2 != null) {
                lookaheadDelegateImpl2.isPlacingForAlignment = false;
            }
            Integer num = (Integer) lookaheadAlignmentLines.alignmentLineMap.get(alignmentLine);
            int intValue = num != null ? num.intValue() : Integer.MIN_VALUE;
            this.cachedAlignmentLinesMap.set(intValue, alignmentLine);
            return intValue;
        }

        @Override // androidx.compose.ui.layout.Measurable
        public final int maxIntrinsicHeight(int i) {
            CardView.AnonymousClass1 orCreateIntrinsicsPolicy = this.coordinator.layoutNode.getOrCreateIntrinsicsPolicy();
            MeasurePolicy measurePolicyState = orCreateIntrinsicsPolicy.getMeasurePolicyState();
            LayoutNode layoutNode = (LayoutNode) orCreateIntrinsicsPolicy.mCardBackground;
            return measurePolicyState.maxIntrinsicHeight((NodeCoordinator) layoutNode.nodes.outerCoordinator, layoutNode.getChildLookaheadMeasurables$ui(), i);
        }

        @Override // androidx.compose.ui.layout.Measurable
        public final int maxIntrinsicWidth(int i) {
            CardView.AnonymousClass1 orCreateIntrinsicsPolicy = this.coordinator.layoutNode.getOrCreateIntrinsicsPolicy();
            MeasurePolicy measurePolicyState = orCreateIntrinsicsPolicy.getMeasurePolicyState();
            LayoutNode layoutNode = (LayoutNode) orCreateIntrinsicsPolicy.mCardBackground;
            return measurePolicyState.maxIntrinsicWidth((NodeCoordinator) layoutNode.nodes.outerCoordinator, layoutNode.getChildLookaheadMeasurables$ui(), i);
        }

        @Override // androidx.compose.ui.layout.Measurable
        /* renamed from: measure-BRTryo0 */
        public final Placeable mo512measureBRTryo0(long j) {
            m532setMeasurementConstraintsBRTryo0(j);
            NodeCoordinator nodeCoordinator = this.coordinator;
            MutableVector mutableVector = nodeCoordinator.layoutNode.get_children$ui();
            Object[] objArr = mutableVector.content;
            int i = mutableVector.size;
            for (int i2 = 0; i2 < i; i2++) {
                LookaheadPassDelegate lookaheadPassDelegate = ((LayoutNode) objArr[i2]).layoutDelegate.lookaheadPassDelegate;
                lookaheadPassDelegate.getClass();
                lookaheadPassDelegate.measuredByParent = LayoutNode.UsageByParent.NotUsed;
            }
            LayoutNode layoutNode = nodeCoordinator.layoutNode;
            set_measureResult(layoutNode.measurePolicy.mo15measure3p2s80s(this, layoutNode.getChildLookaheadMeasurables$ui(), j));
            return this;
        }

        @Override // androidx.compose.ui.layout.Measurable
        public final int minIntrinsicHeight(int i) {
            CardView.AnonymousClass1 orCreateIntrinsicsPolicy = this.coordinator.layoutNode.getOrCreateIntrinsicsPolicy();
            MeasurePolicy measurePolicyState = orCreateIntrinsicsPolicy.getMeasurePolicyState();
            LayoutNode layoutNode = (LayoutNode) orCreateIntrinsicsPolicy.mCardBackground;
            return measurePolicyState.minIntrinsicHeight((NodeCoordinator) layoutNode.nodes.outerCoordinator, layoutNode.getChildLookaheadMeasurables$ui(), i);
        }

        @Override // androidx.compose.ui.layout.Measurable
        public final int minIntrinsicWidth(int i) {
            CardView.AnonymousClass1 orCreateIntrinsicsPolicy = this.coordinator.layoutNode.getOrCreateIntrinsicsPolicy();
            MeasurePolicy measurePolicyState = orCreateIntrinsicsPolicy.getMeasurePolicyState();
            LayoutNode layoutNode = (LayoutNode) orCreateIntrinsicsPolicy.mCardBackground;
            return measurePolicyState.minIntrinsicWidth((NodeCoordinator) layoutNode.nodes.outerCoordinator, layoutNode.getChildLookaheadMeasurables$ui(), i);
        }

        @Override // androidx.compose.ui.node.LookaheadDelegate
        public final void placeChildren() {
            LookaheadPassDelegate lookaheadPassDelegate = this.coordinator.layoutNode.layoutDelegate.lookaheadPassDelegate;
            lookaheadPassDelegate.getClass();
            lookaheadPassDelegate.onNodePlaced$ui();
        }
    }

    static {
        AndroidPaint Paint = ColorKt.Paint();
        Paint.m411setColor8_81llA(Color.Red);
        Paint.setStrokeWidth(1.0f);
        Paint.m415setStylek9PVt8s(1);
        innerBoundsPaint = Paint;
    }

    public InnerNodeCoordinator(LayoutNode layoutNode) {
        super(layoutNode);
        TailModifierNode tailModifierNode = new TailModifierNode();
        tailModifierNode.aggregateChildKindSet = 0;
        this.tail = tailModifierNode;
        tailModifierNode.coordinator = this;
        this.lookaheadDelegate = layoutNode.lookaheadRoot != null ? new LookaheadDelegateImpl(this) : null;
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
    public final int calculateAlignmentLine(AlignmentLine alignmentLine) {
        LookaheadDelegateImpl lookaheadDelegateImpl = this.lookaheadDelegate;
        if (lookaheadDelegateImpl != null) {
            return lookaheadDelegateImpl.calculateAlignmentLine(alignmentLine);
        }
        MeasurePassDelegate measurePassDelegate = this.layoutNode.layoutDelegate.measurePassDelegate;
        LookaheadAlignmentLines lookaheadAlignmentLines = measurePassDelegate.alignmentLines;
        if (!measurePassDelegate.duringAlignmentLinesQuery) {
            if (measurePassDelegate.layoutNodeLayoutDelegate.layoutState == LayoutNode.LayoutState.Measuring) {
                lookaheadAlignmentLines.usedByModifierMeasurement = true;
                if (lookaheadAlignmentLines.dirty) {
                    measurePassDelegate.layoutPending = true;
                    measurePassDelegate.layoutPendingForAlignment = true;
                }
            } else {
                lookaheadAlignmentLines.usedByModifierLayout = true;
            }
        }
        InnerNodeCoordinator innerCoordinator = measurePassDelegate.getInnerCoordinator();
        boolean z = innerCoordinator.isPlacingForAlignment;
        innerCoordinator.isPlacingForAlignment = true;
        measurePassDelegate.layoutChildren();
        innerCoordinator.isPlacingForAlignment = z;
        Integer num = (Integer) lookaheadAlignmentLines.alignmentLineMap.get(alignmentLine);
        if (num != null) {
            return num.intValue();
        }
        return Integer.MIN_VALUE;
    }

    @Override // androidx.compose.ui.node.NodeCoordinator
    public final void ensureLookaheadDelegateCreated() {
        if (this.lookaheadDelegate == null) {
            this.lookaheadDelegate = new LookaheadDelegateImpl(this);
        }
    }

    @Override // androidx.compose.ui.node.NodeCoordinator
    public final LookaheadDelegate getLookaheadDelegate() {
        return this.lookaheadDelegate;
    }

    @Override // androidx.compose.ui.node.NodeCoordinator
    public final Modifier.Node getTail() {
        return this.tail;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:93:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0050  */
    /* JADX WARN: Type inference failed for: r6v12 */
    /* JADX WARN: Type inference failed for: r6v13, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r6v14, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v15 */
    /* JADX WARN: Type inference failed for: r6v16 */
    /* JADX WARN: Type inference failed for: r6v17 */
    /* JADX WARN: Type inference failed for: r6v18 */
    /* JADX WARN: Type inference failed for: r6v20 */
    /* JADX WARN: Type inference failed for: r6v21 */
    /* JADX WARN: Type inference failed for: r6v8 */
    /* JADX WARN: Type inference failed for: r6v9, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r8v11 */
    /* JADX WARN: Type inference failed for: r8v12 */
    /* JADX WARN: Type inference failed for: r8v13 */
    /* JADX WARN: Type inference failed for: r8v14 */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Type inference failed for: r8v5 */
    /* JADX WARN: Type inference failed for: r8v6, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r8v7 */
    /* JADX WARN: Type inference failed for: r8v8 */
    /* JADX WARN: Type inference failed for: r8v9, types: [androidx.compose.runtime.collection.MutableVector] */
    @Override // androidx.compose.ui.node.NodeCoordinator
    /* renamed from: hitTestChild-qzLsGqo, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo548hitTestChildqzLsGqo(androidx.compose.ui.node.NodeCoordinator$Companion$SemanticsSource$1 r18, long r19, androidx.compose.ui.node.HitTestResult r21, int r22, boolean r23) {
        /*
            Method dump skipped, instructions count: 350
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.node.InnerNodeCoordinator.mo548hitTestChildqzLsGqo(androidx.compose.ui.node.NodeCoordinator$Companion$SemanticsSource$1, long, androidx.compose.ui.node.HitTestResult, int, boolean):void");
    }

    @Override // androidx.compose.ui.layout.Measurable
    public final int maxIntrinsicHeight(int i) {
        CardView.AnonymousClass1 orCreateIntrinsicsPolicy = this.layoutNode.getOrCreateIntrinsicsPolicy();
        MeasurePolicy measurePolicyState = orCreateIntrinsicsPolicy.getMeasurePolicyState();
        LayoutNode layoutNode = (LayoutNode) orCreateIntrinsicsPolicy.mCardBackground;
        return measurePolicyState.maxIntrinsicHeight((NodeCoordinator) layoutNode.nodes.outerCoordinator, layoutNode.getChildMeasurables$ui(), i);
    }

    @Override // androidx.compose.ui.layout.Measurable
    public final int maxIntrinsicWidth(int i) {
        CardView.AnonymousClass1 orCreateIntrinsicsPolicy = this.layoutNode.getOrCreateIntrinsicsPolicy();
        MeasurePolicy measurePolicyState = orCreateIntrinsicsPolicy.getMeasurePolicyState();
        LayoutNode layoutNode = (LayoutNode) orCreateIntrinsicsPolicy.mCardBackground;
        return measurePolicyState.maxIntrinsicWidth((NodeCoordinator) layoutNode.nodes.outerCoordinator, layoutNode.getChildMeasurables$ui(), i);
    }

    @Override // androidx.compose.ui.layout.Measurable
    /* renamed from: measure-BRTryo0 */
    public final Placeable mo512measureBRTryo0(long j) {
        m532setMeasurementConstraintsBRTryo0(j);
        LayoutNode layoutNode = this.layoutNode;
        MutableVector mutableVector = layoutNode.get_children$ui();
        Object[] objArr = mutableVector.content;
        int i = mutableVector.size;
        for (int i2 = 0; i2 < i; i2++) {
            ((LayoutNode) objArr[i2]).layoutDelegate.measurePassDelegate.measuredByParent = LayoutNode.UsageByParent.NotUsed;
        }
        setMeasureResult$ui(layoutNode.measurePolicy.mo15measure3p2s80s(this, layoutNode.getChildMeasurables$ui(), j));
        onMeasured();
        return this;
    }

    @Override // androidx.compose.ui.layout.Measurable
    public final int minIntrinsicHeight(int i) {
        CardView.AnonymousClass1 orCreateIntrinsicsPolicy = this.layoutNode.getOrCreateIntrinsicsPolicy();
        MeasurePolicy measurePolicyState = orCreateIntrinsicsPolicy.getMeasurePolicyState();
        LayoutNode layoutNode = (LayoutNode) orCreateIntrinsicsPolicy.mCardBackground;
        return measurePolicyState.minIntrinsicHeight((NodeCoordinator) layoutNode.nodes.outerCoordinator, layoutNode.getChildMeasurables$ui(), i);
    }

    @Override // androidx.compose.ui.layout.Measurable
    public final int minIntrinsicWidth(int i) {
        CardView.AnonymousClass1 orCreateIntrinsicsPolicy = this.layoutNode.getOrCreateIntrinsicsPolicy();
        MeasurePolicy measurePolicyState = orCreateIntrinsicsPolicy.getMeasurePolicyState();
        LayoutNode layoutNode = (LayoutNode) orCreateIntrinsicsPolicy.mCardBackground;
        return measurePolicyState.minIntrinsicWidth((NodeCoordinator) layoutNode.nodes.outerCoordinator, layoutNode.getChildMeasurables$ui(), i);
    }

    @Override // androidx.compose.ui.node.NodeCoordinator
    public final void performDraw(Canvas canvas, GraphicsLayer graphicsLayer) {
        LayoutNode layoutNode = this.layoutNode;
        Owner requireOwner = LayoutNodeKt.requireOwner(layoutNode);
        MutableVector zSortedChildren = layoutNode.getZSortedChildren();
        Object[] objArr = zSortedChildren.content;
        int i = zSortedChildren.size;
        for (int i2 = 0; i2 < i; i2++) {
            LayoutNode layoutNode2 = (LayoutNode) objArr[i2];
            if (layoutNode2.isPlaced()) {
                layoutNode2.draw$ui(canvas, graphicsLayer);
            }
        }
        if (((AndroidComposeView) requireOwner).getShowLayoutBounds()) {
            long j = this.measuredSize;
            canvas.drawRect(0.5f, 0.5f, ((int) (j >> 32)) - 0.5f, ((int) (j & 4294967295L)) - 0.5f, innerBoundsPaint);
        }
    }

    @Override // androidx.compose.ui.layout.Placeable
    /* renamed from: placeAt-f8xVGno */
    public final void mo516placeAtf8xVGno(long j, float f, Function1 function1) {
        m574placeSelfMLgxB_4(j, f, function1, null);
        if (this.isShallowPlacing) {
            return;
        }
        this.layoutNode.layoutDelegate.measurePassDelegate.onNodePlaced$ui();
    }

    @Override // androidx.compose.ui.node.NodeCoordinator, androidx.compose.ui.layout.Placeable
    /* renamed from: placeAt-f8xVGno */
    public final void mo530placeAtf8xVGno(long j, float f, GraphicsLayer graphicsLayer) {
        m574placeSelfMLgxB_4(j, f, null, graphicsLayer);
        if (this.isShallowPlacing) {
            return;
        }
        this.layoutNode.layoutDelegate.measurePassDelegate.onNodePlaced$ui();
    }
}
