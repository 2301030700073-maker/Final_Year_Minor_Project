package app.k9mail.feature.account.setup.domain.usecase;

import net.thunderbird.core.validation.ValidationError;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface ValidateEmailAddress$ValidateEmailAddressError extends ValidationError {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class EmptyEmailAddress implements ValidateEmailAddress$ValidateEmailAddressError {
        public static final EmptyEmailAddress INSTANCE = new EmptyEmailAddress();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof EmptyEmailAddress);
        }

        public final int hashCode() {
            return 1029998092;
        }

        public final String toString() {
            return "EmptyEmailAddress";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class InvalidEmailAddress implements ValidateEmailAddress$ValidateEmailAddressError {
        public static final InvalidEmailAddress INSTANCE = new InvalidEmailAddress();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof InvalidEmailAddress);
        }

        public final int hashCode() {
            return 2071594486;
        }

        public final String toString() {
            return "InvalidEmailAddress";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class InvalidOrNotSupported implements ValidateEmailAddress$ValidateEmailAddressError {
        public static final InvalidOrNotSupported INSTANCE = new InvalidOrNotSupported();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof InvalidOrNotSupported);
        }

        public final int hashCode() {
            return 1483946588;
        }

        public final String toString() {
            return "InvalidOrNotSupported";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class NotAllowed implements ValidateEmailAddress$ValidateEmailAddressError {
        public static final NotAllowed INSTANCE = new NotAllowed();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof NotAllowed);
        }

        public final int hashCode() {
            return 1077397966;
        }

        public final String toString() {
            return "NotAllowed";
        }
    }
}
