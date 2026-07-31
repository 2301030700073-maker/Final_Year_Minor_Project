package com.fsck.k9.notification;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class InactiveNotificationHolder {
    public final NotificationContent content;
    public final long timestamp;

    public InactiveNotificationHolder(long j, NotificationContent notificationContent) {
        this.timestamp = j;
        this.content = notificationContent;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof InactiveNotificationHolder)) {
            return false;
        }
        InactiveNotificationHolder inactiveNotificationHolder = (InactiveNotificationHolder) obj;
        return this.timestamp == inactiveNotificationHolder.timestamp && this.content.equals(inactiveNotificationHolder.content);
    }

    public final int hashCode() {
        long j = this.timestamp;
        return this.content.hashCode() + (((int) (j ^ (j >>> 32))) * 31);
    }

    public final String toString() {
        return "InactiveNotificationHolder(timestamp=" + this.timestamp + ", content=" + this.content + ")";
    }
}
