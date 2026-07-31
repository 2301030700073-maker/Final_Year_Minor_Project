package androidx.camera.camera2.pipe;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CameraBackendId {
    public final String value;

    public /* synthetic */ CameraBackendId(String str) {
        this.value = str;
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m25toStringimpl(String str) {
        return CameraDevices$CC.m(')', "CameraBackendId(value=", str);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof CameraBackendId) {
            return Intrinsics.areEqual(this.value, ((CameraBackendId) obj).value);
        }
        return false;
    }

    public final int hashCode() {
        return this.value.hashCode();
    }

    public final String toString() {
        return m25toStringimpl(this.value);
    }
}
