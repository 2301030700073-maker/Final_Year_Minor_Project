package androidx.media.app;

import android.app.Notification;
import android.os.Build;
import android.support.v4.media.session.MediaSessionCompat;
import androidx.core.app.NotificationCompat$Style;
import androidx.core.app.NotificationCompatBuilder;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class NotificationCompat$MediaStyle extends NotificationCompat$Style {
    public int[] mActionsToShowInCompact = null;
    public MediaSessionCompat.Token mToken;

    @Override // androidx.core.app.NotificationCompat$Style
    public final void apply(NotificationCompatBuilder notificationCompatBuilder) {
        int i = Build.VERSION.SDK_INT;
        Notification.Builder builder = (Notification.Builder) notificationCompatBuilder.mBuilder;
        if (i >= 34) {
            NotificationCompat$Api21Impl.setMediaStyle(builder, NotificationCompat$Api21Impl.fillInMediaStyle(NotificationCompat$Api34Impl.setRemotePlaybackInfo(NotificationCompat$Api21Impl.createMediaStyle(), null, 0, null, Boolean.FALSE), this.mActionsToShowInCompact, this.mToken));
        } else {
            NotificationCompat$Api21Impl.setMediaStyle(builder, NotificationCompat$Api21Impl.fillInMediaStyle(NotificationCompat$Api21Impl.createMediaStyle(), this.mActionsToShowInCompact, this.mToken));
        }
    }
}
