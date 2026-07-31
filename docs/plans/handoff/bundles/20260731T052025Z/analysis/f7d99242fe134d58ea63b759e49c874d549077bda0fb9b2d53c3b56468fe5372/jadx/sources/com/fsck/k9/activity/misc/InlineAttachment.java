package com.fsck.k9.activity.misc;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class InlineAttachment {
    public final Attachment attachment;
    public final String contentId;

    public InlineAttachment(String str, Attachment attachment) {
        str.getClass();
        attachment.getClass();
        this.contentId = str;
        this.attachment = attachment;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof InlineAttachment)) {
            return false;
        }
        InlineAttachment inlineAttachment = (InlineAttachment) obj;
        return Intrinsics.areEqual(this.contentId, inlineAttachment.contentId) && Intrinsics.areEqual(this.attachment, inlineAttachment.attachment);
    }

    public final int hashCode() {
        return this.attachment.hashCode() + (this.contentId.hashCode() * 31);
    }

    public final String toString() {
        return "InlineAttachment(contentId=" + this.contentId + ", attachment=" + this.attachment + ")";
    }
}
