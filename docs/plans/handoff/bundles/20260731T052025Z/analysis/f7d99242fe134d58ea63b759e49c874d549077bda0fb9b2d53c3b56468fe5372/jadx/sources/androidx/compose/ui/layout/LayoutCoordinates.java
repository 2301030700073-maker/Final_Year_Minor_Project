package androidx.compose.ui.layout;

import androidx.compose.ui.geometry.Rect;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface LayoutCoordinates {
    LayoutCoordinates getParentLayoutCoordinates();

    /* renamed from: getSize-YbymL2g, reason: not valid java name */
    long mo576getSizeYbymL2g();

    boolean isAttached$1();

    Rect localBoundingBoxOf(LayoutCoordinates layoutCoordinates, boolean z);

    /* renamed from: localPositionOf-R5De75A, reason: not valid java name */
    long mo577localPositionOfR5De75A(LayoutCoordinates layoutCoordinates, long j);

    /* renamed from: localPositionOf-S_NoaFU, reason: not valid java name */
    long mo578localPositionOfS_NoaFU(LayoutCoordinates layoutCoordinates, long j);

    /* renamed from: localToRoot-MK-Hz9U, reason: not valid java name */
    long mo579localToRootMKHz9U(long j);

    /* renamed from: localToScreen-MK-Hz9U, reason: not valid java name */
    long mo580localToScreenMKHz9U(long j);

    /* renamed from: localToWindow-MK-Hz9U, reason: not valid java name */
    long mo581localToWindowMKHz9U(long j);

    /* renamed from: screenToLocal-MK-Hz9U, reason: not valid java name */
    long mo582screenToLocalMKHz9U(long j);

    /* renamed from: transformFrom-EL8BTi8, reason: not valid java name */
    void mo583transformFromEL8BTi8(LayoutCoordinates layoutCoordinates, float[] fArr);

    /* renamed from: transformToScreen-58bKbWc, reason: not valid java name */
    void mo584transformToScreen58bKbWc(float[] fArr);

    /* renamed from: windowToLocal-MK-Hz9U, reason: not valid java name */
    long mo585windowToLocalMKHz9U(long j);
}
