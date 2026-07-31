package androidx.compose.ui.layout;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.node.LookaheadDelegate;
import androidx.compose.ui.node.NodeCoordinator;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntOffsetKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class LookaheadLayoutCoordinates implements LayoutCoordinates {
    public final LookaheadDelegate lookaheadDelegate;

    public LookaheadLayoutCoordinates(LookaheadDelegate lookaheadDelegate) {
        this.lookaheadDelegate = lookaheadDelegate;
    }

    /* renamed from: getLookaheadOffset-F1C5BW0, reason: not valid java name */
    public final long m588getLookaheadOffsetF1C5BW0() {
        LookaheadDelegate lookaheadDelegate = this.lookaheadDelegate;
        LookaheadDelegate rootLookaheadDelegate = RulerKt.getRootLookaheadDelegate(lookaheadDelegate);
        return Offset.m440minusMKHz9U(mo578localPositionOfS_NoaFU(rootLookaheadDelegate.lookaheadLayoutCoordinates, 0L), lookaheadDelegate.coordinator.mo578localPositionOfS_NoaFU(rootLookaheadDelegate.coordinator, 0L));
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    public final LayoutCoordinates getParentLayoutCoordinates() {
        LookaheadDelegate lookaheadDelegate;
        if (!isAttached$1()) {
            InlineClassHelperKt.throwIllegalStateException("LayoutCoordinate operations are only valid when isAttached is true");
        }
        NodeCoordinator nodeCoordinator = ((NodeCoordinator) this.lookaheadDelegate.coordinator.layoutNode.nodes.outerCoordinator).wrappedBy;
        if (nodeCoordinator == null || (lookaheadDelegate = nodeCoordinator.getLookaheadDelegate()) == null) {
            return null;
        }
        return lookaheadDelegate.lookaheadLayoutCoordinates;
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    /* renamed from: getSize-YbymL2g */
    public final long mo576getSizeYbymL2g() {
        LookaheadDelegate lookaheadDelegate = this.lookaheadDelegate;
        return (lookaheadDelegate.width << 32) | (lookaheadDelegate.height & 4294967295L);
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    public final boolean isAttached$1() {
        return this.lookaheadDelegate.coordinator.getTail().isAttached;
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    public final Rect localBoundingBoxOf(LayoutCoordinates layoutCoordinates, boolean z) {
        return this.lookaheadDelegate.coordinator.localBoundingBoxOf(layoutCoordinates, z);
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    /* renamed from: localPositionOf-R5De75A */
    public final long mo577localPositionOfR5De75A(LayoutCoordinates layoutCoordinates, long j) {
        return mo578localPositionOfS_NoaFU(layoutCoordinates, j);
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    /* renamed from: localPositionOf-S_NoaFU */
    public final long mo578localPositionOfS_NoaFU(LayoutCoordinates layoutCoordinates, long j) {
        boolean z = layoutCoordinates instanceof LookaheadLayoutCoordinates;
        LookaheadDelegate lookaheadDelegate = this.lookaheadDelegate;
        if (!z) {
            LookaheadDelegate rootLookaheadDelegate = RulerKt.getRootLookaheadDelegate(lookaheadDelegate);
            NodeCoordinator nodeCoordinator = rootLookaheadDelegate.coordinator;
            long mo578localPositionOfS_NoaFU = mo578localPositionOfS_NoaFU(rootLookaheadDelegate.lookaheadLayoutCoordinates, j);
            float f = (int) (rootLookaheadDelegate.position & 4294967295L);
            long m440minusMKHz9U = Offset.m440minusMKHz9U(mo578localPositionOfS_NoaFU, (4294967295L & Float.floatToRawIntBits(f)) | (Float.floatToRawIntBits((int) (r5 >> 32)) << 32));
            if (!nodeCoordinator.getTail().isAttached) {
                InlineClassHelperKt.throwIllegalStateException("LayoutCoordinate operations are only valid when isAttached is true");
            }
            nodeCoordinator.onCoordinatesUsed$ui();
            NodeCoordinator nodeCoordinator2 = nodeCoordinator.wrappedBy;
            if (nodeCoordinator2 != null) {
                nodeCoordinator = nodeCoordinator2;
            }
            return Offset.m441plusMKHz9U(m440minusMKHz9U, nodeCoordinator.mo578localPositionOfS_NoaFU(layoutCoordinates, 0L));
        }
        LookaheadDelegate lookaheadDelegate2 = ((LookaheadLayoutCoordinates) layoutCoordinates).lookaheadDelegate;
        NodeCoordinator nodeCoordinator3 = lookaheadDelegate2.coordinator;
        nodeCoordinator3.onCoordinatesUsed$ui();
        LookaheadDelegate lookaheadDelegate3 = lookaheadDelegate.coordinator.findCommonAncestor$ui(nodeCoordinator3).getLookaheadDelegate();
        if (lookaheadDelegate3 != null) {
            long m753minusqkQi6aY = IntOffset.m753minusqkQi6aY(IntOffset.m754plusqkQi6aY(lookaheadDelegate2.m613positionIniSbpLlY$ui(lookaheadDelegate3, false), IntOffsetKt.m760roundk4lQ0M(j)), lookaheadDelegate.m613positionIniSbpLlY$ui(lookaheadDelegate3, false));
            return (Float.floatToRawIntBits((int) (m753minusqkQi6aY >> 32)) << 32) | (Float.floatToRawIntBits((int) (m753minusqkQi6aY & 4294967295L)) & 4294967295L);
        }
        LookaheadDelegate rootLookaheadDelegate2 = RulerKt.getRootLookaheadDelegate(lookaheadDelegate2);
        long m754plusqkQi6aY = IntOffset.m754plusqkQi6aY(IntOffset.m754plusqkQi6aY(lookaheadDelegate2.m613positionIniSbpLlY$ui(rootLookaheadDelegate2, false), rootLookaheadDelegate2.position), IntOffsetKt.m760roundk4lQ0M(j));
        LookaheadDelegate rootLookaheadDelegate3 = RulerKt.getRootLookaheadDelegate(lookaheadDelegate);
        long m753minusqkQi6aY2 = IntOffset.m753minusqkQi6aY(m754plusqkQi6aY, IntOffset.m754plusqkQi6aY(lookaheadDelegate.m613positionIniSbpLlY$ui(rootLookaheadDelegate3, false), rootLookaheadDelegate3.position));
        long floatToRawIntBits = Float.floatToRawIntBits((int) (m753minusqkQi6aY2 >> 32));
        long floatToRawIntBits2 = Float.floatToRawIntBits((int) (m753minusqkQi6aY2 & 4294967295L)) & 4294967295L;
        NodeCoordinator nodeCoordinator4 = rootLookaheadDelegate3.coordinator.wrappedBy;
        nodeCoordinator4.getClass();
        NodeCoordinator nodeCoordinator5 = rootLookaheadDelegate2.coordinator.wrappedBy;
        nodeCoordinator5.getClass();
        return nodeCoordinator4.mo578localPositionOfS_NoaFU(nodeCoordinator5, floatToRawIntBits2 | (floatToRawIntBits << 32));
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    /* renamed from: localToRoot-MK-Hz9U */
    public final long mo579localToRootMKHz9U(long j) {
        return this.lookaheadDelegate.coordinator.mo579localToRootMKHz9U(Offset.m441plusMKHz9U(j, m588getLookaheadOffsetF1C5BW0()));
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    /* renamed from: localToScreen-MK-Hz9U */
    public final long mo580localToScreenMKHz9U(long j) {
        return this.lookaheadDelegate.coordinator.mo580localToScreenMKHz9U(Offset.m441plusMKHz9U(0L, m588getLookaheadOffsetF1C5BW0()));
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    /* renamed from: localToWindow-MK-Hz9U */
    public final long mo581localToWindowMKHz9U(long j) {
        return this.lookaheadDelegate.coordinator.mo581localToWindowMKHz9U(Offset.m441plusMKHz9U(j, m588getLookaheadOffsetF1C5BW0()));
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    /* renamed from: screenToLocal-MK-Hz9U */
    public final long mo582screenToLocalMKHz9U(long j) {
        return Offset.m441plusMKHz9U(this.lookaheadDelegate.coordinator.mo582screenToLocalMKHz9U(j), m588getLookaheadOffsetF1C5BW0());
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    /* renamed from: transformFrom-EL8BTi8 */
    public final void mo583transformFromEL8BTi8(LayoutCoordinates layoutCoordinates, float[] fArr) {
        this.lookaheadDelegate.coordinator.mo583transformFromEL8BTi8(layoutCoordinates, fArr);
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    /* renamed from: transformToScreen-58bKbWc */
    public final void mo584transformToScreen58bKbWc(float[] fArr) {
        this.lookaheadDelegate.coordinator.mo584transformToScreen58bKbWc(fArr);
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    /* renamed from: windowToLocal-MK-Hz9U */
    public final long mo585windowToLocalMKHz9U(long j) {
        return Offset.m441plusMKHz9U(this.lookaheadDelegate.coordinator.mo585windowToLocalMKHz9U(j), m588getLookaheadOffsetF1C5BW0());
    }
}
