package net.thunderbird.core.preference.privacy;

import kotlin.enums.EnumEntriesList;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class PrivacySettingKey {
    public static final /* synthetic */ EnumEntriesList $ENTRIES;
    public static final /* synthetic */ PrivacySettingKey[] $VALUES;
    public final String value;

    static {
        PrivacySettingKey[] privacySettingKeyArr = {new PrivacySettingKey(0, "HideTimeZone", "hideTimeZone"), new PrivacySettingKey(1, "HideUserAgent", "hideUserAgent")};
        $VALUES = privacySettingKeyArr;
        $ENTRIES = new EnumEntriesList(privacySettingKeyArr);
    }

    public PrivacySettingKey(int i, String str, String str2) {
        this.value = str2;
    }

    public static PrivacySettingKey valueOf(String str) {
        return (PrivacySettingKey) Enum.valueOf(PrivacySettingKey.class, str);
    }

    public static PrivacySettingKey[] values() {
        return (PrivacySettingKey[]) $VALUES.clone();
    }
}
