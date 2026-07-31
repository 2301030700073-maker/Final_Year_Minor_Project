package app.k9mail.feature.account.setup.domain.usecase;

import net.thunderbird.core.validation.ValidationError;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ValidateDisplayName$ValidateDisplayNameError$EmptyDisplayName implements ValidationError {
    public static final ValidateDisplayName$ValidateDisplayNameError$EmptyDisplayName INSTANCE = new ValidateDisplayName$ValidateDisplayNameError$EmptyDisplayName();

    public final boolean equals(Object obj) {
        return this == obj || (obj instanceof ValidateDisplayName$ValidateDisplayNameError$EmptyDisplayName);
    }

    public final int hashCode() {
        return -1484961109;
    }

    public final String toString() {
        return "EmptyDisplayName";
    }
}
