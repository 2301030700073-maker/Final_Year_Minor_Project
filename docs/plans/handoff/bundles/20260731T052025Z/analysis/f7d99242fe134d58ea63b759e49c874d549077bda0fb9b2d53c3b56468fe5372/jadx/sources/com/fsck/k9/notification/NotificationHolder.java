package com.fsck.k9.notification;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class NotificationHolder {
    public final NotificationContent content;
    public final int notificationId;
    public final long timestamp;

    public NotificationHolder(int i, long j, NotificationContent notificationContent) {
        this.notificationId = i;
        this.timestamp = j;
        this.content = notificationContent;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof NotificationHolder)) {
            return false;
        }
        NotificationHolder notificationHolder = (NotificationHolder) obj;
        return this.notificationId == notificationHolder.notificationId && this.timestamp == notificationHolder.timestamp && this.content.equals(notificationHolder.content);
    }

    public final int hashCode() {
        int i = this.notificationId * 31;
        long j = this.timestamp;
        return this.content.hashCode() + ((i + ((int) (j ^ (j >>> 32)))) * 31);
    }

    public final String toString() {
        return "NotificationHolder(notificationId=" + this.notificationId + ", timestamp=" + this.timestamp + ", content=" + this.content + ")";
    }
}
