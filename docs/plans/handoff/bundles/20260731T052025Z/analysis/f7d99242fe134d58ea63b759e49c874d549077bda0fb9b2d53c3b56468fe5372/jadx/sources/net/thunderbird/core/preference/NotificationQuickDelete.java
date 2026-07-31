package net.thunderbird.core.preference;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class NotificationQuickDelete {
    public static final /* synthetic */ NotificationQuickDelete[] $VALUES;
    public static final NotificationQuickDelete ALWAYS;
    public static final NotificationQuickDelete NEVER;

    static {
        NotificationQuickDelete notificationQuickDelete = new NotificationQuickDelete("ALWAYS", 0);
        ALWAYS = notificationQuickDelete;
        NotificationQuickDelete notificationQuickDelete2 = new NotificationQuickDelete("FOR_SINGLE_MSG", 1);
        NotificationQuickDelete notificationQuickDelete3 = new NotificationQuickDelete("NEVER", 2);
        NEVER = notificationQuickDelete3;
        $VALUES = new NotificationQuickDelete[]{notificationQuickDelete, notificationQuickDelete2, notificationQuickDelete3};
    }

    public static NotificationQuickDelete valueOf(String str) {
        return (NotificationQuickDelete) Enum.valueOf(NotificationQuickDelete.class, str);
    }

    public static NotificationQuickDelete[] values() {
        return (NotificationQuickDelete[]) $VALUES.clone();
    }
}
