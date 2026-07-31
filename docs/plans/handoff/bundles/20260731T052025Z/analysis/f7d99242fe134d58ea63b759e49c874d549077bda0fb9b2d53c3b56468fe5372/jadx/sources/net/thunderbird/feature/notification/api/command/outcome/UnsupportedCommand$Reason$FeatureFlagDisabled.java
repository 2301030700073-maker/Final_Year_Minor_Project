package net.thunderbird.feature.notification.api.command.outcome;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import kotlin.jvm.internal.Intrinsics;
import net.thunderbird.core.featureflag.FeatureFlagKey;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class UnsupportedCommand$Reason$FeatureFlagDisabled {
    public final String key;

    public UnsupportedCommand$Reason$FeatureFlagDisabled(String str) {
        str.getClass();
        this.key = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof UnsupportedCommand$Reason$FeatureFlagDisabled) && Intrinsics.areEqual(this.key, ((UnsupportedCommand$Reason$FeatureFlagDisabled) obj).key);
    }

    public final int hashCode() {
        return this.key.hashCode();
    }

    public final String toString() {
        return CameraDevices$CC.m("FeatureFlagDisabled(key=", FeatureFlagKey.m1029toStringimpl(this.key), ")");
    }
}
