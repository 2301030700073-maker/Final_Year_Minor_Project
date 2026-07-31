package androidx.core.app;

import android.app.Notification;
import android.app.NotificationManager;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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
