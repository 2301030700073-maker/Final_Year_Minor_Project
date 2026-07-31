package androidx.compose.ui.geometry;

import androidx.recyclerview.widget.RecyclerView;
import kotlin.UnsignedKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class Size {
    public final long packedValue;

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m394equalsimpl0(long j, long j2) {
        return j == j2;
    }

    /* renamed from: getHeight-impl, reason: not valid java name */
    public static final float m395getHeightimpl(long j) {
        return Float.intBitsToFloat((int) (j & 4294967295L));
    }

    /* renamed from: getMinDimension-impl, reason: not valid java name */
    public static final float m396getMinDimensionimpl(long j) {
        return Math.min(Float.intBitsToFloat((int) ((j >> 32) & 2147483647L)), Float.intBitsToFloat((int) (j & 2147483647L)));
    }

    /* renamed from: getWidth-impl, reason: not valid java name */
    public static final float m397getWidthimpl(long j) {
        return Float.intBitsToFloat((int) (j >> 32));
    }

    /* renamed from: isEmpty-impl, reason: not valid java name */
    public static final boolean m398isEmptyimpl(long j) {
        return (j == 9205357640488583168L) | (Float.intBitsToFloat((int) (j >> 32)) <= RecyclerView.DECELERATION_RATE) | (Float.intBitsToFloat((int) (j & 4294967295L)) <= RecyclerView.DECELERATION_RATE);
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m399toStringimpl(long j) {
        if (j == 9205357640488583168L) {
            return "Size.Unspecified";
        }
        return "Size(" + UnsignedKt.toStringAsFixed(Float.intBitsToFloat((int) (j >> 32))) + ", " + UnsignedKt.toStringAsFixed(Float.intBitsToFloat((int) (j & 4294967295L))) + ')';
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
        return m399toStringimpl(this.packedValue);
    }
}
