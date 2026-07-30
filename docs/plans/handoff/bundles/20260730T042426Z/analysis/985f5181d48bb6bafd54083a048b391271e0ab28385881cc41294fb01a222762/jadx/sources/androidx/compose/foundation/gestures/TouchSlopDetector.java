package androidx.compose.foundation.gestures;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.input.pointer.PointerInputChange;

/* compiled from: DragGestureDetector.kt */
/* loaded from: classes.dex */
final class TouchSlopDetector {
    private final Orientation orientation;
    private long totalPositionChange = Offset.Companion.m1179getZeroF1C5BW0();

    public TouchSlopDetector(Orientation orientation) {
        this.orientation = orientation;
    }

    /* renamed from: mainAxis-k-4lQ0M, reason: not valid java name */
    public final float m246mainAxisk4lQ0M(long j) {
        return this.orientation == Orientation.Horizontal ? Offset.m1167getXimpl(j) : Offset.m1168getYimpl(j);
    }

    /* renamed from: crossAxis-k-4lQ0M, reason: not valid java name */
    public final float m245crossAxisk4lQ0M(long j) {
        return this.orientation == Orientation.Horizontal ? Offset.m1168getYimpl(j) : Offset.m1167getXimpl(j);
    }

    /* renamed from: addPointerInputChange-GcwITfU, reason: not valid java name */
    public final Offset m244addPointerInputChangeGcwITfU(PointerInputChange pointerInputChange, float f) {
        float abs;
        long m1172plusMKHz9U = Offset.m1172plusMKHz9U(this.totalPositionChange, Offset.m1171minusMKHz9U(pointerInputChange.m1690getPositionF1C5BW0(), pointerInputChange.m1691getPreviousPositionF1C5BW0()));
        this.totalPositionChange = m1172plusMKHz9U;
        if (this.orientation == null) {
            abs = Offset.m1165getDistanceimpl(m1172plusMKHz9U);
        } else {
            abs = Math.abs(m246mainAxisk4lQ0M(m1172plusMKHz9U));
        }
        if (abs >= f) {
            return Offset.m1158boximpl(m243calculatePostSlopOffsettuRUvjQ(f));
        }
        return null;
    }

    public final void reset() {
        this.totalPositionChange = Offset.Companion.m1179getZeroF1C5BW0();
    }

    /* renamed from: calculatePostSlopOffset-tuRUvjQ, reason: not valid java name */
    private final long m243calculatePostSlopOffsettuRUvjQ(float f) {
        if (this.orientation == null) {
            long j = this.totalPositionChange;
            return Offset.m1171minusMKHz9U(this.totalPositionChange, Offset.m1173timestuRUvjQ(Offset.m1162divtuRUvjQ(j, Offset.m1165getDistanceimpl(j)), f));
        }
        float m246mainAxisk4lQ0M = m246mainAxisk4lQ0M(this.totalPositionChange) - (Math.signum(m246mainAxisk4lQ0M(this.totalPositionChange)) * f);
        float m245crossAxisk4lQ0M = m245crossAxisk4lQ0M(this.totalPositionChange);
        if (this.orientation == Orientation.Horizontal) {
            return OffsetKt.Offset(m246mainAxisk4lQ0M, m245crossAxisk4lQ0M);
        }
        return OffsetKt.Offset(m245crossAxisk4lQ0M, m246mainAxisk4lQ0M);
    }
}
