package androidx.compose.ui.graphics;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class TransformOrigin {
    public static final /* synthetic */ int $r8$clinit = 0;
    public static final long Center = (Float.floatToRawIntBits(0.5f) << 32) | (Float.floatToRawIntBits(0.5f) & 4294967295L);
    public final long packedValue;

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m253equalsimpl0(long j, long j2) {
        return j == j2;
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m254toStringimpl(long j) {
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
        return m254toStringimpl(this.packedValue);
    }
}
