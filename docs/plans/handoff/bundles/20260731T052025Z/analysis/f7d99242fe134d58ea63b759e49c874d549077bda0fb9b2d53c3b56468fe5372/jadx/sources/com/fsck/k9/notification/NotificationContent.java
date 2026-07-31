package com.fsck.k9.notification;

import androidx.compose.ui.Modifier;
import app.k9mail.legacy.message.controller.MessageReference;
import com.fsck.k9.mail.Address;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class NotificationContent {
    public final MessageReference messageReference;
    public final CharSequence preview;
    public final Address sender;
    public final String subject;
    public final CharSequence summary;

    public NotificationContent(MessageReference messageReference, Address address, String str, CharSequence charSequence, CharSequence charSequence2) {
        this.messageReference = messageReference;
        this.sender = address;
        this.subject = str;
        this.preview = charSequence;
        this.summary = charSequence2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof NotificationContent)) {
            return false;
        }
        NotificationContent notificationContent = (NotificationContent) obj;
        return this.messageReference.equals(notificationContent.messageReference) && this.sender.equals(notificationContent.sender) && this.subject.equals(notificationContent.subject) && this.preview.equals(notificationContent.preview) && this.summary.equals(notificationContent.summary);
    }

    public final int hashCode() {
        return this.summary.hashCode() + ((this.preview.hashCode() + Modifier.CC.m((this.sender.hashCode() + (this.messageReference.hashCode() * 31)) * 31, this.subject, 31)) * 31);
    }

    public final String toString() {
        return "NotificationContent(messageReference=" + this.messageReference + ", sender=" + this.sender + ", subject=" + this.subject + ", preview=" + ((Object) this.preview) + ", summary=" + ((Object) this.summary) + ")";
    }
}
