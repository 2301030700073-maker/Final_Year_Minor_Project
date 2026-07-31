package androidx.compose.ui.unit;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class DpSize {
    public final long packedValue;

    /* renamed from: getHeight-D9Ej5fM, reason: not valid java name */
    public static final float m711getHeightD9Ej5fM(long j) {
        return Float.intBitsToFloat((int) (j & 4294967295L));
    }

    /* renamed from: getWidth-D9Ej5fM, reason: not valid java name */
    public static final float m712getWidthD9Ej5fM(long j) {
        return Float.intBitsToFloat((int) (j >> 32));
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m713toStringimpl(long j) {
        if (j == 9205357640488583168L) {
            return "DpSize.Unspecified";
        }
        return ((Object) Dp.m694toStringimpl(m712getWidthD9Ej5fM(j))) + " x " + ((Object) Dp.m694toStringimpl(m711getHeightD9Ej5fM(j)));
    }

    public final boolean equals(Object obj) {
        if (obj instanceof DpSize) {
            return this.packedValue == ((DpSize) obj).packedValue;
        }
        return false;
    }

    public final int hashCode() {
        long j = this.packedValue;
        return (int) (j ^ (j >>> 32));
    }

    public final String toString() {
        return m713toStringimpl(this.packedValue);
    }
}
