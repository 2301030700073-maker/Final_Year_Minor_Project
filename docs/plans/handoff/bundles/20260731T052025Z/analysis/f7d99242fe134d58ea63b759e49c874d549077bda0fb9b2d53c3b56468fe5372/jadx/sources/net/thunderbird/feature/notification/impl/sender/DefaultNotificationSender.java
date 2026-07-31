package net.thunderbird.feature.notification.impl.sender;

import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.SafeFlow;
import net.thunderbird.core.featureflag.InMemoryFeatureFlagProvider;
import net.thunderbird.core.logging.Logger;
import net.thunderbird.feature.notification.api.content.Notification;
import net.thunderbird.feature.notification.api.receiver.NotificationNotifier;
import net.thunderbird.feature.notification.api.sender.NotificationSender;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DefaultNotificationSender implements NotificationSender {
    public final InMemoryFeatureFlagProvider featureFlagProvider;
    public final NotificationNotifier inAppNotificationNotifier;
    public final Logger logger;
    public final NotificationNotifier systemNotificationNotifier;

    public DefaultNotificationSender(Logger logger, InMemoryFeatureFlagProvider inMemoryFeatureFlagProvider, NotificationNotifier notificationNotifier, NotificationNotifier notificationNotifier2) {
        this.logger = logger;
        this.featureFlagProvider = inMemoryFeatureFlagProvider;
        this.systemNotificationNotifier = notificationNotifier;
        this.inAppNotificationNotifier = notificationNotifier2;
    }

    @Override // net.thunderbird.feature.notification.api.sender.NotificationSender
    public final Flow send(Notification notification) {
        notification.getClass();
        return new SafeFlow(0, new DefaultNotificationSender$send$1(this, notification, null, 0));
    }
}
