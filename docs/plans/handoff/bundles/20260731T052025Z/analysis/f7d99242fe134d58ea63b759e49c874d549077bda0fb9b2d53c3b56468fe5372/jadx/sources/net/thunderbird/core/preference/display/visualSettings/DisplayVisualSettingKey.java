package net.thunderbird.core.preference.display.visualSettings;

import kotlin.enums.EnumEntriesList;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DisplayVisualSettingKey {
    public static final /* synthetic */ EnumEntriesList $ENTRIES;
    public static final /* synthetic */ DisplayVisualSettingKey[] $VALUES;
    public final String value;

    static {
        DisplayVisualSettingKey[] displayVisualSettingKeyArr = {new DisplayVisualSettingKey(0, "Animation", "animations"), new DisplayVisualSettingKey(1, "MessageViewFixedWidthFont", "messageViewFixedWidthFont"), new DisplayVisualSettingKey(2, "AutoFitWidth", "autofitWidth"), new DisplayVisualSettingKey(3, "MessageViewBodyContentType", "messageViewBodyContentType"), new DisplayVisualSettingKey(4, "DrawerExpandAllFolder", "drawerExpandAllFolder"), new DisplayVisualSettingKey(5, "MessageViewArchiveActionVisible", "messageViewArchiveActionVisible"), new DisplayVisualSettingKey(6, "MessageViewDeleteActionVisible", "messageViewDeleteActionVisible"), new DisplayVisualSettingKey(7, "MessageViewMoveActionVisible", "messageViewMoveActionVisible"), new DisplayVisualSettingKey(8, "MessageViewCopyActionVisible", "messageViewCopyActionVisible"), new DisplayVisualSettingKey(9, "MessageViewSpamActionVisible", "messageViewSpamActionVisible")};
        $VALUES = displayVisualSettingKeyArr;
        $ENTRIES = new EnumEntriesList(displayVisualSettingKeyArr);
    }

    public DisplayVisualSettingKey(int i, String str, String str2) {
        this.value = str2;
    }

    public static DisplayVisualSettingKey valueOf(String str) {
        return (DisplayVisualSettingKey) Enum.valueOf(DisplayVisualSettingKey.class, str);
    }

    public static DisplayVisualSettingKey[] values() {
        return (DisplayVisualSettingKey[]) $VALUES.clone();
    }
}
