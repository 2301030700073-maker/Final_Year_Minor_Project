package com.fsck.k9.mail.transport.smtp;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public enum StatusCodeClass {
    SUCCESS(2),
    PERSISTENT_TRANSIENT_FAILURE(4),
    PERMANENT_FAILURE(5);

    public final int codeClass;

    StatusCodeClass(int i) {
        this.codeClass = i;
    }
}
