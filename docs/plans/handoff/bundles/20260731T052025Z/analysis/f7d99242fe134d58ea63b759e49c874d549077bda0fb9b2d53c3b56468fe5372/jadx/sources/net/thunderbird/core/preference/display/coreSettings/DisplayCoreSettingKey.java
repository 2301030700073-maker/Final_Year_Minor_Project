package net.thunderbird.core.preference.display.coreSettings;

import kotlin.enums.EnumEntriesList;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DisplayCoreSettingKey {
    public static final /* synthetic */ EnumEntriesList $ENTRIES;
    public static final /* synthetic */ DisplayCoreSettingKey[] $VALUES;
    public final String value;

    static {
        DisplayCoreSettingKey[] displayCoreSettingKeyArr = {new DisplayCoreSettingKey(0, "FixedMessageViewTheme", "fixedMessageViewTheme"), new DisplayCoreSettingKey(1, "MessageViewTheme", "messageViewTheme"), new DisplayCoreSettingKey(2, "MessageComposeTheme", "messageComposeTheme"), new DisplayCoreSettingKey(3, "AppLanguage", "language"), new DisplayCoreSettingKey(4, "SplitViewMode", "splitViewMode"), new DisplayCoreSettingKey(5, "Theme", "theme")};
        $VALUES = displayCoreSettingKeyArr;
        $ENTRIES = new EnumEntriesList(displayCoreSettingKeyArr);
    }

    public DisplayCoreSettingKey(int i, String str, String str2) {
        this.value = str2;
    }

    public static DisplayCoreSettingKey valueOf(String str) {
        return (DisplayCoreSettingKey) Enum.valueOf(DisplayCoreSettingKey.class, str);
    }

    public static DisplayCoreSettingKey[] values() {
        return (DisplayCoreSettingKey[]) $VALUES.clone();
    }
}
