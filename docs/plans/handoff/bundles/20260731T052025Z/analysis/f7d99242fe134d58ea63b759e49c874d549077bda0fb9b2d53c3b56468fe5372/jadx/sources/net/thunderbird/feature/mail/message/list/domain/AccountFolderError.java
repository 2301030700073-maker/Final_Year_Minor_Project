package net.thunderbird.feature.mail.message.list.domain;

import net.thunderbird.core.common.exception.MessagingException;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AccountFolderError {
    public final MessagingException exception;

    public AccountFolderError(MessagingException messagingException) {
        this.exception = messagingException;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof AccountFolderError) && this.exception.equals(((AccountFolderError) obj).exception);
    }

    public final int hashCode() {
        return this.exception.hashCode();
    }

    public final String toString() {
        return "AccountFolderError(exception=" + this.exception + ")";
    }
}
