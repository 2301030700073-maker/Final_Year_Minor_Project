package net.thunderbird.core.preference.interaction;

import kotlin.enums.EnumEntriesList;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class InteractionSettingKey {
    public static final /* synthetic */ EnumEntriesList $ENTRIES;
    public static final /* synthetic */ InteractionSettingKey[] $VALUES;
    public final String value;

    static {
        InteractionSettingKey[] interactionSettingKeyArr = {new InteractionSettingKey(0, "UseVolumeKeysForNavigation", "useVolumeKeysForNavigation"), new InteractionSettingKey(1, "MessageViewPostDeleteAction", "messageViewPostDeleteAction"), new InteractionSettingKey(2, "SwipeActionLeft", "swipeLeftAction"), new InteractionSettingKey(3, "SwipeActionRight", "swipeRightAction"), new InteractionSettingKey(4, "ConfirmDelete", "confirmDelete"), new InteractionSettingKey(5, "ConfirmDiscardMessage", "confirmDiscardMessage"), new InteractionSettingKey(6, "ConfirmDeleteStarred", "confirmDeleteStarred"), new InteractionSettingKey(7, "ConfirmSpam", "confirmSpam"), new InteractionSettingKey(8, "ConfirmDeleteFromNotification", "confirmDeleteFromNotification"), new InteractionSettingKey(9, "ConfirmMarkAllRead", "confirmMarkAllRead"), new InteractionSettingKey(10, "MessageViewPostMarkAsRead", "messageViewPostMarkAsReadAction")};
        $VALUES = interactionSettingKeyArr;
        $ENTRIES = new EnumEntriesList(interactionSettingKeyArr);
    }

    public InteractionSettingKey(int i, String str, String str2) {
        this.value = str2;
    }

    public static InteractionSettingKey valueOf(String str) {
        return (InteractionSettingKey) Enum.valueOf(InteractionSettingKey.class, str);
    }

    public static InteractionSettingKey[] values() {
        return (InteractionSettingKey[]) $VALUES.clone();
    }
}
