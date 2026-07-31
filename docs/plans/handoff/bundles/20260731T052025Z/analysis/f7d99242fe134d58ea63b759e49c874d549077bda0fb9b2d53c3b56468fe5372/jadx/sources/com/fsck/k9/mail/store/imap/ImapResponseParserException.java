package com.fsck.k9.mail.store.imap;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ImapResponseParserException extends RuntimeException {
    public final Throwable cause;
    public final String message;

    public ImapResponseParserException(String str, Throwable th) {
        super(str, th);
        this.message = str;
        this.cause = th;
    }

    @Override // java.lang.Throwable
    public final Throwable getCause() {
        return this.cause;
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        return this.message;
    }
}
