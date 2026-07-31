package app.k9mail.feature.account.edit.ui.server.settings.save;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface SaveServerSettingsContract$Event {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class OnBackClicked implements SaveServerSettingsContract$Event {
        public static final OnBackClicked INSTANCE = new OnBackClicked();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnBackClicked);
        }

        public final int hashCode() {
            return -558083622;
        }

        public final String toString() {
            return "OnBackClicked";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class SaveServerSettings implements SaveServerSettingsContract$Event {
        public static final SaveServerSettings INSTANCE = new SaveServerSettings();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof SaveServerSettings);
        }

        public final int hashCode() {
            return -1622903030;
        }

        public final String toString() {
            return "SaveServerSettings";
        }
    }
}
