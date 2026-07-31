package org.schabi.newpipe.player.notification;

import android.content.Intent;
import android.graphics.Bitmap;
import androidx.core.app.NavUtils;
import androidx.core.app.NotificationCompat$Action;
import androidx.core.app.NotificationCompat$Builder;
import androidx.core.app.NotificationManagerCompat;
import org.schabi.newpipe.extractor.stream.StreamInfo;
import org.schabi.newpipe.player.Player;
import org.schabi.newpipe.player.helper.PlayerHelper;
import org.schabi.newpipe.player.ui.PlayerUi;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final class NotificationPlayerUi extends PlayerUi {
    public final NotificationUtil notificationUtil;

    public NotificationPlayerUi(Player player) {
        super(player);
        this.notificationUtil = new NotificationUtil(player);
    }

    @Override // org.schabi.newpipe.player.ui.PlayerUi
    public final void destroy() {
        NotificationUtil notificationUtil = this.notificationUtil;
        NavUtils.stopForeground(notificationUtil.player.service);
        NotificationManagerCompat notificationManagerCompat = notificationUtil.notificationManager;
        if (notificationManagerCompat != null) {
            notificationManagerCompat.mNotificationManager.cancel(null, 123789);
        }
        notificationUtil.notificationManager = null;
        notificationUtil.notificationBuilder = null;
    }

    @Override // org.schabi.newpipe.player.ui.PlayerUi
    public final void onBlocked() {
        this.notificationUtil.createNotificationIfNeededAndUpdate(false);
    }

    @Override // org.schabi.newpipe.player.ui.PlayerUi
    public final void onBroadcastReceived(Intent intent) {
        if ("org.schabi.newpipe.player.MainPlayer..player.MainPlayer.ACTION_RECREATE_NOTIFICATION".equals(intent.getAction())) {
            this.notificationUtil.createNotificationIfNeededAndUpdate(true);
        }
    }

    @Override // org.schabi.newpipe.player.ui.PlayerUi
    public final void onBuffering() {
        NotificationUtil notificationUtil = this.notificationUtil;
        int[] iArr = notificationUtil.notificationSlots;
        NotificationCompat$Builder notificationCompat$Builder = notificationUtil.notificationBuilder;
        if (notificationCompat$Builder == null) {
            return;
        }
        if (notificationCompat$Builder.mActions.size() >= 3 && ((iArr[1] != 8 || ((NotificationCompat$Action) notificationUtil.notificationBuilder.mActions.get(1)).actionIntent == null) && (iArr[2] != 8 || ((NotificationCompat$Action) notificationUtil.notificationBuilder.mActions.get(2)).actionIntent == null))) {
            return;
        }
        notificationUtil.createNotificationIfNeededAndUpdate(false);
    }

    @Override // org.schabi.newpipe.player.ui.PlayerUi
    public final void onCompleted() {
        this.notificationUtil.createNotificationIfNeededAndUpdate(false);
    }

    @Override // org.schabi.newpipe.player.ui.PlayerUi
    public final void onMetadataChanged(StreamInfo streamInfo) {
        this.notificationUtil.createNotificationIfNeededAndUpdate(true);
    }

    @Override // org.schabi.newpipe.player.ui.PlayerUi
    public final void onPaused() {
        int minimizeOnExitAction = PlayerHelper.getMinimizeOnExitAction(this.context);
        NotificationUtil notificationUtil = this.notificationUtil;
        if (minimizeOnExitAction != 0 || !this.player.videoPlayerSelected()) {
            notificationUtil.createNotificationIfNeededAndUpdate(false);
            return;
        }
        NavUtils.stopForeground(notificationUtil.player.service);
        NotificationManagerCompat notificationManagerCompat = notificationUtil.notificationManager;
        if (notificationManagerCompat != null) {
            notificationManagerCompat.mNotificationManager.cancel(null, 123789);
        }
        notificationUtil.notificationManager = null;
        notificationUtil.notificationBuilder = null;
    }

    @Override // org.schabi.newpipe.player.ui.PlayerUi
    public final void onPausedSeek() {
        this.notificationUtil.createNotificationIfNeededAndUpdate(false);
    }

    @Override // org.schabi.newpipe.player.ui.PlayerUi
    public final void onPlayQueueEdited() {
        this.notificationUtil.createNotificationIfNeededAndUpdate(false);
    }

    @Override // org.schabi.newpipe.player.ui.PlayerUi
    public final void onPlaying() {
        this.notificationUtil.createNotificationIfNeededAndUpdate(false);
    }

    @Override // org.schabi.newpipe.player.ui.PlayerUi
    public final void onRepeatModeChanged(int i) {
        this.notificationUtil.createNotificationIfNeededAndUpdate(false);
    }

    @Override // org.schabi.newpipe.player.ui.PlayerUi
    public final void onShuffleModeEnabledChanged(boolean z) {
        this.notificationUtil.createNotificationIfNeededAndUpdate(false);
    }

    @Override // org.schabi.newpipe.player.ui.PlayerUi
    public final void onThumbnailLoaded(Bitmap bitmap) {
        NotificationUtil notificationUtil = this.notificationUtil;
        synchronized (notificationUtil) {
            NotificationCompat$Builder notificationCompat$Builder = notificationUtil.notificationBuilder;
            if (notificationCompat$Builder != null) {
                notificationUtil.setLargeIcon(notificationCompat$Builder);
                if (notificationUtil.notificationManager.areNotificationsEnabled()) {
                    notificationUtil.notificationManager.notify(123789, notificationUtil.notificationBuilder.build());
                }
            }
        }
    }
}
