package net.thunderbird.core.common.net;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Hostname {
    public final String value;

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m1027toStringimpl(String str) {
        return CameraDevices$CC.m("Hostname(value=", str, ")");
    }

    public final boolean equals(Object obj) {
        if (obj instanceof Hostname) {
            return Intrinsics.areEqual(this.value, ((Hostname) obj).value);
        }
        return false;
    }

    public final int hashCode() {
        return this.value.hashCode();
    }

    public final String toString() {
        return m1027toStringimpl(this.value);
    }
}
