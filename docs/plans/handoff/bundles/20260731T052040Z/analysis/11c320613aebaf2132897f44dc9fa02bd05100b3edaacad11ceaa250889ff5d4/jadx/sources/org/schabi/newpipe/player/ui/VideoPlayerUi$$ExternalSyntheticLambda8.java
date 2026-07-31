package org.schabi.newpipe.player.ui;

import android.content.Intent;
import android.net.Uri;
import androidx.appcompat.view.menu.MenuPopupHelper;
import androidx.sqlite.SQLite;
import androidx.transition.Transition;
import j$.util.Objects;
import kotlin.io.CloseableKt;
import net.newpipe.app.AppKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.schabi.newpipe.MainActivity;
import org.schabi.newpipe.R;
import org.schabi.newpipe.databinding.PlayerBinding;
import org.schabi.newpipe.ktx.AnimationType;
import org.schabi.newpipe.player.Player;
import org.schabi.newpipe.player.Player$$ExternalSyntheticLambda1;
import org.schabi.newpipe.player.PlayerService;
import org.schabi.newpipe.player.mediaitem.MediaItemTag;
import org.schabi.newpipe.player.playqueue.PlayQueue;
import org.schabi.newpipe.player.playqueue.PlayQueueItem;
import org.schabi.newpipe.util.ListHelper$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final /* synthetic */ class VideoPlayerUi$$ExternalSyntheticLambda8 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ VideoPlayerUi f$0;

    public /* synthetic */ VideoPlayerUi$$ExternalSyntheticLambda8(VideoPlayerUi videoPlayerUi, int i) {
        this.$r8$classId = i;
        this.f$0 = videoPlayerUi;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.$r8$classId;
        int i2 = 2;
        int i3 = 0;
        VideoPlayerUi videoPlayerUi = this.f$0;
        switch (i) {
            case 0:
                videoPlayerUi.updatePlayPauseButton(3);
                videoPlayerUi.animatePlayButtons(300L, true);
                break;
            case 1:
                MenuPopupHelper menuPopupHelper = (MenuPopupHelper) videoPlayerUi.qualityPopupMenu.keyers;
                if (!menuPopupHelper.isShowing()) {
                    if (menuPopupHelper.mAnchorView == null) {
                        _UtilJvmKt$$ExternalSyntheticLambda1.m$2("MenuPopupHelper cannot be used without an anchor");
                        break;
                    } else {
                        menuPopupHelper.showPopup(0, 0, false, false);
                    }
                }
                videoPlayerUi.isSomePopupMenuVisible = true;
                videoPlayerUi.player.getSelectedVideoStream().map(new ListHelper$$ExternalSyntheticLambda0(10)).ifPresent(new Player$$ExternalSyntheticLambda1(videoPlayerUi.binding.qualityTextView, 19));
                break;
            case 2:
                int i4 = MainActivity.$r8$clinit;
                PlayerBinding playerBinding = videoPlayerUi.binding;
                boolean z = playerBinding.secondaryControls.getVisibility() == 0;
                AppKt.animateRotation(z ? 0 : 180, playerBinding.moreOptionsButton);
                AppKt.animate(playerBinding.secondaryControls, !z, 300L, AnimationType.SLIDE_AND_ALPHA, 0L, new VideoPlayerUi$$ExternalSyntheticLambda43(i3, videoPlayerUi, z));
                videoPlayerUi.showControls(300L);
                break;
            case 3:
                Player player = videoPlayerUi.player;
                PlayQueueItem playQueueItem = player.currentItem;
                if (playQueueItem != null) {
                    Transition.Impl26.shareText(videoPlayerUi.context, playQueueItem.getTitle(), player.getVideoUrlAtCurrentTime(), playQueueItem.getThumbnails());
                    break;
                }
                break;
            case 4:
                Player player2 = videoPlayerUi.player;
                player2.setRecovery();
                PlayerService playerService = videoPlayerUi.context;
                PlayQueue playQueue = player2.playQueue;
                Objects.requireNonNull(playQueue);
                SQLite.playOnMainPlayer(playerService, playQueue, true);
                break;
            case 5:
                Player player3 = videoPlayerUi.player;
                if (player3.currentMetadata != null) {
                    player3.pause();
                    PlayerService playerService2 = videoPlayerUi.context;
                    MediaItemTag mediaItemTag = player3.currentMetadata;
                    CloseableKt.playWithKore(playerService2, Uri.parse(mediaItemTag == null ? player3.context.getString(R.string.unknown_content) : mediaItemTag.getStreamUrl()));
                    break;
                }
                break;
            case 6:
                videoPlayerUi.player.getCurrentStreamInfo().ifPresent(new VideoPlayerUi$$ExternalSyntheticLambda32(videoPlayerUi, i2));
                break;
            case 7:
                videoPlayerUi.context.sendBroadcast(new Intent("org.schabi.newpipe.VideoDetailFragment.ACTION_HIDE_MAIN_PLAYER").setPackage("org.schabi.newpipe"));
                break;
            case 8:
                MenuPopupHelper menuPopupHelper2 = (MenuPopupHelper) videoPlayerUi.audioTrackPopupMenu.keyers;
                if (!menuPopupHelper2.isShowing()) {
                    if (menuPopupHelper2.mAnchorView == null) {
                        _UtilJvmKt$$ExternalSyntheticLambda1.m$2("MenuPopupHelper cannot be used without an anchor");
                        break;
                    } else {
                        menuPopupHelper2.showPopup(0, 0, false, false);
                    }
                }
                videoPlayerUi.isSomePopupMenuVisible = true;
                break;
            case 9:
                videoPlayerUi.onPlaybackSpeedClicked();
                break;
            case 10:
                int i5 = MainActivity.$r8$clinit;
                MenuPopupHelper menuPopupHelper3 = (MenuPopupHelper) videoPlayerUi.captionPopupMenu.keyers;
                if (!menuPopupHelper3.isShowing()) {
                    if (menuPopupHelper3.mAnchorView == null) {
                        _UtilJvmKt$$ExternalSyntheticLambda1.m$2("MenuPopupHelper cannot be used without an anchor");
                        break;
                    } else {
                        menuPopupHelper3.showPopup(0, 0, false, false);
                    }
                }
                videoPlayerUi.isSomePopupMenuVisible = true;
                break;
            case 11:
                Player player4 = videoPlayerUi.player;
                int resizeMode = videoPlayerUi.binding.surfaceView.getResizeMode();
                int i6 = resizeMode != 0 ? resizeMode != 3 ? 0 : 4 : 3;
                player4.prefs.edit().putInt(player4.context.getString(R.string.last_resize_mode), i6).apply();
                videoPlayerUi.setResizeMode(i6);
                break;
            case 12:
                videoPlayerUi.updatePlayPauseButton(2);
                videoPlayerUi.animatePlayButtons(200L, true);
                if (!videoPlayerUi.isAnyListViewOpen()) {
                    videoPlayerUi.binding.playPauseButton.requestFocus();
                    break;
                }
                break;
            case 13:
                videoPlayerUi.updatePlayPauseButton(1);
                videoPlayerUi.animatePlayButtons(200L, true);
                if (!videoPlayerUi.isAnyListViewOpen()) {
                    videoPlayerUi.binding.playPauseButton.requestFocus();
                    break;
                }
                break;
            default:
                videoPlayerUi.hideSystemUIIfNeeded();
                break;
        }
    }
}
