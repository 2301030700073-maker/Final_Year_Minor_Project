package net.thunderbird.core.preference.notification;

import kotlin.enums.EnumEntriesList;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class NotificationSettingKey {
    public static final /* synthetic */ EnumEntriesList $ENTRIES;
    public static final /* synthetic */ NotificationSettingKey[] $VALUES;
    public final String value;

    static {
        NotificationSettingKey[] notificationSettingKeyArr = {new NotificationSettingKey(0, "QuietTimeEnds", "quietTimeEnds"), new NotificationSettingKey(1, "QuietTimeStarts", "quietTimeStarts"), new NotificationSettingKey(2, "QuietTimeEnabled", "quietTimeEnabled"), new NotificationSettingKey(3, "NotificationDuringQuietTimeEnabled", "notificationDuringQuietTimeEnabled"), new NotificationSettingKey(4, "MessageActionsOrder", "messageActionsOrder"), new NotificationSettingKey(5, "MessageActionsCutoff", "messageActionsCutoff"), new NotificationSettingKey(6, "IsSummaryDeleteActionEnabled", "isSummaryDeleteActionEnabled"), new NotificationSettingKey(7, "NotificationQuickDeleteBehaviour", "notificationQuickDelete"), new NotificationSettingKey(8, "LockScreenNotificationVisibility", "lockScreenNotificationVisibility"), new NotificationSettingKey(9, "ShowContactPictureInNotification", "showContactPictureInNotification")};
        $VALUES = notificationSettingKeyArr;
        $ENTRIES = new EnumEntriesList(notificationSettingKeyArr);
    }

    public NotificationSettingKey(int i, String str, String str2) {
        this.value = str2;
    }

    public static NotificationSettingKey valueOf(String str) {
        return (NotificationSettingKey) Enum.valueOf(NotificationSettingKey.class, str);
    }

    public static NotificationSettingKey[] values() {
        return (NotificationSettingKey[]) $VALUES.clone();
    }
}
