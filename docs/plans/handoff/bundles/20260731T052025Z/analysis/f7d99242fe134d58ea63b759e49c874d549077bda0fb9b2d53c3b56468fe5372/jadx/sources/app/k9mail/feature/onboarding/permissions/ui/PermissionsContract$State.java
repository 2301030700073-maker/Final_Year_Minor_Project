package app.k9mail.feature.onboarding.permissions.ui;

import androidx.camera.camera2.pipe.CameraDevices$CC;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class PermissionsContract$State {
    public final PermissionsContract$UiPermissionState contactsPermissionState;
    public final boolean isLoading;
    public final boolean isNextButtonVisible;
    public final boolean isNotificationsPermissionVisible;
    public final PermissionsContract$UiPermissionState notificationsPermissionState;

    public PermissionsContract$State(boolean z, PermissionsContract$UiPermissionState permissionsContract$UiPermissionState, PermissionsContract$UiPermissionState permissionsContract$UiPermissionState2, boolean z2, boolean z3) {
        permissionsContract$UiPermissionState.getClass();
        permissionsContract$UiPermissionState2.getClass();
        this.isLoading = z;
        this.contactsPermissionState = permissionsContract$UiPermissionState;
        this.notificationsPermissionState = permissionsContract$UiPermissionState2;
        this.isNotificationsPermissionVisible = z2;
        this.isNextButtonVisible = z3;
    }

    public static PermissionsContract$State copy$default(PermissionsContract$State permissionsContract$State, PermissionsContract$UiPermissionState permissionsContract$UiPermissionState, PermissionsContract$UiPermissionState permissionsContract$UiPermissionState2, boolean z, boolean z2, int i) {
        boolean z3 = (i & 1) != 0 ? permissionsContract$State.isLoading : false;
        if ((i & 2) != 0) {
            permissionsContract$UiPermissionState = permissionsContract$State.contactsPermissionState;
        }
        if ((i & 4) != 0) {
            permissionsContract$UiPermissionState2 = permissionsContract$State.notificationsPermissionState;
        }
        if ((i & 8) != 0) {
            z = permissionsContract$State.isNotificationsPermissionVisible;
        }
        if ((i & 16) != 0) {
            z2 = permissionsContract$State.isNextButtonVisible;
        }
        boolean z4 = z2;
        permissionsContract$State.getClass();
        permissionsContract$UiPermissionState.getClass();
        permissionsContract$UiPermissionState2.getClass();
        boolean z5 = z;
        return new PermissionsContract$State(z3, permissionsContract$UiPermissionState, permissionsContract$UiPermissionState2, z5, z4);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PermissionsContract$State)) {
            return false;
        }
        PermissionsContract$State permissionsContract$State = (PermissionsContract$State) obj;
        return this.isLoading == permissionsContract$State.isLoading && this.contactsPermissionState == permissionsContract$State.contactsPermissionState && this.notificationsPermissionState == permissionsContract$State.notificationsPermissionState && this.isNotificationsPermissionVisible == permissionsContract$State.isNotificationsPermissionVisible && this.isNextButtonVisible == permissionsContract$State.isNextButtonVisible;
    }

    public final int hashCode() {
        return ((((this.notificationsPermissionState.hashCode() + ((this.contactsPermissionState.hashCode() + ((this.isLoading ? 1231 : 1237) * 31)) * 31)) * 31) + (this.isNotificationsPermissionVisible ? 1231 : 1237)) * 31) + (this.isNextButtonVisible ? 1231 : 1237);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("State(isLoading=");
        sb.append(this.isLoading);
        sb.append(", contactsPermissionState=");
        sb.append(this.contactsPermissionState);
        sb.append(", notificationsPermissionState=");
        sb.append(this.notificationsPermissionState);
        sb.append(", isNotificationsPermissionVisible=");
        sb.append(this.isNotificationsPermissionVisible);
        sb.append(", isNextButtonVisible=");
        return CameraDevices$CC.m(")", sb, this.isNextButtonVisible);
    }
}
