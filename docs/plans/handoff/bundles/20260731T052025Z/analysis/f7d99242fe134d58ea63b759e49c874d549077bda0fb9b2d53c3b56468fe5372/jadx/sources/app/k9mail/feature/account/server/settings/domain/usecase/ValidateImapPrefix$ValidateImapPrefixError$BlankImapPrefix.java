package app.k9mail.feature.account.server.settings.domain.usecase;

import net.thunderbird.core.validation.ValidationError;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ValidateImapPrefix$ValidateImapPrefixError$BlankImapPrefix implements ValidationError {
    public static final ValidateImapPrefix$ValidateImapPrefixError$BlankImapPrefix INSTANCE = new ValidateImapPrefix$ValidateImapPrefixError$BlankImapPrefix();

    public final boolean equals(Object obj) {
        return this == obj || (obj instanceof ValidateImapPrefix$ValidateImapPrefixError$BlankImapPrefix);
    }

    public final int hashCode() {
        return -717338127;
    }

    public final String toString() {
        return "BlankImapPrefix";
    }
}
