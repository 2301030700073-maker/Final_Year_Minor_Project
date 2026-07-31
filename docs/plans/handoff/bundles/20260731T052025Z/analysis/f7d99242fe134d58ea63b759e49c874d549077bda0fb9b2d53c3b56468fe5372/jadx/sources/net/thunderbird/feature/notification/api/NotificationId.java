package net.thunderbird.feature.notification.api;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class NotificationId implements Comparable {
    public final int value;

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m1040toStringimpl(int i) {
        return CameraDevices$CC.m(i, "NotificationId(value=", ")");
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return Intrinsics.compare(this.value, ((Number) obj).intValue());
    }

    public final boolean equals(Object obj) {
        if (obj instanceof NotificationId) {
            return this.value == ((NotificationId) obj).value;
        }
        return false;
    }

    public final int hashCode() {
        return this.value;
    }

    public final String toString() {
        return m1040toStringimpl(this.value);
    }
}
