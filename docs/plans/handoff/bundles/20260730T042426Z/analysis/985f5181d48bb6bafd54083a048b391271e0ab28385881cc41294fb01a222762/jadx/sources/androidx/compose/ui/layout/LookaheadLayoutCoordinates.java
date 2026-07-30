package androidx.compose.ui.layout;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.node.LookaheadDelegate;
import androidx.compose.ui.node.NodeCoordinator;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.unit.IntSizeKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: LookaheadLayoutCoordinates.kt */
/* loaded from: classes.dex */
public final class LookaheadLayoutCoordinates implements LayoutCoordinates {
    private final LookaheadDelegate lookaheadDelegate;

    public LookaheadLayoutCoordinates(LookaheadDelegate lookaheadDelegate) {
        this.lookaheadDelegate = lookaheadDelegate;
    }

    public final NodeCoordinator getCoordinator() {
        return this.lookaheadDelegate.getCoordinator();
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    /* renamed from: getSize-YbymL2g */
    public long mo1753getSizeYbymL2g() {
        LookaheadDelegate lookaheadDelegate = this.lookaheadDelegate;
        return IntSizeKt.IntSize(lookaheadDelegate.getWidth(), lookaheadDelegate.getHeight());
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    public LayoutCoordinates getParentLayoutCoordinates() {
        LookaheadDelegate lookaheadDelegate;
        if (!isAttached()) {
            InlineClassHelperKt.throwIllegalStateException("LayoutCoordinate operations are only valid when isAttached is true");
        }
        NodeCoordinator wrappedBy$ui_release = getCoordinator().getLayoutNode().getOuterCoordinator$ui_release().getWrappedBy$ui_release();
        if (wrappedBy$ui_release == null || (lookaheadDelegate = wrappedBy$ui_release.getLookaheadDelegate()) == null) {
            return null;
        }
        return lookaheadDelegate.getCoordinates();
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    public boolean isAttached() {
        return getCoordinator().isAttached();
    }

    /* renamed from: getLookaheadOffset-F1C5BW0, reason: not valid java name */
    private final long m1763getLookaheadOffsetF1C5BW0() {
        LookaheadDelegate rootLookaheadDelegate = LookaheadLayoutCoordinatesKt.getRootLookaheadDelegate(this.lookaheadDelegate);
        LayoutCoordinates coordinates = rootLookaheadDelegate.getCoordinates();
        Offset.Companion companion = Offset.Companion;
        return Offset.m1171minusMKHz9U(mo1754localPositionOfR5De75A(coordinates, companion.m1179getZeroF1C5BW0()), getCoordinator().mo1754localPositionOfR5De75A(rootLookaheadDelegate.getCoordinator(), companion.m1179getZeroF1C5BW0()));
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    /* renamed from: screenToLocal-MK-Hz9U */
    public long mo1758screenToLocalMKHz9U(long j) {
        return Offset.m1172plusMKHz9U(getCoordinator().mo1758screenToLocalMKHz9U(j), m1763getLookaheadOffsetF1C5BW0());
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    /* renamed from: windowToLocal-MK-Hz9U */
    public long mo1761windowToLocalMKHz9U(long j) {
        return Offset.m1172plusMKHz9U(getCoordinator().mo1761windowToLocalMKHz9U(j), m1763getLookaheadOffsetF1C5BW0());
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    /* renamed from: localToWindow-MK-Hz9U */
    public long mo1757localToWindowMKHz9U(long j) {
        return getCoordinator().mo1757localToWindowMKHz9U(Offset.m1172plusMKHz9U(j, m1763getLookaheadOffsetF1C5BW0()));
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    /* renamed from: localToRoot-MK-Hz9U */
    public long mo1756localToRootMKHz9U(long j) {
        return getCoordinator().mo1756localToRootMKHz9U(Offset.m1172plusMKHz9U(j, m1763getLookaheadOffsetF1C5BW0()));
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    /* renamed from: localPositionOf-R5De75A */
    public long mo1754localPositionOfR5De75A(LayoutCoordinates layoutCoordinates, long j) {
        return mo1755localPositionOfS_NoaFU(layoutCoordinates, j, true);
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    /* renamed from: localPositionOf-S_NoaFU */
    public long mo1755localPositionOfS_NoaFU(LayoutCoordinates layoutCoordinates, long j, boolean z) {
        if (layoutCoordinates instanceof LookaheadLayoutCoordinates) {
            LookaheadDelegate lookaheadDelegate = ((LookaheadLayoutCoordinates) layoutCoordinates).lookaheadDelegate;
            lookaheadDelegate.getCoordinator().onCoordinatesUsed$ui_release();
            LookaheadDelegate lookaheadDelegate2 = getCoordinator().findCommonAncestor$ui_release(lookaheadDelegate.getCoordinator()).getLookaheadDelegate();
            if (lookaheadDelegate2 != null) {
                long m2468minusqkQi6aY = IntOffset.m2468minusqkQi6aY(IntOffset.m2469plusqkQi6aY(lookaheadDelegate.m1856positionIniSbpLlY$ui_release(lookaheadDelegate2, !z), IntOffsetKt.m2475roundk4lQ0M(j)), this.lookaheadDelegate.m1856positionIniSbpLlY$ui_release(lookaheadDelegate2, !z));
                return OffsetKt.Offset(IntOffset.m2465getXimpl(m2468minusqkQi6aY), IntOffset.m2466getYimpl(m2468minusqkQi6aY));
            }
            LookaheadDelegate rootLookaheadDelegate = LookaheadLayoutCoordinatesKt.getRootLookaheadDelegate(lookaheadDelegate);
            long m2469plusqkQi6aY = IntOffset.m2469plusqkQi6aY(IntOffset.m2469plusqkQi6aY(lookaheadDelegate.m1856positionIniSbpLlY$ui_release(rootLookaheadDelegate, !z), rootLookaheadDelegate.mo1850getPositionnOccac()), IntOffsetKt.m2475roundk4lQ0M(j));
            LookaheadDelegate rootLookaheadDelegate2 = LookaheadLayoutCoordinatesKt.getRootLookaheadDelegate(this.lookaheadDelegate);
            long m2468minusqkQi6aY2 = IntOffset.m2468minusqkQi6aY(m2469plusqkQi6aY, IntOffset.m2469plusqkQi6aY(this.lookaheadDelegate.m1856positionIniSbpLlY$ui_release(rootLookaheadDelegate2, !z), rootLookaheadDelegate2.mo1850getPositionnOccac()));
            long Offset = OffsetKt.Offset(IntOffset.m2465getXimpl(m2468minusqkQi6aY2), IntOffset.m2466getYimpl(m2468minusqkQi6aY2));
            NodeCoordinator wrappedBy$ui_release = rootLookaheadDelegate2.getCoordinator().getWrappedBy$ui_release();
            Intrinsics.checkNotNull(wrappedBy$ui_release);
            NodeCoordinator wrappedBy$ui_release2 = rootLookaheadDelegate.getCoordinator().getWrappedBy$ui_release();
            Intrinsics.checkNotNull(wrappedBy$ui_release2);
            return wrappedBy$ui_release.mo1755localPositionOfS_NoaFU(wrappedBy$ui_release2, Offset, z);
        }
        LookaheadDelegate rootLookaheadDelegate3 = LookaheadLayoutCoordinatesKt.getRootLookaheadDelegate(this.lookaheadDelegate);
        return Offset.m1172plusMKHz9U(mo1755localPositionOfS_NoaFU(rootLookaheadDelegate3.getLookaheadLayoutCoordinates(), j, z), rootLookaheadDelegate3.getCoordinator().getCoordinates().mo1755localPositionOfS_NoaFU(layoutCoordinates, Offset.Companion.m1179getZeroF1C5BW0(), z));
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    public Rect localBoundingBoxOf(LayoutCoordinates layoutCoordinates, boolean z) {
        return getCoordinator().localBoundingBoxOf(layoutCoordinates, z);
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    /* renamed from: transformFrom-EL8BTi8 */
    public void mo1759transformFromEL8BTi8(LayoutCoordinates layoutCoordinates, float[] fArr) {
        getCoordinator().mo1759transformFromEL8BTi8(layoutCoordinates, fArr);
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    /* renamed from: transformToScreen-58bKbWc */
    public void mo1760transformToScreen58bKbWc(float[] fArr) {
        getCoordinator().mo1760transformToScreen58bKbWc(fArr);
    }
}
