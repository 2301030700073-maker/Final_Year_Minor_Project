package app.k9mail.feature.onboarding.permissions.ui;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class PermissionsContract$UiPermissionState {
    public static final /* synthetic */ PermissionsContract$UiPermissionState[] $VALUES;
    public static final PermissionsContract$UiPermissionState Denied;
    public static final PermissionsContract$UiPermissionState Granted;
    public static final PermissionsContract$UiPermissionState Unknown;

    static {
        PermissionsContract$UiPermissionState permissionsContract$UiPermissionState = new PermissionsContract$UiPermissionState("Unknown", 0);
        Unknown = permissionsContract$UiPermissionState;
        PermissionsContract$UiPermissionState permissionsContract$UiPermissionState2 = new PermissionsContract$UiPermissionState("Granted", 1);
        Granted = permissionsContract$UiPermissionState2;
        PermissionsContract$UiPermissionState permissionsContract$UiPermissionState3 = new PermissionsContract$UiPermissionState("Denied", 2);
        Denied = permissionsContract$UiPermissionState3;
        $VALUES = new PermissionsContract$UiPermissionState[]{permissionsContract$UiPermissionState, permissionsContract$UiPermissionState2, permissionsContract$UiPermissionState3};
    }

    public static PermissionsContract$UiPermissionState valueOf(String str) {
        return (PermissionsContract$UiPermissionState) Enum.valueOf(PermissionsContract$UiPermissionState.class, str);
    }

    public static PermissionsContract$UiPermissionState[] values() {
        return (PermissionsContract$UiPermissionState[]) $VALUES.clone();
    }
}
