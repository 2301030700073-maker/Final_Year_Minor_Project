package net.thunderbird.feature.notification.impl;

import kotlinx.coroutines.flow.Flow;
import net.thunderbird.feature.notification.api.content.Notification;
import net.thunderbird.feature.notification.api.dismisser.NotificationDismisser;
import net.thunderbird.feature.notification.api.sender.NotificationSender;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DefaultNotificationManager implements NotificationSender, NotificationDismisser {
    public final NotificationDismisser notificationDismisser;
    public final NotificationSender notificationSender;

    public DefaultNotificationManager(NotificationSender notificationSender, NotificationDismisser notificationDismisser) {
        this.notificationSender = notificationSender;
        this.notificationDismisser = notificationDismisser;
    }

    @Override // net.thunderbird.feature.notification.api.dismisser.NotificationDismisser
    public final Flow dismiss(Notification notification) {
        return this.notificationDismisser.dismiss(notification);
    }

    @Override // net.thunderbird.feature.notification.api.dismisser.NotificationDismisser
    /* renamed from: dismiss-RiqCqwk */
    public final Flow mo1041dismissRiqCqwk(int i) {
        return this.notificationDismisser.mo1041dismissRiqCqwk(i);
    }

    @Override // net.thunderbird.feature.notification.api.sender.NotificationSender
    public final Flow send(Notification notification) {
        notification.getClass();
        return this.notificationSender.send(notification);
    }
}
