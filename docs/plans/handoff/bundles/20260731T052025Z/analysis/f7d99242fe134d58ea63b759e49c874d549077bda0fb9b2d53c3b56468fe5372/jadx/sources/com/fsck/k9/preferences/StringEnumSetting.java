package com.fsck.k9.preferences;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import java.util.Set;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class StringEnumSetting extends Settings$ColorSetting {
    public final /* synthetic */ int $r8$classId;
    public final Set values;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StringEnumSetting(Set set, int i) {
        super(7, "SSL_TLS_REQUIRED");
        this.$r8$classId = i;
        switch (i) {
            case 1:
                super(7, null);
                this.values = set;
                break;
            default:
                this.values = set;
                break;
        }
    }

    @Override // com.fsck.k9.preferences.Settings$ColorSetting, com.fsck.k9.preferences.Settings$SettingsDescription
    public final String fromString(String str) {
        int i = this.$r8$classId;
        Set set = this.values;
        switch (i) {
            case 0:
                if (str != null) {
                    if (!set.contains(str)) {
                        str = null;
                    }
                    if (str != null) {
                        return str;
                    }
                }
                Object obj = this.defaultValue;
                obj.getClass();
                return (String) obj;
            default:
                if (str != null) {
                    String str2 = set.contains(str) ? str : null;
                    if (str2 != null) {
                        return str2;
                    }
                }
                throw new Settings$InvalidSettingValueException(CameraDevices$CC.m("Unsupported value: ", str));
        }
    }

    @Override // com.fsck.k9.preferences.Settings$ColorSetting, com.fsck.k9.preferences.Settings$SettingsDescription
    public final /* bridge */ /* synthetic */ Object fromString(String str) {
        switch (this.$r8$classId) {
        }
        return fromString(str);
    }
}
