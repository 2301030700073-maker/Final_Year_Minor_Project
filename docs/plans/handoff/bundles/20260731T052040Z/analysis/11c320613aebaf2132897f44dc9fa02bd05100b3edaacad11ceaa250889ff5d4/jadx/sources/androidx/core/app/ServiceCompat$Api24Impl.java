package androidx.core.app;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.Service;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class ServiceCompat$Api24Impl {
    public static boolean areNotificationsEnabled(NotificationManager notificationManager) {
        return notificationManager.areNotificationsEnabled();
    }

    public static void setAllowGeneratedReplies(Notification.Action.Builder builder, boolean z) {
        builder.setAllowGeneratedReplies(z);
    }

    public static void setRemoteInputHistory(Notification.Builder builder) {
        builder.setRemoteInputHistory(null);
    }

    public static void stopForeground(Service service) {
        service.stopForeground(1);
    }
}
