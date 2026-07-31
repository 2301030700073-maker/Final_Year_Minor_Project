package net.thunderbird.core.preference.display.miscSettings;

import kotlin.enums.EnumEntriesList;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DisplayMiscSettingKey {
    public static final /* synthetic */ EnumEntriesList $ENTRIES;
    public static final /* synthetic */ DisplayMiscSettingKey[] $VALUES;
    public final String value;

    static {
        DisplayMiscSettingKey[] displayMiscSettingKeyArr = {new DisplayMiscSettingKey(0, "ShowRecentChanges", "showRecentChanges"), new DisplayMiscSettingKey(1, "ShouldShowSetupArchiveFolderDialog", "shouldShowSetupArchiveFolderDialog")};
        $VALUES = displayMiscSettingKeyArr;
        $ENTRIES = new EnumEntriesList(displayMiscSettingKeyArr);
    }

    public DisplayMiscSettingKey(int i, String str, String str2) {
        this.value = str2;
    }

    public static DisplayMiscSettingKey valueOf(String str) {
        return (DisplayMiscSettingKey) Enum.valueOf(DisplayMiscSettingKey.class, str);
    }

    public static DisplayMiscSettingKey[] values() {
        return (DisplayMiscSettingKey[]) $VALUES.clone();
    }
}
