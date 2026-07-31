package app.k9mail.feature.account.server.settings.domain.usecase;

import net.thunderbird.core.validation.ValidationError;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface ValidateServer$ValidateServerError extends ValidationError {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class EmptyServer implements ValidateServer$ValidateServerError {
        public static final EmptyServer INSTANCE = new EmptyServer();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof EmptyServer);
        }

        public final int hashCode() {
            return 1368673768;
        }

        public final String toString() {
            return "EmptyServer";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class InvalidHostnameOrIpAddress implements ValidateServer$ValidateServerError {
        public static final InvalidHostnameOrIpAddress INSTANCE = new InvalidHostnameOrIpAddress();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof InvalidHostnameOrIpAddress);
        }

        public final int hashCode() {
            return -716226936;
        }

        public final String toString() {
            return "InvalidHostnameOrIpAddress";
        }
    }
}
