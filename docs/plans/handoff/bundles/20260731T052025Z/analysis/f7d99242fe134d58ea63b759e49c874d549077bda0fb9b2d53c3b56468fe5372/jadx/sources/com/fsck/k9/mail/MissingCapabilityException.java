package com.fsck.k9.mail;

import net.thunderbird.core.common.exception.MessagingException;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MissingCapabilityException extends MessagingException {
    public final String capabilityName;

    public MissingCapabilityException(String str) {
        super("Missing capability: ".concat(str), true, null);
        this.capabilityName = str;
    }
}
