package androidx.media.app;

import android.app.Notification;
import android.media.session.MediaSession;
import android.support.v4.media.session.MediaSessionCompat;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class NotificationCompat$Api21Impl {
    public static Notification.MediaStyle createMediaStyle() {
        return new Notification.MediaStyle();
    }

    public static Notification.MediaStyle fillInMediaStyle(Notification.MediaStyle mediaStyle, int[] iArr, MediaSessionCompat.Token token) {
        if (iArr != null) {
            setShowActionsInCompactView(mediaStyle, iArr);
        }
        if (token != null) {
            setMediaSession(mediaStyle, (MediaSession.Token) token.mInner);
        }
        return mediaStyle;
    }

    public static void setMediaSession(Notification.MediaStyle mediaStyle, MediaSession.Token token) {
        mediaStyle.setMediaSession(token);
    }

    public static void setMediaStyle(Notification.Builder builder, Notification.MediaStyle mediaStyle) {
        builder.setStyle(mediaStyle);
    }

    public static void setShowActionsInCompactView(Notification.MediaStyle mediaStyle, int... iArr) {
        mediaStyle.setShowActionsInCompactView(iArr);
    }
}
