package com.fsck.k9.notification;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class NotificationAction {
    public static final /* synthetic */ NotificationAction[] $VALUES;
    public static final NotificationAction Archive;
    public static final NotificationAction Delete;
    public static final NotificationAction MarkAsRead;
    public static final NotificationAction Reply;
    public static final NotificationAction Spam;
    public static final NotificationAction Star;

    static {
        NotificationAction notificationAction = new NotificationAction("Reply", 0);
        Reply = notificationAction;
        NotificationAction notificationAction2 = new NotificationAction("MarkAsRead", 1);
        MarkAsRead = notificationAction2;
        NotificationAction notificationAction3 = new NotificationAction("Delete", 2);
        Delete = notificationAction3;
        NotificationAction notificationAction4 = new NotificationAction("Archive", 3);
        Archive = notificationAction4;
        NotificationAction notificationAction5 = new NotificationAction("Spam", 4);
        Spam = notificationAction5;
        NotificationAction notificationAction6 = new NotificationAction("Star", 5);
        Star = notificationAction6;
        $VALUES = new NotificationAction[]{notificationAction, notificationAction2, notificationAction3, notificationAction4, notificationAction5, notificationAction6};
    }

    public static NotificationAction valueOf(String str) {
        return (NotificationAction) Enum.valueOf(NotificationAction.class, str);
    }

    public static NotificationAction[] values() {
        return (NotificationAction[]) $VALUES.clone();
    }
}
