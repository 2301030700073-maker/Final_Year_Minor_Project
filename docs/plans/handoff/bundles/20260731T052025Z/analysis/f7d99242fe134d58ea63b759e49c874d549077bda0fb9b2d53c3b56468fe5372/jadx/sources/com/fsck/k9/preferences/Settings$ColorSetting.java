package com.fsck.k9.preferences;

import androidx.datastore.preferences.PreferencesProto$Value;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import net.thunderbird.core.preference.AppTheme;
import net.thunderbird.core.preference.SubTheme;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class Settings$ColorSetting extends Settings$SettingsDescription {
    public final /* synthetic */ int $r8$classId;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Settings$ColorSetting(boolean z) {
        super(Boolean.valueOf(z));
        this.$r8$classId = 6;
    }

    @Override // com.fsck.k9.preferences.Settings$SettingsDescription
    public Object fromPrettyString(String str) {
        int i = this.$r8$classId;
        AppTheme appTheme = AppTheme.DARK;
        AppTheme appTheme2 = AppTheme.LIGHT;
        switch (i) {
            case 0:
                try {
                    if (str.length() == 7) {
                        return Integer.valueOf(Integer.parseInt(str.substring(1), 16) | (-16777216));
                    }
                } catch (NumberFormatException unused) {
                }
                throw new Settings$InvalidSettingValueException();
            case 1:
            default:
                return super.fromPrettyString(str);
            case 2:
                if ("light".equals(str)) {
                    return appTheme2;
                }
                if ("dark".equals(str)) {
                    return appTheme;
                }
                throw new Settings$InvalidSettingValueException();
            case 3:
                if ("light".equals(str)) {
                    return SubTheme.LIGHT;
                }
                if ("dark".equals(str)) {
                    return SubTheme.DARK;
                }
                if ("use_global".equals(str)) {
                    return SubTheme.USE_GLOBAL;
                }
                throw new Settings$InvalidSettingValueException();
            case 4:
                if ("light".equals(str)) {
                    return appTheme2;
                }
                if ("dark".equals(str)) {
                    return appTheme;
                }
                if ("follow_system".equals(str)) {
                    return AppTheme.FOLLOW_SYSTEM;
                }
                throw new Settings$InvalidSettingValueException();
        }
    }

    @Override // com.fsck.k9.preferences.Settings$SettingsDescription
    public Object fromString(String str) {
        switch (this.$r8$classId) {
            case 0:
                try {
                    return Integer.valueOf(Integer.parseInt(str));
                } catch (NumberFormatException unused) {
                    throw new Settings$InvalidSettingValueException();
                }
            case 1:
                return str;
            case 2:
                try {
                    return AppTheme.valueOf(str);
                } catch (IllegalArgumentException unused2) {
                    throw new Settings$InvalidSettingValueException();
                }
            case 3:
                try {
                    return SubTheme.valueOf(str);
                } catch (IllegalArgumentException unused3) {
                    throw new Settings$InvalidSettingValueException();
                }
            case 4:
                try {
                    return AppTheme.valueOf(str);
                } catch (IllegalArgumentException unused4) {
                    throw new Settings$InvalidSettingValueException();
                }
            case 5:
                if (str.matches("[0-2]*[0-9]:[0-5]*[0-9]")) {
                    return str;
                }
                throw new Settings$InvalidSettingValueException();
            case 6:
                Boolean bool = Boolean.TRUE;
                if (!bool.toString().equals(str)) {
                    bool = Boolean.FALSE;
                    if (!bool.toString().equals(str)) {
                        throw new Settings$InvalidSettingValueException();
                    }
                }
                return bool;
            default:
                return fromString(str);
        }
    }

    @Override // com.fsck.k9.preferences.Settings$SettingsDescription
    public String toPrettyString(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                return String.format("#%06x", Integer.valueOf(((Integer) obj).intValue() & 16777215));
            case 1:
            default:
                return super.toPrettyString(obj);
            case 2:
                AppTheme appTheme = (AppTheme) obj;
                int ordinal = appTheme.ordinal();
                if (ordinal == 0) {
                    return "light";
                }
                if (ordinal == 1) {
                    return "dark";
                }
                UriKt$$ExternalSyntheticBUOutline0.m$1(appTheme, "Unexpected case: ");
                return null;
            case 3:
                SubTheme subTheme = (SubTheme) obj;
                int ordinal2 = subTheme.ordinal();
                if (ordinal2 == 0) {
                    return "light";
                }
                if (ordinal2 == 1) {
                    return "dark";
                }
                if (ordinal2 == 2) {
                    return "use_global";
                }
                UriKt$$ExternalSyntheticBUOutline0.m$1(subTheme, "Unexpected case: ");
                return null;
            case 4:
                AppTheme appTheme2 = (AppTheme) obj;
                int ordinal3 = appTheme2.ordinal();
                if (ordinal3 == 0) {
                    return "light";
                }
                if (ordinal3 == 1) {
                    return "dark";
                }
                if (ordinal3 == 2) {
                    return "follow_system";
                }
                UriKt$$ExternalSyntheticBUOutline0.m$1(appTheme2, "Unexpected case: ");
                return null;
        }
    }

    @Override // com.fsck.k9.preferences.Settings$SettingsDescription
    public String toString(Object obj) {
        switch (this.$r8$classId) {
            case 2:
                return ((AppTheme) obj).name();
            case 3:
                return ((SubTheme) obj).name();
            case 4:
                return ((AppTheme) obj).name();
            case 5:
            case 6:
            default:
                return super.toString(obj);
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                return (String) obj;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ Settings$ColorSetting(int i, Object obj) {
        super(obj);
        this.$r8$classId = i;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Settings$ColorSetting(int i) {
        super(Integer.valueOf(i));
        this.$r8$classId = 0;
    }

    @Override // com.fsck.k9.preferences.Settings$SettingsDescription
    public String fromString(String str) {
        return str;
    }
}
