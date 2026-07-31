package com.fsck.k9.storage.messages;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MessageData {
    public final boolean hasThreadChildren;
    public final long messageId;
    public final long messagePartId;

    public MessageData(long j, long j2, boolean z) {
        this.messageId = j;
        this.messagePartId = j2;
        this.hasThreadChildren = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MessageData)) {
            return false;
        }
        MessageData messageData = (MessageData) obj;
        return this.messageId == messageData.messageId && this.messagePartId == messageData.messagePartId && this.hasThreadChildren == messageData.hasThreadChildren;
    }

    public final int hashCode() {
        long j = this.messageId;
        long j2 = this.messagePartId;
        return (((((int) (j ^ (j >>> 32))) * 31) + ((int) ((j2 >>> 32) ^ j2))) * 31) + (this.hasThreadChildren ? 1231 : 1237);
    }

    public final String toString() {
        return "MessageData(messageId=" + this.messageId + ", messagePartId=" + this.messagePartId + ", hasThreadChildren=" + this.hasThreadChildren + ")";
    }
}
