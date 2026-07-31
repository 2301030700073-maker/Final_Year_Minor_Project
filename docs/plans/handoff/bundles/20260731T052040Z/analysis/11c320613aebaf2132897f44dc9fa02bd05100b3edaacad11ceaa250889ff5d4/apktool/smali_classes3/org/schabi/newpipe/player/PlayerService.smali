.class public final Lorg/schabi/newpipe/player/PlayerService;
.super Landroidx/media/MediaBrowserServiceCompat;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mBinder:Lorg/schabi/newpipe/player/PlayerService$LocalBinder;

.field public mediaBrowserImpl:Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;

.field public mediaBrowserPlaybackPreparer:Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer;

.field public mediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

.field public onPlayerStartedOrStopped:Lorg/schabi/newpipe/player/helper/PlayerHolder$$ExternalSyntheticLambda0;

.field public player:Lorg/schabi/newpipe/player/Player;

.field public sessionConnector:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lorg/schabi/newpipe/player/Player;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/media/MediaBrowserServiceCompat;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/schabi/newpipe/player/PlayerService$LocalBinder;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lorg/schabi/newpipe/player/PlayerService$LocalBinder;-><init>(Lorg/schabi/newpipe/player/PlayerService;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/schabi/newpipe/player/PlayerService;->mBinder:Lorg/schabi/newpipe/player/PlayerService$LocalBinder;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lorg/schabi/newpipe/player/PlayerService;->onPlayerStartedOrStopped:Lorg/schabi/newpipe/player/helper/PlayerHolder$$ExternalSyntheticLambda0;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final attachBaseContext(Landroid/content/Context;)V
    .locals 1

    .line 1
    new-instance v0, Lorg/schabi/newpipe/player/AudioServiceLeakFix;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, v0}, Landroid/app/Service;->attachBaseContext(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final cleanup()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/player/PlayerService;->player:Lorg/schabi/newpipe/player/Player;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-object v0, p0, Lorg/schabi/newpipe/player/PlayerService;->onPlayerStartedOrStopped:Lorg/schabi/newpipe/player/helper/PlayerHolder$$ExternalSyntheticLambda0;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/player/helper/PlayerHolder$$ExternalSyntheticLambda0;->accept(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/PlayerService;->player:Lorg/schabi/newpipe/player/Player;

    .line 14
    .line 15
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->saveStreamProgressState()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->setRecovery()V

    .line 19
    .line 20
    .line 21
    iget-object v2, v0, Lorg/schabi/newpipe/player/Player;->fragmentListener:Lorg/schabi/newpipe/player/helper/PlayerHolder$1;

    .line 22
    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    invoke-virtual {v2}, Lorg/schabi/newpipe/player/helper/PlayerHolder$1;->onServiceStopped()V

    .line 26
    .line 27
    .line 28
    iput-object v1, v0, Lorg/schabi/newpipe/player/Player;->fragmentListener:Lorg/schabi/newpipe/player/helper/PlayerHolder$1;

    .line 29
    .line 30
    :cond_1
    iget-object v2, v0, Lorg/schabi/newpipe/player/Player;->activityListener:Lorg/schabi/newpipe/player/event/PlayerEventListener;

    .line 31
    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    invoke-interface {v2}, Lorg/schabi/newpipe/player/event/PlayerEventListener;->onServiceStopped()V

    .line 35
    .line 36
    .line 37
    iput-object v1, v0, Lorg/schabi/newpipe/player/Player;->activityListener:Lorg/schabi/newpipe/player/event/PlayerEventListener;

    .line 38
    .line 39
    :cond_2
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->destroyPlayer()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->unregisterBroadcastReceiver()V

    .line 43
    .line 44
    .line 45
    iget-object v2, v0, Lorg/schabi/newpipe/player/Player;->databaseUpdateDisposable:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 46
    .line 47
    invoke-virtual {v2}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    .line 48
    .line 49
    .line 50
    iget-object v2, v0, Lorg/schabi/newpipe/player/Player;->progressUpdateDisposable:Lio/reactivex/rxjava3/disposables/SerialDisposable;

    .line 51
    .line 52
    iget-object v2, v2, Lio/reactivex/rxjava3/disposables/SerialDisposable;->resource:Ljava/util/concurrent/atomic/AtomicReference;

    .line 53
    .line 54
    invoke-static {v2, v1}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->set(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/rxjava3/disposables/Disposable;)Z

    .line 55
    .line 56
    .line 57
    iget-object v2, v0, Lorg/schabi/newpipe/player/Player;->streamItemDisposable:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 58
    .line 59
    invoke-virtual {v2}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    .line 60
    .line 61
    .line 62
    iget-object v0, v0, Lorg/schabi/newpipe/player/Player;->UIs:Lorg/schabi/newpipe/player/ui/PlayerUiList;

    .line 63
    .line 64
    const-class v2, Ljava/lang/Object;

    .line 65
    .line 66
    invoke-virtual {v0, v2}, Lorg/schabi/newpipe/player/ui/PlayerUiList;->destroyAll(Ljava/lang/Class;)V

    .line 67
    .line 68
    .line 69
    iput-object v1, p0, Lorg/schabi/newpipe/player/PlayerService;->player:Lorg/schabi/newpipe/player/Player;

    .line 70
    .line 71
    :cond_3
    iget-object v0, p0, Lorg/schabi/newpipe/player/PlayerService;->mediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 72
    .line 73
    const/4 v1, 0x0

    .line 74
    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->setActive(Z)V

    .line 75
    .line 76
    .line 77
    invoke-static {p0}, Landroidx/core/app/NavUtils;->stopForeground(Landroid/app/Service;)V

    .line 78
    .line 79
    .line 80
    return-void
.end method

.method public final destroyPlayerAndStopService()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/PlayerService;->cleanup()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/content/Intent;

    .line 5
    .line 6
    const-class v1, Lorg/schabi/newpipe/player/PlayerService;

    .line 7
    .line 8
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    .line 1
    const-string v0, "bind_player_holder_action"

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Lorg/schabi/newpipe/player/PlayerService;->mBinder:Lorg/schabi/newpipe/player/PlayerService$LocalBinder;

    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_0
    const-string v0, "android.media.browse.MediaBrowserService"

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-super {p0, p1}, Landroidx/media/MediaBrowserServiceCompat;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0

    .line 33
    :cond_1
    const/4 p0, 0x0

    .line 34
    return-object p0
.end method

.method public final onCreate()V
    .locals 6

    .line 1
    invoke-super {p0}, Landroidx/media/MediaBrowserServiceCompat;->onCreate()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    invoke-static {p0, v0}, Lokio/Options$Companion;->setTheme(Landroid/content/ContextWrapper;I)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;

    .line 9
    .line 10
    new-instance v1, Lorg/schabi/newpipe/player/PlayerService$$ExternalSyntheticLambda0;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-direct {v1, p0, v2}, Lorg/schabi/newpipe/player/PlayerService$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/player/PlayerService;I)V

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, p0, v1}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;-><init>(Lorg/schabi/newpipe/player/PlayerService;Lorg/schabi/newpipe/player/PlayerService$$ExternalSyntheticLambda0;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lorg/schabi/newpipe/player/PlayerService;->mediaBrowserImpl:Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;

    .line 20
    .line 21
    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat;

    .line 22
    .line 23
    invoke-direct {v0, p0}, Landroid/support/v4/media/session/MediaSessionCompat;-><init>(Lorg/schabi/newpipe/player/PlayerService;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lorg/schabi/newpipe/player/PlayerService;->mediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 27
    .line 28
    iget-object v0, v0, Landroid/support/v4/media/session/MediaSessionCompat;->mImpl:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi22;

    .line 29
    .line 30
    iget-object v0, v0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi22;->mToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    iget-object v1, p0, Landroidx/media/MediaBrowserServiceCompat;->mSession:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 35
    .line 36
    if-nez v1, :cond_0

    .line 37
    .line 38
    iput-object v0, p0, Landroidx/media/MediaBrowserServiceCompat;->mSession:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 39
    .line 40
    iget-object v1, p0, Landroidx/media/MediaBrowserServiceCompat;->mImpl:Lcoil3/ComponentRegistry$Builder;

    .line 41
    .line 42
    iget-object v3, v1, Lcoil3/ComponentRegistry$Builder;->lazyFetcherFactories:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v3, Landroidx/media/MediaBrowserServiceCompat;

    .line 45
    .line 46
    iget-object v3, v3, Landroidx/media/MediaBrowserServiceCompat;->mHandler:Lorg/schabi/newpipe/views/FocusOverlayView$1;

    .line 47
    .line 48
    new-instance v4, Landroidx/core/app/ActivityRecreator$1;

    .line 49
    .line 50
    const/4 v5, 0x5

    .line 51
    invoke-direct {v4, v5, v1, v0, v2}, Landroidx/core/app/ActivityRecreator$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3, v4}, Lorg/schabi/newpipe/views/FocusOverlayView$1;->postOrRun(Ljava/lang/Runnable;)V

    .line 55
    .line 56
    .line 57
    new-instance v0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    .line 58
    .line 59
    iget-object v1, p0, Lorg/schabi/newpipe/player/PlayerService;->mediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 60
    .line 61
    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;-><init>(Landroid/support/v4/media/session/MediaSessionCompat;)V

    .line 62
    .line 63
    .line 64
    iput-object v0, p0, Lorg/schabi/newpipe/player/PlayerService;->sessionConnector:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    .line 65
    .line 66
    const/4 v1, 0x1

    .line 67
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->setMetadataDeduplicationEnabled(Z)V

    .line 68
    .line 69
    .line 70
    new-instance v0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer;

    .line 71
    .line 72
    iget-object v2, p0, Lorg/schabi/newpipe/player/PlayerService;->sessionConnector:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    .line 73
    .line 74
    invoke-static {v2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    new-instance v3, Lorg/schabi/newpipe/DownloaderImpl$$ExternalSyntheticLambda0;

    .line 78
    .line 79
    invoke-direct {v3, v2, v1}, Lorg/schabi/newpipe/DownloaderImpl$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 80
    .line 81
    .line 82
    new-instance v2, Lorg/acra/builder/ReportExecutor$$ExternalSyntheticLambda0;

    .line 83
    .line 84
    const/16 v4, 0x1c

    .line 85
    .line 86
    invoke-direct {v2, p0, v4}, Lorg/acra/builder/ReportExecutor$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 87
    .line 88
    .line 89
    new-instance v4, Lorg/schabi/newpipe/player/PlayerService$$ExternalSyntheticLambda0;

    .line 90
    .line 91
    invoke-direct {v4, p0, v1}, Lorg/schabi/newpipe/player/PlayerService$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/player/PlayerService;I)V

    .line 92
    .line 93
    .line 94
    invoke-direct {v0, p0, v3, v2, v4}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer;-><init>(Lorg/schabi/newpipe/player/PlayerService;Lorg/schabi/newpipe/DownloaderImpl$$ExternalSyntheticLambda0;Lorg/acra/builder/ReportExecutor$$ExternalSyntheticLambda0;Lorg/schabi/newpipe/player/PlayerService$$ExternalSyntheticLambda0;)V

    .line 95
    .line 96
    .line 97
    iput-object v0, p0, Lorg/schabi/newpipe/player/PlayerService;->mediaBrowserPlaybackPreparer:Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer;

    .line 98
    .line 99
    iget-object p0, p0, Lorg/schabi/newpipe/player/PlayerService;->sessionConnector:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    .line 100
    .line 101
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->setPlaybackPreparer(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$PlaybackPreparer;)V

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :cond_0
    const-string p0, "The session token has already been set"

    .line 106
    .line 107
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    return-void

    .line 111
    :cond_1
    const-string p0, "Session token may not be null"

    .line 112
    .line 113
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    return-void
.end method

.method public final onDestroy()V
    .locals 6

    .line 1
    invoke-super {p0}, Landroidx/media/MediaBrowserServiceCompat;->onDestroy()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/PlayerService;->cleanup()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lorg/schabi/newpipe/player/PlayerService;->mediaBrowserPlaybackPreparer:Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer;

    .line 8
    .line 9
    iget-object v0, v0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer;->disposable:Lio/reactivex/rxjava3/internal/observers/ConsumerSingleObserver;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-static {v0}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/PlayerService;->mediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 17
    .line 18
    iget-object v0, v0, Landroid/support/v4/media/session/MediaSessionCompat;->mImpl:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi22;

    .line 19
    .line 20
    iget-object v1, v0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi22;->mSessionFwk:Landroid/media/session/MediaSession;

    .line 21
    .line 22
    iget-object v2, v0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi22;->mExtraControllerCallbacks:Landroid/os/RemoteCallbackList;

    .line 23
    .line 24
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->kill()V

    .line 25
    .line 26
    .line 27
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 28
    .line 29
    const/16 v3, 0x1b

    .line 30
    .line 31
    const/4 v4, 0x0

    .line 32
    if-ne v2, v3, :cond_1

    .line 33
    .line 34
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    const-string v3, "mCallback"

    .line 39
    .line 40
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    const/4 v3, 0x1

    .line 45
    invoke-virtual {v2, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    check-cast v2, Landroid/os/Handler;

    .line 53
    .line 54
    if-eqz v2, :cond_1

    .line 55
    .line 56
    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :catch_0
    move-exception v2

    .line 61
    const-string v3, "MediaSessionCompat"

    .line 62
    .line 63
    const-string v5, "Exception happened while accessing MediaSession.mCallback."

    .line 64
    .line 65
    invoke-static {v3, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 66
    .line 67
    .line 68
    :cond_1
    :goto_0
    invoke-virtual {v1, v4}, Landroid/media/session/MediaSession;->setCallback(Landroid/media/session/MediaSession$Callback;)V

    .line 69
    .line 70
    .line 71
    iget-object v0, v0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi22;->mExtraSession:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21$ExtraSession;

    .line 72
    .line 73
    iget-object v0, v0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21$ExtraSession;->mMediaSessionImplRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 74
    .line 75
    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1}, Landroid/media/session/MediaSession;->release()V

    .line 79
    .line 80
    .line 81
    iget-object p0, p0, Lorg/schabi/newpipe/player/PlayerService;->mediaBrowserImpl:Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;

    .line 82
    .line 83
    iget-object p0, p0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 84
    .line 85
    invoke-virtual {p0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->dispose()V

    .line 86
    .line 87
    .line 88
    return-void
.end method

.method public final onGetRoot(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/support/v4/media/MediaMetadataCompat$Builder;
    .locals 17

    .line 1
    move-object/from16 v2, p1

    .line 2
    .line 3
    move/from16 v6, p2

    .line 4
    .line 5
    move-object/from16 v0, p0

    .line 6
    .line 7
    move-object/from16 v7, p3

    .line 8
    .line 9
    iget-object v0, v0, Lorg/schabi/newpipe/player/PlayerService;->mediaBrowserImpl:Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    sget v1, Lorg/schabi/newpipe/MainActivity;->$r8$clinit:I

    .line 15
    .line 16
    iget-object v8, v0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;->packageValidator:Lokhttp3/Dispatcher;

    .line 17
    .line 18
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    iget-object v0, v8, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v0, Landroid/content/pm/PackageManager;

    .line 24
    .line 25
    iget-object v1, v8, Lokhttp3/Dispatcher;->runningSyncCalls:Ljava/lang/Object;

    .line 26
    .line 27
    move-object v9, v1

    .line 28
    check-cast v9, Ljava/util/LinkedHashMap;

    .line 29
    .line 30
    invoke-virtual {v9, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Lkotlin/Pair;

    .line 35
    .line 36
    const/4 v10, 0x0

    .line 37
    if-nez v1, :cond_0

    .line 38
    .line 39
    new-instance v1, Lkotlin/Pair;

    .line 40
    .line 41
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 46
    .line 47
    invoke-direct {v1, v3, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    :cond_0
    invoke-virtual {v1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    check-cast v3, Ljava/lang/Number;

    .line 55
    .line 56
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    invoke-virtual {v1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    check-cast v1, Ljava/lang/Boolean;

    .line 65
    .line 66
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    const/4 v11, 0x0

    .line 71
    const/4 v12, 0x1

    .line 72
    if-ne v3, v6, :cond_1

    .line 73
    .line 74
    goto/16 :goto_9

    .line 75
    .line 76
    :cond_1
    const/16 v1, 0x1040

    .line 77
    .line 78
    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    if-nez v1, :cond_2

    .line 83
    .line 84
    move-object v5, v11

    .line 85
    goto/16 :goto_6

    .line 86
    .line 87
    :cond_2
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 88
    .line 89
    if-eqz v3, :cond_3

    .line 90
    .line 91
    invoke-virtual {v3, v0}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    goto :goto_0

    .line 96
    :cond_3
    move-object v0, v11

    .line 97
    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 102
    .line 103
    if-eqz v3, :cond_4

    .line 104
    .line 105
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_4
    const/4 v3, -0x1

    .line 109
    :goto_1
    invoke-static {v1}, Lokhttp3/Dispatcher;->getSignature(Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 114
    .line 115
    sget-object v13, Lkotlin/sequences/EmptySequence;->INSTANCE:Lkotlin/sequences/EmptySequence;

    .line 116
    .line 117
    if-eqz v5, :cond_6

    .line 118
    .line 119
    array-length v14, v5

    .line 120
    if-nez v14, :cond_5

    .line 121
    .line 122
    move-object v14, v13

    .line 123
    goto :goto_2

    .line 124
    :cond_5
    new-instance v14, Lkotlin/text/StringsKt__StringsKt$lineSequence$$inlined$Sequence$1;

    .line 125
    .line 126
    invoke-direct {v14, v5, v12}, Lkotlin/text/StringsKt__StringsKt$lineSequence$$inlined$Sequence$1;-><init>(Ljava/lang/Object;I)V

    .line 127
    .line 128
    .line 129
    goto :goto_2

    .line 130
    :cond_6
    move-object v14, v11

    .line 131
    :goto_2
    if-nez v14, :cond_7

    .line 132
    .line 133
    move-object v14, v13

    .line 134
    :cond_7
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    .line 135
    .line 136
    if-eqz v1, :cond_9

    .line 137
    .line 138
    array-length v5, v1

    .line 139
    if-nez v5, :cond_8

    .line 140
    .line 141
    move-object v5, v13

    .line 142
    goto :goto_3

    .line 143
    :cond_8
    new-instance v5, Lkotlin/text/StringsKt__StringsKt$lineSequence$$inlined$Sequence$1;

    .line 144
    .line 145
    const/4 v15, 0x2

    .line 146
    invoke-direct {v5, v1, v15}, Lkotlin/text/StringsKt__StringsKt$lineSequence$$inlined$Sequence$1;-><init>(Ljava/lang/Object;I)V

    .line 147
    .line 148
    .line 149
    goto :goto_3

    .line 150
    :cond_9
    move-object v5, v11

    .line 151
    :goto_3
    if-nez v5, :cond_a

    .line 152
    .line 153
    goto :goto_4

    .line 154
    :cond_a
    move-object v13, v5

    .line 155
    :goto_4
    new-instance v1, Lkotlin/sequences/MergingSequence;

    .line 156
    .line 157
    new-instance v5, Landroidx/compose/ui/text/SaversKt$$ExternalSyntheticLambda3;

    .line 158
    .line 159
    const/16 v15, 0x17

    .line 160
    .line 161
    invoke-direct {v5, v15}, Landroidx/compose/ui/text/SaversKt$$ExternalSyntheticLambda3;-><init>(I)V

    .line 162
    .line 163
    .line 164
    invoke-direct {v1, v14, v13, v5}, Lkotlin/sequences/MergingSequence;-><init>(Lkotlin/sequences/Sequence;Lkotlin/sequences/Sequence;Landroidx/compose/ui/text/SaversKt$$ExternalSyntheticLambda3;)V

    .line 165
    .line 166
    .line 167
    new-instance v5, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda10;

    .line 168
    .line 169
    const/16 v13, 0xc

    .line 170
    .line 171
    invoke-direct {v5, v13}, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda10;-><init>(I)V

    .line 172
    .line 173
    .line 174
    new-instance v13, Lkotlin/sequences/FilteringSequence;

    .line 175
    .line 176
    invoke-direct {v13, v1, v12, v5}, Lkotlin/sequences/FilteringSequence;-><init>(Lkotlin/sequences/Sequence;ZLkotlin/jvm/functions/Function1;)V

    .line 177
    .line 178
    .line 179
    new-instance v1, Ljava/util/LinkedHashSet;

    .line 180
    .line 181
    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 182
    .line 183
    .line 184
    new-instance v5, Lkotlin/sequences/FilteringSequence$iterator$1;

    .line 185
    .line 186
    invoke-direct {v5, v13}, Lkotlin/sequences/FilteringSequence$iterator$1;-><init>(Lkotlin/sequences/FilteringSequence;)V

    .line 187
    .line 188
    .line 189
    :goto_5
    invoke-virtual {v5}, Lkotlin/sequences/FilteringSequence$iterator$1;->hasNext()Z

    .line 190
    .line 191
    .line 192
    move-result v13

    .line 193
    if-eqz v13, :cond_b

    .line 194
    .line 195
    invoke-virtual {v5}, Lkotlin/sequences/FilteringSequence$iterator$1;->next()Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v13

    .line 199
    check-cast v13, Lkotlin/Pair;

    .line 200
    .line 201
    invoke-virtual {v13}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v14

    .line 205
    check-cast v14, Ljava/lang/String;

    .line 206
    .line 207
    invoke-virtual {v13}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v13

    .line 211
    check-cast v13, Ljava/lang/Number;

    .line 212
    .line 213
    invoke-virtual {v13}, Ljava/lang/Number;->intValue()I

    .line 214
    .line 215
    .line 216
    invoke-interface {v1, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 217
    .line 218
    .line 219
    goto :goto_5

    .line 220
    :cond_b
    new-instance v5, Lorg/schabi/newpipe/player/mediabrowser/PackageValidator$CallerPackageInfo;

    .line 221
    .line 222
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    move-object/from16 v16, v1

    .line 227
    .line 228
    move-object v1, v0

    .line 229
    move-object v0, v5

    .line 230
    move-object/from16 v5, v16

    .line 231
    .line 232
    invoke-direct/range {v0 .. v5}, Lorg/schabi/newpipe/player/mediabrowser/PackageValidator$CallerPackageInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Set;)V

    .line 233
    .line 234
    .line 235
    move-object v5, v0

    .line 236
    :goto_6
    if-eqz v5, :cond_14

    .line 237
    .line 238
    iget v0, v5, Lorg/schabi/newpipe/player/mediabrowser/PackageValidator$CallerPackageInfo;->uid:I

    .line 239
    .line 240
    if-ne v0, v6, :cond_13

    .line 241
    .line 242
    iget-object v0, v5, Lorg/schabi/newpipe/player/mediabrowser/PackageValidator$CallerPackageInfo;->signature:Ljava/lang/String;

    .line 243
    .line 244
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 245
    .line 246
    .line 247
    move-result v1

    .line 248
    if-ne v6, v1, :cond_c

    .line 249
    .line 250
    :goto_7
    move v1, v12

    .line 251
    goto :goto_8

    .line 252
    :cond_c
    const/16 v1, 0x3e8

    .line 253
    .line 254
    if-ne v6, v1, :cond_d

    .line 255
    .line 256
    goto :goto_7

    .line 257
    :cond_d
    iget-object v1, v8, Lokhttp3/Dispatcher;->runningAsyncCalls:Ljava/lang/Object;

    .line 258
    .line 259
    check-cast v1, Ljava/lang/String;

    .line 260
    .line 261
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    move-result v0

    .line 265
    if-eqz v0, :cond_e

    .line 266
    .line 267
    goto :goto_7

    .line 268
    :cond_e
    iget-object v0, v5, Lorg/schabi/newpipe/player/mediabrowser/PackageValidator$CallerPackageInfo;->permissions:Ljava/util/Set;

    .line 269
    .line 270
    const-string v1, "android.permission.MEDIA_CONTENT_CONTROL"

    .line 271
    .line 272
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 273
    .line 274
    .line 275
    move-result v0

    .line 276
    if-eqz v0, :cond_f

    .line 277
    .line 278
    goto :goto_7

    .line 279
    :cond_f
    iget-object v0, v8, Lokhttp3/Dispatcher;->executorServiceOrNull:Ljava/lang/Object;

    .line 280
    .line 281
    check-cast v0, Landroid/content/Context;

    .line 282
    .line 283
    invoke-static {v0}, Landroidx/core/app/NotificationManagerCompat;->getEnabledListenerPackages(Landroid/content/Context;)Ljava/util/Set;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    iget-object v1, v5, Lorg/schabi/newpipe/player/mediabrowser/PackageValidator$CallerPackageInfo;->packageName:Ljava/lang/String;

    .line 288
    .line 289
    check-cast v0, Ljava/util/HashSet;

    .line 290
    .line 291
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 292
    .line 293
    .line 294
    move-result v0

    .line 295
    if-eqz v0, :cond_10

    .line 296
    .line 297
    goto :goto_7

    .line 298
    :cond_10
    move v1, v10

    .line 299
    :goto_8
    new-instance v0, Lkotlin/Pair;

    .line 300
    .line 301
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 302
    .line 303
    .line 304
    move-result-object v3

    .line 305
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 306
    .line 307
    .line 308
    move-result-object v4

    .line 309
    invoke-direct {v0, v3, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 310
    .line 311
    .line 312
    invoke-interface {v9, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    .line 314
    .line 315
    :goto_9
    if-nez v1, :cond_11

    .line 316
    .line 317
    goto :goto_a

    .line 318
    :cond_11
    if-eqz v7, :cond_12

    .line 319
    .line 320
    const-string v0, "android.service.media.extra.RECENT"

    .line 321
    .line 322
    invoke-virtual {v7, v0, v10}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 323
    .line 324
    .line 325
    move-result v0

    .line 326
    if-ne v0, v12, :cond_12

    .line 327
    .line 328
    :goto_a
    return-object v11

    .line 329
    :cond_12
    new-instance v0, Landroid/os/Bundle;

    .line 330
    .line 331
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 332
    .line 333
    .line 334
    const-string v1, "android.media.browse.SEARCH_SUPPORTED"

    .line 335
    .line 336
    invoke-virtual {v0, v1, v12}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 337
    .line 338
    .line 339
    new-instance v1, Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 340
    .line 341
    invoke-direct {v1, v0}, Landroid/support/v4/media/MediaMetadataCompat$Builder;-><init>(Landroid/os/Bundle;)V

    .line 342
    .line 343
    .line 344
    return-object v1

    .line 345
    :cond_13
    const-string v0, "Caller\'s package UID doesn\'t match caller\'s actual UID?"

    .line 346
    .line 347
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 348
    .line 349
    .line 350
    return-object v11

    .line 351
    :cond_14
    const-string v0, "Caller wasn\'t found in the system?"

    .line 352
    .line 353
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    return-object v11
.end method

.method public final onLoadChildren(Ljava/lang/String;Landroidx/media/MediaBrowserServiceCompat$Result;)V
    .locals 11

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/player/PlayerService;->mediaBrowserImpl:Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string v0, "Unknown playlist URI: "

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    sget v1, Lorg/schabi/newpipe/MainActivity;->$r8$clinit:I

    .line 12
    .line 13
    invoke-virtual {p2}, Landroidx/media/MediaBrowserServiceCompat$Result;->detach()V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 17
    .line 18
    iget-object v2, p0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;->context:Lorg/schabi/newpipe/player/PlayerService;

    .line 19
    .line 20
    const/4 v3, 0x2

    .line 21
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    new-instance v5, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {v4}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 38
    .line 39
    .line 40
    move-result v4
    :try_end_0
    .catch Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    const/4 v6, 0x1

    .line 42
    const/4 v7, 0x0

    .line 43
    const-string v8, "history"

    .line 44
    .line 45
    const-string v9, "playlists"

    .line 46
    .line 47
    if-eqz v4, :cond_0

    .line 48
    .line 49
    :try_start_1
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    const v4, 0x7f1304ea

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    const v4, 0x7f0800eb

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, v9, v4, v0}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;->createRootMediaItem(Ljava/lang/String;ILjava/lang/String;)Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    const v4, 0x7f13001e

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    const v4, 0x7f080117

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, v8, v4, v2}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;->createRootMediaItem(Ljava/lang/String;ILjava/lang/String;)Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    new-array v2, v3, [Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    .line 86
    .line 87
    aput-object v0, v2, v7

    .line 88
    .line 89
    aput-object p0, v2, v6

    .line 90
    .line 91
    invoke-static {v2}, Lorg/jsoup/Jsoup;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/single/SingleAmb;

    .line 96
    .line 97
    const/4 v2, 0x4

    .line 98
    invoke-direct {v0, p0, v2}, Lio/reactivex/rxjava3/internal/operators/single/SingleAmb;-><init>(Ljava/lang/Object;I)V

    .line 99
    .line 100
    .line 101
    goto/16 :goto_2

    .line 102
    .line 103
    :catch_0
    move-exception p0

    .line 104
    goto/16 :goto_1

    .line 105
    .line 106
    :cond_0
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    check-cast v2, Ljava/lang/String;

    .line 111
    .line 112
    if-eqz v2, :cond_5

    .line 113
    .line 114
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 115
    .line 116
    .line 117
    move-result v4

    .line 118
    const v10, -0x6f36471f

    .line 119
    .line 120
    .line 121
    if-eq v4, v10, :cond_1

    .line 122
    .line 123
    const v0, 0x373fe494

    .line 124
    .line 125
    .line 126
    if-ne v4, v0, :cond_5

    .line 127
    .line 128
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    if-eqz v0, :cond_5

    .line 133
    .line 134
    iget-object v0, p0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;->database:Lorg/schabi/newpipe/database/AppDatabase;

    .line 135
    .line 136
    invoke-virtual {v0}, Lorg/schabi/newpipe/database/AppDatabase;->streamHistoryDAO()Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    iget-object v2, v0, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 141
    .line 142
    const-string v4, "streams"

    .line 143
    .line 144
    const-string v5, "stream_history"

    .line 145
    .line 146
    filled-new-array {v4, v5}, [Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    new-instance v5, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda3;

    .line 151
    .line 152
    const/16 v8, 0x1c

    .line 153
    .line 154
    invoke-direct {v5, v0, v8}, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;I)V

    .line 155
    .line 156
    .line 157
    invoke-static {v2, v7, v4, v5}, Lokhttp3/Cookie$Companion;->createFlowable(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Flowable;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    new-instance v2, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableToListSingle;

    .line 162
    .line 163
    invoke-direct {v2, v0, v6}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableToListSingle;-><init>(Lio/reactivex/rxjava3/core/Flowable;I)V

    .line 164
    .line 165
    .line 166
    new-instance v0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$onSearch$1;

    .line 167
    .line 168
    invoke-direct {v0, p0, v3}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$onSearch$1;-><init>(Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;I)V

    .line 169
    .line 170
    .line 171
    new-instance p0, Lio/reactivex/rxjava3/internal/operators/single/SingleMap;

    .line 172
    .line 173
    invoke-direct {p0, v2, v0, v7}, Lio/reactivex/rxjava3/internal/operators/single/SingleMap;-><init>(Lio/reactivex/rxjava3/core/Single;Lio/reactivex/rxjava3/functions/Function;I)V

    .line 174
    .line 175
    .line 176
    :goto_0
    move-object v0, p0

    .line 177
    goto/16 :goto_2

    .line 178
    .line 179
    :cond_1
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    move-result v2

    .line 183
    if-eqz v2, :cond_5

    .line 184
    .line 185
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 186
    .line 187
    .line 188
    move-result v2

    .line 189
    if-eqz v2, :cond_2

    .line 190
    .line 191
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;->getMergedPlaylists()Lio/reactivex/rxjava3/core/Flowable;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    new-instance v2, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableToListSingle;

    .line 196
    .line 197
    invoke-direct {v2, v0, v6}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableToListSingle;-><init>(Lio/reactivex/rxjava3/core/Flowable;I)V

    .line 198
    .line 199
    .line 200
    new-instance v0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$onSearch$1;

    .line 201
    .line 202
    invoke-direct {v0, p0, v6}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$onSearch$1;-><init>(Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;I)V

    .line 203
    .line 204
    .line 205
    new-instance p0, Lio/reactivex/rxjava3/internal/operators/single/SingleMap;

    .line 206
    .line 207
    invoke-direct {p0, v2, v0, v7}, Lio/reactivex/rxjava3/internal/operators/single/SingleMap;-><init>(Lio/reactivex/rxjava3/core/Single;Lio/reactivex/rxjava3/functions/Function;I)V

    .line 208
    .line 209
    .line 210
    goto :goto_0

    .line 211
    :cond_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 212
    .line 213
    .line 214
    move-result v2

    .line 215
    if-ne v2, v3, :cond_4

    .line 216
    .line 217
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v2

    .line 221
    check-cast v2, Ljava/lang/String;

    .line 222
    .line 223
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v4

    .line 227
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 228
    .line 229
    .line 230
    check-cast v4, Ljava/lang/String;

    .line 231
    .line 232
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 233
    .line 234
    .line 235
    move-result-wide v4

    .line 236
    const-string v6, "local"

    .line 237
    .line 238
    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    move-result v6

    .line 242
    if-eqz v6, :cond_3

    .line 243
    .line 244
    invoke-virtual {p0, v4, v5}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;->populateLocalPlaylist(J)Lio/reactivex/rxjava3/internal/operators/single/SingleMap;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    goto :goto_2

    .line 249
    :cond_3
    const-string v6, "remote"

    .line 250
    .line 251
    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 252
    .line 253
    .line 254
    move-result v2

    .line 255
    if-eqz v2, :cond_4

    .line 256
    .line 257
    invoke-virtual {p0, v4, v5}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;->populateRemotePlaylist(J)Lio/reactivex/rxjava3/internal/operators/single/SingleMap;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    goto :goto_2

    .line 262
    :cond_4
    const-string p0, "MediaBrowserImpl"

    .line 263
    .line 264
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    .line 270
    .line 271
    invoke-static {p1}, Lokio/Okio;->parseError(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException;

    .line 272
    .line 273
    .line 274
    move-result-object p0

    .line 275
    throw p0

    .line 276
    :cond_5
    invoke-static {p1}, Lokio/Okio;->parseError(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException;

    .line 277
    .line 278
    .line 279
    move-result-object p0

    .line 280
    throw p0
    :try_end_1
    .catch Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException; {:try_start_1 .. :try_end_1} :catch_0

    .line 281
    :goto_1
    new-instance v0, Lio/reactivex/rxjava3/internal/functions/Functions$JustValue;

    .line 282
    .line 283
    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/functions/Functions$JustValue;-><init>(Ljava/lang/Exception;)V

    .line 284
    .line 285
    .line 286
    new-instance p0, Lio/reactivex/rxjava3/internal/operators/single/SingleAmb;

    .line 287
    .line 288
    invoke-direct {p0, v0, v3}, Lio/reactivex/rxjava3/internal/operators/single/SingleAmb;-><init>(Ljava/lang/Object;I)V

    .line 289
    .line 290
    .line 291
    goto :goto_0

    .line 292
    :goto_2
    new-instance p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;

    .line 293
    .line 294
    const/16 v2, 0xa

    .line 295
    .line 296
    invoke-direct {p0, p2, v2}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;-><init>(Ljava/lang/Object;I)V

    .line 297
    .line 298
    .line 299
    new-instance v2, Lorg/jsoup/parser/TokenData;

    .line 300
    .line 301
    const/16 v3, 0x12

    .line 302
    .line 303
    invoke-direct {v2, p2, p1, v3}, Lorg/jsoup/parser/TokenData;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 304
    .line 305
    .line 306
    new-instance p1, Lio/reactivex/rxjava3/internal/observers/ConsumerSingleObserver;

    .line 307
    .line 308
    invoke-direct {p1, p0, v2}, Lio/reactivex/rxjava3/internal/observers/ConsumerSingleObserver;-><init>(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)V

    .line 309
    .line 310
    .line 311
    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/core/Single;->subscribe(Lio/reactivex/rxjava3/core/SingleObserver;)V

    .line 312
    .line 313
    .line 314
    invoke-virtual {v1, p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    .line 315
    .line 316
    .line 317
    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "should_start_foreground_extra"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const/4 v4, 0x1

    .line 13
    if-eqz v2, :cond_2

    .line 14
    .line 15
    iget-object v2, v0, Lorg/schabi/newpipe/player/PlayerService;->player:Lorg/schabi/newpipe/player/Player;

    .line 16
    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    move v2, v4

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v2, v3

    .line 22
    :goto_0
    if-eqz v2, :cond_1

    .line 23
    .line 24
    new-instance v5, Lorg/schabi/newpipe/player/Player;

    .line 25
    .line 26
    iget-object v6, v0, Lorg/schabi/newpipe/player/PlayerService;->mediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 27
    .line 28
    iget-object v7, v0, Lorg/schabi/newpipe/player/PlayerService;->sessionConnector:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    .line 29
    .line 30
    invoke-direct {v5, v0, v6, v7}, Lorg/schabi/newpipe/player/Player;-><init>(Lorg/schabi/newpipe/player/PlayerService;Landroid/support/v4/media/session/MediaSessionCompat;Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)V

    .line 31
    .line 32
    .line 33
    iput-object v5, v0, Lorg/schabi/newpipe/player/PlayerService;->player:Lorg/schabi/newpipe/player/Player;

    .line 34
    .line 35
    :cond_1
    iget-object v5, v0, Lorg/schabi/newpipe/player/PlayerService;->player:Lorg/schabi/newpipe/player/Player;

    .line 36
    .line 37
    iget-object v5, v5, Lorg/schabi/newpipe/player/Player;->UIs:Lorg/schabi/newpipe/player/ui/PlayerUiList;

    .line 38
    .line 39
    const-class v6, Lorg/schabi/newpipe/player/notification/NotificationPlayerUi;

    .line 40
    .line 41
    invoke-virtual {v5, v6}, Lorg/schabi/newpipe/player/ui/PlayerUiList;->get(Ljava/lang/Class;)Lj$/util/Optional;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    new-instance v6, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda3;

    .line 46
    .line 47
    const/16 v7, 0x8

    .line 48
    .line 49
    invoke-direct {v6, v7}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda3;-><init>(I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v5, v6}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 53
    .line 54
    .line 55
    if-eqz v2, :cond_2

    .line 56
    .line 57
    iget-object v2, v0, Lorg/schabi/newpipe/player/PlayerService;->onPlayerStartedOrStopped:Lorg/schabi/newpipe/player/helper/PlayerHolder$$ExternalSyntheticLambda0;

    .line 58
    .line 59
    if-eqz v2, :cond_2

    .line 60
    .line 61
    iget-object v5, v0, Lorg/schabi/newpipe/player/PlayerService;->player:Lorg/schabi/newpipe/player/Player;

    .line 62
    .line 63
    invoke-virtual {v2, v5}, Lorg/schabi/newpipe/player/helper/PlayerHolder$$ExternalSyntheticLambda0;->accept(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    :cond_2
    iget-object v2, v0, Lorg/schabi/newpipe/player/PlayerService;->player:Lorg/schabi/newpipe/player/Player;

    .line 67
    .line 68
    const/4 v5, 0x2

    .line 69
    if-nez v2, :cond_3

    .line 70
    .line 71
    const-string v1, "PlayerService"

    .line 72
    .line 73
    const-string v2, "onStartCommand() got a useless intent, closing the service"

    .line 74
    .line 75
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    new-instance v1, Landroidx/media/app/NotificationCompat$MediaStyle;

    .line 79
    .line 80
    invoke-direct {v1}, Landroidx/media/app/NotificationCompat$MediaStyle;-><init>()V

    .line 81
    .line 82
    .line 83
    invoke-static {v0, v1}, Lorg/schabi/newpipe/player/notification/NotificationUtil;->setupNotificationBuilder(Lorg/schabi/newpipe/player/PlayerService;Landroidx/media/app/NotificationCompat$MediaStyle;)Landroidx/core/app/NotificationCompat$Builder;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-static {v0, v1}, Lorg/schabi/newpipe/player/notification/NotificationUtil;->startForeground(Lorg/schabi/newpipe/player/PlayerService;Landroid/app/Notification;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/PlayerService;->destroyPlayerAndStopService()V

    .line 95
    .line 96
    .line 97
    return v5

    .line 98
    :cond_3
    iget-object v6, v2, Lorg/schabi/newpipe/player/Player;->playerType:Lorg/schabi/newpipe/player/PlayerType;

    .line 99
    .line 100
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 101
    .line 102
    const/4 v8, 0x0

    .line 103
    const/16 v9, 0x22

    .line 104
    .line 105
    const-string v10, "player_intent_type"

    .line 106
    .line 107
    const-class v11, Lorg/schabi/newpipe/player/PlayerIntentType;

    .line 108
    .line 109
    if-lt v7, v9, :cond_4

    .line 110
    .line 111
    invoke-static {v1, v10, v11}, Lorg/schabi/newpipe/util/ZipHelper;->getSerializableExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    .line 112
    .line 113
    .line 114
    move-result-object v10

    .line 115
    goto :goto_1

    .line 116
    :cond_4
    invoke-virtual {v1, v10}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 117
    .line 118
    .line 119
    move-result-object v10

    .line 120
    invoke-virtual {v11, v10}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v11

    .line 124
    if-eqz v11, :cond_5

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_5
    move-object v10, v8

    .line 128
    :goto_1
    check-cast v10, Lorg/schabi/newpipe/player/PlayerIntentType;

    .line 129
    .line 130
    if-nez v10, :cond_6

    .line 131
    .line 132
    goto/16 :goto_7

    .line 133
    .line 134
    :cond_6
    sget-object v12, Lorg/schabi/newpipe/player/PlayerIntentType;->TimestampChange:Lorg/schabi/newpipe/player/PlayerIntentType;

    .line 135
    .line 136
    if-eq v10, v12, :cond_9

    .line 137
    .line 138
    const-string v12, "player_type"

    .line 139
    .line 140
    const-class v13, Lorg/schabi/newpipe/player/PlayerType;

    .line 141
    .line 142
    if-lt v7, v9, :cond_7

    .line 143
    .line 144
    invoke-static {v1, v12, v13}, Lorg/schabi/newpipe/util/ZipHelper;->getSerializableExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    .line 145
    .line 146
    .line 147
    move-result-object v8

    .line 148
    goto :goto_2

    .line 149
    :cond_7
    invoke-virtual {v1, v12}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 150
    .line 151
    .line 152
    move-result-object v7

    .line 153
    invoke-virtual {v13, v7}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result v9

    .line 157
    if-eqz v9, :cond_8

    .line 158
    .line 159
    move-object v8, v7

    .line 160
    :cond_8
    :goto_2
    check-cast v8, Lorg/schabi/newpipe/player/PlayerType;

    .line 161
    .line 162
    iput-object v8, v2, Lorg/schabi/newpipe/player/Player;->playerType:Lorg/schabi/newpipe/player/PlayerType;

    .line 163
    .line 164
    :cond_9
    iget-object v7, v2, Lorg/schabi/newpipe/player/Player;->UIs:Lorg/schabi/newpipe/player/ui/PlayerUiList;

    .line 165
    .line 166
    const-class v8, Lorg/schabi/newpipe/player/ui/MainPlayerUi;

    .line 167
    .line 168
    invoke-virtual {v7, v8}, Lorg/schabi/newpipe/player/ui/PlayerUiList;->get(Ljava/lang/Class;)Lj$/util/Optional;

    .line 169
    .line 170
    .line 171
    move-result-object v9

    .line 172
    invoke-virtual {v9}, Lj$/util/Optional;->isPresent()Z

    .line 173
    .line 174
    .line 175
    move-result v9

    .line 176
    sget-object v12, Lorg/schabi/newpipe/player/PlayerType;->AUDIO:Lorg/schabi/newpipe/player/PlayerType;

    .line 177
    .line 178
    if-eqz v9, :cond_a

    .line 179
    .line 180
    iget-object v9, v2, Lorg/schabi/newpipe/player/Player;->playerType:Lorg/schabi/newpipe/player/PlayerType;

    .line 181
    .line 182
    sget-object v13, Lorg/schabi/newpipe/player/PlayerType;->MAIN:Lorg/schabi/newpipe/player/PlayerType;

    .line 183
    .line 184
    if-eq v9, v13, :cond_10

    .line 185
    .line 186
    :cond_a
    const-class v9, Lorg/schabi/newpipe/player/ui/BackgroundPlayerUi;

    .line 187
    .line 188
    invoke-virtual {v7, v9}, Lorg/schabi/newpipe/player/ui/PlayerUiList;->get(Ljava/lang/Class;)Lj$/util/Optional;

    .line 189
    .line 190
    .line 191
    move-result-object v13

    .line 192
    invoke-virtual {v13}, Lj$/util/Optional;->isPresent()Z

    .line 193
    .line 194
    .line 195
    move-result v13

    .line 196
    if-eqz v13, :cond_b

    .line 197
    .line 198
    iget-object v13, v2, Lorg/schabi/newpipe/player/Player;->playerType:Lorg/schabi/newpipe/player/PlayerType;

    .line 199
    .line 200
    if-eq v13, v12, :cond_10

    .line 201
    .line 202
    :cond_b
    const-class v13, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;

    .line 203
    .line 204
    invoke-virtual {v7, v13}, Lorg/schabi/newpipe/player/ui/PlayerUiList;->get(Ljava/lang/Class;)Lj$/util/Optional;

    .line 205
    .line 206
    .line 207
    move-result-object v14

    .line 208
    invoke-virtual {v14}, Lj$/util/Optional;->isPresent()Z

    .line 209
    .line 210
    .line 211
    move-result v14

    .line 212
    if-eqz v14, :cond_c

    .line 213
    .line 214
    iget-object v14, v2, Lorg/schabi/newpipe/player/Player;->playerType:Lorg/schabi/newpipe/player/PlayerType;

    .line 215
    .line 216
    sget-object v15, Lorg/schabi/newpipe/player/PlayerType;->POPUP:Lorg/schabi/newpipe/player/PlayerType;

    .line 217
    .line 218
    if-ne v14, v15, :cond_c

    .line 219
    .line 220
    goto :goto_3

    .line 221
    :cond_c
    const-class v14, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;

    .line 222
    .line 223
    invoke-virtual {v7, v14}, Lorg/schabi/newpipe/player/ui/PlayerUiList;->get(Ljava/lang/Class;)Lj$/util/Optional;

    .line 224
    .line 225
    .line 226
    move-result-object v15

    .line 227
    new-instance v11, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda28;

    .line 228
    .line 229
    const/16 v5, 0xc

    .line 230
    .line 231
    invoke-direct {v11, v5}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda28;-><init>(I)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v15, v11}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    .line 235
    .line 236
    .line 237
    move-result-object v5

    .line 238
    new-instance v11, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda38;

    .line 239
    .line 240
    invoke-direct {v11, v2, v3}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda38;-><init>(Ljava/lang/Object;I)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v5, v11}, Lj$/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object v5

    .line 247
    check-cast v5, Lorg/schabi/newpipe/databinding/PlayerBinding;

    .line 248
    .line 249
    iget-object v11, v2, Lorg/schabi/newpipe/player/Player;->playerType:Lorg/schabi/newpipe/player/PlayerType;

    .line 250
    .line 251
    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    .line 252
    .line 253
    .line 254
    move-result v11

    .line 255
    if-eqz v11, :cond_f

    .line 256
    .line 257
    if-eq v11, v4, :cond_e

    .line 258
    .line 259
    const/4 v13, 0x2

    .line 260
    if-eq v11, v13, :cond_d

    .line 261
    .line 262
    goto :goto_3

    .line 263
    :cond_d
    invoke-virtual {v7, v8}, Lorg/schabi/newpipe/player/ui/PlayerUiList;->destroyAll(Ljava/lang/Class;)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v7, v9}, Lorg/schabi/newpipe/player/ui/PlayerUiList;->destroyAll(Ljava/lang/Class;)V

    .line 267
    .line 268
    .line 269
    new-instance v8, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;

    .line 270
    .line 271
    invoke-direct {v8, v2, v5}, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;-><init>(Lorg/schabi/newpipe/player/Player;Lorg/schabi/newpipe/databinding/PlayerBinding;)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v7, v8}, Lorg/schabi/newpipe/player/ui/PlayerUiList;->addAndPrepare(Lorg/schabi/newpipe/player/ui/PlayerUi;)V

    .line 275
    .line 276
    .line 277
    goto :goto_3

    .line 278
    :cond_e
    invoke-virtual {v7, v14}, Lorg/schabi/newpipe/player/ui/PlayerUiList;->destroyAll(Ljava/lang/Class;)V

    .line 279
    .line 280
    .line 281
    new-instance v5, Lorg/schabi/newpipe/player/ui/BackgroundPlayerUi;

    .line 282
    .line 283
    invoke-direct {v5, v2}, Lorg/schabi/newpipe/player/ui/PlayerUi;-><init>(Lorg/schabi/newpipe/player/Player;)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v7, v5}, Lorg/schabi/newpipe/player/ui/PlayerUiList;->addAndPrepare(Lorg/schabi/newpipe/player/ui/PlayerUi;)V

    .line 287
    .line 288
    .line 289
    goto :goto_3

    .line 290
    :cond_f
    invoke-virtual {v7, v13}, Lorg/schabi/newpipe/player/ui/PlayerUiList;->destroyAll(Ljava/lang/Class;)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v7, v9}, Lorg/schabi/newpipe/player/ui/PlayerUiList;->destroyAll(Ljava/lang/Class;)V

    .line 294
    .line 295
    .line 296
    new-instance v8, Lorg/schabi/newpipe/player/ui/MainPlayerUi;

    .line 297
    .line 298
    invoke-direct {v8, v2, v5}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;-><init>(Lorg/schabi/newpipe/player/Player;Lorg/schabi/newpipe/databinding/PlayerBinding;)V

    .line 299
    .line 300
    .line 301
    iput-boolean v3, v8, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->isFullscreen:Z

    .line 302
    .line 303
    iput-boolean v3, v8, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->isVerticalVideo:Z

    .line 304
    .line 305
    iput-boolean v3, v8, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->fragmentIsVisible:Z

    .line 306
    .line 307
    iput-boolean v3, v8, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->isQueueVisible:Z

    .line 308
    .line 309
    iput-boolean v3, v8, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->areSegmentsVisible:Z

    .line 310
    .line 311
    invoke-virtual {v7, v8}, Lorg/schabi/newpipe/player/ui/PlayerUiList;->addAndPrepare(Lorg/schabi/newpipe/player/ui/PlayerUi;)V

    .line 312
    .line 313
    .line 314
    :cond_10
    :goto_3
    iget-object v5, v2, Lorg/schabi/newpipe/player/Player;->playerType:Lorg/schabi/newpipe/player/PlayerType;

    .line 315
    .line 316
    if-ne v5, v12, :cond_11

    .line 317
    .line 318
    move v5, v4

    .line 319
    goto :goto_4

    .line 320
    :cond_11
    move v5, v3

    .line 321
    :goto_4
    iput-boolean v5, v2, Lorg/schabi/newpipe/player/Player;->isAudioOnly:Z

    .line 322
    .line 323
    const-string v5, "playback_quality"

    .line 324
    .line 325
    invoke-virtual {v1, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 326
    .line 327
    .line 328
    move-result v7

    .line 329
    if-eqz v7, :cond_12

    .line 330
    .line 331
    iget-object v7, v2, Lorg/schabi/newpipe/player/Player;->videoResolver:Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver;

    .line 332
    .line 333
    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v5

    .line 337
    iput-object v5, v7, Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver;->playbackQuality:Ljava/lang/String;

    .line 338
    .line 339
    :cond_12
    const-string v5, "play_when_ready"

    .line 340
    .line 341
    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 342
    .line 343
    .line 344
    move-result v5

    .line 345
    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    .line 346
    .line 347
    .line 348
    move-result v7

    .line 349
    const-string v8, "subscribeActual failed"

    .line 350
    .line 351
    if-eqz v7, :cond_16

    .line 352
    .line 353
    if-eq v7, v4, :cond_14

    .line 354
    .line 355
    const/4 v13, 0x2

    .line 356
    if-eq v7, v13, :cond_13

    .line 357
    .line 358
    goto/16 :goto_5

    .line 359
    .line 360
    :cond_13
    const-string v7, "player_intent_data"

    .line 361
    .line 362
    const-class v9, Lorg/schabi/newpipe/player/TimestampChangeData;

    .line 363
    .line 364
    invoke-static {v1, v7, v9}, Landroidx/room/Room;->getParcelableExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 365
    .line 366
    .line 367
    move-result-object v7

    .line 368
    check-cast v7, Lorg/schabi/newpipe/player/TimestampChangeData;

    .line 369
    .line 370
    invoke-static {v7}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    .line 372
    .line 373
    iget v9, v7, Lorg/schabi/newpipe/player/TimestampChangeData;->serviceId:I

    .line 374
    .line 375
    iget-object v10, v7, Lorg/schabi/newpipe/player/TimestampChangeData;->url:Ljava/lang/String;

    .line 376
    .line 377
    invoke-static {v9, v10, v3}, Lorg/schabi/newpipe/util/ExtractorHelper;->getStreamInfo(ILjava/lang/String;Z)Lio/reactivex/rxjava3/core/Single;

    .line 378
    .line 379
    .line 380
    move-result-object v3

    .line 381
    iget-object v9, v2, Lorg/schabi/newpipe/player/Player;->streamItemDisposable:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 382
    .line 383
    sget-object v10, Lio/reactivex/rxjava3/schedulers/Schedulers;->IO:Lio/reactivex/rxjava3/internal/schedulers/IoScheduler;

    .line 384
    .line 385
    invoke-virtual {v3, v10}, Lio/reactivex/rxjava3/core/Single;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/single/SingleObserveOn;

    .line 386
    .line 387
    .line 388
    move-result-object v3

    .line 389
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    .line 390
    .line 391
    .line 392
    move-result-object v10

    .line 393
    new-instance v11, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda5;

    .line 394
    .line 395
    invoke-direct {v11, v2, v7, v5}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda5;-><init>(Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 396
    .line 397
    .line 398
    new-instance v5, Lkotlinx/coroutines/rx3/RxConvertKt$$ExternalSyntheticLambda0;

    .line 399
    .line 400
    const/16 v12, 0x1a

    .line 401
    .line 402
    invoke-direct {v5, v2, v7, v12}, Lkotlinx/coroutines/rx3/RxConvertKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 403
    .line 404
    .line 405
    new-instance v2, Lio/reactivex/rxjava3/internal/observers/ConsumerSingleObserver;

    .line 406
    .line 407
    invoke-direct {v2, v11, v5}, Lio/reactivex/rxjava3/internal/observers/ConsumerSingleObserver;-><init>(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)V

    .line 408
    .line 409
    .line 410
    :try_start_0
    new-instance v5, Lio/reactivex/rxjava3/internal/operators/single/SingleObserveOn$ObserveOnSingleObserver;

    .line 411
    .line 412
    invoke-direct {v5, v2, v10}, Lio/reactivex/rxjava3/internal/operators/single/SingleObserveOn$ObserveOnSingleObserver;-><init>(Lio/reactivex/rxjava3/core/SingleObserver;Lio/reactivex/rxjava3/core/Scheduler;)V

    .line 413
    .line 414
    .line 415
    invoke-virtual {v3, v5}, Lio/reactivex/rxjava3/core/Single;->subscribe(Lio/reactivex/rxjava3/core/SingleObserver;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 416
    .line 417
    .line 418
    invoke-virtual {v9, v2}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    .line 419
    .line 420
    .line 421
    goto/16 :goto_7

    .line 422
    .line 423
    :catchall_0
    move-exception v0

    .line 424
    invoke-static {v0, v8, v0}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/NullPointerException;

    .line 425
    .line 426
    .line 427
    move-result-object v0

    .line 428
    throw v0

    .line 429
    :catch_0
    move-exception v0

    .line 430
    throw v0

    .line 431
    :cond_14
    iget-object v7, v2, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 432
    .line 433
    if-eqz v7, :cond_18

    .line 434
    .line 435
    invoke-static {v1}, Lorg/schabi/newpipe/player/Player;->getPlayQueueFromCache(Landroid/content/Intent;)Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 436
    .line 437
    .line 438
    move-result-object v5

    .line 439
    if-nez v5, :cond_15

    .line 440
    .line 441
    goto/16 :goto_7

    .line 442
    .line 443
    :cond_15
    invoke-virtual {v5}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getStreams()Ljava/util/List;

    .line 444
    .line 445
    .line 446
    move-result-object v5

    .line 447
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 448
    .line 449
    .line 450
    move-result-object v5

    .line 451
    check-cast v5, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    .line 452
    .line 453
    iget-object v2, v2, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 454
    .line 455
    invoke-virtual {v2, v5, v3}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->enqueueNext(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;Z)V

    .line 456
    .line 457
    .line 458
    goto/16 :goto_7

    .line 459
    .line 460
    :cond_16
    iget-object v7, v2, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 461
    .line 462
    if-eqz v7, :cond_18

    .line 463
    .line 464
    invoke-static {v1}, Lorg/schabi/newpipe/player/Player;->getPlayQueueFromCache(Landroid/content/Intent;)Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 465
    .line 466
    .line 467
    move-result-object v3

    .line 468
    if-nez v3, :cond_17

    .line 469
    .line 470
    goto/16 :goto_7

    .line 471
    .line 472
    :cond_17
    iget-object v2, v2, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 473
    .line 474
    invoke-virtual {v3}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getStreams()Ljava/util/List;

    .line 475
    .line 476
    .line 477
    move-result-object v3

    .line 478
    invoke-virtual {v2, v3}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->append(Ljava/util/List;)V

    .line 479
    .line 480
    .line 481
    goto/16 :goto_7

    .line 482
    .line 483
    :cond_18
    :goto_5
    invoke-static {v1}, Lorg/schabi/newpipe/player/Player;->getPlayQueueFromCache(Landroid/content/Intent;)Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 484
    .line 485
    .line 486
    move-result-object v7

    .line 487
    if-nez v7, :cond_19

    .line 488
    .line 489
    goto/16 :goto_7

    .line 490
    .line 491
    :cond_19
    iget-object v9, v2, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 492
    .line 493
    if-eqz v9, :cond_1a

    .line 494
    .line 495
    invoke-virtual {v9, v7}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->equalStreamsAndIndex(Lorg/schabi/newpipe/player/playqueue/PlayQueue;)Z

    .line 496
    .line 497
    .line 498
    move-result v9

    .line 499
    if-eqz v9, :cond_1a

    .line 500
    .line 501
    move v9, v4

    .line 502
    goto :goto_6

    .line 503
    :cond_1a
    move v9, v3

    .line 504
    :goto_6
    invoke-virtual {v2}, Lorg/schabi/newpipe/player/Player;->exoPlayerIsNull()Z

    .line 505
    .line 506
    .line 507
    move-result v10

    .line 508
    const-wide/high16 v11, -0x8000000000000000L

    .line 509
    .line 510
    if-nez v10, :cond_1c

    .line 511
    .line 512
    invoke-virtual {v7}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->size()I

    .line 513
    .line 514
    .line 515
    move-result v10

    .line 516
    if-ne v10, v4, :cond_1c

    .line 517
    .line 518
    invoke-virtual {v7}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getItem()Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    .line 519
    .line 520
    .line 521
    move-result-object v10

    .line 522
    if-eqz v10, :cond_1c

    .line 523
    .line 524
    iget-object v10, v2, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 525
    .line 526
    if-eqz v10, :cond_1c

    .line 527
    .line 528
    invoke-virtual {v10}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->size()I

    .line 529
    .line 530
    .line 531
    move-result v10

    .line 532
    if-ne v10, v4, :cond_1c

    .line 533
    .line 534
    iget-object v10, v2, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 535
    .line 536
    invoke-virtual {v10}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getItem()Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    .line 537
    .line 538
    .line 539
    move-result-object v10

    .line 540
    if-eqz v10, :cond_1c

    .line 541
    .line 542
    invoke-virtual {v7}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getItem()Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    .line 543
    .line 544
    .line 545
    move-result-object v10

    .line 546
    iget-object v13, v2, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 547
    .line 548
    invoke-virtual {v13}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getItem()Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    .line 549
    .line 550
    .line 551
    move-result-object v13

    .line 552
    invoke-virtual {v10, v13}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->isSameItem(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;)Z

    .line 553
    .line 554
    .line 555
    move-result v10

    .line 556
    if-eqz v10, :cond_1c

    .line 557
    .line 558
    invoke-virtual {v7}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getItem()Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    .line 559
    .line 560
    .line 561
    move-result-object v10

    .line 562
    invoke-virtual {v10}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getRecoveryPosition()J

    .line 563
    .line 564
    .line 565
    move-result-wide v13

    .line 566
    cmp-long v10, v13, v11

    .line 567
    .line 568
    if-eqz v10, :cond_1c

    .line 569
    .line 570
    iget-object v3, v2, Lorg/schabi/newpipe/player/Player;->simpleExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 571
    .line 572
    invoke-interface {v3}, Lcom/google/android/exoplayer2/Player;->getPlaybackState()I

    .line 573
    .line 574
    .line 575
    move-result v3

    .line 576
    if-ne v3, v4, :cond_1b

    .line 577
    .line 578
    iget-object v3, v2, Lorg/schabi/newpipe/player/Player;->simpleExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 579
    .line 580
    invoke-interface {v3}, Lcom/google/android/exoplayer2/Player;->prepare()V

    .line 581
    .line 582
    .line 583
    :cond_1b
    iget-object v3, v2, Lorg/schabi/newpipe/player/Player;->simpleExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 584
    .line 585
    iget-object v8, v2, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 586
    .line 587
    invoke-virtual {v8}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getIndex()I

    .line 588
    .line 589
    .line 590
    move-result v8

    .line 591
    invoke-virtual {v7}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getItem()Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    .line 592
    .line 593
    .line 594
    move-result-object v7

    .line 595
    invoke-virtual {v7}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getRecoveryPosition()J

    .line 596
    .line 597
    .line 598
    move-result-wide v9

    .line 599
    invoke-interface {v3, v8, v9, v10}, Lcom/google/android/exoplayer2/Player;->seekTo(IJ)V

    .line 600
    .line 601
    .line 602
    iget-object v2, v2, Lorg/schabi/newpipe/player/Player;->simpleExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 603
    .line 604
    invoke-interface {v2, v5}, Lcom/google/android/exoplayer2/Player;->setPlayWhenReady(Z)V

    .line 605
    .line 606
    .line 607
    goto/16 :goto_7

    .line 608
    .line 609
    :cond_1c
    invoke-virtual {v2}, Lorg/schabi/newpipe/player/Player;->exoPlayerIsNull()Z

    .line 610
    .line 611
    .line 612
    move-result v10

    .line 613
    if-nez v10, :cond_1e

    .line 614
    .line 615
    if-eqz v9, :cond_1e

    .line 616
    .line 617
    iget-object v10, v2, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 618
    .line 619
    if-eqz v10, :cond_1e

    .line 620
    .line 621
    iget-boolean v10, v10, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->disposed:Z

    .line 622
    .line 623
    if-nez v10, :cond_1e

    .line 624
    .line 625
    iget-object v3, v2, Lorg/schabi/newpipe/player/Player;->simpleExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 626
    .line 627
    invoke-interface {v3}, Lcom/google/android/exoplayer2/Player;->getPlaybackState()I

    .line 628
    .line 629
    .line 630
    move-result v3

    .line 631
    if-ne v3, v4, :cond_1d

    .line 632
    .line 633
    iget-object v3, v2, Lorg/schabi/newpipe/player/Player;->simpleExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 634
    .line 635
    invoke-interface {v3}, Lcom/google/android/exoplayer2/Player;->prepare()V

    .line 636
    .line 637
    .line 638
    :cond_1d
    iget-object v2, v2, Lorg/schabi/newpipe/player/Player;->simpleExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 639
    .line 640
    invoke-interface {v2, v5}, Lcom/google/android/exoplayer2/Player;->setPlayWhenReady(Z)V

    .line 641
    .line 642
    .line 643
    goto/16 :goto_7

    .line 644
    .line 645
    :cond_1e
    const-string v10, "resume_playback"

    .line 646
    .line 647
    invoke-virtual {v1, v10, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 648
    .line 649
    .line 650
    move-result v10

    .line 651
    if-eqz v10, :cond_20

    .line 652
    .line 653
    iget-object v10, v2, Lorg/schabi/newpipe/player/Player;->context:Lorg/schabi/newpipe/player/PlayerService;

    .line 654
    .line 655
    invoke-static {v10}, Landroidx/core/os/BundleKt;->getResumePlaybackEnabled(Landroid/content/Context;)Z

    .line 656
    .line 657
    .line 658
    move-result v10

    .line 659
    if-eqz v10, :cond_20

    .line 660
    .line 661
    iget-object v10, v2, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 662
    .line 663
    if-eqz v10, :cond_1f

    .line 664
    .line 665
    invoke-virtual {v10, v7}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->equalStreamsAndIndex(Lorg/schabi/newpipe/player/playqueue/PlayQueue;)Z

    .line 666
    .line 667
    .line 668
    move-result v10

    .line 669
    if-nez v10, :cond_20

    .line 670
    .line 671
    :cond_1f
    invoke-virtual {v7}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->isEmpty()Z

    .line 672
    .line 673
    .line 674
    move-result v10

    .line 675
    if-nez v10, :cond_20

    .line 676
    .line 677
    invoke-virtual {v7}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getItem()Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    .line 678
    .line 679
    .line 680
    move-result-object v10

    .line 681
    if-eqz v10, :cond_20

    .line 682
    .line 683
    invoke-virtual {v7}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getItem()Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    .line 684
    .line 685
    .line 686
    move-result-object v10

    .line 687
    invoke-virtual {v10}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getRecoveryPosition()J

    .line 688
    .line 689
    .line 690
    move-result-wide v13

    .line 691
    cmp-long v10, v13, v11

    .line 692
    .line 693
    if-nez v10, :cond_20

    .line 694
    .line 695
    iget-object v9, v2, Lorg/schabi/newpipe/player/Player;->databaseUpdateDisposable:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 696
    .line 697
    iget-object v10, v2, Lorg/schabi/newpipe/player/Player;->recordManager:Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;

    .line 698
    .line 699
    invoke-virtual {v7}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getItem()Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    .line 700
    .line 701
    .line 702
    move-result-object v11

    .line 703
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 704
    .line 705
    .line 706
    invoke-virtual {v11}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getStream()Lio/reactivex/rxjava3/internal/operators/single/SingleDoOnError;

    .line 707
    .line 708
    .line 709
    move-result-object v12

    .line 710
    new-instance v13, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;

    .line 711
    .line 712
    const/16 v14, 0x11

    .line 713
    .line 714
    invoke-direct {v13, v10, v14}, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 715
    .line 716
    .line 717
    new-instance v14, Lio/reactivex/rxjava3/internal/operators/single/SingleMap;

    .line 718
    .line 719
    invoke-direct {v14, v12, v13, v3}, Lio/reactivex/rxjava3/internal/operators/single/SingleMap;-><init>(Lio/reactivex/rxjava3/core/Single;Lio/reactivex/rxjava3/functions/Function;I)V

    .line 720
    .line 721
    .line 722
    iget-object v10, v10, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;->playlistStreamCount:Ljava/lang/Object;

    .line 723
    .line 724
    check-cast v10, Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO_Impl;

    .line 725
    .line 726
    invoke-static {v10}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 727
    .line 728
    .line 729
    new-instance v12, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;

    .line 730
    .line 731
    const/16 v13, 0x12

    .line 732
    .line 733
    invoke-direct {v12, v10, v13}, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 734
    .line 735
    .line 736
    new-instance v10, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableMapPublisher;

    .line 737
    .line 738
    const/4 v13, 0x2

    .line 739
    invoke-direct {v10, v14, v12, v13}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableMapPublisher;-><init>(Ljava/lang/Object;Lio/reactivex/rxjava3/functions/Function;I)V

    .line 740
    .line 741
    .line 742
    new-instance v12, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableElementAtMaybe;

    .line 743
    .line 744
    invoke-direct {v12, v10}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableElementAtMaybe;-><init>(Lio/reactivex/rxjava3/core/Flowable;)V

    .line 745
    .line 746
    .line 747
    new-instance v10, Lorg/schabi/newpipe/local/feed/FeedViewModel$$ExternalSyntheticLambda0;

    .line 748
    .line 749
    const/16 v13, 0xd

    .line 750
    .line 751
    invoke-direct {v10, v13}, Lorg/schabi/newpipe/local/feed/FeedViewModel$$ExternalSyntheticLambda0;-><init>(I)V

    .line 752
    .line 753
    .line 754
    new-instance v13, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeMap;

    .line 755
    .line 756
    invoke-direct {v13, v12, v10, v4}, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeMap;-><init>(Lio/reactivex/rxjava3/core/Maybe;Lio/reactivex/rxjava3/functions/Function;I)V

    .line 757
    .line 758
    .line 759
    new-instance v10, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem$$ExternalSyntheticLambda0;

    .line 760
    .line 761
    invoke-direct {v10, v11}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;)V

    .line 762
    .line 763
    .line 764
    new-instance v11, Lio/reactivex/rxjava3/internal/operators/maybe/MaybePeek;

    .line 765
    .line 766
    invoke-direct {v11, v13, v10, v4}, Lio/reactivex/rxjava3/internal/operators/maybe/MaybePeek;-><init>(Lio/reactivex/rxjava3/core/Maybe;Ljava/lang/Object;I)V

    .line 767
    .line 768
    .line 769
    sget-object v10, Lio/reactivex/rxjava3/schedulers/Schedulers;->IO:Lio/reactivex/rxjava3/internal/schedulers/IoScheduler;

    .line 770
    .line 771
    invoke-virtual {v11, v10}, Lio/reactivex/rxjava3/core/Maybe;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/maybe/MaybeObserveOn;

    .line 772
    .line 773
    .line 774
    move-result-object v10

    .line 775
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    .line 776
    .line 777
    .line 778
    move-result-object v11

    .line 779
    new-instance v12, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda7;

    .line 780
    .line 781
    invoke-direct {v12, v2, v7, v5, v3}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda7;-><init>(Lorg/schabi/newpipe/player/Player;Lorg/schabi/newpipe/player/playqueue/PlayQueue;ZI)V

    .line 782
    .line 783
    .line 784
    new-instance v3, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda7;

    .line 785
    .line 786
    invoke-direct {v3, v2, v7, v5, v4}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda7;-><init>(Lorg/schabi/newpipe/player/Player;Lorg/schabi/newpipe/player/playqueue/PlayQueue;ZI)V

    .line 787
    .line 788
    .line 789
    new-instance v13, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda7;

    .line 790
    .line 791
    const/4 v14, 0x2

    .line 792
    invoke-direct {v13, v2, v7, v5, v14}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda7;-><init>(Lorg/schabi/newpipe/player/Player;Lorg/schabi/newpipe/player/playqueue/PlayQueue;ZI)V

    .line 793
    .line 794
    .line 795
    new-instance v2, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeCallbackObserver;

    .line 796
    .line 797
    invoke-direct {v2, v12, v3, v13}, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeCallbackObserver;-><init>(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;)V

    .line 798
    .line 799
    .line 800
    :try_start_1
    new-instance v3, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeObserveOn$ObserveOnMaybeObserver;

    .line 801
    .line 802
    invoke-direct {v3, v2, v11}, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeObserveOn$ObserveOnMaybeObserver;-><init>(Lio/reactivex/rxjava3/core/MaybeObserver;Lio/reactivex/rxjava3/core/Scheduler;)V

    .line 803
    .line 804
    .line 805
    invoke-virtual {v10, v3}, Lio/reactivex/rxjava3/core/Maybe;->subscribe(Lio/reactivex/rxjava3/core/MaybeObserver;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 806
    .line 807
    .line 808
    invoke-virtual {v9, v2}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    .line 809
    .line 810
    .line 811
    goto :goto_7

    .line 812
    :catchall_1
    move-exception v0

    .line 813
    invoke-static {v0, v8, v0}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/NullPointerException;

    .line 814
    .line 815
    .line 816
    move-result-object v0

    .line 817
    throw v0

    .line 818
    :catch_1
    move-exception v0

    .line 819
    throw v0

    .line 820
    :cond_20
    if-eqz v9, :cond_21

    .line 821
    .line 822
    iget-object v7, v2, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 823
    .line 824
    :cond_21
    invoke-virtual {v2, v7, v5}, Lorg/schabi/newpipe/player/Player;->initPlayback(Lorg/schabi/newpipe/player/playqueue/PlayQueue;Z)V

    .line 825
    .line 826
    .line 827
    :goto_7
    iget-object v2, v0, Lorg/schabi/newpipe/player/PlayerService;->player:Lorg/schabi/newpipe/player/Player;

    .line 828
    .line 829
    iget-object v3, v2, Lorg/schabi/newpipe/player/Player;->playerType:Lorg/schabi/newpipe/player/PlayerType;

    .line 830
    .line 831
    if-eq v6, v3, :cond_22

    .line 832
    .line 833
    iget-object v3, v2, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 834
    .line 835
    if-eqz v3, :cond_22

    .line 836
    .line 837
    invoke-virtual {v2}, Lorg/schabi/newpipe/player/Player;->reloadPlayQueueManager()V

    .line 838
    .line 839
    .line 840
    :cond_22
    iget-object v3, v2, Lorg/schabi/newpipe/player/Player;->UIs:Lorg/schabi/newpipe/player/ui/PlayerUiList;

    .line 841
    .line 842
    new-instance v5, Lorg/jsoup/parser/TagSet$$ExternalSyntheticLambda1;

    .line 843
    .line 844
    const/16 v12, 0x1a

    .line 845
    .line 846
    invoke-direct {v5, v12}, Lorg/jsoup/parser/TagSet$$ExternalSyntheticLambda1;-><init>(I)V

    .line 847
    .line 848
    .line 849
    invoke-virtual {v3, v5}, Lorg/schabi/newpipe/player/ui/PlayerUiList;->call(Ljava/util/function/Consumer;)V

    .line 850
    .line 851
    .line 852
    iget-object v2, v2, Lorg/schabi/newpipe/player/Player;->context:Lorg/schabi/newpipe/player/PlayerService;

    .line 853
    .line 854
    new-instance v3, Landroid/content/Intent;

    .line 855
    .line 856
    const-string v5, "org.schabi.newpipe.VideoDetailFragment.ACTION_PLAYER_STARTED"

    .line 857
    .line 858
    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 859
    .line 860
    .line 861
    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 862
    .line 863
    .line 864
    iget-object v0, v0, Lorg/schabi/newpipe/player/PlayerService;->player:Lorg/schabi/newpipe/player/Player;

    .line 865
    .line 866
    iget-object v0, v0, Lorg/schabi/newpipe/player/Player;->UIs:Lorg/schabi/newpipe/player/ui/PlayerUiList;

    .line 867
    .line 868
    const-class v2, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;

    .line 869
    .line 870
    invoke-virtual {v0, v2}, Lorg/schabi/newpipe/player/ui/PlayerUiList;->get(Ljava/lang/Class;)Lj$/util/Optional;

    .line 871
    .line 872
    .line 873
    move-result-object v0

    .line 874
    new-instance v2, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda40;

    .line 875
    .line 876
    invoke-direct {v2, v1, v4}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda40;-><init>(Landroid/content/Intent;I)V

    .line 877
    .line 878
    .line 879
    invoke-virtual {v0, v2}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 880
    .line 881
    .line 882
    const/4 v13, 0x2

    .line 883
    return v13
.end method

.method public final onTaskRemoved(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Service;->onTaskRemoved(Landroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lorg/schabi/newpipe/player/PlayerService;->player:Lorg/schabi/newpipe/player/Player;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/Player;->videoPlayerSelected()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/PlayerService;->onDestroy()V

    .line 16
    .line 17
    .line 18
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const/4 p1, 0x0

    .line 23
    invoke-virtual {p0, p1}, Ljava/lang/Runtime;->halt(I)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
