package androidx.compose.ui.layout;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.node.LookaheadDelegate;
import androidx.compose.ui.node.NodeCoordinator;
import androidx.compose.ui.unit.IntOffset;
import okio.Options;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class LookaheadLayoutCoordinates implements LayoutCoordinates {
    public final LookaheadDelegate lookaheadDelegate;

    public LookaheadLayoutCoordinates(LookaheadDelegate lookaheadDelegate) {
        this.lookaheadDelegate = lookaheadDelegate;
    }

    /* renamed from: getLookaheadOffset-F1C5BW0, reason: not valid java name */
    public final long m302getLookaheadOffsetF1C5BW0() {
        LookaheadDelegate lookaheadDelegate = this.lookaheadDelegate;
        LookaheadDelegate rootLookaheadDelegate = RulerKt.getRootLookaheadDelegate(lookaheadDelegate);
        return Offset.m199minusMKHz9U(mo298localPositionOfS_NoaFU(rootLookaheadDelegate.lookaheadLayoutCoordinates, 0L), lookaheadDelegate.coordinator.mo298localPositionOfS_NoaFU(rootLookaheadDelegate.coordinator, 0L));
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    public final LayoutCoordinates getParentLayoutCoordinates() {
        LookaheadDelegate lookaheadDelegate;
        if (!isAttached()) {
            InlineClassHelperKt.throwIllegalStateException("LayoutCoordinate operations are only valid when isAttached is true");
        }
        NodeCoordinator nodeCoordinator = this.lookaheadDelegate.coordinator.layoutNode.nodes.outerCoordinator.wrappedBy;
        if (nodeCoordinator == null || (lookaheadDelegate = nodeCoordinator.getLookaheadDelegate()) == null) {
            return null;
        }
        return lookaheadDelegate.lookaheadLayoutCoordinates;
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    /* renamed from: getSize-YbymL2g */
    public final long mo296getSizeYbymL2g() {
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
    public final long mo297localPositionOfR5De75A(LayoutCoordinates layoutCoordinates, long j) {
        return mo298localPositionOfS_NoaFU(layoutCoordinates, j);
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    /* renamed from: localPositionOf-S_NoaFU */
    public final long mo298localPositionOfS_NoaFU(LayoutCoordinates layoutCoordinates, long j) {
        boolean z = layoutCoordinates instanceof LookaheadLayoutCoordinates;
        LookaheadDelegate lookaheadDelegate = this.lookaheadDelegate;
        if (!z) {
            LookaheadDelegate rootLookaheadDelegate = RulerKt.getRootLookaheadDelegate(lookaheadDelegate);
            NodeCoordinator nodeCoordinator = rootLookaheadDelegate.coordinator;
            long mo298localPositionOfS_NoaFU = mo298localPositionOfS_NoaFU(rootLookaheadDelegate.lookaheadLayoutCoordinates, j);
            float f = (int) (rootLookaheadDelegate.position & 4294967295L);
            long m199minusMKHz9U = Offset.m199minusMKHz9U(mo298localPositionOfS_NoaFU, (4294967295L & Float.floatToRawIntBits(f)) | (Float.floatToRawIntBits((int) (r5 >> 32)) << 32));
            if (!nodeCoordinator.getTail().isAttached) {
                InlineClassHelperKt.throwIllegalStateException("LayoutCoordinate operations are only valid when isAttached is true");
            }
            nodeCoordinator.onCoordinatesUsed$ui();
            NodeCoordinator nodeCoordinator2 = nodeCoordinator.wrappedBy;
            if (nodeCoordinator2 != null) {
                nodeCoordinator = nodeCoordinator2;
            }
            return Offset.m200plusMKHz9U(m199minusMKHz9U, nodeCoordinator.mo298localPositionOfS_NoaFU(layoutCoordinates, 0L));
        }
        LookaheadDelegate lookaheadDelegate2 = ((LookaheadLayoutCoordinates) layoutCoordinates).lookaheadDelegate;
        NodeCoordinator nodeCoordinator3 = lookaheadDelegate2.coordinator;
        nodeCoordinator3.onCoordinatesUsed$ui();
        LookaheadDelegate lookaheadDelegate3 = lookaheadDelegate.coordinator.findCommonAncestor$ui(nodeCoordinator3).getLookaheadDelegate();
        if (lookaheadDelegate3 != null) {
            long m446minusqkQi6aY = IntOffset.m446minusqkQi6aY(IntOffset.m447plusqkQi6aY(lookaheadDelegate2.m330positionIniSbpLlY$ui(lookaheadDelegate3, false), Options.Companion.m728roundk4lQ0M(j)), lookaheadDelegate.m330positionIniSbpLlY$ui(lookaheadDelegate3, false));
            return (Float.floatToRawIntBits((int) (m446minusqkQi6aY >> 32)) << 32) | (Float.floatToRawIntBits((int) (m446minusqkQi6aY & 4294967295L)) & 4294967295L);
        }
        LookaheadDelegate rootLookaheadDelegate2 = RulerKt.getRootLookaheadDelegate(lookaheadDelegate2);
        long m447plusqkQi6aY = IntOffset.m447plusqkQi6aY(IntOffset.m447plusqkQi6aY(lookaheadDelegate2.m330positionIniSbpLlY$ui(rootLookaheadDelegate2, false), rootLookaheadDelegate2.position), Options.Companion.m728roundk4lQ0M(j));
        LookaheadDelegate rootLookaheadDelegate3 = RulerKt.getRootLookaheadDelegate(lookaheadDelegate);
        long m446minusqkQi6aY2 = IntOffset.m446minusqkQi6aY(m447plusqkQi6aY, IntOffset.m447plusqkQi6aY(lookaheadDelegate.m330positionIniSbpLlY$ui(rootLookaheadDelegate3, false), rootLookaheadDelegate3.position));
        long floatToRawIntBits = Float.floatToRawIntBits((int) (m446minusqkQi6aY2 >> 32));
        long floatToRawIntBits2 = Float.floatToRawIntBits((int) (m446minusqkQi6aY2 & 4294967295L)) & 4294967295L;
        NodeCoordinator nodeCoordinator4 = rootLookaheadDelegate3.coordinator.wrappedBy;
        nodeCoordinator4.getClass();
        NodeCoordinator nodeCoordinator5 = rootLookaheadDelegate2.coordinator.wrappedBy;
        nodeCoordinator5.getClass();
        return nodeCoordinator4.mo298localPositionOfS_NoaFU(nodeCoordinator5, floatToRawIntBits2 | (floatToRawIntBits << 32));
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    /* renamed from: localToScreen-MK-Hz9U */
    public final long mo299localToScreenMKHz9U(long j) {
        return this.lookaheadDelegate.coordinator.mo299localToScreenMKHz9U(Offset.m200plusMKHz9U(0L, m302getLookaheadOffsetF1C5BW0()));
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    /* renamed from: localToWindow-MK-Hz9U */
    public final long mo300localToWindowMKHz9U(long j) {
        return this.lookaheadDelegate.coordinator.mo300localToWindowMKHz9U(Offset.m200plusMKHz9U(j, m302getLookaheadOffsetF1C5BW0()));
    }
}
