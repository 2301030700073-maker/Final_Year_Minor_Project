package app.k9mail.feature.account.server.settings.ui.incoming;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface IncomingServerSettingsContract$Effect {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class NavigateBack implements IncomingServerSettingsContract$Effect {
        public static final NavigateBack INSTANCE = new NavigateBack();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof NavigateBack);
        }

        public final int hashCode() {
            return 725989320;
        }

        public final String toString() {
            return "NavigateBack";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class NavigateNext implements IncomingServerSettingsContract$Effect {
        public static final NavigateNext INSTANCE = new NavigateNext();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof NavigateNext);
        }

        public final int hashCode() {
            return 726351316;
        }

        public final String toString() {
            return "NavigateNext";
        }
    }
}
