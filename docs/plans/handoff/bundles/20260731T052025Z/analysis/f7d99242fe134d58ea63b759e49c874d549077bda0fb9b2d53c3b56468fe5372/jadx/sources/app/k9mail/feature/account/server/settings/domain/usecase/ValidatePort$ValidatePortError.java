package app.k9mail.feature.account.server.settings.domain.usecase;

import net.thunderbird.core.validation.ValidationError;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface ValidatePort$ValidatePortError extends ValidationError {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class EmptyPort implements ValidatePort$ValidatePortError {
        public static final EmptyPort INSTANCE = new EmptyPort();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof EmptyPort);
        }

        public final int hashCode() {
            return 894481510;
        }

        public final String toString() {
            return "EmptyPort";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class InvalidPort implements ValidatePort$ValidatePortError {
        public static final InvalidPort INSTANCE = new InvalidPort();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof InvalidPort);
        }

        public final int hashCode() {
            return -1442619888;
        }

        public final String toString() {
            return "InvalidPort";
        }
    }
}
