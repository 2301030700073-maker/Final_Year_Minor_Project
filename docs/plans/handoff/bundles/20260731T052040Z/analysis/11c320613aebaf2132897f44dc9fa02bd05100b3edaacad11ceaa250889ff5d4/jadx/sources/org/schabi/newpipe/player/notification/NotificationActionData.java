package org.schabi.newpipe.player.notification;

import com.google.android.exoplayer2.ui.R;
import j$.util.Objects;
import org.schabi.newpipe.player.Player;
import org.schabi.newpipe.player.PlayerService;
import org.schabi.newpipe.player.playqueue.PlayQueue;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class NotificationActionData {
    public final String action;
    public final int icon;
    public final String name;

    public NotificationActionData(String str, String str2, int i) {
        this.action = str;
        this.name = str2;
        this.icon = i;
    }

    public static NotificationActionData fromNotificationActionEnum(Player player, int i) {
        int i2;
        int i3 = NotificationConstants.ACTION_ICONS[i];
        PlayerService playerService = player.context;
        switch (i) {
            case 1:
                return new NotificationActionData("org.schabi.newpipe.player.MainPlayer..player.MainPlayer.ACTION_PLAY_PREVIOUS", playerService.getString(R.string.exo_controls_previous_description), i3);
            case 2:
                return new NotificationActionData("org.schabi.newpipe.player.MainPlayer..player.MainPlayer.ACTION_PLAY_NEXT", playerService.getString(R.string.exo_controls_next_description), i3);
            case 3:
                return new NotificationActionData("org.schabi.newpipe.player.MainPlayer..player.MainPlayer.ACTION_FAST_REWIND", playerService.getString(R.string.exo_controls_rewind_description), i3);
            case 4:
                return new NotificationActionData("org.schabi.newpipe.player.MainPlayer..player.MainPlayer.ACTION_FAST_FORWARD", playerService.getString(R.string.exo_controls_fastforward_description), i3);
            case 5:
                PlayQueue playQueue = player.playQueue;
                return (playQueue == null || playQueue.size() <= 1) ? new NotificationActionData("org.schabi.newpipe.player.MainPlayer..player.MainPlayer.ACTION_FAST_REWIND", playerService.getString(R.string.exo_controls_rewind_description), R.drawable.exo_controls_rewind) : new NotificationActionData("org.schabi.newpipe.player.MainPlayer..player.MainPlayer.ACTION_PLAY_PREVIOUS", playerService.getString(R.string.exo_controls_previous_description), R.drawable.exo_notification_previous);
            case 6:
                PlayQueue playQueue2 = player.playQueue;
                return (playQueue2 == null || playQueue2.size() <= 1) ? new NotificationActionData("org.schabi.newpipe.player.MainPlayer..player.MainPlayer.ACTION_FAST_FORWARD", playerService.getString(R.string.exo_controls_fastforward_description), R.drawable.exo_controls_fastforward) : new NotificationActionData("org.schabi.newpipe.player.MainPlayer..player.MainPlayer.ACTION_PLAY_NEXT", playerService.getString(R.string.exo_controls_next_description), R.drawable.exo_notification_next);
            case 7:
                break;
            case 8:
                int i4 = player.currentState;
                if (i4 == -1 || i4 == 123 || i4 == 125) {
                    return new NotificationActionData("org.schabi.newpipe.player.MainPlayer..player.MainPlayer.PLAY_PAUSE", playerService.getString(org.schabi.newpipe.R.string.notification_action_buffering), org.schabi.newpipe.R.drawable.ic_hourglass_top);
                }
            case 9:
                return player.getRepeatMode() == 2 ? new NotificationActionData("org.schabi.newpipe.player.MainPlayer..player.MainPlayer.REPEAT", playerService.getString(R.string.exo_controls_repeat_all_description), com.google.android.exoplayer2.ext.mediasession.R.drawable.exo_media_action_repeat_all) : player.getRepeatMode() == 1 ? new NotificationActionData("org.schabi.newpipe.player.MainPlayer..player.MainPlayer.REPEAT", playerService.getString(R.string.exo_controls_repeat_one_description), com.google.android.exoplayer2.ext.mediasession.R.drawable.exo_media_action_repeat_one) : new NotificationActionData("org.schabi.newpipe.player.MainPlayer..player.MainPlayer.REPEAT", playerService.getString(R.string.exo_controls_repeat_off_description), com.google.android.exoplayer2.ext.mediasession.R.drawable.exo_media_action_repeat_off);
            case 10:
                PlayQueue playQueue3 = player.playQueue;
                return (playQueue3 == null || !playQueue3.isShuffled()) ? new NotificationActionData("org.schabi.newpipe.player.MainPlayer..player.MainPlayer.ACTION_SHUFFLE", playerService.getString(R.string.exo_controls_shuffle_off_description), R.drawable.exo_controls_shuffle_off) : new NotificationActionData("org.schabi.newpipe.player.MainPlayer..player.MainPlayer.ACTION_SHUFFLE", playerService.getString(R.string.exo_controls_shuffle_on_description), R.drawable.exo_controls_shuffle_on);
            case 11:
                return new NotificationActionData("org.schabi.newpipe.player.MainPlayer.CLOSE", playerService.getString(org.schabi.newpipe.R.string.close), org.schabi.newpipe.R.drawable.ic_close);
            default:
                return null;
        }
        return player.currentState == 128 ? new NotificationActionData("org.schabi.newpipe.player.MainPlayer..player.MainPlayer.PLAY_PAUSE", playerService.getString(R.string.exo_controls_pause_description), org.schabi.newpipe.R.drawable.ic_replay) : (player.isPlaying() || (i2 = player.currentState) == -1 || i2 == 123 || i2 == 125) ? new NotificationActionData("org.schabi.newpipe.player.MainPlayer..player.MainPlayer.PLAY_PAUSE", playerService.getString(R.string.exo_controls_pause_description), R.drawable.exo_notification_pause) : new NotificationActionData("org.schabi.newpipe.player.MainPlayer..player.MainPlayer.PLAY_PAUSE", playerService.getString(R.string.exo_controls_play_description), R.drawable.exo_notification_play);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof NotificationActionData)) {
            return false;
        }
        NotificationActionData notificationActionData = (NotificationActionData) obj;
        return this.action.equals(notificationActionData.action) && this.name.equals(notificationActionData.name) && this.icon == notificationActionData.icon;
    }

    public final int hashCode() {
        return Objects.hash(this.action, this.name, Integer.valueOf(this.icon));
    }
}
