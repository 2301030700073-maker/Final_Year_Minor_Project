package net.thunderbird.core.preference.display.visualSettings.message.list;

import kotlin.enums.EnumEntriesList;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DisplayMessageListSettingKey {
    public static final /* synthetic */ EnumEntriesList $ENTRIES;
    public static final /* synthetic */ DisplayMessageListSettingKey[] $VALUES;
    public final String value;

    static {
        DisplayMessageListSettingKey[] displayMessageListSettingKeyArr = {new DisplayMessageListSettingKey(0, "ColorizeMissingContactPicture", "colorizeMissingContactPictures"), new DisplayMessageListSettingKey(1, "ChangeRegisteredNameColor", "changeRegisteredNameColor"), new DisplayMessageListSettingKey(2, "UseBackgroundAsUnreadIndicator", "isUseBackgroundAsUnreadIndicator"), new DisplayMessageListSettingKey(3, "ShowCorrespondentNames", "showCorrespondentNames"), new DisplayMessageListSettingKey(4, "ShowContactName", "showContactName"), new DisplayMessageListSettingKey(5, "ShowContactPicture", "showContactPicture"), new DisplayMessageListSettingKey(6, "MessageListPreviewLines", "messageListPreviewLines"), new DisplayMessageListSettingKey(7, "MessageListDensity", "messageListDensity"), new DisplayMessageListSettingKey(8, "RegisteredNameColor", "registeredNameColor"), new DisplayMessageListSettingKey(9, "MessageListDateTimeFormat", "messageListDateTimeFormat")};
        $VALUES = displayMessageListSettingKeyArr;
        $ENTRIES = new EnumEntriesList(displayMessageListSettingKeyArr);
    }

    public DisplayMessageListSettingKey(int i, String str, String str2) {
        this.value = str2;
    }

    public static DisplayMessageListSettingKey valueOf(String str) {
        return (DisplayMessageListSettingKey) Enum.valueOf(DisplayMessageListSettingKey.class, str);
    }

    public static DisplayMessageListSettingKey[] values() {
        return (DisplayMessageListSettingKey[]) $VALUES.clone();
    }
}
