package net.thunderbird.core.common.net;

import androidx.camera.camera2.pipe.CameraDevices$CC;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Port {
    public final int value;

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m1028toStringimpl(int i) {
        return CameraDevices$CC.m(i, "Port(value=", ")");
    }

    public final boolean equals(Object obj) {
        if (obj instanceof Port) {
            return this.value == ((Port) obj).value;
        }
        return false;
    }

    public final int hashCode() {
        return this.value;
    }

    public final String toString() {
        return m1028toStringimpl(this.value);
    }
}
