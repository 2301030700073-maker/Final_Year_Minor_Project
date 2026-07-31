package net.thunderbird.feature.notification.impl.intent.action;

import android.app.PendingIntent;
import net.thunderbird.feature.notification.api.content.AuthenticationErrorNotification;
import net.thunderbird.feature.notification.api.ui.action.NotificationAction;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AlarmPermissionMissingNotificationTapActionIntentCreator implements NotificationActionIntentCreator {
    @Override // net.thunderbird.feature.notification.impl.intent.action.NotificationActionIntentCreator
    public final boolean accept(AuthenticationErrorNotification authenticationErrorNotification, NotificationAction notificationAction) {
        authenticationErrorNotification.getClass();
        notificationAction.getClass();
        return false;
    }

    @Override // net.thunderbird.feature.notification.impl.intent.action.NotificationActionIntentCreator
    public final PendingIntent create(AuthenticationErrorNotification authenticationErrorNotification, NotificationAction notificationAction) {
        if (authenticationErrorNotification != null) {
            throw new ClassCastException();
        }
        throw null;
    }
}
