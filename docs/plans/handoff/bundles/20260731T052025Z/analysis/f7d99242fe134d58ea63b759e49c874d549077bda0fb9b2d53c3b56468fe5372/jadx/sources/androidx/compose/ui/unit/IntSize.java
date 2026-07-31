package androidx.compose.ui.unit;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class IntSize {
    public final long packedValue;

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m768equalsimpl0(long j, long j2) {
        return j == j2;
    }

    /* renamed from: hashCode-impl, reason: not valid java name */
    public static int m769hashCodeimpl(long j) {
        return (int) (j ^ (j >>> 32));
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m770toStringimpl(long j) {
        return ((int) (j >> 32)) + " x " + ((int) (j & 4294967295L));
    }

    public final boolean equals(Object obj) {
        if (obj instanceof IntSize) {
            return this.packedValue == ((IntSize) obj).packedValue;
        }
        return false;
    }

    public final int hashCode() {
        return m769hashCodeimpl(this.packedValue);
    }

    public final String toString() {
        return m770toStringimpl(this.packedValue);
    }
}
