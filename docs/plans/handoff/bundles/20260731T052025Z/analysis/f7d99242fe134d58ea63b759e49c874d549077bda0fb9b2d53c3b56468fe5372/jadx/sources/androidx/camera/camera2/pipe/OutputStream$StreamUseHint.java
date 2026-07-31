package androidx.camera.camera2.pipe;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class OutputStream$StreamUseHint {
    public final long value;

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m41equalsimpl0(long j, long j2) {
        return j == j2;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof OutputStream$StreamUseHint) {
            return this.value == ((OutputStream$StreamUseHint) obj).value;
        }
        return false;
    }

    public final int hashCode() {
        long j = this.value;
        return (int) (j ^ (j >>> 32));
    }

    public final String toString() {
        return "StreamUseHint(value=" + this.value + ')';
    }
}
