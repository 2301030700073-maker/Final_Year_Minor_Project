package androidx.core.app;

import android.app.Notification;
import android.app.NotificationManager;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class NotificationCompatBuilder$Api24Impl {
    public static boolean areNotificationsEnabled(NotificationManager notificationManager) {
        return notificationManager.areNotificationsEnabled();
    }

    public static void setAllowGeneratedReplies(Notification.Action.Builder builder, boolean z) {
        builder.setAllowGeneratedReplies(z);
    }

    public static void setRemoteInputHistory(Notification.Builder builder) {
        builder.setRemoteInputHistory(null);
    }
}
