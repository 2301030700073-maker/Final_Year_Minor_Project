package org.schabi.newpipe.player;

import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.support.v4.media.session.MediaSessionCompat;
import android.util.Log;
import androidx.activity.OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;
import androidx.preference.PreferenceManager;
import coil3.Image;
import coil3.UriKt;
import coil3.decode.StaticImageDecoderKt;
import coil3.request.Disposable;
import coil3.target.Target;
import com.android.tools.r8.RecordTag;
import com.google.android.exoplayer2.DefaultRenderersFactory;
import com.google.android.exoplayer2.DeviceInfo;
import com.google.android.exoplayer2.ExoPlayer;
import com.google.android.exoplayer2.MediaItem;
import com.google.android.exoplayer2.MediaMetadata;
import com.google.android.exoplayer2.PlaybackException;
import com.google.android.exoplayer2.PlaybackParameters;
import com.google.android.exoplayer2.Player;
import com.google.android.exoplayer2.SeekParameters;
import com.google.android.exoplayer2.Timeline;
import com.google.android.exoplayer2.Tracks;
import com.google.android.exoplayer2.audio.AudioAttributes;
import com.google.android.exoplayer2.ext.mediasession.MediaSessionConnector;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.text.CueGroup;
import com.google.android.exoplayer2.trackselection.AdaptiveTrackSelection;
import com.google.android.exoplayer2.trackselection.DefaultTrackSelector;
import com.google.android.exoplayer2.trackselection.TrackSelectionParameters;
import com.google.android.exoplayer2.upstream.DefaultBandwidthMeter;
import com.google.android.exoplayer2.video.VideoSize;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import io.reactivex.rxjava3.disposables.SerialDisposable;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import io.reactivex.rxjava3.internal.observers.LambdaObserver;
import io.reactivex.rxjava3.internal.operators.observable.ObservableInterval;
import io.reactivex.rxjava3.internal.operators.observable.ObservableObserveOn;
import io.reactivex.rxjava3.subjects.PublishSubject;
import j$.util.Objects;
import j$.util.Optional;
import j$.util.function.Consumer$CC;
import java.util.List;
import java.util.concurrent.TimeUnit;
import java.util.function.Consumer;
import org.jsoup.nodes.Printer;
import org.jsoup.parser.TagSet$$ExternalSyntheticLambda1;
import org.mozilla.javascript.Token;
import org.schabi.newpipe.MainActivity;
import org.schabi.newpipe.R;
import org.schabi.newpipe.databinding.PlaylistHeaderBinding;
import org.schabi.newpipe.extractor.ServiceList;
import org.schabi.newpipe.local.feed.FeedViewModel$$ExternalSyntheticLambda0;
import org.schabi.newpipe.player.event.PlayerEventListener;
import org.schabi.newpipe.player.helper.AudioReactor;
import org.schabi.newpipe.player.helper.CustomRenderersFactory;
import org.schabi.newpipe.player.helper.LoadController;
import org.schabi.newpipe.player.helper.PlayerDataSource;
import org.schabi.newpipe.player.helper.PlayerHolder;
import org.schabi.newpipe.player.mediaitem.MediaItemTag;
import org.schabi.newpipe.player.mediasession.MediaSessionPlayerUi;
import org.schabi.newpipe.player.notification.NotificationPlayerUi;
import org.schabi.newpipe.player.playback.MediaSourceManager;
import org.schabi.newpipe.player.playqueue.PlayQueue;
import org.schabi.newpipe.player.playqueue.PlayQueueEvent;
import org.schabi.newpipe.player.playqueue.PlayQueueItem;
import org.schabi.newpipe.player.resolver.VideoPlaybackResolver;
import org.schabi.newpipe.player.ui.PlayerUi;
import org.schabi.newpipe.player.ui.PlayerUiList;
import org.schabi.newpipe.util.SerializedCache;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final class Player implements Player.Listener {
    public static final String TAG;
    public final PlayerUiList UIs;
    public AudioReactor audioReactor;
    public final Printer audioResolver;
    public final MainActivity.AnonymousClass3 broadcastReceiver;
    public final PlayerService context;
    public PlayQueueItem currentItem;
    public MediaItemTag currentMetadata;
    public Bitmap currentThumbnail;
    public final IntentFilter intentFilter;
    public final LoadController loadController;
    public PlayQueue playQueue;
    public MediaSourceManager playQueueManager;
    public final SharedPreferences prefs;
    public final PlaylistHeaderBinding recordManager;
    public final DefaultRenderersFactory renderFactory;
    public final PlayerService service;
    public ExoPlayer simpleExoPlayer;
    public Disposable thumbnailDisposable;
    public final DefaultTrackSelector trackSelector;
    public final VideoPlaybackResolver videoResolver;
    public PlayerType playerType = PlayerType.MAIN;
    public int currentState = -1;
    public boolean isAudioOnly = false;
    public boolean isPrepared = false;
    public PlayerHolder.AnonymousClass1 fragmentListener = null;
    public PlayerEventListener activityListener = null;
    public final SerialDisposable progressUpdateDisposable = new SerialDisposable();
    public final CompositeDisposable databaseUpdateDisposable = new CompositeDisposable();
    public final CompositeDisposable streamItemDisposable = new CompositeDisposable();
    public boolean screenOn = true;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    /* renamed from: org.schabi.newpipe.player.Player$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass1 implements Target {
        public /* synthetic */ AnonymousClass1() {
        }

        @Override // coil3.target.Target
        public void onError(Image image) {
            Log.e(Player.TAG, "Thumbnail - onError() called");
            Player.this.onThumbnailLoaded(null);
        }

        @Override // coil3.target.Target
        public void onStart(Image image) {
            String str = Player.TAG;
        }

        @Override // coil3.target.Target
        public void onSuccess(Image image) {
            String str = Player.TAG;
            Player.this.onThumbnailLoaded(UriKt.toBitmap$default(image));
        }
    }

    static {
        int i = MainActivity.$r8$clinit;
        TAG = "Player";
    }

    public Player(PlayerService playerService, MediaSessionCompat mediaSessionCompat, MediaSessionConnector mediaSessionConnector) {
        this.service = playerService;
        this.context = playerService;
        SharedPreferences sharedPreferences = playerService.getSharedPreferences(PreferenceManager.getDefaultSharedPreferencesName(playerService), 0);
        this.prefs = sharedPreferences;
        this.recordManager = new PlaylistHeaderBinding(playerService);
        this.broadcastReceiver = new MainActivity.AnonymousClass3(this, 5);
        IntentFilter intentFilter = new IntentFilter();
        this.intentFilter = intentFilter;
        intentFilter.addAction("android.media.AUDIO_BECOMING_NOISY");
        this.intentFilter.addAction("org.schabi.newpipe.player.MainPlayer.CLOSE");
        this.intentFilter.addAction("org.schabi.newpipe.player.MainPlayer..player.MainPlayer.PLAY_PAUSE");
        this.intentFilter.addAction("org.schabi.newpipe.player.MainPlayer..player.MainPlayer.ACTION_PLAY_PREVIOUS");
        this.intentFilter.addAction("org.schabi.newpipe.player.MainPlayer..player.MainPlayer.ACTION_PLAY_NEXT");
        this.intentFilter.addAction("org.schabi.newpipe.player.MainPlayer..player.MainPlayer.ACTION_FAST_REWIND");
        this.intentFilter.addAction("org.schabi.newpipe.player.MainPlayer..player.MainPlayer.ACTION_FAST_FORWARD");
        this.intentFilter.addAction("org.schabi.newpipe.player.MainPlayer..player.MainPlayer.REPEAT");
        this.intentFilter.addAction("org.schabi.newpipe.player.MainPlayer..player.MainPlayer.ACTION_SHUFFLE");
        this.intentFilter.addAction("org.schabi.newpipe.player.MainPlayer..player.MainPlayer.ACTION_RECREATE_NOTIFICATION");
        this.intentFilter.addAction("org.schabi.newpipe.VideoDetailFragment.ACTION_VIDEO_FRAGMENT_RESUMED");
        this.intentFilter.addAction("org.schabi.newpipe.VideoDetailFragment.ACTION_VIDEO_FRAGMENT_STOPPED");
        this.intentFilter.addAction("android.intent.action.CONFIGURATION_CHANGED");
        this.intentFilter.addAction("android.intent.action.SCREEN_ON");
        this.intentFilter.addAction("android.intent.action.SCREEN_OFF");
        this.intentFilter.addAction("android.intent.action.HEADSET_PLUG");
        this.trackSelector = new DefaultTrackSelector(playerService, new AdaptiveTrackSelection.Factory(1000, 25000, 25000, 0.7f));
        PlayerDataSource playerDataSource = new PlayerDataSource(playerService, new DefaultBandwidthMeter.Builder(playerService).build());
        LoadController loadController = new LoadController();
        loadController.preloadingEnabled = true;
        this.loadController = loadController;
        DefaultRenderersFactory customRenderersFactory = sharedPreferences.getBoolean(playerService.getString(R.string.always_use_exoplayer_set_output_surface_workaround_key), false) ? new CustomRenderersFactory(playerService) : new DefaultRenderersFactory(playerService);
        this.renderFactory = customRenderersFactory;
        customRenderersFactory.setEnableDecoderFallback(sharedPreferences.getBoolean(playerService.getString(R.string.use_exoplayer_decoder_fallback_key), false));
        this.videoResolver = new VideoPlaybackResolver(playerService, playerDataSource, new AnonymousClass1());
        this.audioResolver = new Printer(playerService, playerDataSource);
        this.UIs = new PlayerUiList(new MediaSessionPlayerUi(this, mediaSessionCompat, mediaSessionConnector), new NotificationPlayerUi(this));
    }

    public static PlayQueue getPlayQueueFromCache(Intent intent) {
        String stringExtra = intent.getStringExtra("play_queue_key");
        if (stringExtra == null) {
            return null;
        }
        SerializedCache.INSTANCE.getClass();
        return (PlayQueue) SerializedCache.take(stringExtra);
    }

    public final void changeState(int i) {
        this.currentState = i;
        SerialDisposable serialDisposable = this.progressUpdateDisposable;
        PlayerUiList playerUiList = this.UIs;
        switch (i) {
            case Token.EXPORT /* 123 */:
                if (!isProgressLoopRunning()) {
                    startProgressLoop();
                }
                playerUiList.call(new TagSet$$ExternalSyntheticLambda1(25));
                break;
            case Token.IMPORT /* 124 */:
                if (!isProgressLoopRunning()) {
                    startProgressLoop();
                }
                playerUiList.call(new Player$$ExternalSyntheticLambda3(2));
                break;
            case Token.IF /* 125 */:
                playerUiList.call(new Player$$ExternalSyntheticLambda3(0));
                break;
            case Token.ELSE /* 126 */:
                if (isProgressLoopRunning()) {
                    DisposableHelper.set(serialDisposable.resource, null);
                }
                playerUiList.call(new TagSet$$ExternalSyntheticLambda1(29));
                break;
            case Token.SWITCH /* 127 */:
                playerUiList.call(new TagSet$$ExternalSyntheticLambda1(23));
                break;
            case 128:
                if (this.playQueue != null) {
                    playerUiList.call(new TagSet$$ExternalSyntheticLambda1(28));
                    if (this.playQueue.getIndex() < this.playQueue.size() - 1) {
                        this.playQueue.offsetIndex(1);
                    }
                    if (isProgressLoopRunning()) {
                        DisposableHelper.set(serialDisposable.resource, null);
                        break;
                    }
                }
                break;
        }
        notifyPlaybackUpdateToListeners();
    }

    public final void cycleNextRepeatMode() {
        if (exoPlayerIsNull()) {
            return;
        }
        int repeatMode = this.simpleExoPlayer.getRepeatMode();
        this.simpleExoPlayer.setRepeatMode(repeatMode != 0 ? repeatMode != 1 ? 0 : 2 : 1);
    }

    public final void destroyPlayer() {
        this.UIs.call(new Player$$ExternalSyntheticLambda3(1));
        if (!exoPlayerIsNull()) {
            this.simpleExoPlayer.removeListener(this);
            this.simpleExoPlayer.stop();
            this.simpleExoPlayer.release();
        }
        if (isProgressLoopRunning()) {
            DisposableHelper.set(this.progressUpdateDisposable.resource, null);
        }
        PlayQueue playQueue = this.playQueue;
        if (playQueue != null) {
            playQueue.dispose();
        }
        AudioReactor audioReactor = this.audioReactor;
        if (audioReactor != null) {
            audioReactor.abandonAudioFocus();
            ExoPlayer exoPlayer = audioReactor.player;
            exoPlayer.removeAnalyticsListener(audioReactor);
            audioReactor.notifyAudioSessionUpdate(exoPlayer.getAudioSessionId(), false);
        }
        MediaSourceManager mediaSourceManager = this.playQueueManager;
        if (mediaSourceManager != null) {
            int i = PlayQueue.$r8$clinit;
            mediaSourceManager.debouncedSignal.onComplete();
            LambdaObserver lambdaObserver = mediaSourceManager.debouncedLoader;
            lambdaObserver.getClass();
            DisposableHelper.dispose(lambdaObserver);
            mediaSourceManager.playQueueReactor.cancel();
            mediaSourceManager.loaderReactor.dispose();
        }
    }

    public final boolean exoPlayerIsNull() {
        return this.simpleExoPlayer == null;
    }

    public final int getCaptionRendererIndex() {
        if (exoPlayerIsNull()) {
            return -1;
        }
        for (int i = 0; i < this.simpleExoPlayer.getRendererCount(); i++) {
            if (this.simpleExoPlayer.getRendererType(i) == 3) {
                return i;
            }
        }
        return -1;
    }

    public final Optional getCurrentStreamInfo() {
        return Optional.ofNullable(this.currentMetadata).flatMap(new Player$$ExternalSyntheticLambda28(11));
    }

    public final boolean getPlayWhenReady() {
        return !exoPlayerIsNull() && this.simpleExoPlayer.getPlayWhenReady();
    }

    public final PlaybackParameters getPlaybackParameters() {
        return exoPlayerIsNull() ? PlaybackParameters.DEFAULT : this.simpleExoPlayer.getPlaybackParameters();
    }

    public final boolean getPlaybackSkipSilence() {
        return !exoPlayerIsNull() && this.simpleExoPlayer.getSkipSilenceEnabled();
    }

    public final int getRepeatMode() {
        if (exoPlayerIsNull()) {
            return 0;
        }
        return this.simpleExoPlayer.getRepeatMode();
    }

    public final Optional getSelectedVideoStream() {
        return Optional.ofNullable(this.currentMetadata).flatMap(new Player$$ExternalSyntheticLambda28(13)).filter(new Player$$ExternalSyntheticLambda48(0)).map(new Player$$ExternalSyntheticLambda28(14));
    }

    public final String getVideoUrlAtCurrentTime() {
        MediaItemTag mediaItemTag;
        long currentPosition = this.simpleExoPlayer.getCurrentPosition() / 1000;
        MediaItemTag mediaItemTag2 = this.currentMetadata;
        String string = mediaItemTag2 == null ? this.context.getString(R.string.unknown_content) : mediaItemTag2.getStreamUrl();
        if (isLive$1() || currentPosition < 0 || (mediaItemTag = this.currentMetadata) == null || mediaItemTag.getServiceId() != ServiceList.YouTube.serviceId) {
            return string;
        }
        return string + "&t=" + currentPosition;
    }

    public final void initPlayback(PlayQueue playQueue, boolean z) {
        PlayQueue playQueue2;
        PlayQueue playQueue3;
        destroyPlayer();
        DefaultRenderersFactory defaultRenderersFactory = this.renderFactory;
        PlayerService playerService = this.context;
        ExoPlayer.Builder builder = new ExoPlayer.Builder(playerService, defaultRenderersFactory);
        DefaultTrackSelector defaultTrackSelector = this.trackSelector;
        ExoPlayer build = builder.setTrackSelector(defaultTrackSelector).setLoadControl(this.loadController).setUsePlatformDiagnostics(false).build();
        this.simpleExoPlayer = build;
        build.addListener(this);
        this.simpleExoPlayer.setPlayWhenReady(z);
        this.simpleExoPlayer.setSeekParameters(PreferenceManager.getDefaultSharedPreferences(playerService).getBoolean(playerService.getString(R.string.use_inexact_seek_key), false) ? SeekParameters.CLOSEST_SYNC : SeekParameters.EXACT);
        this.simpleExoPlayer.setWakeMode(2);
        this.simpleExoPlayer.setHandleAudioBecomingNoisy(true);
        this.audioReactor = new AudioReactor(playerService, this.simpleExoPlayer);
        unregisterBroadcastReceiver();
        StaticImageDecoderKt.registerReceiver(playerService, this.broadcastReceiver, this.intentFilter, 2);
        Player$$ExternalSyntheticLambda3 player$$ExternalSyntheticLambda3 = new Player$$ExternalSyntheticLambda3(6);
        PlayerUiList playerUiList = this.UIs;
        playerUiList.call(player$$ExternalSyntheticLambda3);
        if (!playerService.getSharedPreferences(PreferenceManager.getDefaultSharedPreferencesName(playerService), 0).getBoolean(playerService.getString(R.string.disable_media_tunneling_key), false)) {
            defaultTrackSelector.setParameters(defaultTrackSelector.buildUponParameters().setTunnelingEnabled(true));
        }
        String string = playerService.getString(R.string.playback_skip_silence_key);
        boolean playbackSkipSilence = getPlaybackSkipSilence();
        SharedPreferences sharedPreferences = this.prefs;
        boolean z2 = sharedPreferences.getBoolean(string, playbackSkipSilence);
        PlaybackParameters playbackParameters = new PlaybackParameters(sharedPreferences.getFloat(playerService.getString(R.string.playback_speed_key), getPlaybackParameters().speed), sharedPreferences.getFloat(playerService.getString(R.string.playback_pitch_key), getPlaybackParameters().pitch));
        setPlaybackParameters(playbackParameters.speed, playbackParameters.pitch, z2);
        this.playQueue = playQueue;
        playQueue.getClass();
        PublishSubject publishSubject = new PublishSubject();
        playQueue.eventBroadcast = publishSubject;
        playQueue.broadcastReceiver = publishSubject.toFlowable(3).observeOn(AndroidSchedulers.mainThread()).startWithItem(new PlayQueueEvent.InitEvent());
        reloadPlayQueueManager();
        playerUiList.call(new Player$$ExternalSyntheticLambda3(5));
        this.simpleExoPlayer.setVolume(isMuted() ? 0.0f : 1.0f);
        PlayerHolder.AnonymousClass1 anonymousClass1 = this.fragmentListener;
        if (anonymousClass1 != null && (playQueue3 = this.playQueue) != null) {
            anonymousClass1.onQueueUpdate(playQueue3);
        }
        PlayerEventListener playerEventListener = this.activityListener;
        if (playerEventListener == null || (playQueue2 = this.playQueue) == null) {
            return;
        }
        playerEventListener.onQueueUpdate(playQueue2);
    }

    public final boolean isLive$1() {
        try {
            if (!exoPlayerIsNull()) {
                if (this.simpleExoPlayer.isCurrentMediaItemDynamic()) {
                    return true;
                }
            }
        } catch (IndexOutOfBoundsException unused) {
        }
        return false;
    }

    public final boolean isLiveEdge() {
        if (exoPlayerIsNull() || !isLive$1()) {
            return false;
        }
        Timeline currentTimeline = this.simpleExoPlayer.getCurrentTimeline();
        int currentMediaItemIndex = this.simpleExoPlayer.getCurrentMediaItemIndex();
        if (currentTimeline.isEmpty() || currentMediaItemIndex < 0 || currentMediaItemIndex >= currentTimeline.getWindowCount()) {
            return false;
        }
        Timeline.Window window = new Timeline.Window();
        currentTimeline.getWindow(currentMediaItemIndex, window);
        return window.getDefaultPositionMs() <= this.simpleExoPlayer.getCurrentPosition();
    }

    public final boolean isLoading() {
        return !exoPlayerIsNull() && this.simpleExoPlayer.isLoading();
    }

    public final boolean isMuted() {
        return !exoPlayerIsNull() && this.simpleExoPlayer.getVolume() == 0.0f;
    }

    public final boolean isPlaying() {
        return !exoPlayerIsNull() && this.simpleExoPlayer.isPlaying();
    }

    public final boolean isProgressLoopRunning() {
        Object obj = (io.reactivex.rxjava3.disposables.Disposable) this.progressUpdateDisposable.resource.get();
        if (obj == DisposableHelper.DISPOSED) {
            obj = EmptyDisposable.INSTANCE;
        }
        return obj != null;
    }

    public final boolean isStopped() {
        return exoPlayerIsNull() || this.simpleExoPlayer.getPlaybackState() == 1;
    }

    public final void notifyPlaybackUpdateToListeners() {
        if (this.fragmentListener != null && !exoPlayerIsNull() && this.playQueue != null) {
            this.fragmentListener.onPlaybackUpdate(this.currentState, getRepeatMode(), this.playQueue.isShuffled(), this.simpleExoPlayer.getPlaybackParameters());
        }
        if (this.activityListener == null || exoPlayerIsNull() || this.playQueue == null) {
            return;
        }
        this.activityListener.onPlaybackUpdate(this.currentState, getRepeatMode(), this.playQueue.isShuffled(), getPlaybackParameters());
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public final void onCues(CueGroup cueGroup) {
        this.UIs.call(new Player$$ExternalSyntheticLambda1(cueGroup, 12));
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public final void onEvents(com.google.android.exoplayer2.Player player, Player.Events events) {
        RecordTag.from(player.getCurrentMediaItem()).ifPresent(new Player$$ExternalSyntheticLambda0(this, 1));
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public final void onIsLoadingChanged(boolean z) {
        if (!z && this.currentState == 126 && isProgressLoopRunning()) {
            DisposableHelper.set(this.progressUpdateDisposable.resource, null);
        } else {
            if (!z || isProgressLoopRunning()) {
                return;
            }
            startProgressLoop();
        }
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public final void onPlayWhenReadyChanged(boolean z, int i) {
        updatePlaybackState(exoPlayerIsNull() ? 1 : this.simpleExoPlayer.getPlaybackState(), z);
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public final void onPlaybackParametersChanged(PlaybackParameters playbackParameters) {
        this.UIs.call(new Player$$ExternalSyntheticLambda1(playbackParameters, 0));
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public final void onPlaybackStateChanged(int i) {
        updatePlaybackState(i, getPlayWhenReady());
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0051  */
    @Override // com.google.android.exoplayer2.Player.Listener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onPlayerError(com.google.android.exoplayer2.PlaybackException r10) {
        /*
            r9 = this;
            java.lang.String r0 = org.schabi.newpipe.player.Player.TAG
            java.lang.String r1 = "ExoPlayer - onPlayerError() called with:"
            android.util.Log.e(r0, r1, r10)
            r9.saveStreamProgressState()
            int r0 = r10.errorCode
            r1 = 1000(0x3e8, float:1.401E-42)
            r2 = 0
            if (r0 == r1) goto L49
            r1 = 1002(0x3ea, float:1.404E-42)
            if (r0 == r1) goto L33
            r1 = 1003(0x3eb, float:1.406E-42)
            if (r0 == r1) goto L49
            switch(r0) {
                case 2000: goto L49;
                case 2001: goto L49;
                case 2002: goto L49;
                case 2003: goto L25;
                case 2004: goto L25;
                case 2005: goto L25;
                case 2006: goto L25;
                case 2007: goto L25;
                case 2008: goto L25;
                default: goto L1c;
            }
        L1c:
            switch(r0) {
                case 3001: goto L25;
                case 3002: goto L25;
                case 3003: goto L25;
                case 3004: goto L25;
                default: goto L1f;
            }
        L1f:
            org.schabi.newpipe.player.PlayerService r0 = r9.service
            r0.destroyPlayerAndStopService()
            goto L4f
        L25:
            boolean r0 = r9.exoPlayerIsNull()
            if (r0 != 0) goto L4f
            org.schabi.newpipe.player.playqueue.PlayQueue r0 = r9.playQueue
            if (r0 == 0) goto L4f
            r0.error()
            goto L4f
        L33:
            com.google.android.exoplayer2.ExoPlayer r0 = r9.simpleExoPlayer
            r0.seekToDefaultPosition()
            com.google.android.exoplayer2.ExoPlayer r0 = r9.simpleExoPlayer
            r0.prepare()
            org.schabi.newpipe.player.Player$$ExternalSyntheticLambda3 r0 = new org.schabi.newpipe.player.Player$$ExternalSyntheticLambda3
            r0.<init>(r2)
            org.schabi.newpipe.player.ui.PlayerUiList r1 = r9.UIs
            r1.call(r0)
            r2 = 1
            goto L4f
        L49:
            r9.setRecovery()
            r9.reloadPlayQueueManager()
        L4f:
            if (r2 != 0) goto Lb1
            org.schabi.newpipe.player.mediaitem.MediaItemTag r0 = r9.currentMetadata
            org.schabi.newpipe.error.UserAction r5 = org.schabi.newpipe.error.UserAction.PLAY_STREAM
            java.lang.String r1 = "Player error[type="
            if (r0 != 0) goto L78
            org.schabi.newpipe.error.ErrorInfo r3 = new org.schabi.newpipe.error.ErrorInfo
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>(r1)
            java.lang.String r1 = r10.getErrorCodeName()
            r0.append(r1)
            java.lang.String r1 = "] occurred, currentMetadata is null"
            r0.append(r1)
            java.lang.String r6 = r0.toString()
            r7 = 0
            r8 = 24
            r4 = r10
            r3.<init>(r4, r5, r6, r7, r8)
            goto Lac
        L78:
            r4 = r10
            org.schabi.newpipe.error.ErrorInfo r3 = new org.schabi.newpipe.error.ErrorInfo
            java.lang.StringBuilder r10 = new java.lang.StringBuilder
            r10.<init>(r1)
            java.lang.String r0 = r4.getErrorCodeName()
            r10.append(r0)
            java.lang.String r0 = "] occurred while playing "
            r10.append(r0)
            org.schabi.newpipe.player.mediaitem.MediaItemTag r0 = r9.currentMetadata
            java.lang.String r0 = r0.getStreamUrl()
            r10.append(r0)
            java.lang.String r6 = r10.toString()
            org.schabi.newpipe.player.mediaitem.MediaItemTag r10 = r9.currentMetadata
            int r10 = r10.getServiceId()
            java.lang.Integer r7 = java.lang.Integer.valueOf(r10)
            org.schabi.newpipe.player.mediaitem.MediaItemTag r10 = r9.currentMetadata
            java.lang.String r8 = r10.getStreamUrl()
            r3.<init>(r4, r5, r6, r7, r8)
        Lac:
            org.schabi.newpipe.player.PlayerService r10 = r9.context
            org.schabi.newpipe.error.ErrorUtil.createNotification(r10, r3)
        Lb1:
            org.schabi.newpipe.player.helper.PlayerHolder$1 r9 = r9.fragmentListener
            if (r9 == 0) goto Lc5
            org.schabi.newpipe.player.helper.PlayerHolder r9 = org.schabi.newpipe.player.helper.PlayerHolder.this
            org.schabi.newpipe.player.event.PlayerServiceExtendedEventListener r9 = r9.listener
            if (r9 == 0) goto Lc5
            org.schabi.newpipe.fragments.detail.VideoDetailFragment r9 = (org.schabi.newpipe.fragments.detail.VideoDetailFragment) r9
            if (r2 != 0) goto Lc5
            r9.toggleFullscreenIfInFullscreenMode()
            r9.hideMainPlayerOnLoadingNewStream()
        Lc5:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.schabi.newpipe.player.Player.onPlayerError(com.google.android.exoplayer2.PlaybackException):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:21:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0036  */
    @Override // com.google.android.exoplayer2.Player.Listener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onPositionDiscontinuity(com.google.android.exoplayer2.Player.PositionInfo r2, com.google.android.exoplayer2.Player.PositionInfo r3, int r4) {
        /*
            r1 = this;
            org.schabi.newpipe.player.playqueue.PlayQueue r2 = r1.playQueue
            if (r2 != 0) goto L5
            goto L59
        L5:
            int r2 = r3.mediaItemIndex
            r3 = 1
            if (r4 == 0) goto L16
            if (r4 == r3) goto L32
            r0 = 2
            if (r4 == r0) goto L39
            r0 = 4
            if (r4 == r0) goto L16
            r3 = 5
            if (r4 == r3) goto L39
            goto L59
        L16:
            int r4 = r1.getRepeatMode()
            if (r4 != r3) goto L32
            org.schabi.newpipe.player.playqueue.PlayQueue r3 = r1.playQueue
            int r3 = r3.getIndex()
            if (r2 != r3) goto L32
            j$.util.Optional r2 = r1.getCurrentStreamInfo()
            org.schabi.newpipe.player.Player$$ExternalSyntheticLambda0 r3 = new org.schabi.newpipe.player.Player$$ExternalSyntheticLambda0
            r4 = 2
            r3.<init>(r1, r4)
            r2.ifPresent(r3)
            return
        L32:
            boolean r3 = r1.isPrepared
            if (r3 == 0) goto L39
            r1.saveStreamProgressState()
        L39:
            int r3 = r1.currentState
            r4 = 123(0x7b, float:1.72E-43)
            if (r3 == r4) goto L59
            org.schabi.newpipe.player.playqueue.PlayQueue r3 = r1.playQueue
            int r3 = r3.getIndex()
            if (r2 == r3) goto L59
            j$.util.Optional r3 = r1.getCurrentStreamInfo()
            org.schabi.newpipe.player.Player$$ExternalSyntheticLambda0 r4 = new org.schabi.newpipe.player.Player$$ExternalSyntheticLambda0
            r0 = 3
            r4.<init>(r1, r0)
            r3.ifPresent(r4)
            org.schabi.newpipe.player.playqueue.PlayQueue r1 = r1.playQueue
            r1.setIndex(r2)
        L59:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.schabi.newpipe.player.Player.onPositionDiscontinuity(com.google.android.exoplayer2.Player$PositionInfo, com.google.android.exoplayer2.Player$PositionInfo, int):void");
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public final void onRenderedFirstFrame() {
        this.UIs.call(new TagSet$$ExternalSyntheticLambda1(27));
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public final void onRepeatModeChanged(final int i) {
        this.UIs.call(new Consumer() { // from class: org.schabi.newpipe.player.Player$$ExternalSyntheticLambda23
            @Override // java.util.function.Consumer
            /* renamed from: accept */
            public final void s(Object obj) {
                ((PlayerUi) obj).onRepeatModeChanged(i);
            }

            public /* synthetic */ Consumer andThen(Consumer consumer) {
                return Consumer$CC.$default$andThen(this, consumer);
            }
        });
        notifyPlaybackUpdateToListeners();
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public final void onShuffleModeEnabledChanged(boolean z) {
        PlayQueue playQueue = this.playQueue;
        if (playQueue != null) {
            if (z) {
                playQueue.shuffle();
            } else {
                playQueue.unshuffle();
            }
        }
        this.UIs.call(new Player$$ExternalSyntheticLambda2(z, 0));
        notifyPlaybackUpdateToListeners();
    }

    public final void onThumbnailLoaded(Bitmap bitmap) {
        if (this.currentThumbnail != bitmap) {
            this.currentThumbnail = bitmap;
            this.UIs.call(new Player$$ExternalSyntheticLambda1(bitmap, 14));
        }
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public final void onTracksChanged(Tracks tracks) {
        this.UIs.call(new Player$$ExternalSyntheticLambda1(tracks, 13));
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public final void onVideoSizeChanged(VideoSize videoSize) {
        this.UIs.call(new Player$$ExternalSyntheticLambda1(videoSize, 11));
    }

    public final void pause() {
        if (this.audioReactor == null || exoPlayerIsNull()) {
            return;
        }
        this.audioReactor.abandonAudioFocus();
        this.simpleExoPlayer.pause();
        saveStreamProgressState();
    }

    public final void play() {
        if (this.audioReactor == null || this.playQueue == null || exoPlayerIsNull()) {
            return;
        }
        if (!isMuted()) {
            this.audioReactor.requestAudioFocus();
        }
        if (this.currentState == 128) {
            if (this.playQueue.getIndex() == 0) {
                seekToDefault();
            } else {
                this.playQueue.setIndex(0);
            }
        }
        if (isStopped()) {
            setRecovery();
            reloadPlayQueueManager();
        }
        this.simpleExoPlayer.play();
        saveStreamProgressState();
    }

    public final void playNext() {
        if (this.playQueue == null) {
            return;
        }
        saveStreamProgressState();
        this.playQueue.offsetIndex(1);
        triggerProgressUpdate();
    }

    public final void playPause() {
        if (!getPlayWhenReady() || this.currentState == 128) {
            play();
        } else {
            pause();
        }
    }

    public final void playPrevious() {
        if (exoPlayerIsNull() || this.playQueue == null) {
            return;
        }
        if (this.simpleExoPlayer.getCurrentPosition() > 5000 || this.playQueue.getIndex() == 0) {
            seekToDefault();
            this.playQueue.offsetIndex(0);
        } else {
            saveStreamProgressState();
            this.playQueue.offsetIndex(-1);
        }
        triggerProgressUpdate();
    }

    public final void reloadPlayQueueManager() {
        MediaSourceManager mediaSourceManager = this.playQueueManager;
        if (mediaSourceManager != null) {
            int i = PlayQueue.$r8$clinit;
            mediaSourceManager.debouncedSignal.onComplete();
            LambdaObserver lambdaObserver = mediaSourceManager.debouncedLoader;
            lambdaObserver.getClass();
            DisposableHelper.dispose(lambdaObserver);
            mediaSourceManager.playQueueReactor.cancel();
            mediaSourceManager.loaderReactor.dispose();
        }
        PlayQueue playQueue = this.playQueue;
        if (playQueue != null) {
            this.playQueueManager = new MediaSourceManager(this, playQueue);
        }
    }

    public final void saveStreamProgressState() {
        PlayQueue playQueue;
        if (exoPlayerIsNull() || this.currentMetadata == null || (playQueue = this.playQueue) == null || playQueue.getIndex() != this.simpleExoPlayer.getCurrentMediaItemIndex()) {
            return;
        }
        PlayQueue playQueue2 = this.playQueue;
        playQueue2.setRecovery(playQueue2.getIndex(), this.simpleExoPlayer.getContentPosition());
        getCurrentStreamInfo().ifPresent(new Player$$ExternalSyntheticLambda25(this, this.simpleExoPlayer.getCurrentPosition()));
    }

    public final void seekTo(long j) {
        if (exoPlayerIsNull()) {
            return;
        }
        ExoPlayer exoPlayer = this.simpleExoPlayer;
        long duration = exoPlayer.getDuration();
        if (j < 0) {
            j = 0;
        } else if (j > duration) {
            j = duration;
        }
        exoPlayer.seekTo(j);
    }

    public final void seekToDefault() {
        if (exoPlayerIsNull()) {
            return;
        }
        this.simpleExoPlayer.seekToDefaultPosition();
    }

    public final void selectQueueItem(PlayQueueItem playQueueItem) {
        int indexOf;
        if (this.playQueue == null || exoPlayerIsNull() || (indexOf = this.playQueue.indexOf(playQueueItem)) == -1) {
            return;
        }
        if (this.playQueue.getIndex() == indexOf && this.simpleExoPlayer.getCurrentMediaItemIndex() == indexOf) {
            seekToDefault();
        } else {
            saveStreamProgressState();
        }
        this.playQueue.setIndex(indexOf);
    }

    public final void setPlaybackParameters(float f, float f2, boolean z) {
        float round = Math.round(f * 100.0f) / 100.0f;
        float round2 = Math.round(f2 * 100.0f) / 100.0f;
        SharedPreferences.Editor edit = this.prefs.edit();
        PlayerService playerService = this.context;
        edit.putFloat(playerService.getString(R.string.playback_speed_key), round).putFloat(playerService.getString(R.string.playback_pitch_key), round2).putBoolean(playerService.getString(R.string.playback_skip_silence_key), z).apply();
        this.simpleExoPlayer.setPlaybackParameters(new PlaybackParameters(round, round2));
        this.simpleExoPlayer.setSkipSilenceEnabled(z);
    }

    public final void setRecovery() {
        if (this.playQueue == null || exoPlayerIsNull()) {
            return;
        }
        int index = this.playQueue.getIndex();
        long currentPosition = this.simpleExoPlayer.getCurrentPosition();
        long duration = this.simpleExoPlayer.getDuration();
        if (currentPosition < 0) {
            currentPosition = 0;
        } else if (currentPosition > duration) {
            currentPosition = duration;
        }
        PlayQueue playQueue = this.playQueue;
        if (playQueue == null || playQueue.size() <= index) {
            return;
        }
        this.playQueue.setRecovery(index, currentPosition);
    }

    public final void startProgressLoop() {
        Scheduler mainThread = AndroidSchedulers.mainThread();
        Objects.requireNonNull(TimeUnit.MILLISECONDS, "unit is null");
        ObservableObserveOn observeOn = new ObservableInterval(Math.max(0L, 1000L), Math.max(0L, 1000L), mainThread).observeOn(AndroidSchedulers.mainThread());
        LambdaObserver lambdaObserver = new LambdaObserver(new OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0(this, 21), new FeedViewModel$$ExternalSyntheticLambda0(18));
        observeOn.subscribe(lambdaObserver);
        DisposableHelper.set(this.progressUpdateDisposable.resource, lambdaObserver);
    }

    public final void toggleMute() {
        boolean isMuted = isMuted();
        this.simpleExoPlayer.setVolume(isMuted ? 1.0f : 0.0f);
        AudioReactor audioReactor = this.audioReactor;
        if (isMuted) {
            audioReactor.requestAudioFocus();
        } else {
            audioReactor.abandonAudioFocus();
        }
        this.UIs.call(new Player$$ExternalSyntheticLambda2(isMuted, 1));
        notifyPlaybackUpdateToListeners();
    }

    public final void toggleShuffleModeEnabled() {
        if (exoPlayerIsNull()) {
            return;
        }
        this.simpleExoPlayer.setShuffleModeEnabled(!r1.getShuffleModeEnabled());
    }

    public final void triggerProgressUpdate() {
        if (exoPlayerIsNull()) {
            return;
        }
        final int max = Math.max((int) this.simpleExoPlayer.getCurrentPosition(), 0);
        final int duration = (int) this.simpleExoPlayer.getDuration();
        final int bufferedPercentage = this.simpleExoPlayer.getBufferedPercentage();
        if (this.isPrepared) {
            this.UIs.call(new Consumer() { // from class: org.schabi.newpipe.player.Player$$ExternalSyntheticLambda13
                @Override // java.util.function.Consumer
                /* renamed from: accept */
                public final void s(Object obj) {
                    ((PlayerUi) obj).onUpdateProgress(max, duration, bufferedPercentage);
                }

                public /* synthetic */ Consumer andThen(Consumer consumer) {
                    return Consumer$CC.$default$andThen(this, consumer);
                }
            });
            PlayerHolder.AnonymousClass1 anonymousClass1 = this.fragmentListener;
            if (anonymousClass1 != null) {
                anonymousClass1.onProgressUpdate(max, duration, bufferedPercentage);
            }
            PlayerEventListener playerEventListener = this.activityListener;
            if (playerEventListener != null) {
                playerEventListener.onProgressUpdate(max, duration, bufferedPercentage);
            }
        }
    }

    public final void unregisterBroadcastReceiver() {
        try {
            this.context.unregisterReceiver(this.broadcastReceiver);
        } catch (IllegalArgumentException e) {
            Log.w(TAG, "Broadcast receiver already unregistered: " + e.getMessage());
        }
    }

    public final void updatePlaybackState(int i, boolean z) {
        if (this.currentState == 127) {
            return;
        }
        if (i == 1) {
            this.isPrepared = false;
            return;
        }
        if (i == 2) {
            if (this.isPrepared) {
                changeState(Token.IF);
            }
        } else {
            if (i != 3) {
                if (i != 4) {
                    return;
                }
                changeState(128);
                getCurrentStreamInfo().ifPresent(new Player$$ExternalSyntheticLambda0(this, 3));
                this.isPrepared = false;
                return;
            }
            if (!this.isPrepared) {
                this.isPrepared = true;
                this.UIs.call(new Player$$ExternalSyntheticLambda3(7));
                if (z && !isMuted()) {
                    this.audioReactor.requestAudioFocus();
                }
            }
            changeState(z ? Token.IMPORT : Token.ELSE);
        }
    }

    public final void useVideoAndSubtitles(boolean z) {
        PlayQueue playQueue = this.playQueue;
        if (playQueue == null) {
            return;
        }
        boolean z2 = !z;
        this.isAudioOnly = z2;
        PlayQueueItem item = playQueue.getItem();
        final boolean z3 = (item == null || item.getRecoveryPosition() == Long.MIN_VALUE) ? false : true;
        final boolean z4 = (exoPlayerIsNull() || this.simpleExoPlayer.getCurrentTimeline().isEmpty()) ? false : true;
        getCurrentStreamInfo().ifPresentOrElse(new Consumer() { // from class: org.schabi.newpipe.player.Player$$ExternalSyntheticLambda44
            /* JADX WARN: Removed duplicated region for block: B:19:0x008b  */
            /* JADX WARN: Removed duplicated region for block: B:22:? A[RETURN, SYNTHETIC] */
            @Override // java.util.function.Consumer
            /* renamed from: accept */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final void s(java.lang.Object r9) {
                /*
                    r8 = this;
                    org.schabi.newpipe.extractor.stream.StreamInfo r9 = (org.schabi.newpipe.extractor.stream.StreamInfo) r9
                    org.schabi.newpipe.player.Player r0 = org.schabi.newpipe.player.Player.this
                    org.schabi.newpipe.player.resolver.VideoPlaybackResolver r1 = r0.videoResolver
                    org.schabi.newpipe.player.resolver.VideoPlaybackResolver$SourceType r1 = r1.streamSourceType
                    j$.util.Optional r1 = j$.util.Optional.ofNullable(r1)
                    org.schabi.newpipe.player.resolver.VideoPlaybackResolver$SourceType r2 = org.schabi.newpipe.player.resolver.VideoPlaybackResolver.SourceType.VIDEO_WITH_AUDIO_OR_AUDIO_ONLY
                    java.lang.Object r1 = r1.orElse(r2)
                    org.schabi.newpipe.player.resolver.VideoPlaybackResolver$SourceType r1 = (org.schabi.newpipe.player.resolver.VideoPlaybackResolver.SourceType) r1
                    boolean r3 = r2
                    if (r3 != 0) goto L1c
                    boolean r8 = r3
                    if (r8 != 0) goto L1f
                L1c:
                    r0.setRecovery()
                L1f:
                    com.google.android.exoplayer2.trackselection.DefaultTrackSelector r8 = r0.trackSelector
                    com.google.android.exoplayer2.trackselection.MappingTrackSelector$MappedTrackInfo r8 = r8.getCurrentMappedTrackInfo()
                    r3 = 0
                    r4 = -1
                    if (r8 != 0) goto L2b
                    r8 = r4
                    goto L44
                L2b:
                    int r5 = r8.getRendererCount()
                    j$.util.stream.IntStream r5 = j$.util.stream.IntStream.CC.range(r3, r5)
                    org.schabi.newpipe.player.Player$$ExternalSyntheticLambda46 r6 = new org.schabi.newpipe.player.Player$$ExternalSyntheticLambda46
                    r6.<init>()
                    j$.util.stream.IntStream r8 = r5.filter(r6)
                    j$.util.OptionalInt r8 = r8.findFirst()
                    int r8 = r8.orElse(r4)
                L44:
                    org.schabi.newpipe.extractor.stream.StreamType r5 = r9.getStreamType()
                    r5.getClass()
                    org.schabi.newpipe.extractor.stream.StreamType r6 = org.schabi.newpipe.extractor.stream.StreamType.AUDIO_STREAM
                    r7 = 1
                    if (r5 == r6) goto L5b
                    org.schabi.newpipe.extractor.stream.StreamType r6 = org.schabi.newpipe.extractor.stream.StreamType.AUDIO_LIVE_STREAM
                    if (r5 == r6) goto L5b
                    org.schabi.newpipe.extractor.stream.StreamType r6 = org.schabi.newpipe.extractor.stream.StreamType.POST_LIVE_AUDIO_STREAM
                    if (r5 != r6) goto L59
                    goto L5b
                L59:
                    r6 = r3
                    goto L5c
                L5b:
                    r6 = r7
                L5c:
                    if (r8 != r4) goto L62
                    if (r6 != 0) goto L62
                L60:
                    r3 = r7
                    goto L89
                L62:
                    if (r6 != 0) goto L89
                    org.schabi.newpipe.extractor.stream.StreamType r8 = org.schabi.newpipe.extractor.stream.StreamType.LIVE_STREAM
                    if (r5 != r8) goto L6d
                    org.schabi.newpipe.player.resolver.VideoPlaybackResolver$SourceType r4 = org.schabi.newpipe.player.resolver.VideoPlaybackResolver.SourceType.LIVE_STREAM
                    if (r1 != r4) goto L6d
                    goto L89
                L6d:
                    org.schabi.newpipe.player.resolver.VideoPlaybackResolver$SourceType r4 = org.schabi.newpipe.player.resolver.VideoPlaybackResolver.SourceType.VIDEO_WITH_SEPARATED_AUDIO
                    if (r1 == r4) goto L7d
                    if (r1 != r2) goto L60
                    java.util.List r9 = r9.getAudioStreams()
                    boolean r9 = org.schabi.newpipe.extractor.utils.Utils.isNullOrEmpty(r9)
                    if (r9 == 0) goto L60
                L7d:
                    org.schabi.newpipe.extractor.stream.StreamType r9 = org.schabi.newpipe.extractor.stream.StreamType.VIDEO_STREAM
                    if (r5 == r9) goto L87
                    if (r5 == r8) goto L87
                    org.schabi.newpipe.extractor.stream.StreamType r8 = org.schabi.newpipe.extractor.stream.StreamType.POST_LIVE_STREAM
                    if (r5 != r8) goto L88
                L87:
                    r3 = r7
                L88:
                    r3 = r3 ^ r7
                L89:
                    if (r3 == 0) goto L8e
                    r0.reloadPlayQueueManager()
                L8e:
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: org.schabi.newpipe.player.Player$$ExternalSyntheticLambda44.s(java.lang.Object):void");
            }

            public /* synthetic */ Consumer andThen(Consumer consumer) {
                return Consumer$CC.$default$andThen(this, consumer);
            }
        }, new Runnable() { // from class: org.schabi.newpipe.player.Player$$ExternalSyntheticLambda45
            @Override // java.lang.Runnable
            public final void run() {
                Player player = Player.this;
                player.getClass();
                if (z4 || !z3) {
                    player.setRecovery();
                }
                player.reloadPlayQueueManager();
            }
        });
        DefaultTrackSelector defaultTrackSelector = this.trackSelector;
        defaultTrackSelector.setParameters(defaultTrackSelector.buildUponParameters().setTrackTypeDisabled(3, z2).setTrackTypeDisabled(2, z2));
    }

    public final boolean videoPlayerSelected() {
        return this.playerType == PlayerType.MAIN;
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public final /* synthetic */ void onCues(List list) {
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public final /* synthetic */ void onPositionDiscontinuity(int i) {
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public final /* synthetic */ void onAudioAttributesChanged(AudioAttributes audioAttributes) {
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public final /* synthetic */ void onAudioSessionIdChanged(int i) {
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public final /* synthetic */ void onAvailableCommandsChanged(Player.Commands commands) {
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public final /* synthetic */ void onDeviceInfoChanged(DeviceInfo deviceInfo) {
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public final /* synthetic */ void onIsPlayingChanged(boolean z) {
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public final /* synthetic */ void onLoadingChanged(boolean z) {
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public final /* synthetic */ void onMaxSeekToPreviousPositionChanged(long j) {
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public final /* synthetic */ void onMediaMetadataChanged(MediaMetadata mediaMetadata) {
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public final /* synthetic */ void onMetadata(Metadata metadata) {
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public final /* synthetic */ void onPlaybackSuppressionReasonChanged(int i) {
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public final /* synthetic */ void onPlayerErrorChanged(PlaybackException playbackException) {
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public final /* synthetic */ void onPlaylistMetadataChanged(MediaMetadata mediaMetadata) {
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public final /* synthetic */ void onSeekBackIncrementChanged(long j) {
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public final /* synthetic */ void onSeekForwardIncrementChanged(long j) {
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public final /* synthetic */ void onSkipSilenceEnabledChanged(boolean z) {
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public final /* synthetic */ void onTrackSelectionParametersChanged(TrackSelectionParameters trackSelectionParameters) {
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public final /* synthetic */ void onVolumeChanged(float f) {
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public final /* synthetic */ void onDeviceVolumeChanged(int i, boolean z) {
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public final /* synthetic */ void onMediaItemTransition(MediaItem mediaItem, int i) {
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public final /* synthetic */ void onPlayerStateChanged(boolean z, int i) {
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public final /* synthetic */ void onSurfaceSizeChanged(int i, int i2) {
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public final /* synthetic */ void onTimelineChanged(Timeline timeline, int i) {
    }
}
