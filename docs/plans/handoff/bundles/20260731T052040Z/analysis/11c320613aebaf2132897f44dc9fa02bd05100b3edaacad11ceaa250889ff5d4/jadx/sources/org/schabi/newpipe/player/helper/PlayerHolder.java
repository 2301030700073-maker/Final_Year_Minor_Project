package org.schabi.newpipe.player.helper;

import android.content.ComponentName;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import coil3.decode.StaticImageDecoderKt;
import com.google.android.exoplayer2.PlaybackParameters;
import j$.util.Optional;
import org.schabi.newpipe.App;
import org.schabi.newpipe.MainActivity;
import org.schabi.newpipe.extractor.stream.StreamInfo;
import org.schabi.newpipe.fragments.detail.VideoDetailFragment;
import org.schabi.newpipe.player.Player$$ExternalSyntheticLambda28;
import org.schabi.newpipe.player.PlayerService;
import org.schabi.newpipe.player.PlayerType;
import org.schabi.newpipe.player.event.PlayerServiceEventListener;
import org.schabi.newpipe.player.event.PlayerServiceExtendedEventListener;
import org.schabi.newpipe.player.playqueue.PlayQueue;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final class PlayerHolder {
    public static PlayerHolder instance;
    public boolean bound;
    public PlayerServiceExtendedEventListener listener;
    public PlayerService playerService;
    public final PlayerServiceConnection serviceConnection = new PlayerServiceConnection();
    public final AnonymousClass1 internalListener = new AnonymousClass1();
    public final PlayerHolder$$ExternalSyntheticLambda0 playerStateListener = new PlayerHolder$$ExternalSyntheticLambda0(this, 1);

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class PlayerServiceConnection implements ServiceConnection {
        public boolean playAfterConnect = false;

        public PlayerServiceConnection() {
        }

        @Override // android.content.ServiceConnection
        public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            PlayerHolder playerHolder = PlayerHolder.instance;
            PlayerService.LocalBinder localBinder = (PlayerService.LocalBinder) iBinder;
            PlayerService playerService = (PlayerService) localBinder.playerService.get();
            PlayerHolder playerHolder2 = PlayerHolder.this;
            playerHolder2.playerService = playerService;
            PlayerServiceExtendedEventListener playerServiceExtendedEventListener = playerHolder2.listener;
            if (playerServiceExtendedEventListener != null) {
                ((VideoDetailFragment) playerServiceExtendedEventListener).playerService = playerService;
            }
            if (playerService != null) {
                PlayerHolder$$ExternalSyntheticLambda0 playerHolder$$ExternalSyntheticLambda0 = playerHolder2.playerStateListener;
                playerService.onPlayerStartedOrStopped = playerHolder$$ExternalSyntheticLambda0;
                playerHolder$$ExternalSyntheticLambda0.s(playerService.player);
            }
            playerHolder2.getPlayer().ifPresent(new PlayerHolder$$ExternalSyntheticLambda0(playerHolder2, 2));
            PlayerService playerService2 = playerHolder2.playerService;
            if (playerService2 == null || playerService2.player == null) {
                return;
            }
            ((PlayerService) localBinder.playerService.get()).sendBroadcast(new Intent("org.schabi.newpipe.VideoDetailFragment.ACTION_PLAYER_STARTED"));
        }

        @Override // android.content.ServiceConnection
        public final void onServiceDisconnected(ComponentName componentName) {
            PlayerHolder playerHolder = PlayerHolder.instance;
            App.Companion.getClass();
            PlayerHolder.this.unbind(App.Companion.getInstance());
        }
    }

    static {
        int i = MainActivity.$r8$clinit;
    }

    public static synchronized PlayerHolder getInstance() {
        PlayerHolder playerHolder;
        synchronized (PlayerHolder.class) {
            try {
                if (instance == null) {
                    instance = new PlayerHolder();
                }
                playerHolder = instance;
            } catch (Throwable th) {
                throw th;
            }
        }
        return playerHolder;
    }

    public final Optional getPlayer() {
        return Optional.ofNullable(this.playerService).flatMap(new Player$$ExternalSyntheticLambda28(16));
    }

    public final PlayerType getType() {
        return (PlayerType) getPlayer().map(new Player$$ExternalSyntheticLambda28(18)).orElse(null);
    }

    public final void startService(boolean z, PlayerServiceExtendedEventListener playerServiceExtendedEventListener) {
        App.Companion.getClass();
        App companion = App.Companion.getInstance();
        this.listener = playerServiceExtendedEventListener;
        PlayerService playerService = this.playerService;
        if (playerService != null) {
            ((VideoDetailFragment) playerServiceExtendedEventListener).playerService = playerService;
            PlayerHolder$$ExternalSyntheticLambda0 playerHolder$$ExternalSyntheticLambda0 = this.playerStateListener;
            playerService.onPlayerStartedOrStopped = playerHolder$$ExternalSyntheticLambda0;
            playerHolder$$ExternalSyntheticLambda0.s(playerService.player);
            getPlayer().ifPresent(new PlayerHolder$$ExternalSyntheticLambda0(this, 2));
        }
        if (this.bound) {
            return;
        }
        unbind(companion);
        Intent intent = new Intent(companion, (Class<?>) PlayerService.class);
        intent.putExtra("should_start_foreground_extra", true);
        StaticImageDecoderKt.startForegroundService(companion, intent);
        PlayerServiceConnection playerServiceConnection = this.serviceConnection;
        playerServiceConnection.playAfterConnect = z;
        Intent intent2 = new Intent(companion, (Class<?>) PlayerService.class);
        intent2.setAction("bind_player_holder_action");
        boolean bindService = companion.bindService(intent2, playerServiceConnection, 1);
        this.bound = bindService;
        if (bindService) {
            return;
        }
        companion.unbindService(playerServiceConnection);
    }

    public final void stopService() {
        PlayerService playerService = this.playerService;
        if (playerService != null) {
            playerService.destroyPlayerAndStopService();
        }
        App.Companion.getClass();
        App companion = App.Companion.getInstance();
        unbind(companion);
        companion.stopService(new Intent(companion, (Class<?>) PlayerService.class));
    }

    public final void unbind(App app) {
        if (this.bound) {
            app.unbindService(this.serviceConnection);
            int i = 0;
            this.bound = false;
            PlayerService playerService = this.playerService;
            if (playerService != null) {
                playerService.onPlayerStartedOrStopped = null;
            }
            getPlayer().ifPresent(new PlayerHolder$$ExternalSyntheticLambda0(this, i));
            this.playerService = null;
            PlayerServiceExtendedEventListener playerServiceExtendedEventListener = this.listener;
            if (playerServiceExtendedEventListener != null) {
                VideoDetailFragment videoDetailFragment = (VideoDetailFragment) playerServiceExtendedEventListener;
                videoDetailFragment.player = null;
                if (videoDetailFragment.binding != null) {
                    videoDetailFragment.restoreDefaultBrightness();
                }
                ((VideoDetailFragment) this.listener).playerService = null;
            }
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    /* renamed from: org.schabi.newpipe.player.helper.PlayerHolder$1, reason: invalid class name */
    public final class AnonymousClass1 implements PlayerServiceEventListener {
        public AnonymousClass1() {
        }

        @Override // org.schabi.newpipe.player.event.PlayerServiceEventListener
        public final void hideSystemUiIfNeeded() {
            PlayerServiceExtendedEventListener playerServiceExtendedEventListener = PlayerHolder.this.listener;
            if (playerServiceExtendedEventListener != null) {
                ((VideoDetailFragment) playerServiceExtendedEventListener).hideSystemUiIfNeeded();
            }
        }

        @Override // org.schabi.newpipe.player.event.PlayerServiceEventListener
        public final void onFullscreenStateChanged(boolean z) {
            PlayerServiceExtendedEventListener playerServiceExtendedEventListener = PlayerHolder.this.listener;
            if (playerServiceExtendedEventListener != null) {
                ((VideoDetailFragment) playerServiceExtendedEventListener).onFullscreenStateChanged(z);
            }
        }

        @Override // org.schabi.newpipe.player.event.PlayerEventListener
        public final void onMetadataUpdate(StreamInfo streamInfo, PlayQueue playQueue) {
            PlayerServiceExtendedEventListener playerServiceExtendedEventListener = PlayerHolder.this.listener;
            if (playerServiceExtendedEventListener != null) {
                ((VideoDetailFragment) playerServiceExtendedEventListener).onMetadataUpdate(streamInfo, playQueue);
            }
        }

        @Override // org.schabi.newpipe.player.event.PlayerServiceEventListener
        public final void onMoreOptionsLongClicked() {
            PlayerServiceExtendedEventListener playerServiceExtendedEventListener = PlayerHolder.this.listener;
            if (playerServiceExtendedEventListener != null) {
                ((VideoDetailFragment) playerServiceExtendedEventListener).onMoreOptionsLongClicked();
            }
        }

        @Override // org.schabi.newpipe.player.event.PlayerEventListener
        public final void onPlaybackUpdate(int i, int i2, boolean z, PlaybackParameters playbackParameters) {
            PlayerServiceExtendedEventListener playerServiceExtendedEventListener = PlayerHolder.this.listener;
            if (playerServiceExtendedEventListener != null) {
                ((VideoDetailFragment) playerServiceExtendedEventListener).onPlaybackUpdate(i, i2, z, playbackParameters);
            }
        }

        @Override // org.schabi.newpipe.player.event.PlayerEventListener
        public final void onProgressUpdate(int i, int i2, int i3) {
            PlayerServiceExtendedEventListener playerServiceExtendedEventListener = PlayerHolder.this.listener;
            if (playerServiceExtendedEventListener != null) {
                ((VideoDetailFragment) playerServiceExtendedEventListener).onProgressUpdate(i, i2, i3);
            }
        }

        @Override // org.schabi.newpipe.player.event.PlayerEventListener
        public final void onQueueUpdate(PlayQueue playQueue) {
            PlayerServiceExtendedEventListener playerServiceExtendedEventListener = PlayerHolder.this.listener;
            if (playerServiceExtendedEventListener != null) {
                ((VideoDetailFragment) playerServiceExtendedEventListener).onQueueUpdate(playQueue);
            }
        }

        @Override // org.schabi.newpipe.player.event.PlayerServiceEventListener
        public final void onScreenRotationButtonClicked() {
            PlayerServiceExtendedEventListener playerServiceExtendedEventListener = PlayerHolder.this.listener;
            if (playerServiceExtendedEventListener != null) {
                ((VideoDetailFragment) playerServiceExtendedEventListener).onScreenRotationButtonClicked();
            }
        }

        @Override // org.schabi.newpipe.player.event.PlayerEventListener
        public final void onServiceStopped() {
            PlayerHolder playerHolder = PlayerHolder.this;
            PlayerServiceExtendedEventListener playerServiceExtendedEventListener = playerHolder.listener;
            if (playerServiceExtendedEventListener != null) {
                ((VideoDetailFragment) playerServiceExtendedEventListener).onServiceStopped();
            }
            App.Companion.getClass();
            playerHolder.unbind(App.Companion.getInstance());
        }

        @Override // org.schabi.newpipe.player.event.PlayerServiceEventListener
        public final void onViewCreated() {
            PlayerServiceExtendedEventListener playerServiceExtendedEventListener = PlayerHolder.this.listener;
            if (playerServiceExtendedEventListener != null) {
                ((VideoDetailFragment) playerServiceExtendedEventListener).tryAddVideoPlayerView();
            }
        }

        @Override // org.schabi.newpipe.player.event.PlayerEventListener
        public final /* synthetic */ void onAudioTrackUpdate() {
        }
    }
}
