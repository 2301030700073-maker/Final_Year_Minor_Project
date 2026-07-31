package com.fsck.k9.notification;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class WearNotificationAction {
    public static final /* synthetic */ WearNotificationAction[] $VALUES;
    public static final WearNotificationAction Archive;
    public static final WearNotificationAction Delete;
    public static final WearNotificationAction MarkAsRead;
    public static final WearNotificationAction Reply;
    public static final WearNotificationAction Spam;

    static {
        WearNotificationAction wearNotificationAction = new WearNotificationAction("Reply", 0);
        Reply = wearNotificationAction;
        WearNotificationAction wearNotificationAction2 = new WearNotificationAction("MarkAsRead", 1);
        MarkAsRead = wearNotificationAction2;
        WearNotificationAction wearNotificationAction3 = new WearNotificationAction("Delete", 2);
        Delete = wearNotificationAction3;
        WearNotificationAction wearNotificationAction4 = new WearNotificationAction("Archive", 3);
        Archive = wearNotificationAction4;
        WearNotificationAction wearNotificationAction5 = new WearNotificationAction("Spam", 4);
        Spam = wearNotificationAction5;
        $VALUES = new WearNotificationAction[]{wearNotificationAction, wearNotificationAction2, wearNotificationAction3, wearNotificationAction4, wearNotificationAction5};
    }

    public static WearNotificationAction valueOf(String str) {
        return (WearNotificationAction) Enum.valueOf(WearNotificationAction.class, str);
    }

    public static WearNotificationAction[] values() {
        return (WearNotificationAction[]) $VALUES.clone();
    }
}
