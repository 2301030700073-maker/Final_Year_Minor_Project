package app.k9mail.feature.onboarding.permissions.ui;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface PermissionsContract$Effect {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class NavigateNext implements PermissionsContract$Effect {
        public static final NavigateNext INSTANCE = new NavigateNext();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof NavigateNext);
        }

        public final int hashCode() {
            return -657165096;
        }

        public final String toString() {
            return "NavigateNext";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class RequestContactsPermission implements PermissionsContract$Effect {
        public static final RequestContactsPermission INSTANCE = new RequestContactsPermission();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof RequestContactsPermission);
        }

        public final int hashCode() {
            return 1074702109;
        }

        public final String toString() {
            return "RequestContactsPermission";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class RequestNotificationsPermission implements PermissionsContract$Effect {
        public static final RequestNotificationsPermission INSTANCE = new RequestNotificationsPermission();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof RequestNotificationsPermission);
        }

        public final int hashCode() {
            return -1539789540;
        }

        public final String toString() {
            return "RequestNotificationsPermission";
        }
    }
}
