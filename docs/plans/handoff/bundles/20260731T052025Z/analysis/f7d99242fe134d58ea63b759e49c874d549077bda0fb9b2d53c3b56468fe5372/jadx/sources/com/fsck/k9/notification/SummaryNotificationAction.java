package com.fsck.k9.notification;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SummaryNotificationAction {
    public static final /* synthetic */ SummaryNotificationAction[] $VALUES;
    public static final SummaryNotificationAction Delete;
    public static final SummaryNotificationAction MarkAsRead;

    static {
        SummaryNotificationAction summaryNotificationAction = new SummaryNotificationAction("MarkAsRead", 0);
        MarkAsRead = summaryNotificationAction;
        SummaryNotificationAction summaryNotificationAction2 = new SummaryNotificationAction("Delete", 1);
        Delete = summaryNotificationAction2;
        $VALUES = new SummaryNotificationAction[]{summaryNotificationAction, summaryNotificationAction2};
    }

    public static SummaryNotificationAction valueOf(String str) {
        return (SummaryNotificationAction) Enum.valueOf(SummaryNotificationAction.class, str);
    }

    public static SummaryNotificationAction[] values() {
        return (SummaryNotificationAction[]) $VALUES.clone();
    }
}
