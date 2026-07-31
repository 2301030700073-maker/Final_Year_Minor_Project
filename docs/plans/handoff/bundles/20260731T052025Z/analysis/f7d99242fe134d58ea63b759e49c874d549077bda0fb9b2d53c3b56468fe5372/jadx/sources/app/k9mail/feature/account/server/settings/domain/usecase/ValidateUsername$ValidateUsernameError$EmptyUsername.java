package app.k9mail.feature.account.server.settings.domain.usecase;

import net.thunderbird.core.validation.ValidationError;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ValidateUsername$ValidateUsernameError$EmptyUsername implements ValidationError {
    public static final ValidateUsername$ValidateUsernameError$EmptyUsername INSTANCE = new ValidateUsername$ValidateUsernameError$EmptyUsername();

    public final boolean equals(Object obj) {
        return this == obj || (obj instanceof ValidateUsername$ValidateUsernameError$EmptyUsername);
    }

    public final int hashCode() {
        return 2067704091;
    }

    public final String toString() {
        return "EmptyUsername";
    }
}
