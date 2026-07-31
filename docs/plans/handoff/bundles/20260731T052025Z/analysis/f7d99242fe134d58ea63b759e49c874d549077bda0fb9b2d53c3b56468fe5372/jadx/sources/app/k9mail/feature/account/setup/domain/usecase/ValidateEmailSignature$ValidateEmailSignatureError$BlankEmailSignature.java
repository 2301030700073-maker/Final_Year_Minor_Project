package app.k9mail.feature.account.setup.domain.usecase;

import net.thunderbird.core.validation.ValidationError;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ValidateEmailSignature$ValidateEmailSignatureError$BlankEmailSignature implements ValidationError {
    public static final ValidateEmailSignature$ValidateEmailSignatureError$BlankEmailSignature INSTANCE = new ValidateEmailSignature$ValidateEmailSignatureError$BlankEmailSignature();

    public final boolean equals(Object obj) {
        return this == obj || (obj instanceof ValidateEmailSignature$ValidateEmailSignatureError$BlankEmailSignature);
    }

    public final int hashCode() {
        return -454832233;
    }

    public final String toString() {
        return "BlankEmailSignature";
    }
}
