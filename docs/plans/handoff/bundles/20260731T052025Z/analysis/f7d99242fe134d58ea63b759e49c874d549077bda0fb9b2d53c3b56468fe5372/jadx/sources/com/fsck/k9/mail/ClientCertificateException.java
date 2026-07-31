package com.fsck.k9.mail;

import net.thunderbird.core.common.exception.MessagingException;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ClientCertificateException extends MessagingException {
    public final ClientCertificateError error;

    public ClientCertificateException(ClientCertificateError clientCertificateError, Exception exc) {
        super("Problem with client certificate: " + clientCertificateError, true, exc);
        this.error = clientCertificateError;
    }
}
