package androidx.compose.ui.unit;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DpOffset {
    public final long packedValue;

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m747toStringimpl(long j) {
        if (j == 9205357640488583168L) {
            return "DpOffset.Unspecified";
        }
        return "(" + ((Object) Dp.m746toStringimpl(Float.intBitsToFloat((int) (j >> 32)))) + ", " + ((Object) Dp.m746toStringimpl(Float.intBitsToFloat((int) (j & 4294967295L)))) + ')';
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
        return m747toStringimpl(this.packedValue);
    }
}
