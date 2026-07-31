package com.fsck.k9.preferences;

import com.fsck.k9.EmailAddressValidator;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Settings$EnumSetting extends Settings$SettingsDescription {
    public final /* synthetic */ int $r8$classId = 0;
    public Object enumClass;

    public Settings$EnumSetting(int[] iArr) {
        super(24);
        this.enumClass = iArr;
    }

    @Override // com.fsck.k9.preferences.Settings$SettingsDescription
    public Object fromPrettyString(String str) {
        switch (this.$r8$classId) {
            case 2:
                if ("".equals(str)) {
                    return null;
                }
                if (str == null) {
                    return str;
                }
                ((EmailAddressValidator) this.enumClass).getClass();
                if (EmailAddressValidator.isValidAddressOnly(str)) {
                    return str;
                }
                throw new Settings$InvalidSettingValueException();
            default:
                return super.fromPrettyString(str);
        }
    }

    @Override // com.fsck.k9.preferences.Settings$SettingsDescription
    public final Object fromString(String str) {
        switch (this.$r8$classId) {
            case 0:
                try {
                    return Enum.valueOf((Class) this.enumClass, str);
                } catch (Exception unused) {
                    throw new Settings$InvalidSettingValueException();
                }
            case 1:
                try {
                    int parseInt = Integer.parseInt(str);
                    int[] iArr = (int[]) this.enumClass;
                    for (int i = 0; i < 9; i++) {
                        if (parseInt == iArr[i]) {
                            return Integer.valueOf(parseInt);
                        }
                    }
                    throw new Settings$InvalidSettingValueException();
                } catch (NumberFormatException unused2) {
                    throw new Settings$InvalidSettingValueException();
                }
            default:
                if (str != null) {
                    ((EmailAddressValidator) this.enumClass).getClass();
                    if (!EmailAddressValidator.isValidAddressOnly(str)) {
                        throw new Settings$InvalidSettingValueException();
                    }
                }
                return str;
        }
    }

    @Override // com.fsck.k9.preferences.Settings$SettingsDescription
    public String toPrettyString(Object obj) {
        switch (this.$r8$classId) {
            case 2:
                String str = (String) obj;
                return str == null ? "" : str;
            default:
                return super.toPrettyString(obj);
        }
    }

    @Override // com.fsck.k9.preferences.Settings$SettingsDescription
    public String toString(Object obj) {
        switch (this.$r8$classId) {
            case 2:
                return (String) obj;
            default:
                return super.toString(obj);
        }
    }

    public Settings$EnumSetting(Class cls, Enum r3) {
        super(r3);
        this.enumClass = cls;
    }

    public /* synthetic */ Settings$EnumSetting(Object obj) {
        super(obj);
    }
}
