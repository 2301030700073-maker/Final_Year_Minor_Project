package androidx.camera.camera2.pipe;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class StreamId {
    public final int value;

    public /* synthetic */ StreamId(int i) {
        this.value = i;
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m46toStringimpl(int i) {
        return CameraDevices$CC.m("Stream-", i);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof StreamId) {
            return this.value == ((StreamId) obj).value;
        }
        return false;
    }

    public final int hashCode() {
        return this.value;
    }

    public final String toString() {
        return m46toStringimpl(this.value);
    }
}
