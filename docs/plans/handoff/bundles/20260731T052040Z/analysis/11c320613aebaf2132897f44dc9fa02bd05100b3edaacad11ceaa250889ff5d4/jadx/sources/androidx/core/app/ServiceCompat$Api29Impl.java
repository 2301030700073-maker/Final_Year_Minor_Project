package androidx.core.app;

import android.app.Notification;
import android.content.Context;
import org.schabi.newpipe.player.PlayerService;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class ServiceCompat$Api29Impl {
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

    public static void startForeground(PlayerService playerService, Notification notification, int i) {
        if (i == 0 || i == -1) {
            playerService.startForeground(123789, notification, i);
        } else {
            playerService.startForeground(123789, notification, i & 255);
        }
    }

    public static void startForeground$1(PlayerService playerService, Notification notification, int i) {
        if (i == 0 || i == -1) {
            playerService.startForeground(123789, notification, i);
        } else {
            playerService.startForeground(123789, notification, i & 1073745919);
        }
    }
}
