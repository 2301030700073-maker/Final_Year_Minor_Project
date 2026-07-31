package androidx.compose.ui.graphics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class TransformOrigin {
    public static final /* synthetic */ int $r8$clinit = 0;
    public static final long Center = ColorKt.TransformOrigin(0.5f, 0.5f);
    public final long packedValue;

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m512equalsimpl0(long j, long j2) {
        return j == j2;
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m513toStringimpl(long j) {
        return "TransformOrigin(packedValue=" + j + ')';
    }

    public final boolean equals(Object obj) {
        if (obj instanceof TransformOrigin) {
            return this.packedValue == ((TransformOrigin) obj).packedValue;
        }
        return false;
    }

    public final int hashCode() {
        long j = this.packedValue;
        return (int) (j ^ (j >>> 32));
    }

    public final String toString() {
        return m513toStringimpl(this.packedValue);
    }
}
