package androidx.core.app;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.content.Context;
import android.media.AudioAttributes;
import android.net.Uri;
import android.provider.Settings;
import java.util.ArrayList;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class NotificationChannelCompat {
    public final AudioAttributes mAudioAttributes;
    public String mDescription;
    public final String mId;
    public final int mImportance;
    public String mName;
    public final Uri mSound = Settings.System.DEFAULT_NOTIFICATION_URI;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public abstract class Api26Impl {
        public static Notification.Builder createBuilder(Context context, String str) {
            return new Notification.Builder(context, str);
        }

        public static NotificationChannel createNotificationChannel(String str, CharSequence charSequence, int i) {
            return new NotificationChannel(str, charSequence, i);
        }

        public static void createNotificationChannels(NotificationManager notificationManager, ArrayList arrayList) {
            notificationManager.createNotificationChannels(arrayList);
        }

        public static void enableLights(NotificationChannel notificationChannel) {
            notificationChannel.enableLights(false);
        }

        public static void enableVibration(NotificationChannel notificationChannel) {
            notificationChannel.enableVibration(false);
        }

        public static void setBadgeIconType(Notification.Builder builder, int i) {
            builder.setBadgeIconType(i);
        }

        public static void setColorized(Notification.Builder builder, boolean z) {
            builder.setColorized(z);
        }

        public static void setDescription(NotificationChannel notificationChannel, String str) {
            notificationChannel.setDescription(str);
        }

        public static void setGroup(NotificationChannel notificationChannel) {
            notificationChannel.setGroup(null);
        }

        public static void setGroupAlertBehavior(Notification.Builder builder, int i) {
            builder.setGroupAlertBehavior(i);
        }

        public static void setLightColor(NotificationChannel notificationChannel) {
            notificationChannel.setLightColor(0);
        }

        public static void setSettingsText(Notification.Builder builder) {
            builder.setSettingsText(null);
        }

        public static void setShortcutId(Notification.Builder builder) {
            builder.setShortcutId(null);
        }

        public static void setShowBadge(NotificationChannel notificationChannel) {
            notificationChannel.setShowBadge(true);
        }

        public static void setSound(NotificationChannel notificationChannel, Uri uri, AudioAttributes audioAttributes) {
            notificationChannel.setSound(uri, audioAttributes);
        }

        public static void setTimeoutAfter(Notification.Builder builder) {
            builder.setTimeoutAfter(0L);
        }

        public static void setVibrationPattern(NotificationChannel notificationChannel) {
            notificationChannel.setVibrationPattern(null);
        }
    }

    public NotificationChannelCompat(String str, int i) {
        str.getClass();
        this.mId = str;
        this.mImportance = i;
        this.mAudioAttributes = Notification.AUDIO_ATTRIBUTES_DEFAULT;
    }
}
