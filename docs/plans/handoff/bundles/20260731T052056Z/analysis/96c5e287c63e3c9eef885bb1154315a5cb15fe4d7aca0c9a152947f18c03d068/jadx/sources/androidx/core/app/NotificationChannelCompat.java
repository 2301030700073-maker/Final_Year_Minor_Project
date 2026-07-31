package androidx.core.app;

import android.app.Notification;
import android.app.NotificationChannel;
import android.media.AudioAttributes;
import android.net.Uri;
import android.os.Build;
import android.provider.Settings;
import androidx.core.app.RemoteInput;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class NotificationChannelCompat {
    public final AudioAttributes mAudioAttributes;
    public final String mConversationId;
    public String mDescription;
    public String mGroupId;
    public final String mId;
    public final int mImportance;
    public int mLightColor;
    public final boolean mLights;
    public CharSequence mName;
    public final String mParentId;
    public final boolean mShowBadge;
    public final Uri mSound;
    public boolean mVibrationEnabled;
    public final long[] mVibrationPattern;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract class Api30Impl {
        public static String getConversationId(NotificationChannel notificationChannel) {
            return notificationChannel.getConversationId();
        }

        public static String getParentChannelId(NotificationChannel notificationChannel) {
            return notificationChannel.getParentChannelId();
        }

        public static void isImportantConversation(NotificationChannel notificationChannel) {
            notificationChannel.isImportantConversation();
        }

        public static void setConversationId(NotificationChannel notificationChannel, String str, String str2) {
            notificationChannel.setConversationId(str, str2);
        }
    }

    public NotificationChannelCompat(NotificationChannel notificationChannel) {
        this(RemoteInput.Api26Impl.getImportance(notificationChannel), RemoteInput.Api26Impl.getId(notificationChannel));
        this.mName = RemoteInput.Api26Impl.getName(notificationChannel);
        this.mDescription = RemoteInput.Api26Impl.getDescription(notificationChannel);
        this.mGroupId = RemoteInput.Api26Impl.getGroup(notificationChannel);
        this.mShowBadge = RemoteInput.Api26Impl.canShowBadge(notificationChannel);
        this.mSound = RemoteInput.Api26Impl.getSound(notificationChannel);
        this.mAudioAttributes = RemoteInput.Api26Impl.getAudioAttributes(notificationChannel);
        this.mLights = RemoteInput.Api26Impl.shouldShowLights(notificationChannel);
        this.mLightColor = RemoteInput.Api26Impl.getLightColor(notificationChannel);
        this.mVibrationEnabled = RemoteInput.Api26Impl.shouldVibrate(notificationChannel);
        this.mVibrationPattern = RemoteInput.Api26Impl.getVibrationPattern(notificationChannel);
        int i = Build.VERSION.SDK_INT;
        if (i >= 30) {
            this.mParentId = Api30Impl.getParentChannelId(notificationChannel);
            this.mConversationId = Api30Impl.getConversationId(notificationChannel);
        }
        RemoteInput.Api26Impl.canBypassDnd(notificationChannel);
        RemoteInput.Api26Impl.getLockscreenVisibility(notificationChannel);
        if (i >= 29) {
            RemoteInput.Api29Impl.canBubble(notificationChannel);
        }
        if (i >= 30) {
            Api30Impl.isImportantConversation(notificationChannel);
        }
    }

    public NotificationChannelCompat(int i, String str) {
        this.mShowBadge = true;
        this.mSound = Settings.System.DEFAULT_NOTIFICATION_URI;
        this.mLightColor = 0;
        str.getClass();
        this.mId = str;
        this.mImportance = i;
        this.mAudioAttributes = Notification.AUDIO_ATTRIBUTES_DEFAULT;
    }
}
