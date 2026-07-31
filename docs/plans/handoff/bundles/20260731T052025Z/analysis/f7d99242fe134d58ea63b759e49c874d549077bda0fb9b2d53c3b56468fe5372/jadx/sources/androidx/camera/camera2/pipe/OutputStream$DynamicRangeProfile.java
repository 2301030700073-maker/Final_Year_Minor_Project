package androidx.camera.camera2.pipe;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class OutputStream$DynamicRangeProfile {
    public final long value;

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m38toStringimpl(long j) {
        return "DynamicRangeProfile(value=" + j + ')';
    }

    public final boolean equals(Object obj) {
        if (obj instanceof OutputStream$DynamicRangeProfile) {
            return this.value == ((OutputStream$DynamicRangeProfile) obj).value;
        }
        return false;
    }

    public final int hashCode() {
        long j = this.value;
        return (int) (j ^ (j >>> 32));
    }

    public final String toString() {
        return m38toStringimpl(this.value);
    }
}
