package org.wikipedia.compose.components;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class NotificationBellState {
    public final boolean canShow;
    public final int unreadCount;

    public NotificationBellState(int i, boolean z) {
        this.unreadCount = i;
        this.canShow = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof NotificationBellState)) {
            return false;
        }
        NotificationBellState notificationBellState = (NotificationBellState) obj;
        return this.unreadCount == notificationBellState.unreadCount && this.canShow == notificationBellState.canShow;
    }

    public final int hashCode() {
        return (this.unreadCount * 31) + (this.canShow ? 1231 : 1237);
    }

    public final String toString() {
        return "NotificationBellState(unreadCount=" + this.unreadCount + ", canShow=" + this.canShow + ")";
    }
}
