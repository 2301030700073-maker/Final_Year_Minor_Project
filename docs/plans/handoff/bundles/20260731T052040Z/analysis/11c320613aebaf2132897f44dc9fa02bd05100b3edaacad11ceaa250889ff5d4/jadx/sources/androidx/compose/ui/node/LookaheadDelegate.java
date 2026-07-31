package androidx.compose.ui.node;

import androidx.collection.MutableObjectIntMap;
import androidx.collection.ObjectIntMapKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.LookaheadLayoutCoordinates;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.LayoutDirection;
import java.util.LinkedHashMap;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class LookaheadDelegate extends LookaheadCapablePlaceable implements Measurable {
    public MeasureResult _measureResult;
    public final MutableObjectIntMap cachedAlignmentLinesMap;
    public final NodeCoordinator coordinator;
    public LinkedHashMap oldAlignmentLines;
    public long position = 0;
    public final LookaheadLayoutCoordinates lookaheadLayoutCoordinates = new LookaheadLayoutCoordinates(this);

    public LookaheadDelegate(NodeCoordinator nodeCoordinator) {
        this.coordinator = nodeCoordinator;
        MutableObjectIntMap mutableObjectIntMap = ObjectIntMapKt.EmptyObjectIntMap;
        this.cachedAlignmentLinesMap = new MutableObjectIntMap();
    }

    public static final void access$set_measureResult(LookaheadDelegate lookaheadDelegate, MeasureResult measureResult) {
        LinkedHashMap linkedHashMap;
        if (measureResult != null) {
            lookaheadDelegate.m303setMeasuredSizeozmzZPI((measureResult.getHeight() & 4294967295L) | (measureResult.getWidth() << 32));
        } else {
            lookaheadDelegate.m303setMeasuredSizeozmzZPI(0L);
        }
        if (!Intrinsics.areEqual(lookaheadDelegate._measureResult, measureResult) && measureResult != null && ((((linkedHashMap = lookaheadDelegate.oldAlignmentLines) != null && !linkedHashMap.isEmpty()) || !measureResult.getAlignmentLines().isEmpty()) && !Intrinsics.areEqual(measureResult.getAlignmentLines(), lookaheadDelegate.oldAlignmentLines))) {
            LookaheadPassDelegate lookaheadPassDelegate = lookaheadDelegate.coordinator.layoutNode.layoutDelegate.lookaheadPassDelegate;
            lookaheadPassDelegate.getClass();
            lookaheadPassDelegate.alignmentLines.onAlignmentsChanged();
            LinkedHashMap linkedHashMap2 = lookaheadDelegate.oldAlignmentLines;
            if (linkedHashMap2 == null) {
                linkedHashMap2 = new LinkedHashMap();
                lookaheadDelegate.oldAlignmentLines = linkedHashMap2;
            }
            linkedHashMap2.clear();
            linkedHashMap2.putAll(measureResult.getAlignmentLines());
        }
        lookaheadDelegate._measureResult = measureResult;
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
    public final LookaheadCapablePlaceable getChild() {
        NodeCoordinator nodeCoordinator = this.coordinator.wrapped;
        if (nodeCoordinator != null) {
            return nodeCoordinator.getLookaheadDelegate();
        }
        return null;
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
    public final LayoutCoordinates getCoordinates() {
        return this.lookaheadLayoutCoordinates;
    }

    @Override // androidx.compose.ui.unit.Density
    public final float getDensity() {
        return this.coordinator.getDensity();
    }

    @Override // androidx.compose.ui.unit.Density
    public final float getFontScale() {
        return this.coordinator.getFontScale();
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
    public final boolean getHasMeasureResult() {
        return this._measureResult != null;
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasureScope
    public final LayoutDirection getLayoutDirection() {
        return this.coordinator.layoutNode.layoutDirection;
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
    public final LayoutNode getLayoutNode() {
        return this.coordinator.layoutNode;
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
    public final MeasureResult getMeasureResult$ui() {
        MeasureResult measureResult = this._measureResult;
        if (measureResult != null) {
            return measureResult;
        }
        throw Modifier.CC.m("LookaheadDelegate has not been measured yet when measureResult is requested.");
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
    public final LookaheadCapablePlaceable getParent() {
        NodeCoordinator nodeCoordinator = this.coordinator.wrappedBy;
        if (nodeCoordinator != null) {
            return nodeCoordinator.getLookaheadDelegate();
        }
        return null;
    }

    @Override // androidx.compose.ui.layout.Placeable, androidx.compose.ui.layout.Measurable
    public final Object getParentData() {
        return this.coordinator.getParentData();
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
    /* renamed from: getPosition-nOcc-ac */
    public final long mo328getPositionnOccac() {
        return this.position;
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable, androidx.compose.ui.layout.IntrinsicMeasureScope
    public final boolean isLookingAhead() {
        return true;
    }

    @Override // androidx.compose.ui.layout.Placeable
    /* renamed from: placeAt-f8xVGno */
    public final void mo295placeAtf8xVGno(long j, float f, Function1 function1) {
        m329placeSelfgyyYBs(j);
        if (this.isShallowPlacing) {
            return;
        }
        placeChildren();
    }

    public void placeChildren() {
        getMeasureResult$ui().placeChildren();
    }

    /* renamed from: placeSelf--gyyYBs, reason: not valid java name */
    public final void m329placeSelfgyyYBs(long j) {
        if (!IntOffset.m445equalsimpl0(this.position, j)) {
            this.position = j;
            NodeCoordinator nodeCoordinator = this.coordinator;
            LookaheadPassDelegate lookaheadPassDelegate = nodeCoordinator.layoutNode.layoutDelegate.lookaheadPassDelegate;
            if (lookaheadPassDelegate != null) {
                lookaheadPassDelegate.notifyChildrenUsingLookaheadCoordinatesWhilePlacing();
            }
            LookaheadCapablePlaceable.invalidateAlignmentLinesFromPositionChange(nodeCoordinator);
        }
        if (this.isPlacingForAlignment) {
            return;
        }
        captureRulersIfNeeded$ui(getMeasureResult$ui());
    }

    /* renamed from: positionIn-iSbpLlY$ui, reason: not valid java name */
    public final long m330positionIniSbpLlY$ui(LookaheadDelegate lookaheadDelegate, boolean z) {
        long j = 0;
        while (!this.equals(lookaheadDelegate)) {
            if (!this.isPlacedUnderMotionFrameOfReference || !z) {
                j = IntOffset.m447plusqkQi6aY(j, this.position);
            }
            NodeCoordinator nodeCoordinator = this.coordinator.wrappedBy;
            nodeCoordinator.getClass();
            this = nodeCoordinator.getLookaheadDelegate();
            this.getClass();
        }
        return j;
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
    public final void replace$ui() {
        mo295placeAtf8xVGno(this.position, 0.0f, null);
    }
}
