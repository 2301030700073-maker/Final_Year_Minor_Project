package androidx.compose.ui.unit;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DpSize {
    public final long packedValue;

    /* renamed from: getHeight-D9Ej5fM, reason: not valid java name */
    public static final float m748getHeightD9Ej5fM(long j) {
        return Float.intBitsToFloat((int) (j & 4294967295L));
    }

    /* renamed from: getWidth-D9Ej5fM, reason: not valid java name */
    public static final float m749getWidthD9Ej5fM(long j) {
        return Float.intBitsToFloat((int) (j >> 32));
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m750toStringimpl(long j) {
        if (j == 9205357640488583168L) {
            return "DpSize.Unspecified";
        }
        return ((Object) Dp.m746toStringimpl(m749getWidthD9Ej5fM(j))) + " x " + ((Object) Dp.m746toStringimpl(m748getHeightD9Ej5fM(j)));
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
        return m750toStringimpl(this.packedValue);
    }
}
