package com.fsck.k9.notification;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SummaryWearNotificationAction {
    public static final /* synthetic */ SummaryWearNotificationAction[] $VALUES;
    public static final SummaryWearNotificationAction Archive;
    public static final SummaryWearNotificationAction Delete;
    public static final SummaryWearNotificationAction MarkAsRead;

    static {
        SummaryWearNotificationAction summaryWearNotificationAction = new SummaryWearNotificationAction("MarkAsRead", 0);
        MarkAsRead = summaryWearNotificationAction;
        SummaryWearNotificationAction summaryWearNotificationAction2 = new SummaryWearNotificationAction("Delete", 1);
        Delete = summaryWearNotificationAction2;
        SummaryWearNotificationAction summaryWearNotificationAction3 = new SummaryWearNotificationAction("Archive", 2);
        Archive = summaryWearNotificationAction3;
        $VALUES = new SummaryWearNotificationAction[]{summaryWearNotificationAction, summaryWearNotificationAction2, summaryWearNotificationAction3};
    }

    public static SummaryWearNotificationAction valueOf(String str) {
        return (SummaryWearNotificationAction) Enum.valueOf(SummaryWearNotificationAction.class, str);
    }

    public static SummaryWearNotificationAction[] values() {
        return (SummaryWearNotificationAction[]) $VALUES.clone();
    }
}
