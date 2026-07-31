package androidx.compose.ui.unit;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class DpOffset {
    public final long packedValue;

    public final boolean equals(Object obj) {
        if (obj instanceof DpOffset) {
            return this.packedValue == ((DpOffset) obj).packedValue;
        }
        return false;
    }

    public final int hashCode() {
        long j = this.packedValue;
        return (int) (j ^ (j >>> 32));
    }

    public final String toString() {
        long j = this.packedValue;
        if (j == 9205357640488583168L) {
            return "DpOffset.Unspecified";
        }
        return "(" + ((Object) Dp.m444toStringimpl(Float.intBitsToFloat((int) (j >> 32)))) + ", " + ((Object) Dp.m444toStringimpl(Float.intBitsToFloat((int) (4294967295L & j)))) + ')';
    }
}
