package com.fsck.k9.mail;

import net.thunderbird.core.common.exception.MessagingException;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AuthenticationFailedException extends MessagingException {
    public final String messageFromServer;

    public AuthenticationFailedException(String str, Exception exc, int i) {
        super(str, false, (i & 2) != 0 ? null : exc);
        this.messageFromServer = null;
    }

    public AuthenticationFailedException(String str, String str2, Throwable th) {
        super(str, false, th);
        this.messageFromServer = str2;
    }
}
