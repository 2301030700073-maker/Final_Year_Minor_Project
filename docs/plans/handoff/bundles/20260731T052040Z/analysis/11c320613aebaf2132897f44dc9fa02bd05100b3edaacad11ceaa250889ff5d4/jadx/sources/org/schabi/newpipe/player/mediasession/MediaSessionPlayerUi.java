package org.schabi.newpipe.player.mediasession;

import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.os.Build;
import android.support.v4.media.session.MediaSessionCompat;
import com.google.android.exoplayer2.ForwardingPlayer;
import com.google.android.exoplayer2.ext.mediasession.MediaSessionConnector;
import com.google.common.collect.ImmutableList$$ExternalSyntheticLambda0;
import j$.util.Collection;
import j$.util.function.IntUnaryOperator$CC;
import j$.util.stream.Collectors;
import j$.util.stream.IntStream;
import java.util.Collections;
import java.util.List;
import java.util.function.IntUnaryOperator;
import org.schabi.newpipe.R;
import org.schabi.newpipe.extractor.stream.StreamInfo;
import org.schabi.newpipe.extractor.utils.Utils$$ExternalSyntheticLambda2;
import org.schabi.newpipe.player.Player;
import org.schabi.newpipe.player.Player$$ExternalSyntheticLambda3;
import org.schabi.newpipe.player.Player$$ExternalSyntheticLambda41;
import org.schabi.newpipe.player.Player$$ExternalSyntheticLambda48;
import org.schabi.newpipe.player.notification.NotificationConstants;
import org.schabi.newpipe.player.ui.PlayerUi;
import org.schabi.newpipe.player.ui.VideoPlayerUi;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final class MediaSessionPlayerUi extends PlayerUi implements SharedPreferences.OnSharedPreferenceChangeListener {
    public final String ignoreHardwareMediaButtonsKey;
    public final MediaSessionCompat mediaSession;
    public List prevNotificationActions;
    public final MediaSessionConnector sessionConnector;
    public boolean shouldIgnoreHardwareMediaButtons;

    public MediaSessionPlayerUi(Player player, MediaSessionCompat mediaSessionCompat, MediaSessionConnector mediaSessionConnector) {
        super(player);
        this.shouldIgnoreHardwareMediaButtons = false;
        this.prevNotificationActions = Collections.EMPTY_LIST;
        this.mediaSession = mediaSessionCompat;
        this.sessionConnector = mediaSessionConnector;
        this.ignoreHardwareMediaButtonsKey = this.context.getString(R.string.ignore_hardware_media_buttons_key);
    }

    @Override // org.schabi.newpipe.player.ui.PlayerUi
    public final void destroyPlayer() {
        this.player.prefs.unregisterOnSharedPreferenceChangeListener(this);
        MediaSessionConnector mediaSessionConnector = this.sessionConnector;
        mediaSessionConnector.setMediaButtonEventHandler(null);
        mediaSessionConnector.setPlayer(null);
        mediaSessionConnector.setQueueNavigator(null);
        this.mediaSession.setActive(false);
        this.prevNotificationActions = Collections.EMPTY_LIST;
    }

    @Override // org.schabi.newpipe.player.ui.PlayerUi
    public final void initPlayer() {
        destroyPlayer();
        MediaSessionCompat mediaSessionCompat = this.mediaSession;
        mediaSessionCompat.setActive(true);
        Player player = this.player;
        PlayQueueNavigator playQueueNavigator = new PlayQueueNavigator(mediaSessionCompat, player);
        MediaSessionConnector mediaSessionConnector = this.sessionConnector;
        mediaSessionConnector.setQueueNavigator(playQueueNavigator);
        mediaSessionConnector.setPlayer(new ForwardingPlayer(player.simpleExoPlayer) { // from class: org.schabi.newpipe.player.mediasession.MediaSessionPlayerUi.1
            @Override // com.google.android.exoplayer2.ForwardingPlayer, com.google.android.exoplayer2.Player
            public final void pause() {
                MediaSessionPlayerUi.this.player.pause();
            }

            @Override // com.google.android.exoplayer2.ForwardingPlayer, com.google.android.exoplayer2.Player
            public final void play() {
                Player player2 = MediaSessionPlayerUi.this.player;
                player2.play();
                player2.UIs.get(VideoPlayerUi.class).ifPresent(new Player$$ExternalSyntheticLambda3(9));
            }
        });
        mediaSessionConnector.setMediaButtonEventHandler(new MediaSessionPlayerUi$$ExternalSyntheticLambda6(this));
        SharedPreferences sharedPreferences = player.prefs;
        this.shouldIgnoreHardwareMediaButtons = sharedPreferences.getBoolean(this.ignoreHardwareMediaButtonsKey, false);
        sharedPreferences.registerOnSharedPreferenceChangeListener(this);
        mediaSessionConnector.setMetadataDeduplicationEnabled(true);
        mediaSessionConnector.setMediaMetadataProvider(new MediaSessionPlayerUi$$ExternalSyntheticLambda6(this));
        this.prevNotificationActions = Collections.EMPTY_LIST;
        updateMediaSessionActions();
    }

    @Override // org.schabi.newpipe.player.ui.PlayerUi
    public final void onBlocked() {
        updateMediaSessionActions();
    }

    @Override // org.schabi.newpipe.player.ui.PlayerUi
    public final void onBroadcastReceived(Intent intent) {
        if ("org.schabi.newpipe.player.MainPlayer..player.MainPlayer.ACTION_RECREATE_NOTIFICATION".equals(intent.getAction())) {
            updateMediaSessionActions();
        }
    }

    @Override // org.schabi.newpipe.player.ui.PlayerUi
    public final void onBuffering() {
        updateMediaSessionActions();
    }

    @Override // org.schabi.newpipe.player.ui.PlayerUi
    public final void onCompleted() {
        updateMediaSessionActions();
    }

    @Override // org.schabi.newpipe.player.ui.PlayerUi
    public final void onMetadataChanged(StreamInfo streamInfo) {
        updateMediaSessionActions();
    }

    @Override // org.schabi.newpipe.player.ui.PlayerUi
    public final void onPaused() {
        updateMediaSessionActions();
    }

    @Override // org.schabi.newpipe.player.ui.PlayerUi
    public final void onPausedSeek() {
        updateMediaSessionActions();
    }

    @Override // org.schabi.newpipe.player.ui.PlayerUi
    public final void onPlayQueueEdited() {
        updateMediaSessionActions();
    }

    @Override // org.schabi.newpipe.player.ui.PlayerUi
    public final void onPlaying() {
        updateMediaSessionActions();
    }

    @Override // org.schabi.newpipe.player.ui.PlayerUi
    public final void onRepeatModeChanged(int i) {
        updateMediaSessionActions();
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        String str2 = this.ignoreHardwareMediaButtonsKey;
        if (str == null || str.equals(str2)) {
            this.shouldIgnoreHardwareMediaButtons = sharedPreferences.getBoolean(str2, false);
        }
    }

    @Override // org.schabi.newpipe.player.ui.PlayerUi
    public final void onShuffleModeEnabledChanged(boolean z) {
        updateMediaSessionActions();
    }

    @Override // org.schabi.newpipe.player.ui.PlayerUi
    public final void onThumbnailLoaded(Bitmap bitmap) {
        this.sessionConnector.invalidateMediaSessionMetadata();
    }

    public final void updateMediaSessionActions() {
        if (Build.VERSION.SDK_INT >= 33 && this.mediaSession.mImpl.mSessionFwk.isActive()) {
            int i = 9;
            List list = (List) IntStream.CC.of(3, 4).map(new IntUnaryOperator() { // from class: org.schabi.newpipe.player.mediasession.MediaSessionPlayerUi$$ExternalSyntheticLambda1
                public /* synthetic */ IntUnaryOperator andThen(IntUnaryOperator intUnaryOperator) {
                    return IntUnaryOperator$CC.$default$andThen(this, intUnaryOperator);
                }

                @Override // java.util.function.IntUnaryOperator
                public final int applyAsInt(int i2) {
                    Player player = MediaSessionPlayerUi.this.player;
                    return player.prefs.getInt(player.context.getString(NotificationConstants.SLOT_PREF_KEYS[i2]), NotificationConstants.SLOT_DEFAULTS[i2]);
                }

                public /* synthetic */ IntUnaryOperator compose(IntUnaryOperator intUnaryOperator) {
                    return IntUnaryOperator$CC.$default$compose(this, intUnaryOperator);
                }
            }).mapToObj(new ImmutableList$$ExternalSyntheticLambda0(this, 2)).filter(new Player$$ExternalSyntheticLambda48(i)).collect(Collectors.toList());
            if (list.equals(this.prevNotificationActions)) {
                return;
            }
            this.prevNotificationActions = list;
            this.sessionConnector.setCustomActionProviders((MediaSessionConnector.CustomActionProvider[]) Collection.EL.stream(list).map(new Player$$ExternalSyntheticLambda41(this, i)).toArray(new Utils$$ExternalSyntheticLambda2(4)));
        }
    }
}
