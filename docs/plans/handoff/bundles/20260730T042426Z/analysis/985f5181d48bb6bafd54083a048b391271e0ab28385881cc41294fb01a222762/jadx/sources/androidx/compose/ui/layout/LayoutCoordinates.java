package androidx.compose.ui.layout;

import androidx.compose.ui.geometry.Rect;

/* compiled from: LayoutCoordinates.kt */
/* loaded from: classes.dex */
public interface LayoutCoordinates {
    LayoutCoordinates getParentLayoutCoordinates();

    /* renamed from: getSize-YbymL2g, reason: not valid java name */
    long mo1753getSizeYbymL2g();

    boolean isAttached();

    Rect localBoundingBoxOf(LayoutCoordinates layoutCoordinates, boolean z);

    /* renamed from: localPositionOf-R5De75A, reason: not valid java name */
    long mo1754localPositionOfR5De75A(LayoutCoordinates layoutCoordinates, long j);

    /* renamed from: localPositionOf-S_NoaFU, reason: not valid java name */
    long mo1755localPositionOfS_NoaFU(LayoutCoordinates layoutCoordinates, long j, boolean z);

    /* renamed from: localToRoot-MK-Hz9U, reason: not valid java name */
    long mo1756localToRootMKHz9U(long j);

    /* renamed from: localToWindow-MK-Hz9U, reason: not valid java name */
    long mo1757localToWindowMKHz9U(long j);

    /* renamed from: screenToLocal-MK-Hz9U, reason: not valid java name */
    long mo1758screenToLocalMKHz9U(long j);

    /* renamed from: transformFrom-EL8BTi8, reason: not valid java name */
    void mo1759transformFromEL8BTi8(LayoutCoordinates layoutCoordinates, float[] fArr);

    /* renamed from: transformToScreen-58bKbWc, reason: not valid java name */
    void mo1760transformToScreen58bKbWc(float[] fArr);

    /* renamed from: windowToLocal-MK-Hz9U, reason: not valid java name */
    long mo1761windowToLocalMKHz9U(long j);

    /* compiled from: LayoutCoordinates.kt */
    /* renamed from: androidx.compose.ui.layout.LayoutCoordinates$-CC, reason: invalid class name */
    public abstract /* synthetic */ class CC {
        public static /* synthetic */ Rect localBoundingBoxOf$default(LayoutCoordinates layoutCoordinates, LayoutCoordinates layoutCoordinates2, boolean z, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: localBoundingBoxOf");
            }
            if ((i & 2) != 0) {
                z = true;
            }
            return layoutCoordinates.localBoundingBoxOf(layoutCoordinates2, z);
        }
    }
}
