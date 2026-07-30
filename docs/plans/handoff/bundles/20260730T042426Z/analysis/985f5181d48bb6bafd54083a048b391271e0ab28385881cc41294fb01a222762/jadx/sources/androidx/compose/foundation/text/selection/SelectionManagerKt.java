package androidx.compose.foundation.text.selection;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.RectKt;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.LayoutCoordinatesKt;

/* compiled from: SelectionManager.kt */
/* loaded from: classes.dex */
public abstract class SelectionManagerKt {
    private static final Rect invertedInfiniteRect = new Rect(Float.POSITIVE_INFINITY, Float.POSITIVE_INFINITY, Float.NEGATIVE_INFINITY, Float.NEGATIVE_INFINITY);

    public static final Rect visibleBounds(LayoutCoordinates layoutCoordinates) {
        Rect boundsInWindow = LayoutCoordinatesKt.boundsInWindow(layoutCoordinates);
        return RectKt.m1190Rect0a9Yr6o(layoutCoordinates.mo1761windowToLocalMKHz9U(boundsInWindow.m1188getTopLeftF1C5BW0()), layoutCoordinates.mo1761windowToLocalMKHz9U(boundsInWindow.m1185getBottomRightF1C5BW0()));
    }

    /* renamed from: containsInclusive-Uv8p0NA, reason: not valid java name */
    public static final boolean m555containsInclusiveUv8p0NA(Rect rect, long j) {
        float left = rect.getLeft();
        float right = rect.getRight();
        float m1167getXimpl = Offset.m1167getXimpl(j);
        if (left <= m1167getXimpl && m1167getXimpl <= right) {
            float top = rect.getTop();
            float bottom = rect.getBottom();
            float m1168getYimpl = Offset.m1168getYimpl(j);
            if (top <= m1168getYimpl && m1168getYimpl <= bottom) {
                return true;
            }
        }
        return false;
    }
}
