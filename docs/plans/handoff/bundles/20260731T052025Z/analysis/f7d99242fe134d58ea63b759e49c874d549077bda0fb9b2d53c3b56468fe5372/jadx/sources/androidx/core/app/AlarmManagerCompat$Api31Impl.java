package androidx.core.app;

import android.app.AlarmManager;
import android.app.Notification;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class AlarmManagerCompat$Api31Impl {
    public static boolean canScheduleExactAlarms(AlarmManager alarmManager) {
        return alarmManager.canScheduleExactAlarms();
    }

    public static void setAuthenticationRequired(Notification.Action.Builder builder) {
        builder.setAuthenticationRequired(false);
    }

    public static void setForegroundServiceBehavior(Notification.Builder builder, int i) {
        builder.setForegroundServiceBehavior(i);
    }
}
