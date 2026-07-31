package androidx.core.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.graphics.PorterDuff;
import android.graphics.drawable.Icon;
import android.text.TextUtils;
import androidx.core.graphics.drawable.IconCompat;
import coil3.util.UtilsKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class NotificationCompat$BubbleMetadata {
    public PendingIntent mDeleteIntent;
    public int mDesiredHeight;
    public int mDesiredHeightResId;
    public int mFlags;
    public IconCompat mIcon;
    public PendingIntent mPendingIntent;
    public String mShortcutId;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract class Api29Impl {
        public static NotificationCompat$BubbleMetadata fromPlatform(Notification.BubbleMetadata bubbleMetadata) {
            int i;
            if (bubbleMetadata == null || bubbleMetadata.getIntent() == null) {
                return null;
            }
            PendingIntent intent = bubbleMetadata.getIntent();
            Icon icon = bubbleMetadata.getIcon();
            PorterDuff.Mode mode = IconCompat.DEFAULT_TINT_MODE;
            IconCompat createFromIconInner = UtilsKt.createFromIconInner(icon);
            if (intent == null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Bubble requires non-null pending intent");
                return null;
            }
            boolean autoExpandBubble = bubbleMetadata.getAutoExpandBubble();
            PendingIntent deleteIntent = bubbleMetadata.getDeleteIntent();
            int i2 = bubbleMetadata.isNotificationSuppressed() ? (autoExpandBubble ? 1 : 0) | 2 : (autoExpandBubble ? 1 : 0) & (-3);
            int i3 = 0;
            int max = bubbleMetadata.getDesiredHeight() != 0 ? Math.max(bubbleMetadata.getDesiredHeight(), 0) : 0;
            if (bubbleMetadata.getDesiredHeightResId() != 0) {
                i = bubbleMetadata.getDesiredHeightResId();
            } else {
                i = 0;
                i3 = max;
            }
            NotificationCompat$BubbleMetadata notificationCompat$BubbleMetadata = new NotificationCompat$BubbleMetadata();
            notificationCompat$BubbleMetadata.mPendingIntent = intent;
            notificationCompat$BubbleMetadata.mIcon = createFromIconInner;
            notificationCompat$BubbleMetadata.mDesiredHeight = i3;
            notificationCompat$BubbleMetadata.mDesiredHeightResId = i;
            notificationCompat$BubbleMetadata.mDeleteIntent = deleteIntent;
            notificationCompat$BubbleMetadata.mShortcutId = null;
            notificationCompat$BubbleMetadata.mFlags = i2;
            return notificationCompat$BubbleMetadata;
        }

        public static Notification.BubbleMetadata toPlatform(NotificationCompat$BubbleMetadata notificationCompat$BubbleMetadata) {
            PendingIntent pendingIntent;
            if (notificationCompat$BubbleMetadata == null || (pendingIntent = notificationCompat$BubbleMetadata.mPendingIntent) == null) {
                return null;
            }
            Notification.BubbleMetadata.Builder builder = new Notification.BubbleMetadata.Builder();
            IconCompat iconCompat = notificationCompat$BubbleMetadata.mIcon;
            iconCompat.getClass();
            Notification.BubbleMetadata.Builder suppressNotification = builder.setIcon(UtilsKt.toIcon(iconCompat, null)).setIntent(pendingIntent).setDeleteIntent(notificationCompat$BubbleMetadata.mDeleteIntent).setAutoExpandBubble((notificationCompat$BubbleMetadata.mFlags & 1) != 0).setSuppressNotification((notificationCompat$BubbleMetadata.mFlags & 2) != 0);
            int i = notificationCompat$BubbleMetadata.mDesiredHeight;
            if (i != 0) {
                suppressNotification.setDesiredHeight(i);
            }
            int i2 = notificationCompat$BubbleMetadata.mDesiredHeightResId;
            if (i2 != 0) {
                suppressNotification.setDesiredHeightResId(i2);
            }
            return suppressNotification.build();
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract class Api30Impl {
        public static NotificationCompat$BubbleMetadata fromPlatform(Notification.BubbleMetadata bubbleMetadata) {
            Builder builder;
            if (bubbleMetadata == null) {
                return null;
            }
            if (bubbleMetadata.getShortcutId() != null) {
                String shortcutId = bubbleMetadata.getShortcutId();
                builder = new Builder();
                if (TextUtils.isEmpty(shortcutId)) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Bubble requires a non-null shortcut id");
                    return null;
                }
                builder.mShortcutId = shortcutId;
            } else {
                PendingIntent intent = bubbleMetadata.getIntent();
                Icon icon = bubbleMetadata.getIcon();
                PorterDuff.Mode mode = IconCompat.DEFAULT_TINT_MODE;
                IconCompat createFromIconInner = UtilsKt.createFromIconInner(icon);
                builder = new Builder();
                if (intent == null) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Bubble requires non-null pending intent");
                    return null;
                }
                builder.mPendingIntent = intent;
                builder.mIcon = createFromIconInner;
            }
            builder.setFlag(1, bubbleMetadata.getAutoExpandBubble());
            builder.mDeleteIntent = bubbleMetadata.getDeleteIntent();
            builder.setFlag(2, bubbleMetadata.isNotificationSuppressed());
            if (bubbleMetadata.getDesiredHeight() != 0) {
                builder.mDesiredHeight = Math.max(bubbleMetadata.getDesiredHeight(), 0);
                builder.mDesiredHeightResId = 0;
            }
            if (bubbleMetadata.getDesiredHeightResId() != 0) {
                builder.mDesiredHeightResId = bubbleMetadata.getDesiredHeightResId();
                builder.mDesiredHeight = 0;
            }
            IconCompat iconCompat = builder.mIcon;
            PendingIntent pendingIntent = builder.mPendingIntent;
            String str = builder.mShortcutId;
            if (str == null && pendingIntent == null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Must supply pending intent or shortcut to bubble");
                return null;
            }
            if (str == null && iconCompat == null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Must supply an icon or shortcut for the bubble");
                return null;
            }
            PendingIntent pendingIntent2 = builder.mDeleteIntent;
            int i = builder.mDesiredHeight;
            int i2 = builder.mDesiredHeightResId;
            int i3 = builder.mFlags;
            NotificationCompat$BubbleMetadata notificationCompat$BubbleMetadata = new NotificationCompat$BubbleMetadata();
            notificationCompat$BubbleMetadata.mPendingIntent = pendingIntent;
            notificationCompat$BubbleMetadata.mIcon = iconCompat;
            notificationCompat$BubbleMetadata.mDesiredHeight = i;
            notificationCompat$BubbleMetadata.mDesiredHeightResId = i2;
            notificationCompat$BubbleMetadata.mDeleteIntent = pendingIntent2;
            notificationCompat$BubbleMetadata.mShortcutId = str;
            notificationCompat$BubbleMetadata.mFlags = i3;
            return notificationCompat$BubbleMetadata;
        }

        public static Notification.BubbleMetadata toPlatform(NotificationCompat$BubbleMetadata notificationCompat$BubbleMetadata) {
            Notification.BubbleMetadata.Builder builder;
            if (notificationCompat$BubbleMetadata == null) {
                return null;
            }
            String str = notificationCompat$BubbleMetadata.mShortcutId;
            if (str != null) {
                builder = new Notification.BubbleMetadata.Builder(str);
            } else {
                PendingIntent pendingIntent = notificationCompat$BubbleMetadata.mPendingIntent;
                IconCompat iconCompat = notificationCompat$BubbleMetadata.mIcon;
                iconCompat.getClass();
                builder = new Notification.BubbleMetadata.Builder(pendingIntent, UtilsKt.toIcon(iconCompat, null));
            }
            builder.setDeleteIntent(notificationCompat$BubbleMetadata.mDeleteIntent).setAutoExpandBubble((notificationCompat$BubbleMetadata.mFlags & 1) != 0).setSuppressNotification((notificationCompat$BubbleMetadata.mFlags & 2) != 0);
            int i = notificationCompat$BubbleMetadata.mDesiredHeight;
            if (i != 0) {
                builder.setDesiredHeight(i);
            }
            int i2 = notificationCompat$BubbleMetadata.mDesiredHeightResId;
            if (i2 != 0) {
                builder.setDesiredHeightResId(i2);
            }
            return builder.build();
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Builder {
        public PendingIntent mDeleteIntent;
        public int mDesiredHeight;
        public int mDesiredHeightResId;
        public int mFlags;
        public IconCompat mIcon;
        public PendingIntent mPendingIntent;
        public String mShortcutId;

        public final void setFlag(int i, boolean z) {
            int i2 = this.mFlags;
            if (z) {
                this.mFlags = i | i2;
            } else {
                this.mFlags = (~i) & i2;
            }
        }
    }
}
