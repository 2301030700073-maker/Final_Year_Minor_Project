package net.thunderbird.feature.account.settings.impl.domain;

import androidx.camera.camera2.pipe.CameraDevices$CC;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AccountSettingsDomainContract$UpdateSearchSettingsCommand$UpdateServerSearchLimit {
    public final int value;

    public AccountSettingsDomainContract$UpdateSearchSettingsCommand$UpdateServerSearchLimit(int i) {
        this.value = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof AccountSettingsDomainContract$UpdateSearchSettingsCommand$UpdateServerSearchLimit) && this.value == ((AccountSettingsDomainContract$UpdateSearchSettingsCommand$UpdateServerSearchLimit) obj).value;
    }

    public final int hashCode() {
        return this.value;
    }

    public final String toString() {
        return CameraDevices$CC.m(this.value, "UpdateServerSearchLimit(value=", ")");
    }
}
