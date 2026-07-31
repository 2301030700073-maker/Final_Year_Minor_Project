package net.thunderbird.feature.notification.api.command;

import kotlin.coroutines.Continuation;
import net.thunderbird.feature.notification.api.content.Notification;
import net.thunderbird.feature.notification.api.receiver.NotificationNotifier;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class NotificationCommand {
    public final Notification notification;
    public final NotificationNotifier notifier;

    public NotificationCommand(Notification notification, NotificationNotifier notificationNotifier) {
        notification.getClass();
        this.notification = notification;
        this.notifier = notificationNotifier;
    }

    public abstract Object execute(Continuation continuation);
}
