package net.thunderbird.feature.notification.api.sender;

import kotlinx.coroutines.flow.Flow;
import net.thunderbird.feature.notification.api.content.Notification;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface NotificationSender {
    Flow send(Notification notification);
}
