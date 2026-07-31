package androidx.compose.ui.geometry;

import androidx.core.os.BundleKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class Offset {
    public final long packedValue;

    /* renamed from: copy-dBAh8RU$default, reason: not valid java name */
    public static long m195copydBAh8RU$default(int i, long j) {
        return (Float.floatToRawIntBits((i & 1) != 0 ? Float.intBitsToFloat((int) (j >> 32)) : 0.0f) << 32) | (Float.floatToRawIntBits((i & 2) != 0 ? Float.intBitsToFloat((int) (j & 4294967295L)) : 0.0f) & 4294967295L);
    }

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m196equalsimpl0(long j, long j2) {
        return j == j2;
    }

    /* renamed from: getDistance-impl, reason: not valid java name */
    public static final float m197getDistanceimpl(long j) {
        float intBitsToFloat = Float.intBitsToFloat((int) (j >> 32));
        float intBitsToFloat2 = Float.intBitsToFloat((int) (j & 4294967295L));
        return (float) Math.sqrt((intBitsToFloat2 * intBitsToFloat2) + (intBitsToFloat * intBitsToFloat));
    }

    /* renamed from: hashCode-impl, reason: not valid java name */
    public static int m198hashCodeimpl(long j) {
        return (int) (j ^ (j >>> 32));
    }

    /* renamed from: minus-MK-Hz9U, reason: not valid java name */
    public static final long m199minusMKHz9U(long j, long j2) {
        float intBitsToFloat = Float.intBitsToFloat((int) (j >> 32)) - Float.intBitsToFloat((int) (j2 >> 32));
        float intBitsToFloat2 = Float.intBitsToFloat((int) (j & 4294967295L)) - Float.intBitsToFloat((int) (j2 & 4294967295L));
        return (Float.floatToRawIntBits(intBitsToFloat) << 32) | (Float.floatToRawIntBits(intBitsToFloat2) & 4294967295L);
    }

    /* renamed from: plus-MK-Hz9U, reason: not valid java name */
    public static final long m200plusMKHz9U(long j, long j2) {
        float intBitsToFloat = Float.intBitsToFloat((int) (j2 >> 32)) + Float.intBitsToFloat((int) (j >> 32));
        float intBitsToFloat2 = Float.intBitsToFloat((int) (j2 & 4294967295L)) + Float.intBitsToFloat((int) (j & 4294967295L));
        return (Float.floatToRawIntBits(intBitsToFloat2) & 4294967295L) | (Float.floatToRawIntBits(intBitsToFloat) << 32);
    }

    /* renamed from: times-tuRUvjQ, reason: not valid java name */
    public static final long m201timestuRUvjQ(long j, float f) {
        float intBitsToFloat = Float.intBitsToFloat((int) (j >> 32)) * f;
        float intBitsToFloat2 = Float.intBitsToFloat((int) (j & 4294967295L)) * f;
        return (Float.floatToRawIntBits(intBitsToFloat) << 32) | (Float.floatToRawIntBits(intBitsToFloat2) & 4294967295L);
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m202toStringimpl(long j) {
        if ((9223372034707292159L & j) == 9205357640488583168L) {
            return "Offset.Unspecified";
        }
        return "Offset(" + BundleKt.toStringAsFixed(Float.intBitsToFloat((int) (j >> 32))) + ", " + BundleKt.toStringAsFixed(Float.intBitsToFloat((int) (j & 4294967295L))) + ')';
    }

    public final boolean equals(Object obj) {
        if (obj instanceof Offset) {
            return this.packedValue == ((Offset) obj).packedValue;
        }
        return false;
    }

    public final int hashCode() {
        return m198hashCodeimpl(this.packedValue);
    }

    public final String toString() {
        return m202toStringimpl(this.packedValue);
    }
}
