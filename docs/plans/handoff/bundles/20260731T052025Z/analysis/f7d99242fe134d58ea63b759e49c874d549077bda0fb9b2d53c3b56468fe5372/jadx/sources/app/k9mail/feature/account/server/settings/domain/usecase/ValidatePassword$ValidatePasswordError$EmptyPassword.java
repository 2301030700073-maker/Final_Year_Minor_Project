package app.k9mail.feature.account.server.settings.domain.usecase;

import net.thunderbird.core.validation.ValidationError;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ValidatePassword$ValidatePasswordError$EmptyPassword implements ValidationError {
    public static final ValidatePassword$ValidatePasswordError$EmptyPassword INSTANCE = new ValidatePassword$ValidatePasswordError$EmptyPassword();

    public final boolean equals(Object obj) {
        return this == obj || (obj instanceof ValidatePassword$ValidatePasswordError$EmptyPassword);
    }

    public final int hashCode() {
        return 13792320;
    }

    public final String toString() {
        return "EmptyPassword";
    }
}
