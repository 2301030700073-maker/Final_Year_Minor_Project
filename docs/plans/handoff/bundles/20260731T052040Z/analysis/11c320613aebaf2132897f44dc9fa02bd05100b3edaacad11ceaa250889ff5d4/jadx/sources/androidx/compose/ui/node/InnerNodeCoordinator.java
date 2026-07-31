package androidx.compose.ui.node;

import androidx.cardview.widget.CardView;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.AndroidPaint;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.layout.AlignmentLine;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.platform.AndroidComposeView;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class InnerNodeCoordinator extends NodeCoordinator {
    public static final AndroidPaint innerBoundsPaint;
    public LookaheadDelegateImpl lookaheadDelegate;
    public final TailModifierNode tail;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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
            return measurePolicyState.maxIntrinsicHeight(layoutNode.nodes.outerCoordinator, layoutNode.getChildLookaheadMeasurables$ui(), i);
        }

        @Override // androidx.compose.ui.layout.Measurable
        public final int maxIntrinsicWidth(int i) {
            CardView.AnonymousClass1 orCreateIntrinsicsPolicy = this.coordinator.layoutNode.getOrCreateIntrinsicsPolicy();
            MeasurePolicy measurePolicyState = orCreateIntrinsicsPolicy.getMeasurePolicyState();
            LayoutNode layoutNode = (LayoutNode) orCreateIntrinsicsPolicy.mCardBackground;
            return measurePolicyState.maxIntrinsicWidth(layoutNode.nodes.outerCoordinator, layoutNode.getChildLookaheadMeasurables$ui(), i);
        }

        @Override // androidx.compose.ui.layout.Measurable
        /* renamed from: measure-BRTryo0 */
        public final Placeable mo292measureBRTryo0(long j) {
            m304setMeasurementConstraintsBRTryo0(j);
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
            LookaheadDelegate.access$set_measureResult(this, layoutNode.measurePolicy.mo8measure3p2s80s(this, layoutNode.getChildLookaheadMeasurables$ui(), j));
            return this;
        }

        @Override // androidx.compose.ui.layout.Measurable
        public final int minIntrinsicHeight(int i) {
            CardView.AnonymousClass1 orCreateIntrinsicsPolicy = this.coordinator.layoutNode.getOrCreateIntrinsicsPolicy();
            MeasurePolicy measurePolicyState = orCreateIntrinsicsPolicy.getMeasurePolicyState();
            LayoutNode layoutNode = (LayoutNode) orCreateIntrinsicsPolicy.mCardBackground;
            return measurePolicyState.minIntrinsicHeight(layoutNode.nodes.outerCoordinator, layoutNode.getChildLookaheadMeasurables$ui(), i);
        }

        @Override // androidx.compose.ui.layout.Measurable
        public final int minIntrinsicWidth(int i) {
            CardView.AnonymousClass1 orCreateIntrinsicsPolicy = this.coordinator.layoutNode.getOrCreateIntrinsicsPolicy();
            MeasurePolicy measurePolicyState = orCreateIntrinsicsPolicy.getMeasurePolicyState();
            LayoutNode layoutNode = (LayoutNode) orCreateIntrinsicsPolicy.mCardBackground;
            return measurePolicyState.minIntrinsicWidth(layoutNode.nodes.outerCoordinator, layoutNode.getChildLookaheadMeasurables$ui(), i);
        }

        @Override // androidx.compose.ui.node.LookaheadDelegate
        public final void placeChildren() {
            LookaheadPassDelegate lookaheadPassDelegate = this.coordinator.layoutNode.layoutDelegate.lookaheadPassDelegate;
            lookaheadPassDelegate.getClass();
            lookaheadPassDelegate.onNodePlaced$ui();
        }
    }

    static {
        AndroidPaint Paint = Brush.Paint();
        Paint.m220setColor8_81llA(Color.Red);
        Paint.internalPaint.setStrokeWidth(1.0f);
        Paint.m223setStylek9PVt8s(1);
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

    /* JADX WARN: Removed duplicated region for block: B:31:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0036  */
    @Override // androidx.compose.ui.node.NodeCoordinator
    /* renamed from: hitTestChild-qzLsGqo, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo318hitTestChildqzLsGqo(androidx.compose.ui.node.NodeCoordinator.HitTestSource r12, long r13, androidx.compose.ui.node.HitTestResult r15, int r16, boolean r17) {
        /*
            r11 = this;
            androidx.compose.ui.node.LayoutNode r0 = r11.layoutNode
            boolean r1 = r12.shouldHitTestChildren(r0)
            r2 = 1
            r3 = 0
            if (r1 == 0) goto L30
            boolean r1 = r11.m353withinLayerBoundsk4lQ0M(r13)
            if (r1 == 0) goto L16
            r9 = r16
            r10 = r17
        L14:
            r3 = r2
            goto L34
        L16:
            r9 = r16
            if (r9 != r2) goto L32
            long r4 = r11.m344getMinimumTouchTargetSizeNHjbRc()
            float r11 = r11.m342distanceInMinimumTouchTargettz77jQw(r13, r4)
            int r11 = java.lang.Float.floatToRawIntBits(r11)
            r1 = 2147483647(0x7fffffff, float:NaN)
            r11 = r11 & r1
            r1 = 2139095040(0x7f800000, float:Infinity)
            if (r11 >= r1) goto L32
            r10 = r3
            goto L14
        L30:
            r9 = r16
        L32:
            r10 = r17
        L34:
            if (r3 == 0) goto L7a
            int r11 = r15.hitDepth
            androidx.compose.runtime.collection.MutableVector r0 = r0.getZSortedChildren()
            java.lang.Object[] r1 = r0.content
            int r0 = r0.size
            int r0 = r0 - r2
        L41:
            if (r0 < 0) goto L78
            r2 = r1[r0]
            r5 = r2
            androidx.compose.ui.node.LayoutNode r5 = (androidx.compose.ui.node.LayoutNode) r5
            boolean r2 = r5.isPlaced()
            if (r2 == 0) goto L73
            r4 = r12
            r6 = r13
            r8 = r15
            r4.mo354childHitTestqzLsGqo(r5, r6, r8, r9, r10)
            long r2 = r15.m311findBestHitDistancefn2tFes()
            float r6 = androidx.compose.ui.node.HitTestResultKt.m314getDistanceimpl(r2)
            r7 = 0
            int r6 = (r6 > r7 ? 1 : (r6 == r7 ? 0 : -1))
            if (r6 >= 0) goto L73
            boolean r6 = androidx.compose.ui.node.HitTestResultKt.m316isInLayerimpl(r2)
            if (r6 == 0) goto L73
            boolean r2 = androidx.compose.ui.node.HitTestResultKt.m315isInExpandedBoundsimpl(r2)
            if (r2 != 0) goto L73
            boolean r2 = r12.shareWithSiblings(r15, r5)
            if (r2 == 0) goto L78
        L73:
            int r0 = r0 + (-1)
            r9 = r16
            goto L41
        L78:
            r15.hitDepth = r11
        L7a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.node.InnerNodeCoordinator.mo318hitTestChildqzLsGqo(androidx.compose.ui.node.NodeCoordinator$HitTestSource, long, androidx.compose.ui.node.HitTestResult, int, boolean):void");
    }

    @Override // androidx.compose.ui.layout.Measurable
    public final int maxIntrinsicHeight(int i) {
        CardView.AnonymousClass1 orCreateIntrinsicsPolicy = this.layoutNode.getOrCreateIntrinsicsPolicy();
        MeasurePolicy measurePolicyState = orCreateIntrinsicsPolicy.getMeasurePolicyState();
        LayoutNode layoutNode = (LayoutNode) orCreateIntrinsicsPolicy.mCardBackground;
        return measurePolicyState.maxIntrinsicHeight(layoutNode.nodes.outerCoordinator, layoutNode.getChildMeasurables$ui(), i);
    }

    @Override // androidx.compose.ui.layout.Measurable
    public final int maxIntrinsicWidth(int i) {
        CardView.AnonymousClass1 orCreateIntrinsicsPolicy = this.layoutNode.getOrCreateIntrinsicsPolicy();
        MeasurePolicy measurePolicyState = orCreateIntrinsicsPolicy.getMeasurePolicyState();
        LayoutNode layoutNode = (LayoutNode) orCreateIntrinsicsPolicy.mCardBackground;
        return measurePolicyState.maxIntrinsicWidth(layoutNode.nodes.outerCoordinator, layoutNode.getChildMeasurables$ui(), i);
    }

    @Override // androidx.compose.ui.layout.Measurable
    /* renamed from: measure-BRTryo0 */
    public final Placeable mo292measureBRTryo0(long j) {
        m304setMeasurementConstraintsBRTryo0(j);
        LayoutNode layoutNode = this.layoutNode;
        MutableVector mutableVector = layoutNode.get_children$ui();
        Object[] objArr = mutableVector.content;
        int i = mutableVector.size;
        for (int i2 = 0; i2 < i; i2++) {
            ((LayoutNode) objArr[i2]).layoutDelegate.measurePassDelegate.measuredByParent = LayoutNode.UsageByParent.NotUsed;
        }
        setMeasureResult$ui(layoutNode.measurePolicy.mo8measure3p2s80s(this, layoutNode.getChildMeasurables$ui(), j));
        onMeasured();
        return this;
    }

    @Override // androidx.compose.ui.layout.Measurable
    public final int minIntrinsicHeight(int i) {
        CardView.AnonymousClass1 orCreateIntrinsicsPolicy = this.layoutNode.getOrCreateIntrinsicsPolicy();
        MeasurePolicy measurePolicyState = orCreateIntrinsicsPolicy.getMeasurePolicyState();
        LayoutNode layoutNode = (LayoutNode) orCreateIntrinsicsPolicy.mCardBackground;
        return measurePolicyState.minIntrinsicHeight(layoutNode.nodes.outerCoordinator, layoutNode.getChildMeasurables$ui(), i);
    }

    @Override // androidx.compose.ui.layout.Measurable
    public final int minIntrinsicWidth(int i) {
        CardView.AnonymousClass1 orCreateIntrinsicsPolicy = this.layoutNode.getOrCreateIntrinsicsPolicy();
        MeasurePolicy measurePolicyState = orCreateIntrinsicsPolicy.getMeasurePolicyState();
        LayoutNode layoutNode = (LayoutNode) orCreateIntrinsicsPolicy.mCardBackground;
        return measurePolicyState.minIntrinsicWidth(layoutNode.nodes.outerCoordinator, layoutNode.getChildMeasurables$ui(), i);
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
    public final void mo295placeAtf8xVGno(long j, float f, Function1 function1) {
        m351placeSelfMLgxB_4(j, f, function1);
        if (this.isShallowPlacing) {
            return;
        }
        this.layoutNode.layoutDelegate.measurePassDelegate.onNodePlaced$ui();
    }
}
