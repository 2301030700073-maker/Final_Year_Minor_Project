package org.schabi.newpipe.local.feed.notifications;

import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.content.Context;
import android.os.Build;
import androidx.core.app.NotificationManagerCompat;
import androidx.preference.PreferenceManager;
import org.schabi.newpipe.R;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class NotificationHelper {
    public static final Companion Companion = new Companion();
    public final Context context;
    public final NotificationManagerCompat manager;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Companion {
        public static boolean areNewStreamsNotificationsEnabled(Context context) {
            context.getClass();
            return context.getSharedPreferences(PreferenceManager.getDefaultSharedPreferencesName(context), 0).getBoolean(context.getString(R.string.enable_streams_notifications), false) && areNotificationsEnabledOnDevice(context);
        }

        public static boolean areNotificationsEnabledOnDevice(Context context) {
            context.getClass();
            if (Build.VERSION.SDK_INT < 26) {
                return new NotificationManagerCompat(context).areNotificationsEnabled();
            }
            String string = context.getString(R.string.streams_notification_channel_id);
            string.getClass();
            Object systemService = context.getSystemService((Class<Object>) NotificationManager.class);
            systemService.getClass();
            NotificationManager notificationManager = (NotificationManager) systemService;
            boolean areNotificationsEnabled = notificationManager.areNotificationsEnabled();
            NotificationChannel notificationChannel = notificationManager.getNotificationChannel(string);
            if (areNotificationsEnabled) {
                return notificationChannel == null || notificationChannel.getImportance() != 0;
            }
            return false;
        }
    }

    public NotificationHelper(Context context) {
        this.context = context;
        this.manager = new NotificationManagerCompat(context);
    }
}
