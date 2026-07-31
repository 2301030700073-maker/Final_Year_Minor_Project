package androidx.core.app;

import android.app.Notification;
import android.content.Context;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class AppOpsManagerCompat$Api29Impl {
    public static String getOpPackageName(Context context) {
        return context.getOpPackageName();
    }

    public static void setAllowSystemGeneratedContextualActions(Notification.Builder builder, boolean z) {
        builder.setAllowSystemGeneratedContextualActions(z);
    }

    public static void setBubbleMetadata(Notification.Builder builder) {
        builder.setBubbleMetadata(null);
    }

    public static void setContextual(Notification.Action.Builder builder) {
        builder.setContextual(false);
    }
}
