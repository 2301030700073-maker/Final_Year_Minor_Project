.class public final Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;
.super Lorg/schabi/newpipe/player/ui/PlayerUi;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field public final ignoreHardwareMediaButtonsKey:Ljava/lang/String;

.field public final mediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

.field public prevNotificationActions:Ljava/util/List;

.field public final sessionConnector:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

.field public shouldIgnoreHardwareMediaButtons:Z


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/player/Player;Landroid/support/v4/media/session/MediaSessionCompat;Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/player/ui/PlayerUi;-><init>(Lorg/schabi/newpipe/player/Player;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;->shouldIgnoreHardwareMediaButtons:Z

    .line 6
    .line 7
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 8
    .line 9
    iput-object p1, p0, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;->prevNotificationActions:Ljava/util/List;

    .line 10
    .line 11
    iput-object p2, p0, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;->mediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 12
    .line 13
    iput-object p3, p0, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;->sessionConnector:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    .line 14
    .line 15
    iget-object p1, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->context:Lorg/schabi/newpipe/player/PlayerService;

    .line 16
    .line 17
    const p2, 0x7f130202

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;->ignoreHardwareMediaButtonsKey:Ljava/lang/String;

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final destroyPlayer()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    .line 2
    .line 3
    iget-object v0, v0, Lorg/schabi/newpipe/player/Player;->prefs:Landroid/content/SharedPreferences;

    .line 4
    .line 5
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;->sessionConnector:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->setMediaButtonEventHandler(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$MediaButtonEventHandler;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->setPlayer(Lcom/google/android/exoplayer2/Player;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->setQueueNavigator(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$QueueNavigator;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;->mediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->setActive(Z)V

    .line 24
    .line 25
    .line 26
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 27
    .line 28
    iput-object v0, p0, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;->prevNotificationActions:Ljava/util/List;

    .line 29
    .line 30
    return-void
.end method

.method public final initPlayer()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;->destroyPlayer()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;->mediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->setActive(Z)V

    .line 8
    .line 9
    .line 10
    new-instance v2, Lorg/schabi/newpipe/player/mediasession/PlayQueueNavigator;

    .line 11
    .line 12
    iget-object v3, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    .line 13
    .line 14
    invoke-direct {v2, v0, v3}, Lorg/schabi/newpipe/player/mediasession/PlayQueueNavigator;-><init>(Landroid/support/v4/media/session/MediaSessionCompat;Lorg/schabi/newpipe/player/Player;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;->sessionConnector:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    .line 18
    .line 19
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->setQueueNavigator(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$QueueNavigator;)V

    .line 20
    .line 21
    .line 22
    new-instance v2, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi$1;

    .line 23
    .line 24
    iget-object v4, v3, Lorg/schabi/newpipe/player/Player;->simpleExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 25
    .line 26
    invoke-direct {v2, p0, v4}, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi$1;-><init>(Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;Lcom/google/android/exoplayer2/Player;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->setPlayer(Lcom/google/android/exoplayer2/Player;)V

    .line 30
    .line 31
    .line 32
    new-instance v2, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi$$ExternalSyntheticLambda6;

    .line 33
    .line 34
    invoke-direct {v2, p0}, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi$$ExternalSyntheticLambda6;-><init>(Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->setMediaButtonEventHandler(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$MediaButtonEventHandler;)V

    .line 38
    .line 39
    .line 40
    iget-object v2, v3, Lorg/schabi/newpipe/player/Player;->prefs:Landroid/content/SharedPreferences;

    .line 41
    .line 42
    iget-object v3, p0, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;->ignoreHardwareMediaButtonsKey:Ljava/lang/String;

    .line 43
    .line 44
    const/4 v4, 0x0

    .line 45
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    iput-boolean v3, p0, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;->shouldIgnoreHardwareMediaButtons:Z

    .line 50
    .line 51
    invoke-interface {v2, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->setMetadataDeduplicationEnabled(Z)V

    .line 55
    .line 56
    .line 57
    new-instance v1, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi$$ExternalSyntheticLambda6;

    .line 58
    .line 59
    invoke-direct {v1, p0}, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi$$ExternalSyntheticLambda6;-><init>(Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->setMediaMetadataProvider(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$MediaMetadataProvider;)V

    .line 63
    .line 64
    .line 65
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 66
    .line 67
    iput-object v0, p0, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;->prevNotificationActions:Ljava/util/List;

    .line 68
    .line 69
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;->updateMediaSessionActions()V

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method public final onBlocked()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;->updateMediaSessionActions()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onBroadcastReceived(Landroid/content/Intent;)V
    .locals 1

    .line 1
    const-string v0, "org.schabi.newpipe.player.MainPlayer..player.MainPlayer.ACTION_RECREATE_NOTIFICATION"

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;->updateMediaSessionActions()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final onBuffering()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;->updateMediaSessionActions()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onCompleted()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;->updateMediaSessionActions()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onMetadataChanged(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;->updateMediaSessionActions()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onPaused()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;->updateMediaSessionActions()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onPausedSeek()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;->updateMediaSessionActions()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onPlayQueueEdited()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;->updateMediaSessionActions()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onPlaying()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;->updateMediaSessionActions()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onRepeatModeChanged(I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;->updateMediaSessionActions()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;->ignoreHardwareMediaButtonsKey:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz p2, :cond_1

    .line 4
    .line 5
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    return-void

    .line 13
    :cond_1
    :goto_0
    const/4 p2, 0x0

    .line 14
    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    iput-boolean p1, p0, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;->shouldIgnoreHardwareMediaButtons:Z

    .line 19
    .line 20
    return-void
.end method

.method public final onShuffleModeEnabledChanged(Z)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;->updateMediaSessionActions()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onThumbnailLoaded(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;->sessionConnector:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->invalidateMediaSessionMetadata()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final updateMediaSessionActions()V
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x21

    .line 4
    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;->mediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 9
    .line 10
    iget-object v0, v0, Landroid/support/v4/media/session/MediaSessionCompat;->mImpl:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi22;

    .line 11
    .line 12
    iget-object v0, v0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi22;->mSessionFwk:Landroid/media/session/MediaSession;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/media/session/MediaSession;->isActive()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 v0, 0x3

    .line 22
    const/4 v1, 0x4

    .line 23
    filled-new-array {v0, v1}, [I

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0}, Lj$/util/stream/IntStream$-CC;->of([I)Lj$/util/stream/IntStream;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    new-instance v2, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi$$ExternalSyntheticLambda1;

    .line 32
    .line 33
    invoke-direct {v2, p0}, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi$$ExternalSyntheticLambda1;-><init>(Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;)V

    .line 34
    .line 35
    .line 36
    invoke-interface {v0, v2}, Lj$/util/stream/IntStream;->map(Ljava/util/function/IntUnaryOperator;)Lj$/util/stream/IntStream;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    new-instance v2, Lcom/google/common/collect/ImmutableList$$ExternalSyntheticLambda0;

    .line 41
    .line 42
    const/4 v3, 0x2

    .line 43
    invoke-direct {v2, p0, v3}, Lcom/google/common/collect/ImmutableList$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 44
    .line 45
    .line 46
    invoke-interface {v0, v2}, Lj$/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Lj$/util/stream/Stream;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    new-instance v2, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda48;

    .line 51
    .line 52
    const/16 v3, 0x9

    .line 53
    .line 54
    invoke-direct {v2, v3}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda48;-><init>(I)V

    .line 55
    .line 56
    .line 57
    invoke-interface {v0, v2}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-interface {v0, v2}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    check-cast v0, Ljava/util/List;

    .line 70
    .line 71
    iget-object v2, p0, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;->prevNotificationActions:Ljava/util/List;

    .line 72
    .line 73
    invoke-interface {v0, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    if-nez v2, :cond_2

    .line 78
    .line 79
    iput-object v0, p0, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;->prevNotificationActions:Ljava/util/List;

    .line 80
    .line 81
    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    new-instance v2, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda41;

    .line 86
    .line 87
    invoke-direct {v2, p0, v3}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda41;-><init>(Ljava/lang/Object;I)V

    .line 88
    .line 89
    .line 90
    invoke-interface {v0, v2}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    new-instance v2, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticLambda2;

    .line 95
    .line 96
    invoke-direct {v2, v1}, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticLambda2;-><init>(I)V

    .line 97
    .line 98
    .line 99
    invoke-interface {v0, v2}, Lj$/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    check-cast v0, [Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$CustomActionProvider;

    .line 104
    .line 105
    iget-object p0, p0, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;->sessionConnector:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    .line 106
    .line 107
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->setCustomActionProviders([Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$CustomActionProvider;)V

    .line 108
    .line 109
    .line 110
    :cond_2
    :goto_0
    return-void
.end method
