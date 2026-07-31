package androidx.camera.camera2.pipe.core;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DurationNs {
    public final long value;

    /* renamed from: compareTo-zYRVrok, reason: not valid java name */
    public static final int m75compareTozYRVrok(long j, long j2) {
        if (j == j2) {
            return 0;
        }
        return j < j2 ? -1 : 1;
    }

    /* renamed from: hashCode-impl, reason: not valid java name */
    public static int m76hashCodeimpl(long j) {
        return (int) (j ^ (j >>> 32));
    }

    public final boolean equals(Object obj) {
        if (obj instanceof DurationNs) {
            return this.value == ((DurationNs) obj).value;
        }
        return false;
    }

    public final int hashCode() {
        return m76hashCodeimpl(this.value);
    }

    public final String toString() {
        return "DurationNs(value=" + this.value + ')';
    }
}
