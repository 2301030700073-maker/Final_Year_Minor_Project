package kotlin.ranges;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ClosedFloatRange {
    public final float _endInclusive;

    public ClosedFloatRange(float f) {
        this._endInclusive = f;
    }

    public static boolean lessThanOrEquals(Float f, Float f2) {
        return f.floatValue() <= f2.floatValue();
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
