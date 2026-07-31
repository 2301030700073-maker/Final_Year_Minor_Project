package androidx.camera.camera2.pipe;

import coil3.UriKt$$ExternalSyntheticBUOutline0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CameraId {
    public final String value;

    public /* synthetic */ CameraId(String str) {
        this.value = str;
    }

    /* renamed from: constructor-impl, reason: not valid java name */
    public static void m34constructorimpl(String str) {
        str.getClass();
        if (StringsKt.isBlank(str)) {
            UriKt$$ExternalSyntheticBUOutline0.m("CameraId cannot be null or blank!");
        }
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m35toStringimpl(String str) {
        return CameraDevices$CC.m("CameraId-", str);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof CameraId) {
            return Intrinsics.areEqual(this.value, ((CameraId) obj).value);
        }
        return false;
    }

    public final int hashCode() {
        return this.value.hashCode();
    }

    public final String toString() {
        return m35toStringimpl(this.value);
    }
}
