package app.k9mail.feature.account.setup.ui.autodiscovery;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface AccountAutoDiscoveryContract$Error {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class NetworkError implements AccountAutoDiscoveryContract$Error {
        public static final NetworkError INSTANCE = new NetworkError();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof NetworkError);
        }

        public final int hashCode() {
            return -841601209;
        }

        public final String toString() {
            return "NetworkError";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class UnknownError implements AccountAutoDiscoveryContract$Error {
        public static final UnknownError INSTANCE = new UnknownError();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof UnknownError);
        }

        public final int hashCode() {
            return -2141401429;
        }

        public final String toString() {
            return "UnknownError";
        }
    }
}
