package androidx.compose.ui.node;

import androidx.collection.MutableObjectIntMap;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.AndroidPaint;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.layout.AlignmentLine;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import androidx.room.util.DBUtil$$ExternalSyntheticBUOutline0;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class LayoutModifierNodeCoordinator extends NodeCoordinator {
    public static final AndroidPaint modifierBoundsPaint;
    public LayoutModifierNode layoutModifierNode;
    public LookaheadDelegateForLayoutModifierNode lookaheadDelegate;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class LookaheadDelegateForLayoutModifierNode extends LookaheadDelegate {
        public LookaheadDelegateForLayoutModifierNode() {
            super(LayoutModifierNodeCoordinator.this);
        }

        @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
        public final int calculateAlignmentLine(AlignmentLine alignmentLine) {
            int access$calculateAlignmentAndPlaceChildAsNeeded = HitTestResultKt.access$calculateAlignmentAndPlaceChildAsNeeded(this, alignmentLine);
            this.cachedAlignmentLinesMap.set(access$calculateAlignmentAndPlaceChildAsNeeded, alignmentLine);
            return access$calculateAlignmentAndPlaceChildAsNeeded;
        }

        @Override // androidx.compose.ui.layout.Measurable
        public final int maxIntrinsicHeight(int i) {
            LayoutModifierNodeCoordinator layoutModifierNodeCoordinator = LayoutModifierNodeCoordinator.this;
            LayoutModifierNode layoutModifierNode = layoutModifierNodeCoordinator.layoutModifierNode;
            NodeCoordinator nodeCoordinator = layoutModifierNodeCoordinator.wrapped;
            nodeCoordinator.getClass();
            LookaheadDelegate lookaheadDelegate = nodeCoordinator.getLookaheadDelegate();
            lookaheadDelegate.getClass();
            return layoutModifierNode.maxIntrinsicHeight(this, lookaheadDelegate, i);
        }

        @Override // androidx.compose.ui.layout.Measurable
        public final int maxIntrinsicWidth(int i) {
            LayoutModifierNodeCoordinator layoutModifierNodeCoordinator = LayoutModifierNodeCoordinator.this;
            LayoutModifierNode layoutModifierNode = layoutModifierNodeCoordinator.layoutModifierNode;
            NodeCoordinator nodeCoordinator = layoutModifierNodeCoordinator.wrapped;
            nodeCoordinator.getClass();
            LookaheadDelegate lookaheadDelegate = nodeCoordinator.getLookaheadDelegate();
            lookaheadDelegate.getClass();
            return layoutModifierNode.maxIntrinsicWidth(this, lookaheadDelegate, i);
        }

        @Override // androidx.compose.ui.layout.Measurable
        /* renamed from: measure-BRTryo0 */
        public final Placeable mo571measureBRTryo0(long j) {
            m591setMeasurementConstraintsBRTryo0(j);
            new Constraints(j);
            LayoutModifierNodeCoordinator layoutModifierNodeCoordinator = LayoutModifierNodeCoordinator.this;
            LayoutModifierNode layoutModifierNode = layoutModifierNodeCoordinator.layoutModifierNode;
            NodeCoordinator nodeCoordinator = layoutModifierNodeCoordinator.wrapped;
            nodeCoordinator.getClass();
            LookaheadDelegate lookaheadDelegate = nodeCoordinator.getLookaheadDelegate();
            lookaheadDelegate.getClass();
            LookaheadDelegate.access$set_measureResult(this, layoutModifierNode.mo109measure3p2s80s(this, lookaheadDelegate, j));
            return this;
        }

        @Override // androidx.compose.ui.layout.Measurable
        public final int minIntrinsicHeight(int i) {
            LayoutModifierNodeCoordinator layoutModifierNodeCoordinator = LayoutModifierNodeCoordinator.this;
            LayoutModifierNode layoutModifierNode = layoutModifierNodeCoordinator.layoutModifierNode;
            NodeCoordinator nodeCoordinator = layoutModifierNodeCoordinator.wrapped;
            nodeCoordinator.getClass();
            LookaheadDelegate lookaheadDelegate = nodeCoordinator.getLookaheadDelegate();
            lookaheadDelegate.getClass();
            return layoutModifierNode.minIntrinsicHeight(this, lookaheadDelegate, i);
        }

        @Override // androidx.compose.ui.layout.Measurable
        public final int minIntrinsicWidth(int i) {
            LayoutModifierNodeCoordinator layoutModifierNodeCoordinator = LayoutModifierNodeCoordinator.this;
            LayoutModifierNode layoutModifierNode = layoutModifierNodeCoordinator.layoutModifierNode;
            NodeCoordinator nodeCoordinator = layoutModifierNodeCoordinator.wrapped;
            nodeCoordinator.getClass();
            LookaheadDelegate lookaheadDelegate = nodeCoordinator.getLookaheadDelegate();
            lookaheadDelegate.getClass();
            return layoutModifierNode.minIntrinsicWidth(this, lookaheadDelegate, i);
        }
    }

    static {
        AndroidPaint Paint = ColorKt.Paint();
        Paint.m464setColor8_81llA(Color.Blue);
        Paint.setStrokeWidth(1.0f);
        Paint.m468setStylek9PVt8s(1);
        modifierBoundsPaint = Paint;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public LayoutModifierNodeCoordinator(LayoutNode layoutNode, LayoutModifierNode layoutModifierNode) {
        super(layoutNode);
        this.layoutModifierNode = layoutModifierNode;
        this.lookaheadDelegate = layoutNode.lookaheadRoot != null ? new LookaheadDelegateForLayoutModifierNode() : null;
        if ((((Modifier.Node) layoutModifierNode).node.kindSet & 512) == 0) {
            return;
        }
        DBUtil$$ExternalSyntheticBUOutline0.m();
        throw null;
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
    public final int calculateAlignmentLine(AlignmentLine alignmentLine) {
        LookaheadDelegateForLayoutModifierNode lookaheadDelegateForLayoutModifierNode = this.lookaheadDelegate;
        if (lookaheadDelegateForLayoutModifierNode == null) {
            return HitTestResultKt.access$calculateAlignmentAndPlaceChildAsNeeded(this, alignmentLine);
        }
        MutableObjectIntMap mutableObjectIntMap = lookaheadDelegateForLayoutModifierNode.cachedAlignmentLinesMap;
        int findKeyIndex = mutableObjectIntMap.findKeyIndex(alignmentLine);
        if (findKeyIndex >= 0) {
            return mutableObjectIntMap.values[findKeyIndex];
        }
        return Integer.MIN_VALUE;
    }

    @Override // androidx.compose.ui.node.NodeCoordinator
    public final void ensureLookaheadDelegateCreated() {
        if (this.lookaheadDelegate == null) {
            this.lookaheadDelegate = new LookaheadDelegateForLayoutModifierNode();
        }
    }

    @Override // androidx.compose.ui.node.NodeCoordinator
    public final LookaheadDelegate getLookaheadDelegate() {
        return this.lookaheadDelegate;
    }

    @Override // androidx.compose.ui.node.NodeCoordinator
    public final Modifier.Node getTail() {
        return ((Modifier.Node) this.layoutModifierNode).node;
    }

    @Override // androidx.compose.ui.layout.Measurable
    public final int maxIntrinsicHeight(int i) {
        LayoutModifierNode layoutModifierNode = this.layoutModifierNode;
        NodeCoordinator nodeCoordinator = this.wrapped;
        nodeCoordinator.getClass();
        return layoutModifierNode.maxIntrinsicHeight(this, nodeCoordinator, i);
    }

    @Override // androidx.compose.ui.layout.Measurable
    public final int maxIntrinsicWidth(int i) {
        LayoutModifierNode layoutModifierNode = this.layoutModifierNode;
        NodeCoordinator nodeCoordinator = this.wrapped;
        nodeCoordinator.getClass();
        return layoutModifierNode.maxIntrinsicWidth(this, nodeCoordinator, i);
    }

    @Override // androidx.compose.ui.layout.Measurable
    /* renamed from: measure-BRTryo0 */
    public final Placeable mo571measureBRTryo0(long j) {
        m591setMeasurementConstraintsBRTryo0(j);
        LayoutModifierNode layoutModifierNode = this.layoutModifierNode;
        NodeCoordinator nodeCoordinator = this.wrapped;
        nodeCoordinator.getClass();
        setMeasureResult$ui(layoutModifierNode.mo109measure3p2s80s(this, nodeCoordinator, j));
        onMeasured();
        return this;
    }

    @Override // androidx.compose.ui.layout.Measurable
    public final int minIntrinsicHeight(int i) {
        LayoutModifierNode layoutModifierNode = this.layoutModifierNode;
        NodeCoordinator nodeCoordinator = this.wrapped;
        nodeCoordinator.getClass();
        return layoutModifierNode.minIntrinsicHeight(this, nodeCoordinator, i);
    }

    @Override // androidx.compose.ui.layout.Measurable
    public final int minIntrinsicWidth(int i) {
        LayoutModifierNode layoutModifierNode = this.layoutModifierNode;
        NodeCoordinator nodeCoordinator = this.wrapped;
        nodeCoordinator.getClass();
        return layoutModifierNode.minIntrinsicWidth(this, nodeCoordinator, i);
    }

    public final void onAfterPlaceAt$1() {
        if (this.isShallowPlacing) {
            return;
        }
        onPlaced();
        NodeCoordinator nodeCoordinator = this.wrapped;
        nodeCoordinator.getClass();
        nodeCoordinator.isPlacingForAlignment = this.isPlacingForAlignment;
        getMeasureResult$ui().placeChildren();
        nodeCoordinator.isPlacingForAlignment = false;
    }

    @Override // androidx.compose.ui.node.NodeCoordinator
    public final void performDraw(Canvas canvas, GraphicsLayer graphicsLayer) {
        NodeCoordinator nodeCoordinator;
        NodeCoordinator nodeCoordinator2 = this.wrapped;
        nodeCoordinator2.getClass();
        nodeCoordinator2.draw(canvas, graphicsLayer);
        if (!((AndroidComposeView) LayoutNodeKt.requireOwner(this.layoutNode)).getShowLayoutBounds() || (nodeCoordinator = this.wrapped) == null) {
            return;
        }
        if (IntSize.m768equalsimpl0(this.measuredSize, nodeCoordinator.measuredSize) && IntOffset.m752equalsimpl0(nodeCoordinator.position, 0L)) {
            return;
        }
        long j = this.measuredSize;
        canvas.drawRect(0.5f, 0.5f, ((int) (j >> 32)) - 0.5f, ((int) (j & 4294967295L)) - 0.5f, modifierBoundsPaint);
    }

    @Override // androidx.compose.ui.layout.Placeable
    /* renamed from: placeAt-f8xVGno */
    public final void mo575placeAtf8xVGno(long j, float f, Function1 function1) {
        m634placeSelfMLgxB_4(j, f, function1, null);
        onAfterPlaceAt$1();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void setLayoutModifierNode$ui(LayoutModifierNode layoutModifierNode) {
        if (layoutModifierNode.equals(this.layoutModifierNode) || (((Modifier.Node) layoutModifierNode).node.kindSet & 512) == 0) {
            this.layoutModifierNode = layoutModifierNode;
        } else {
            DBUtil$$ExternalSyntheticBUOutline0.m();
        }
    }

    @Override // androidx.compose.ui.node.NodeCoordinator, androidx.compose.ui.layout.Placeable
    /* renamed from: placeAt-f8xVGno */
    public final void mo589placeAtf8xVGno(long j, float f, GraphicsLayer graphicsLayer) {
        m634placeSelfMLgxB_4(j, f, null, graphicsLayer);
        onAfterPlaceAt$1();
    }
}
