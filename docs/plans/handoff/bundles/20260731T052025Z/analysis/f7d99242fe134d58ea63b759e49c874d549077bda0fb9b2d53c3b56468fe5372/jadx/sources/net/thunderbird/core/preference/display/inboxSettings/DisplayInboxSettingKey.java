package net.thunderbird.core.preference.display.inboxSettings;

import kotlin.enums.EnumEntriesList;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DisplayInboxSettingKey {
    public static final /* synthetic */ EnumEntriesList $ENTRIES;
    public static final /* synthetic */ DisplayInboxSettingKey[] $VALUES;
    public final String value;

    static {
        DisplayInboxSettingKey[] displayInboxSettingKeyArr = {new DisplayInboxSettingKey(0, "MessageListSenderAboveSubject", "messageListSenderAboveSubject"), new DisplayInboxSettingKey(1, "ShowComposeButtonOnMessageList", "showComposeButtonOnMessageList"), new DisplayInboxSettingKey(2, "ShowMessageListStars", "messageListStars"), new DisplayInboxSettingKey(3, "ShowStarCount", "showStarredCount"), new DisplayInboxSettingKey(4, "ShowUnifiedInbox", "showUnifiedInbox"), new DisplayInboxSettingKey(5, "ThreadViewEnabled", "isThreadedViewEnabled")};
        $VALUES = displayInboxSettingKeyArr;
        $ENTRIES = new EnumEntriesList(displayInboxSettingKeyArr);
    }

    public DisplayInboxSettingKey(int i, String str, String str2) {
        this.value = str2;
    }

    public static DisplayInboxSettingKey valueOf(String str) {
        return (DisplayInboxSettingKey) Enum.valueOf(DisplayInboxSettingKey.class, str);
    }

    public static DisplayInboxSettingKey[] values() {
        return (DisplayInboxSettingKey[]) $VALUES.clone();
    }
}
