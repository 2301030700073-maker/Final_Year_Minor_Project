package androidx.compose.ui.geometry;

import androidx.core.os.BundleKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class Size {
    public final long packedValue;

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m206equalsimpl0(long j, long j2) {
        return j == j2;
    }

    /* renamed from: getMinDimension-impl, reason: not valid java name */
    public static final float m207getMinDimensionimpl(long j) {
        return Math.min(Float.intBitsToFloat((int) ((j >> 32) & 2147483647L)), Float.intBitsToFloat((int) (j & 2147483647L)));
    }

    /* renamed from: isEmpty-impl, reason: not valid java name */
    public static final boolean m208isEmptyimpl(long j) {
        return (j == 9205357640488583168L) | (Float.intBitsToFloat((int) (j >> 32)) <= 0.0f) | (Float.intBitsToFloat((int) (j & 4294967295L)) <= 0.0f);
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m209toStringimpl(long j) {
        if (j == 9205357640488583168L) {
            return "Size.Unspecified";
        }
        return "Size(" + BundleKt.toStringAsFixed(Float.intBitsToFloat((int) (j >> 32))) + ", " + BundleKt.toStringAsFixed(Float.intBitsToFloat((int) (j & 4294967295L))) + ')';
    }

    public final boolean equals(Object obj) {
        if (obj instanceof Size) {
            return this.packedValue == ((Size) obj).packedValue;
        }
        return false;
    }

    public final int hashCode() {
        long j = this.packedValue;
        return (int) (j ^ (j >>> 32));
    }

    public final String toString() {
        return m209toStringimpl(this.packedValue);
    }
}
