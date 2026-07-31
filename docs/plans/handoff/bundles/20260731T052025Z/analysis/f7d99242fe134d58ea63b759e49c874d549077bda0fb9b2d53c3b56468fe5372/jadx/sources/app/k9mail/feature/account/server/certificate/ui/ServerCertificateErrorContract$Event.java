package app.k9mail.feature.account.server.certificate.ui;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface ServerCertificateErrorContract$Event {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class OnBackClicked implements ServerCertificateErrorContract$Event {
        public static final OnBackClicked INSTANCE = new OnBackClicked();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnBackClicked);
        }

        public final int hashCode() {
            return 1427028498;
        }

        public final String toString() {
            return "OnBackClicked";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class OnCertificateAcceptedClicked implements ServerCertificateErrorContract$Event {
        public static final OnCertificateAcceptedClicked INSTANCE = new OnCertificateAcceptedClicked();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnCertificateAcceptedClicked);
        }

        public final int hashCode() {
            return -13005609;
        }

        public final String toString() {
            return "OnCertificateAcceptedClicked";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class OnShowAdvancedClicked implements ServerCertificateErrorContract$Event {
        public static final OnShowAdvancedClicked INSTANCE = new OnShowAdvancedClicked();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnShowAdvancedClicked);
        }

        public final int hashCode() {
            return -820625478;
        }

        public final String toString() {
            return "OnShowAdvancedClicked";
        }
    }
}
