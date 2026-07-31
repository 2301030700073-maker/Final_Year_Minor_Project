package app.k9mail.feature.account.edit.ui.server.settings.save;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface SaveServerSettingsContract$Effect {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class NavigateBack implements SaveServerSettingsContract$Effect {
        public static final NavigateBack INSTANCE = new NavigateBack();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof NavigateBack);
        }

        public final int hashCode() {
            return 977917890;
        }

        public final String toString() {
            return "NavigateBack";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class NavigateNext implements SaveServerSettingsContract$Effect {
        public static final NavigateNext INSTANCE = new NavigateNext();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof NavigateNext);
        }

        public final int hashCode() {
            return 978279886;
        }

        public final String toString() {
            return "NavigateNext";
        }
    }
}
