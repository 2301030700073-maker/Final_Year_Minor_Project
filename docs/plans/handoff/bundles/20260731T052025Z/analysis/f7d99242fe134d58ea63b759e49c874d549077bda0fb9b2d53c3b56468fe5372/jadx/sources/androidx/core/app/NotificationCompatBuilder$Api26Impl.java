package androidx.core.app;

import android.app.Notification;
import android.content.Context;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class NotificationCompatBuilder$Api26Impl {
    public static Notification.Builder createBuilder(Context context, String str) {
        return new Notification.Builder(context, str);
    }

    public static void setBadgeIconType(Notification.Builder builder) {
        builder.setBadgeIconType(0);
    }

    public static void setGroupAlertBehavior(Notification.Builder builder, int i) {
        builder.setGroupAlertBehavior(i);
    }

    public static void setSettingsText(Notification.Builder builder) {
        builder.setSettingsText(null);
    }

    public static void setShortcutId(Notification.Builder builder) {
        builder.setShortcutId(null);
    }

    public static void setTimeoutAfter(Notification.Builder builder) {
        builder.setTimeoutAfter(0L);
    }
}
