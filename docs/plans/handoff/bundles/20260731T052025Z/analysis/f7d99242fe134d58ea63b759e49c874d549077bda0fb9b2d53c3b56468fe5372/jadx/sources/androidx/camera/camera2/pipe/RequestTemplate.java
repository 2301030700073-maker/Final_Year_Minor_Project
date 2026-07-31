package androidx.camera.camera2.pipe;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class RequestTemplate {
    public final int value;

    /* renamed from: getName-impl, reason: not valid java name */
    public static final String m42getNameimpl(int i) {
        switch (i) {
            case 1:
                return "TEMPLATE_PREVIEW";
            case 2:
                return "TEMPLATE_STILL_CAPTURE";
            case 3:
                return "TEMPLATE_RECORD";
            case 4:
                return "TEMPLATE_VIDEO_SNAPSHOT";
            case 5:
                return "TEMPLATE_ZERO_SHUTTER_LAG";
            case 6:
                return "TEMPLATE_MANUAL";
            default:
                return CameraDevices$CC.m("UNKNOWN-", i);
        }
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m43toStringimpl(int i) {
        return CameraDevices$CC.m("RequestTemplate(value=", i, ')');
    }

    public final boolean equals(Object obj) {
        if (obj instanceof RequestTemplate) {
            return this.value == ((RequestTemplate) obj).value;
        }
        return false;
    }

    public final int hashCode() {
        return this.value;
    }

    public final String toString() {
        return m43toStringimpl(this.value);
    }
}
