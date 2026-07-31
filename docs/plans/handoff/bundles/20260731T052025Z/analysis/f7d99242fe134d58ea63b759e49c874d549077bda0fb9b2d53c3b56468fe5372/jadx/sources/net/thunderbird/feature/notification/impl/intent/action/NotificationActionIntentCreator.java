package net.thunderbird.feature.notification.impl.intent.action;

import android.app.PendingIntent;
import net.thunderbird.feature.notification.api.content.AuthenticationErrorNotification;
import net.thunderbird.feature.notification.api.ui.action.NotificationAction;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface NotificationActionIntentCreator {
    boolean accept(AuthenticationErrorNotification authenticationErrorNotification, NotificationAction notificationAction);

    PendingIntent create(AuthenticationErrorNotification authenticationErrorNotification, NotificationAction notificationAction);
}
