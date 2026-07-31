package org.schabi.newpipe.player.ui;

import android.content.Intent;
import android.graphics.Bitmap;
import com.google.android.exoplayer2.PlaybackParameters;
import com.google.android.exoplayer2.Tracks;
import com.google.android.exoplayer2.video.VideoSize;
import java.util.List;
import org.schabi.newpipe.extractor.stream.StreamInfo;
import org.schabi.newpipe.player.Player;
import org.schabi.newpipe.player.PlayerService;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public abstract class PlayerUi {
    public final PlayerService context;
    public final Player player;

    public PlayerUi(Player player) {
        this.context = player.context;
        this.player = player;
    }

    public void destroy() {
    }

    public void destroyPlayer() {
    }

    public void initPlayback() {
    }

    public void initPlayer() {
    }

    public void onBlocked() {
    }

    public void onBuffering() {
    }

    public void onCompleted() {
    }

    public void onFragmentListenerSet() {
    }

    public void onPaused() {
    }

    public void onPausedSeek() {
    }

    public void onPlayQueueEdited() {
    }

    public void onPlaying() {
    }

    public void onPrepared() {
    }

    public void onRenderedFirstFrame() {
    }

    public void setupAfterIntent() {
    }

    public void smoothStopForImmediateReusing() {
    }

    public void onBroadcastReceived(Intent intent) {
    }

    public void onCues(List list) {
    }

    public void onMetadataChanged(StreamInfo streamInfo) {
    }

    public void onMuteUnmuteChanged(boolean z) {
    }

    public void onPlaybackParametersChanged(PlaybackParameters playbackParameters) {
    }

    public void onRepeatModeChanged(int i) {
    }

    public void onShuffleModeEnabledChanged(boolean z) {
    }

    public void onTextTracksChanged(Tracks tracks) {
    }

    public void onThumbnailLoaded(Bitmap bitmap) {
    }

    public void onVideoSizeChanged(VideoSize videoSize) {
    }

    public void onUpdateProgress(int i, int i2, int i3) {
    }
}
