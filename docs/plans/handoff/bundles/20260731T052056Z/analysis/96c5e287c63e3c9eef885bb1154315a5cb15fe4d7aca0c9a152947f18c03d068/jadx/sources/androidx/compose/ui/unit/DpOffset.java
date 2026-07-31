package androidx.compose.ui.unit;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class DpOffset {
    public final long packedValue;

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m710toStringimpl(long j) {
        if (j == 9205357640488583168L) {
            return "DpOffset.Unspecified";
        }
        return "(" + ((Object) Dp.m694toStringimpl(Float.intBitsToFloat((int) (j >> 32)))) + ", " + ((Object) Dp.m694toStringimpl(Float.intBitsToFloat((int) (j & 4294967295L)))) + ')';
    }

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
        return m710toStringimpl(this.packedValue);
    }
}
