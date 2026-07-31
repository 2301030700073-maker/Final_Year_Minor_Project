package app.k9mail.feature.account.setup.domain.usecase;

import net.thunderbird.core.validation.ValidationError;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ValidateAccountName$ValidateAccountNameError$BlankAccountName implements ValidationError {
    public static final ValidateAccountName$ValidateAccountNameError$BlankAccountName INSTANCE = new ValidateAccountName$ValidateAccountNameError$BlankAccountName();

    public final boolean equals(Object obj) {
        return this == obj || (obj instanceof ValidateAccountName$ValidateAccountNameError$BlankAccountName);
    }

    public final int hashCode() {
        return -2010519547;
    }

    public final String toString() {
        return "BlankAccountName";
    }
}
