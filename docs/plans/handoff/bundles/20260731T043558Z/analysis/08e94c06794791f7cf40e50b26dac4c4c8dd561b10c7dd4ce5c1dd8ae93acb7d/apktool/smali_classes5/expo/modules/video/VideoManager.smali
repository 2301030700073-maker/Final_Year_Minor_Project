.class public final Lexpo/modules/video/VideoManager;
.super Ljava/lang/Object;
.source "VideoManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aJ\u000e\u0010\u001b\u001a\u00020\u00182\u0006\u0010\u001c\u001a\u00020\u0008J\u000e\u0010\u001d\u001a\u00020\u00082\u0006\u0010\u001e\u001a\u00020\u0005J\u000e\u0010\u001f\u001a\u00020\u00182\u0006\u0010\u001c\u001a\u00020\u0008J\u000e\u0010 \u001a\u00020\u00182\u0006\u0010!\u001a\u00020\rJ\u000e\u0010\"\u001a\u00020\u00182\u0006\u0010!\u001a\u00020\rJ\u0016\u0010#\u001a\u00020\u00182\u0006\u0010\u001e\u001a\u00020\u00052\u0006\u0010$\u001a\u00020\u000bJ\u000e\u0010%\u001a\u00020\u00182\u0006\u0010\u001e\u001a\u00020\u0005J\u0016\u0010&\u001a\u00020\u00182\u0006\u0010!\u001a\u00020\r2\u0006\u0010\u001c\u001a\u00020\u0008J\u0016\u0010\'\u001a\u00020\u00182\u0006\u0010!\u001a\u00020\r2\u0006\u0010\u001c\u001a\u00020\u0008J\u000e\u0010(\u001a\u00020)2\u0006\u0010!\u001a\u00020\rJ\u0006\u0010*\u001a\u00020)J\u0006\u0010+\u001a\u00020\u0018J\u0006\u0010,\u001a\u00020\u0018J\u0010\u0010-\u001a\u00020)2\u0006\u0010\u001c\u001a\u00020\u0008H\u0002J\u0010\u0010.\u001a\u00020\u00182\u0006\u0010\u001c\u001a\u00020\u0008H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00080\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R \u0010\t\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\n0\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R \u0010\u000c\u001a\u0014\u0012\u0004\u0012\u00020\r\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u000e0\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082.\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0011\u001a\u00020\u0012X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016\u00a8\u0006/"
    }
    d2 = {
        "Lexpo/modules/video/VideoManager;",
        "",
        "<init>",
        "()V",
        "INTENT_PLAYER_KEY",
        "",
        "videoViews",
        "",
        "Lexpo/modules/video/VideoView;",
        "fullscreenPlayerActivities",
        "Ljava/lang/ref/WeakReference;",
        "Lexpo/modules/video/FullscreenPlayerActivity;",
        "videoPlayersToVideoViews",
        "Lexpo/modules/video/player/VideoPlayer;",
        "",
        "audioFocusManager",
        "Lexpo/modules/video/AudioFocusManager;",
        "cache",
        "Lexpo/modules/video/VideoCache;",
        "getCache",
        "()Lexpo/modules/video/VideoCache;",
        "setCache",
        "(Lexpo/modules/video/VideoCache;)V",
        "onModuleCreated",
        "",
        "appContext",
        "Lexpo/modules/kotlin/AppContext;",
        "registerVideoView",
        "videoView",
        "getVideoView",
        "id",
        "unregisterVideoView",
        "registerVideoPlayer",
        "videoPlayer",
        "unregisterVideoPlayer",
        "registerFullscreenPlayerActivity",
        "fullscreenActivity",
        "unregisterFullscreenPlayerActivity",
        "onVideoPlayerAttachedToView",
        "onVideoPlayerDetachedFromView",
        "isVideoPlayerAttachedToView",
        "",
        "hasRegisteredPlayers",
        "onAppForegrounded",
        "onAppBackgrounded",
        "shouldPauseVideo",
        "handleVideoPause",
        "expo-video_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lexpo/modules/video/VideoManager;

.field public static final INTENT_PLAYER_KEY:Ljava/lang/String; = "player_uuid"

.field private static audioFocusManager:Lexpo/modules/video/AudioFocusManager;

.field public static cache:Lexpo/modules/video/VideoCache;

.field private static fullscreenPlayerActivities:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Lexpo/modules/video/FullscreenPlayerActivity;",
            ">;>;"
        }
    .end annotation
.end field

.field private static videoPlayersToVideoViews:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lexpo/modules/video/player/VideoPlayer;",
            "Ljava/util/List<",
            "Lexpo/modules/video/VideoView;",
            ">;>;"
        }
    .end annotation
.end field

.field private static videoViews:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lexpo/modules/video/VideoView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lexpo/modules/video/VideoManager;

    invoke-direct {v0}, Lexpo/modules/video/VideoManager;-><init>()V

    sput-object v0, Lexpo/modules/video/VideoManager;->INSTANCE:Lexpo/modules/video/VideoManager;

    .line 16
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    sput-object v0, Lexpo/modules/video/VideoManager;->videoViews:Ljava/util/Map;

    .line 17
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    sput-object v0, Lexpo/modules/video/VideoManager;->fullscreenPlayerActivities:Ljava/util/Map;

    .line 20
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    sput-object v0, Lexpo/modules/video/VideoManager;->videoPlayersToVideoViews:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final handleVideoPause(Lexpo/modules/video/VideoView;)V
    .locals 2

    .line 125
    invoke-virtual {p1}, Lexpo/modules/video/VideoView;->getPlayerView()Landroidx/media3/ui/PlayerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/media3/ui/PlayerView;->setUseController(Z)V

    .line 126
    invoke-virtual {p1}, Lexpo/modules/video/VideoView;->getVideoPlayer()Lexpo/modules/video/player/VideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lexpo/modules/video/player/VideoPlayer;->getPlayer()Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 127
    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->pause()V

    const/4 v0, 0x1

    .line 129
    invoke-virtual {p1, v0}, Lexpo/modules/video/VideoView;->setWasAutoPaused(Z)V

    :cond_0
    return-void
.end method

.method private final shouldPauseVideo(Lexpo/modules/video/VideoView;)Z
    .locals 1

    .line 119
    invoke-virtual {p1}, Lexpo/modules/video/VideoView;->getVideoPlayer()Lexpo/modules/video/player/VideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lexpo/modules/video/player/VideoPlayer;->getStaysActiveInBackground()Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    invoke-virtual {p1}, Lexpo/modules/video/VideoView;->getWillEnterPiP()Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    invoke-virtual {p1}, Lexpo/modules/video/VideoView;->isInFullscreen()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public final getCache()Lexpo/modules/video/VideoCache;
    .locals 1

    .line 23
    sget-object v0, Lexpo/modules/video/VideoManager;->cache:Lexpo/modules/video/VideoCache;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "cache"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getVideoView(Ljava/lang/String;)Lexpo/modules/video/VideoView;
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    sget-object v0, Lexpo/modules/video/VideoManager;->videoViews:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/video/VideoView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lexpo/modules/video/VideoViewNotFoundException;

    invoke-direct {v0, p1}, Lexpo/modules/video/VideoViewNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final hasRegisteredPlayers()Z
    .locals 1

    .line 93
    sget-object v0, Lexpo/modules/video/VideoManager;->videoPlayersToVideoViews:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final isVideoPlayerAttachedToView(Lexpo/modules/video/player/VideoPlayer;)Z
    .locals 1

    const-string v0, "videoPlayer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    sget-object v0, Lexpo/modules/video/VideoManager;->videoPlayersToVideoViews:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final onAppBackgrounded()V
    .locals 3

    .line 109
    sget-object v0, Lexpo/modules/video/VideoManager;->videoViews:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lexpo/modules/video/VideoView;

    .line 110
    invoke-direct {p0, v1}, Lexpo/modules/video/VideoManager;->shouldPauseVideo(Lexpo/modules/video/VideoView;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 111
    invoke-direct {p0, v1}, Lexpo/modules/video/VideoManager;->handleVideoPause(Lexpo/modules/video/VideoView;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 113
    invoke-virtual {v1, v2}, Lexpo/modules/video/VideoView;->setWasAutoPaused(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onAppForegrounded()V
    .locals 3

    .line 97
    sget-object v0, Lexpo/modules/video/VideoManager;->videoViews:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lexpo/modules/video/VideoView;

    .line 98
    invoke-virtual {v1}, Lexpo/modules/video/VideoView;->getPlayerView()Landroidx/media3/ui/PlayerView;

    move-result-object v2

    invoke-virtual {v1}, Lexpo/modules/video/VideoView;->getUseNativeControls()Z

    move-result v1

    invoke-virtual {v2, v1}, Landroidx/media3/ui/PlayerView;->setUseController(Z)V

    goto :goto_0

    .line 103
    :cond_0
    sget-object v0, Lexpo/modules/video/VideoManager;->fullscreenPlayerActivities:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 104
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lexpo/modules/video/FullscreenPlayerActivity;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lexpo/modules/video/FullscreenPlayerActivity;->finish()V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final onModuleCreated(Lexpo/modules/kotlin/AppContext;)V
    .locals 2

    const-string v0, "appContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p1}, Lexpo/modules/kotlin/AppContext;->getReactContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 28
    sget-object v1, Lexpo/modules/video/VideoManager;->audioFocusManager:Lexpo/modules/video/AudioFocusManager;

    if-nez v1, :cond_0

    .line 29
    new-instance v1, Lexpo/modules/video/AudioFocusManager;

    invoke-direct {v1, p1}, Lexpo/modules/video/AudioFocusManager;-><init>(Lexpo/modules/kotlin/AppContext;)V

    sput-object v1, Lexpo/modules/video/VideoManager;->audioFocusManager:Lexpo/modules/video/AudioFocusManager;

    .line 31
    :cond_0
    sget-object p1, Lexpo/modules/video/VideoManager;->cache:Lexpo/modules/video/VideoCache;

    if-nez p1, :cond_1

    .line 32
    new-instance p1, Lexpo/modules/video/VideoCache;

    invoke-direct {p1, v0}, Lexpo/modules/video/VideoCache;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lexpo/modules/video/VideoManager;->setCache(Lexpo/modules/video/VideoCache;)V

    :cond_1
    return-void

    .line 26
    :cond_2
    new-instance p1, Lexpo/modules/kotlin/exception/Exceptions$ReactContextLost;

    invoke-direct {p1}, Lexpo/modules/kotlin/exception/Exceptions$ReactContextLost;-><init>()V

    throw p1
.end method

.method public final onVideoPlayerAttachedToView(Lexpo/modules/video/player/VideoPlayer;Lexpo/modules/video/VideoView;)V
    .locals 4

    const-string v0, "videoPlayer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    sget-object v0, Lexpo/modules/video/VideoManager;->videoPlayersToVideoViews:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_0

    return-void

    .line 70
    :cond_0
    sget-object v0, Lexpo/modules/video/VideoManager;->videoPlayersToVideoViews:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move-object v0, p0

    check-cast v0, Lexpo/modules/video/VideoManager;

    .line 71
    sget-object v0, Lexpo/modules/video/VideoManager;->videoPlayersToVideoViews:Ljava/util/Map;

    new-array v2, v1, [Lexpo/modules/video/VideoView;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    :goto_0
    sget-object p2, Lexpo/modules/video/VideoManager;->videoPlayersToVideoViews:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ne p2, v1, :cond_2

    .line 75
    invoke-virtual {p1}, Lexpo/modules/video/player/VideoPlayer;->getServiceConnection()Lexpo/modules/video/playbackService/PlaybackServiceConnection;

    move-result-object p2

    invoke-virtual {p2}, Lexpo/modules/video/playbackService/PlaybackServiceConnection;->getPlaybackServiceBinder()Lexpo/modules/video/playbackService/PlaybackServiceBinder;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lexpo/modules/video/playbackService/PlaybackServiceBinder;->getService()Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p2, p1}, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;->registerPlayer(Lexpo/modules/video/player/VideoPlayer;)V

    :cond_2
    return-void
.end method

.method public final onVideoPlayerDetachedFromView(Lexpo/modules/video/player/VideoPlayer;Lexpo/modules/video/VideoView;)V
    .locals 1

    const-string v0, "videoPlayer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    sget-object v0, Lexpo/modules/video/VideoManager;->videoPlayersToVideoViews:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 83
    :cond_0
    sget-object p2, Lexpo/modules/video/VideoManager;->videoPlayersToVideoViews:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_1

    sget-object p2, Lexpo/modules/video/VideoManager;->videoPlayersToVideoViews:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_2

    .line 84
    :cond_1
    invoke-virtual {p1}, Lexpo/modules/video/player/VideoPlayer;->getServiceConnection()Lexpo/modules/video/playbackService/PlaybackServiceConnection;

    move-result-object p2

    invoke-virtual {p2}, Lexpo/modules/video/playbackService/PlaybackServiceConnection;->getPlaybackServiceBinder()Lexpo/modules/video/playbackService/PlaybackServiceBinder;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lexpo/modules/video/playbackService/PlaybackServiceBinder;->getService()Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lexpo/modules/video/player/VideoPlayer;->getPlayer()Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;->unregisterPlayer(Landroidx/media3/exoplayer/ExoPlayer;)V

    :cond_2
    return-void
.end method

.method public final registerFullscreenPlayerActivity(Ljava/lang/String;Lexpo/modules/video/FullscreenPlayerActivity;)V
    .locals 2

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fullscreenActivity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    sget-object v0, Lexpo/modules/video/VideoManager;->fullscreenPlayerActivities:Ljava/util/Map;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final registerVideoPlayer(Lexpo/modules/video/player/VideoPlayer;)V
    .locals 2

    const-string v0, "videoPlayer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    sget-object v0, Lexpo/modules/video/VideoManager;->videoPlayersToVideoViews:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    :cond_0
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lexpo/modules/video/VideoManager;->audioFocusManager:Lexpo/modules/video/AudioFocusManager;

    if-nez v0, :cond_1

    const-string v0, "audioFocusManager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    invoke-virtual {v0, p1}, Lexpo/modules/video/AudioFocusManager;->registerPlayer(Lexpo/modules/video/player/VideoPlayer;)V

    return-void
.end method

.method public final registerVideoView(Lexpo/modules/video/VideoView;)V
    .locals 2

    const-string v0, "videoView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    sget-object v0, Lexpo/modules/video/VideoManager;->videoViews:Ljava/util/Map;

    invoke-virtual {p1}, Lexpo/modules/video/VideoView;->getVideoViewId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final setCache(Lexpo/modules/video/VideoCache;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    sput-object p1, Lexpo/modules/video/VideoManager;->cache:Lexpo/modules/video/VideoCache;

    return-void
.end method

.method public final unregisterFullscreenPlayerActivity(Ljava/lang/String;)V
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    sget-object v0, Lexpo/modules/video/VideoManager;->fullscreenPlayerActivities:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final unregisterVideoPlayer(Lexpo/modules/video/player/VideoPlayer;)V
    .locals 1

    const-string v0, "videoPlayer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    sget-object v0, Lexpo/modules/video/VideoManager;->videoPlayersToVideoViews:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lexpo/modules/video/VideoManager;->audioFocusManager:Lexpo/modules/video/AudioFocusManager;

    if-nez v0, :cond_0

    const-string v0, "audioFocusManager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0, p1}, Lexpo/modules/video/AudioFocusManager;->unregisterPlayer(Lexpo/modules/video/player/VideoPlayer;)V

    return-void
.end method

.method public final unregisterVideoView(Lexpo/modules/video/VideoView;)V
    .locals 1

    const-string v0, "videoView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    sget-object v0, Lexpo/modules/video/VideoManager;->videoViews:Ljava/util/Map;

    invoke-virtual {p1}, Lexpo/modules/video/VideoView;->getVideoViewId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
