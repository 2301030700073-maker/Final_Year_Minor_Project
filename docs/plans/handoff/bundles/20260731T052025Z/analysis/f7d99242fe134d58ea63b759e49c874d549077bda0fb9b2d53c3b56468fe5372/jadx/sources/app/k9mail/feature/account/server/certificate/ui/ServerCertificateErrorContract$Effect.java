package app.k9mail.feature.account.server.certificate.ui;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface ServerCertificateErrorContract$Effect {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class NavigateBack implements ServerCertificateErrorContract$Effect {
        public static final NavigateBack INSTANCE = new NavigateBack();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof NavigateBack);
        }

        public final int hashCode() {
            return -1331937286;
        }

        public final String toString() {
            return "NavigateBack";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class NavigateCertificateAccepted implements ServerCertificateErrorContract$Effect {
        public static final NavigateCertificateAccepted INSTANCE = new NavigateCertificateAccepted();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof NavigateCertificateAccepted);
        }

        public final int hashCode() {
            return -6513941;
        }

        public final String toString() {
            return "NavigateCertificateAccepted";
        }
    }
}
