package app.k9mail.core.android.permissions;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class PermissionState {
    public static final /* synthetic */ PermissionState[] $VALUES;
    public static final PermissionState Denied;
    public static final PermissionState Granted;
    public static final PermissionState GrantedImplicitly;

    static {
        PermissionState permissionState = new PermissionState("GrantedImplicitly", 0);
        GrantedImplicitly = permissionState;
        PermissionState permissionState2 = new PermissionState("Granted", 1);
        Granted = permissionState2;
        PermissionState permissionState3 = new PermissionState("Denied", 2);
        Denied = permissionState3;
        $VALUES = new PermissionState[]{permissionState, permissionState2, permissionState3};
    }

    public static PermissionState valueOf(String str) {
        return (PermissionState) Enum.valueOf(PermissionState.class, str);
    }

    public static PermissionState[] values() {
        return (PermissionState[]) $VALUES.clone();
    }
}
