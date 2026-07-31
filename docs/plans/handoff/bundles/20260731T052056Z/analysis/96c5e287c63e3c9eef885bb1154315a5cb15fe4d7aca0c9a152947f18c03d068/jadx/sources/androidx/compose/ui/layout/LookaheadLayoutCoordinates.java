package androidx.compose.ui.layout;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.node.LookaheadDelegate;
import androidx.compose.ui.node.NodeCoordinator;
import androidx.compose.ui.unit.IntOffset;
import androidx.work.Operation$State;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LookaheadLayoutCoordinates implements LayoutCoordinates {
    public final LookaheadDelegate lookaheadDelegate;

    public LookaheadLayoutCoordinates(LookaheadDelegate lookaheadDelegate) {
        this.lookaheadDelegate = lookaheadDelegate;
    }

    /* renamed from: getLookaheadOffset-F1C5BW0, reason: not valid java name */
    public final long m529getLookaheadOffsetF1C5BW0() {
        LookaheadDelegate lookaheadDelegate = this.lookaheadDelegate;
        LookaheadDelegate rootLookaheadDelegate = RulerKt.getRootLookaheadDelegate(lookaheadDelegate);
        return Offset.m385minusMKHz9U(mo519localPositionOfS_NoaFU(rootLookaheadDelegate.lookaheadLayoutCoordinates, 0L), lookaheadDelegate.coordinator.mo519localPositionOfS_NoaFU(rootLookaheadDelegate.coordinator, 0L));
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    public final LayoutCoordinates getParentLayoutCoordinates() {
        LookaheadDelegate lookaheadDelegate;
        if (!isAttached()) {
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
    public final long mo517getSizeYbymL2g() {
        LookaheadDelegate lookaheadDelegate = this.lookaheadDelegate;
        return (lookaheadDelegate.width << 32) | (lookaheadDelegate.height & 4294967295L);
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    public final boolean isAttached() {
        return this.lookaheadDelegate.coordinator.getTail().isAttached;
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    public final Rect localBoundingBoxOf(LayoutCoordinates layoutCoordinates, boolean z) {
        return this.lookaheadDelegate.coordinator.localBoundingBoxOf(layoutCoordinates, z);
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    /* renamed from: localPositionOf-R5De75A */
    public final long mo518localPositionOfR5De75A(LayoutCoordinates layoutCoordinates, long j) {
        return mo519localPositionOfS_NoaFU(layoutCoordinates, j);
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    /* renamed from: localPositionOf-S_NoaFU */
    public final long mo519localPositionOfS_NoaFU(LayoutCoordinates layoutCoordinates, long j) {
        boolean z = layoutCoordinates instanceof LookaheadLayoutCoordinates;
        LookaheadDelegate lookaheadDelegate = this.lookaheadDelegate;
        if (!z) {
            LookaheadDelegate rootLookaheadDelegate = RulerKt.getRootLookaheadDelegate(lookaheadDelegate);
            NodeCoordinator nodeCoordinator = rootLookaheadDelegate.coordinator;
            long mo519localPositionOfS_NoaFU = mo519localPositionOfS_NoaFU(rootLookaheadDelegate.lookaheadLayoutCoordinates, j);
            float f = (int) (rootLookaheadDelegate.position & 4294967295L);
            long m385minusMKHz9U = Offset.m385minusMKHz9U(mo519localPositionOfS_NoaFU, (4294967295L & Float.floatToRawIntBits(f)) | (Float.floatToRawIntBits((int) (r5 >> 32)) << 32));
            if (!nodeCoordinator.getTail().isAttached) {
                InlineClassHelperKt.throwIllegalStateException("LayoutCoordinate operations are only valid when isAttached is true");
            }
            nodeCoordinator.onCoordinatesUsed$ui();
            NodeCoordinator nodeCoordinator2 = nodeCoordinator.wrappedBy;
            if (nodeCoordinator2 != null) {
                nodeCoordinator = nodeCoordinator2;
            }
            return Offset.m386plusMKHz9U(m385minusMKHz9U, nodeCoordinator.mo519localPositionOfS_NoaFU(layoutCoordinates, 0L));
        }
        LookaheadDelegate lookaheadDelegate2 = ((LookaheadLayoutCoordinates) layoutCoordinates).lookaheadDelegate;
        NodeCoordinator nodeCoordinator3 = lookaheadDelegate2.coordinator;
        nodeCoordinator3.onCoordinatesUsed$ui();
        LookaheadDelegate lookaheadDelegate3 = lookaheadDelegate.coordinator.findCommonAncestor$ui(nodeCoordinator3).getLookaheadDelegate();
        if (lookaheadDelegate3 != null) {
            long m716minusqkQi6aY = IntOffset.m716minusqkQi6aY(IntOffset.m717plusqkQi6aY(lookaheadDelegate2.m557positionIniSbpLlY$ui(lookaheadDelegate3, false), Operation$State.m767roundk4lQ0M(j)), lookaheadDelegate.m557positionIniSbpLlY$ui(lookaheadDelegate3, false));
            return (Float.floatToRawIntBits((int) (m716minusqkQi6aY >> 32)) << 32) | (Float.floatToRawIntBits((int) (m716minusqkQi6aY & 4294967295L)) & 4294967295L);
        }
        LookaheadDelegate rootLookaheadDelegate2 = RulerKt.getRootLookaheadDelegate(lookaheadDelegate2);
        long m717plusqkQi6aY = IntOffset.m717plusqkQi6aY(IntOffset.m717plusqkQi6aY(lookaheadDelegate2.m557positionIniSbpLlY$ui(rootLookaheadDelegate2, false), rootLookaheadDelegate2.position), Operation$State.m767roundk4lQ0M(j));
        LookaheadDelegate rootLookaheadDelegate3 = RulerKt.getRootLookaheadDelegate(lookaheadDelegate);
        long m716minusqkQi6aY2 = IntOffset.m716minusqkQi6aY(m717plusqkQi6aY, IntOffset.m717plusqkQi6aY(lookaheadDelegate.m557positionIniSbpLlY$ui(rootLookaheadDelegate3, false), rootLookaheadDelegate3.position));
        long floatToRawIntBits = Float.floatToRawIntBits((int) (m716minusqkQi6aY2 >> 32));
        long floatToRawIntBits2 = Float.floatToRawIntBits((int) (m716minusqkQi6aY2 & 4294967295L)) & 4294967295L;
        NodeCoordinator nodeCoordinator4 = rootLookaheadDelegate3.coordinator.wrappedBy;
        nodeCoordinator4.getClass();
        NodeCoordinator nodeCoordinator5 = rootLookaheadDelegate2.coordinator.wrappedBy;
        nodeCoordinator5.getClass();
        return nodeCoordinator4.mo519localPositionOfS_NoaFU(nodeCoordinator5, floatToRawIntBits2 | (floatToRawIntBits << 32));
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    /* renamed from: localToRoot-MK-Hz9U */
    public final long mo520localToRootMKHz9U(long j) {
        return this.lookaheadDelegate.coordinator.mo520localToRootMKHz9U(Offset.m386plusMKHz9U(j, m529getLookaheadOffsetF1C5BW0()));
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    /* renamed from: localToScreen-MK-Hz9U */
    public final long mo521localToScreenMKHz9U(long j) {
        return this.lookaheadDelegate.coordinator.mo521localToScreenMKHz9U(Offset.m386plusMKHz9U(0L, m529getLookaheadOffsetF1C5BW0()));
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    /* renamed from: localToWindow-MK-Hz9U */
    public final long mo522localToWindowMKHz9U(long j) {
        return this.lookaheadDelegate.coordinator.mo522localToWindowMKHz9U(Offset.m386plusMKHz9U(j, m529getLookaheadOffsetF1C5BW0()));
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    /* renamed from: screenToLocal-MK-Hz9U */
    public final long mo523screenToLocalMKHz9U(long j) {
        return Offset.m386plusMKHz9U(this.lookaheadDelegate.coordinator.mo523screenToLocalMKHz9U(j), m529getLookaheadOffsetF1C5BW0());
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    /* renamed from: transformFrom-EL8BTi8 */
    public final void mo524transformFromEL8BTi8(LayoutCoordinates layoutCoordinates, float[] fArr) {
        this.lookaheadDelegate.coordinator.mo524transformFromEL8BTi8(layoutCoordinates, fArr);
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    /* renamed from: transformToScreen-58bKbWc */
    public final void mo525transformToScreen58bKbWc(float[] fArr) {
        this.lookaheadDelegate.coordinator.mo525transformToScreen58bKbWc(fArr);
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    /* renamed from: windowToLocal-MK-Hz9U */
    public final long mo526windowToLocalMKHz9U(long j) {
        return Offset.m386plusMKHz9U(this.lookaheadDelegate.coordinator.mo526windowToLocalMKHz9U(j), m529getLookaheadOffsetF1C5BW0());
    }
}
