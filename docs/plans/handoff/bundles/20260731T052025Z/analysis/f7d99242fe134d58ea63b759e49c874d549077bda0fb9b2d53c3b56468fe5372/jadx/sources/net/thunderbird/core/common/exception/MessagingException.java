package net.thunderbird.core.common.exception;

import java.io.IOException;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class MessagingException extends Exception {
    public final Throwable cause;
    public final boolean isPermanentFailure;
    public final String message;

    public MessagingException(String str, boolean z, Throwable th) {
        super(str, th);
        this.message = str;
        this.isPermanentFailure = z;
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

    public MessagingException(IOException iOException) {
        this(null, false, iOException);
    }

    public MessagingException(String str) {
        this(str, false, null);
    }
}
