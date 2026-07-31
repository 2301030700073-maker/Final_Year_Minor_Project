package kotlin.ranges;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ClosedFloatRange {
    public final float _endInclusive;

    public ClosedFloatRange(float f) {
        this._endInclusive = f;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof ClosedFloatRange)) {
            return false;
        }
        float f = this._endInclusive;
        return (0.0f > f && 0.0f > ((ClosedFloatRange) obj)._endInclusive) || f == ((ClosedFloatRange) obj)._endInclusive;
    }

    public final int hashCode() {
        float f = this._endInclusive;
        if (0.0f > f) {
            return -1;
        }
        return Float.floatToIntBits(f) + (Float.floatToIntBits(0.0f) * 31);
    }

    public final String toString() {
        return "0.0.." + this._endInclusive;
    }
}
