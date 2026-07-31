package kotlin.ranges;

import androidx.recyclerview.widget.RecyclerView;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ClosedFloatRange {
    public final float _endInclusive;

    public ClosedFloatRange(float f) {
        this._endInclusive = f;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean lessThanOrEquals(Comparable comparable, Comparable comparable2) {
        return ((Number) comparable).floatValue() <= ((Number) comparable2).floatValue();
    }

    public final boolean equals(Object obj) {
        if (obj instanceof ClosedFloatRange) {
            return (isEmpty() && ((ClosedFloatRange) obj).isEmpty()) || this._endInclusive == ((ClosedFloatRange) obj)._endInclusive;
        }
        return false;
    }

    public final int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return Float.floatToIntBits(this._endInclusive) + (Float.floatToIntBits(RecyclerView.DECELERATION_RATE) * 31);
    }

    public final boolean isEmpty() {
        return RecyclerView.DECELERATION_RATE > this._endInclusive;
    }

    public final String toString() {
        return "0.0.." + this._endInclusive;
    }
}
