package app.k9mail.core.android.permissions;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Permission {
    public static final /* synthetic */ Permission[] $VALUES;
    public static final Permission Contacts;
    public static final Permission Notifications;

    static {
        Permission permission = new Permission("Contacts", 0);
        Contacts = permission;
        Permission permission2 = new Permission("Notifications", 1);
        Notifications = permission2;
        $VALUES = new Permission[]{permission, permission2};
    }

    public static Permission valueOf(String str) {
        return (Permission) Enum.valueOf(Permission.class, str);
    }

    public static Permission[] values() {
        return (Permission[]) $VALUES.clone();
    }
}
