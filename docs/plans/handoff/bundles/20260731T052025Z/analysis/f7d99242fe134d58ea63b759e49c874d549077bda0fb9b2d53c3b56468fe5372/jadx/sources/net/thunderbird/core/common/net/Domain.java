package net.thunderbird.core.common.net;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import kotlin.text.Regex;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Domain {
    public final String value;

    public /* synthetic */ Domain(String str) {
        this.value = str;
    }

    /* renamed from: constructor-impl, reason: not valid java name */
    public static void m1026constructorimpl(String str) {
        Regex regex = HostNameUtils.HOST_PATTERN;
        if (((str.length() > 255 || !HostNameUtils.HOST_PATTERN.matches(str)) ? null : str) != null) {
            return;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$2((Object) CameraDevices$CC.m("Not a valid domain name: '", str, "'"));
    }

    public final boolean equals(Object obj) {
        if (obj instanceof Domain) {
            return this.value.equals(((Domain) obj).value);
        }
        return false;
    }

    public final int hashCode() {
        return this.value.hashCode();
    }

    public final String toString() {
        return CameraDevices$CC.m("Domain(value=", this.value, ")");
    }
}
