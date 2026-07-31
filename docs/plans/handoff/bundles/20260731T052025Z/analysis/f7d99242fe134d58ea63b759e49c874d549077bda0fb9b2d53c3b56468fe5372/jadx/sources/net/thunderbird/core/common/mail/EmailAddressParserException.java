package net.thunderbird.core.common.mail;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class EmailAddressParserException extends RuntimeException {
    public final EmailAddressParserError error;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EmailAddressParserException(String str, EmailAddressParserError emailAddressParserError, String str2) {
        super(str);
        emailAddressParserError.getClass();
        str2.getClass();
        this.error = emailAddressParserError;
    }
}
