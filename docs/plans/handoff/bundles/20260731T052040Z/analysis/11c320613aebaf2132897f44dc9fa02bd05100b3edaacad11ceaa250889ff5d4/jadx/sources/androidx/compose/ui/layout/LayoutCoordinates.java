package androidx.compose.ui.layout;

import androidx.compose.ui.geometry.Rect;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public interface LayoutCoordinates {
    LayoutCoordinates getParentLayoutCoordinates();

    /* renamed from: getSize-YbymL2g, reason: not valid java name */
    long mo296getSizeYbymL2g();

    boolean isAttached();

    Rect localBoundingBoxOf(LayoutCoordinates layoutCoordinates, boolean z);

    /* renamed from: localPositionOf-R5De75A, reason: not valid java name */
    long mo297localPositionOfR5De75A(LayoutCoordinates layoutCoordinates, long j);

    /* renamed from: localPositionOf-S_NoaFU, reason: not valid java name */
    long mo298localPositionOfS_NoaFU(LayoutCoordinates layoutCoordinates, long j);

    /* renamed from: localToScreen-MK-Hz9U, reason: not valid java name */
    long mo299localToScreenMKHz9U(long j);

    /* renamed from: localToWindow-MK-Hz9U, reason: not valid java name */
    long mo300localToWindowMKHz9U(long j);
}
