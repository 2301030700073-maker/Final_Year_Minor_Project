package net.thunderbird.feature.account.server.settings.ui.common;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface AuthenticationError {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Failed implements AuthenticationError {
        public static final Failed INSTANCE = new Failed();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Failed);
        }

        public final int hashCode() {
            return 2017626943;
        }

        public final String toString() {
            return "Failed";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class NotAvailable implements AuthenticationError {
        public static final NotAvailable INSTANCE = new NotAvailable();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof NotAvailable);
        }

        public final int hashCode() {
            return -1076057416;
        }

        public final String toString() {
            return "NotAvailable";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class UnableToStart implements AuthenticationError {
        public static final UnableToStart INSTANCE = new UnableToStart();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof UnableToStart);
        }

        public final int hashCode() {
            return -1401860494;
        }

        public final String toString() {
            return "UnableToStart";
        }
    }
}
