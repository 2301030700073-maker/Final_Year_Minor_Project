package net.thunderbird.core.featureflag;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FeatureFlagKey {
    public final String key;

    public /* synthetic */ FeatureFlagKey(String str) {
        this.key = str;
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m1029toStringimpl(String str) {
        return CameraDevices$CC.m("FeatureFlagKey(key=", str, ")");
    }

    public final boolean equals(Object obj) {
        if (obj instanceof FeatureFlagKey) {
            return Intrinsics.areEqual(this.key, ((FeatureFlagKey) obj).key);
        }
        return false;
    }

    public final int hashCode() {
        return this.key.hashCode();
    }

    public final String toString() {
        return m1029toStringimpl(this.key);
    }
}
