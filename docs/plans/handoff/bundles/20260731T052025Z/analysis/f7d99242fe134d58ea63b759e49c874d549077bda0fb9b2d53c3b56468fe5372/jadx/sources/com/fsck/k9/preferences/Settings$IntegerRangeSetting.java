package com.fsck.k9.preferences;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Settings$IntegerRangeSetting extends Settings$SettingsDescription {
    public final int end;
    public final int start;

    public Settings$IntegerRangeSetting(int i, int i2, int i3) {
        super(Integer.valueOf(i3));
        this.start = i;
        this.end = i2;
    }

    @Override // com.fsck.k9.preferences.Settings$SettingsDescription
    public final Object fromString(String str) {
        try {
            int parseInt = Integer.parseInt(str);
            if (this.start <= parseInt && parseInt <= this.end) {
                return Integer.valueOf(parseInt);
            }
        } catch (NumberFormatException unused) {
        }
        throw new Settings$InvalidSettingValueException();
    }
}
