package app.k9mail.feature.onboarding.permissions.ui;

import coil3.size.ViewSizeResolver;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface PermissionsContract$Event {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class AllowContactsPermissionClicked implements PermissionsContract$Event {
        public static final AllowContactsPermissionClicked INSTANCE = new AllowContactsPermissionClicked();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof AllowContactsPermissionClicked);
        }

        public final int hashCode() {
            return -745811111;
        }

        public final String toString() {
            return "AllowContactsPermissionClicked";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class AllowNotificationsPermissionClicked implements PermissionsContract$Event {
        public static final AllowNotificationsPermissionClicked INSTANCE = new AllowNotificationsPermissionClicked();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof AllowNotificationsPermissionClicked);
        }

        public final int hashCode() {
            return -1296926788;
        }

        public final String toString() {
            return "AllowNotificationsPermissionClicked";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class ContactsPermissionResult implements PermissionsContract$Event {
        public final boolean success;

        public ContactsPermissionResult(boolean z) {
            this.success = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ContactsPermissionResult) && this.success == ((ContactsPermissionResult) obj).success;
        }

        public final int hashCode() {
            return this.success ? 1231 : 1237;
        }

        public final String toString() {
            return ViewSizeResolver.CC.m("ContactsPermissionResult(success=", ")", this.success);
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class LoadPermissionState implements PermissionsContract$Event {
        public static final LoadPermissionState INSTANCE = new LoadPermissionState();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof LoadPermissionState);
        }

        public final int hashCode() {
            return -1705028865;
        }

        public final String toString() {
            return "LoadPermissionState";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class NextClicked implements PermissionsContract$Event {
        public static final NextClicked INSTANCE = new NextClicked();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof NextClicked);
        }

        public final int hashCode() {
            return -1615685257;
        }

        public final String toString() {
            return "NextClicked";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class NotificationsPermissionResult implements PermissionsContract$Event {
        public final boolean success;

        public NotificationsPermissionResult(boolean z) {
            this.success = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof NotificationsPermissionResult) && this.success == ((NotificationsPermissionResult) obj).success;
        }

        public final int hashCode() {
            return this.success ? 1231 : 1237;
        }

        public final String toString() {
            return ViewSizeResolver.CC.m("NotificationsPermissionResult(success=", ")", this.success);
        }
    }
}
