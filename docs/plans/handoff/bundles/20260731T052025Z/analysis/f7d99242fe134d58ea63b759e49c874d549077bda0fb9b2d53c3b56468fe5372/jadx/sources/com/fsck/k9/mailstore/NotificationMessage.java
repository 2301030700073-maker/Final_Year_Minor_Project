package com.fsck.k9.mailstore;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class NotificationMessage {
    public final LocalMessage message;
    public final Integer notificationId;
    public final long timestamp;

    public NotificationMessage(LocalMessage localMessage, Integer num, long j) {
        this.message = localMessage;
        this.notificationId = num;
        this.timestamp = j;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof NotificationMessage)) {
            return false;
        }
        NotificationMessage notificationMessage = (NotificationMessage) obj;
        return this.message.equals(notificationMessage.message) && Intrinsics.areEqual(this.notificationId, notificationMessage.notificationId) && this.timestamp == notificationMessage.timestamp;
    }

    public final int hashCode() {
        int hashCode = this.message.hashCode() * 31;
        Integer num = this.notificationId;
        int hashCode2 = num == null ? 0 : num.hashCode();
        long j = this.timestamp;
        return ((hashCode + hashCode2) * 31) + ((int) (j ^ (j >>> 32)));
    }

    public final String toString() {
        return "NotificationMessage(message=" + this.message + ", notificationId=" + this.notificationId + ", timestamp=" + this.timestamp + ")";
    }
}
