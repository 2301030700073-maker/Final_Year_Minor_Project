package net.thunderbird.feature.notification.impl.dismisser;

import com.fsck.k9.ui.settings.SettingsViewModel$moveAccount$1;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.SafeFlow;
import net.thunderbird.core.featureflag.InMemoryFeatureFlagProvider;
import net.thunderbird.core.logging.Logger;
import net.thunderbird.feature.notification.api.NotificationRegistry;
import net.thunderbird.feature.notification.api.content.Notification;
import net.thunderbird.feature.notification.api.dismisser.NotificationDismisser;
import net.thunderbird.feature.notification.api.receiver.NotificationNotifier;
import net.thunderbird.feature.notification.impl.sender.DefaultNotificationSender$send$1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DefaultNotificationDismisser implements NotificationDismisser {
    public final InMemoryFeatureFlagProvider featureFlagProvider;
    public final NotificationNotifier inAppNotificationNotifier;
    public final Logger logger;
    public final NotificationRegistry notificationRegistry;
    public final NotificationNotifier systemNotificationNotifier;

    public DefaultNotificationDismisser(Logger logger, InMemoryFeatureFlagProvider inMemoryFeatureFlagProvider, NotificationRegistry notificationRegistry, NotificationNotifier notificationNotifier, NotificationNotifier notificationNotifier2) {
        this.logger = logger;
        this.featureFlagProvider = inMemoryFeatureFlagProvider;
        this.notificationRegistry = notificationRegistry;
        this.systemNotificationNotifier = notificationNotifier;
        this.inAppNotificationNotifier = notificationNotifier2;
    }

    @Override // net.thunderbird.feature.notification.api.dismisser.NotificationDismisser
    public final Flow dismiss(Notification notification) {
        return new SafeFlow(0, new DefaultNotificationSender$send$1(this, notification, null, 1));
    }

    @Override // net.thunderbird.feature.notification.api.dismisser.NotificationDismisser
    /* renamed from: dismiss-RiqCqwk */
    public final Flow mo1041dismissRiqCqwk(int i) {
        return new SafeFlow(0, new SettingsViewModel$moveAccount$1(this, i, (Continuation) null, 4));
    }
}
