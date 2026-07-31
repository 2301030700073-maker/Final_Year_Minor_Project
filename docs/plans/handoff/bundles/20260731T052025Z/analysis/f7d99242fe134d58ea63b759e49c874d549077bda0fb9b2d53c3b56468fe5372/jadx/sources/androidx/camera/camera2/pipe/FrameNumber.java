package androidx.camera.camera2.pipe;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FrameNumber {
    public final long value;

    public /* synthetic */ FrameNumber(long j) {
        this.value = j;
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m36toStringimpl(long j) {
        return CameraDevices$CC.m(j, "Frame-");
    }

    public final boolean equals(Object obj) {
        if (obj instanceof FrameNumber) {
            return this.value == ((FrameNumber) obj).value;
        }
        return false;
    }

    public final int hashCode() {
        long j = this.value;
        return (int) (j ^ (j >>> 32));
    }

    public final String toString() {
        return m36toStringimpl(this.value);
    }
}
