package androidx.compose.ui.geometry;

import androidx.compose.ui.Modifier;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.UnsignedKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class Offset {
    public final long packedValue;

    public /* synthetic */ Offset(long j) {
        this.packedValue = j;
    }

    /* renamed from: copy-dBAh8RU$default, reason: not valid java name */
    public static long m382copydBAh8RU$default(long j, float f, int i) {
        float intBitsToFloat = (i & 1) != 0 ? Float.intBitsToFloat((int) (j >> 32)) : RecyclerView.DECELERATION_RATE;
        if ((i & 2) != 0) {
            f = Float.intBitsToFloat((int) (j & 4294967295L));
        }
        return (Float.floatToRawIntBits(intBitsToFloat) << 32) | (Float.floatToRawIntBits(f) & 4294967295L);
    }

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m383equalsimpl0(long j, long j2) {
        return j == j2;
    }

    /* renamed from: getDistance-impl, reason: not valid java name */
    public static final float m384getDistanceimpl(long j) {
        float intBitsToFloat = Float.intBitsToFloat((int) (j >> 32));
        float intBitsToFloat2 = Float.intBitsToFloat((int) (j & 4294967295L));
        return (float) Math.sqrt((intBitsToFloat2 * intBitsToFloat2) + (intBitsToFloat * intBitsToFloat));
    }

    /* renamed from: minus-MK-Hz9U, reason: not valid java name */
    public static final long m385minusMKHz9U(long j, long j2) {
        float intBitsToFloat = Float.intBitsToFloat((int) (j >> 32)) - Float.intBitsToFloat((int) (j2 >> 32));
        float intBitsToFloat2 = Float.intBitsToFloat((int) (j & 4294967295L)) - Float.intBitsToFloat((int) (j2 & 4294967295L));
        return (Float.floatToRawIntBits(intBitsToFloat) << 32) | (Float.floatToRawIntBits(intBitsToFloat2) & 4294967295L);
    }

    /* renamed from: plus-MK-Hz9U, reason: not valid java name */
    public static final long m386plusMKHz9U(long j, long j2) {
        float intBitsToFloat = Float.intBitsToFloat((int) (j2 >> 32)) + Float.intBitsToFloat((int) (j >> 32));
        float intBitsToFloat2 = Float.intBitsToFloat((int) (j2 & 4294967295L)) + Float.intBitsToFloat((int) (j & 4294967295L));
        return (Float.floatToRawIntBits(intBitsToFloat2) & 4294967295L) | (Float.floatToRawIntBits(intBitsToFloat) << 32);
    }

    /* renamed from: times-tuRUvjQ, reason: not valid java name */
    public static final long m387timestuRUvjQ(float f, long j) {
        float intBitsToFloat = Float.intBitsToFloat((int) (j >> 32)) * f;
        float intBitsToFloat2 = Float.intBitsToFloat((int) (j & 4294967295L)) * f;
        return (Float.floatToRawIntBits(intBitsToFloat2) & 4294967295L) | (Float.floatToRawIntBits(intBitsToFloat) << 32);
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m388toStringimpl(long j) {
        if ((9223372034707292159L & j) == 9205357640488583168L) {
            return "Offset.Unspecified";
        }
        return "Offset(" + UnsignedKt.toStringAsFixed(Float.intBitsToFloat((int) (j >> 32))) + ", " + UnsignedKt.toStringAsFixed(Float.intBitsToFloat((int) (j & 4294967295L))) + ')';
    }

    public final boolean equals(Object obj) {
        if (obj instanceof Offset) {
            return this.packedValue == ((Offset) obj).packedValue;
        }
        return false;
    }

    public final int hashCode() {
        return Modifier.CC.m(this.packedValue);
    }

    public final String toString() {
        return m388toStringimpl(this.packedValue);
    }
}
