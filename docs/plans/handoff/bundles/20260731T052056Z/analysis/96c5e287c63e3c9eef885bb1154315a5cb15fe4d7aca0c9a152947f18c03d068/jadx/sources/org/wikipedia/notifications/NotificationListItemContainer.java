package org.wikipedia.notifications;

import org.wikipedia.notifications.db.Notification;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class NotificationListItemContainer {
    public final Notification notification;
    public boolean selected;
    public final int type;

    public NotificationListItemContainer(Notification notification, int i) {
        notification = (i & 1) != 0 ? null : notification;
        int i2 = notification == null ? 0 : 1;
        this.notification = notification;
        this.type = i2;
        this.selected = false;
    }
}
