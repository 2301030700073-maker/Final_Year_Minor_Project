.class public Lcom/brentvatne/exoplayer/ReactExoplayerView;
.super Landroid/widget/FrameLayout;
.source "ReactExoplayerView.java"

# interfaces
.implements Lcom/facebook/react/bridge/LifecycleEventListener;
.implements Landroidx/media3/common/Player$Listener;
.implements Landroidx/media3/exoplayer/upstream/BandwidthMeter$EventListener;
.implements Lcom/brentvatne/receiver/BecomingNoisyListener;
.implements Landroidx/media3/exoplayer/drm/DrmSessionEventListener;
.implements Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventListener;
.implements Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brentvatne/exoplayer/ReactExoplayerView$OnAudioFocusChangedListener;,
        Lcom/brentvatne/exoplayer/ReactExoplayerView$RNVLoadControl;
    }
.end annotation


# static fields
.field private static final DEFAULT_COOKIE_MANAGER:Ljava/net/CookieManager;

.field public static final DEFAULT_MAX_HEAP_ALLOCATION_PERCENT:D = 1.0

.field public static final DEFAULT_MIN_BUFFER_MEMORY_RESERVE:D = 0.0

.field private static final SHOW_PROGRESS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ReactExoplayerView"

.field private static final TAG_EVENT_LOGGER:Ljava/lang/String; = "RNVExoplayer"


# instance fields
.field private adsLoader:Landroidx/media3/exoplayer/ima/ImaAdsLoader;

.field private final audioBecomingNoisyReceiver:Lcom/brentvatne/receiver/AudioBecomingNoisyReceiver;

.field private final audioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private final audioManager:Landroid/media/AudioManager;

.field private audioOutput:Lcom/brentvatne/exoplayer/AudioOutput;

.field private audioTrackType:Ljava/lang/String;

.field private audioTrackValue:Ljava/lang/String;

.field private audioVolume:F

.field private bandwidthMeter:Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;

.field private bufferingStrategy:Lcom/brentvatne/common/api/BufferingStrategy$BufferingStrategyEnum;

.field private cmcdConfigurationFactory:Landroidx/media3/exoplayer/upstream/CmcdConfiguration$Factory;

.field private final config:Lcom/brentvatne/exoplayer/ReactExoplayerConfig;

.field private controls:Z

.field private controlsConfig:Lcom/brentvatne/common/api/ControlsConfig;

.field private debugEventLogger:Landroidx/media3/exoplayer/util/EventLogger;

.field private disableCache:Z

.field private disableDisconnectError:Z

.field private disableFocus:Z

.field private enableDebug:Z

.field public enterPictureInPictureOnLeave:Z

.field protected final eventEmitter:Lcom/brentvatne/common/react/VideoEventEmitter;

.field private eventListener:Landroidx/media3/common/Player$Listener;

.field private exoPlayerView:Lcom/brentvatne/exoplayer/ExoPlayerView;

.field private focusable:Z

.field private fullScreenPlayerView:Lcom/brentvatne/exoplayer/FullScreenPlayerView;

.field private hasAudioFocus:Z

.field private hasDrmFailed:Z

.field private final instanceId:Ljava/lang/String;

.field private isBuffering:Z

.field private isFullscreen:Z

.field private isInBackground:Z

.field private isPaused:Z

.field private isSeeking:Z

.field private isUsingContentResolution:Z

.field private lastBufferDuration:J

.field private lastDuration:J

.field private lastPos:J

.field private loadVideoStarted:Z

.field private mProgressUpdateInterval:F

.field private mReportBandwidth:Z

.field private final mainHandler:Landroid/os/Handler;

.field private mainRunnable:Ljava/lang/Runnable;

.field private maxBitRate:I

.field private mediaDataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

.field private muted:Z

.field private pictureInPictureParamsBuilder:Landroid/app/PictureInPictureParams$Builder;

.field private final pictureInPictureReceiver:Lcom/brentvatne/receiver/PictureInPictureReceiver;

.field private pipListenerUnsubscribe:Ljava/lang/Runnable;

.field protected playInBackground:Z

.field private playPauseControlContainer:Landroid/view/View;

.field private playbackServiceBinder:Lcom/brentvatne/exoplayer/PlaybackServiceBinder;

.field private playbackServiceConnection:Landroid/content/ServiceConnection;

.field private player:Landroidx/media3/exoplayer/ExoPlayer;

.field private playerControlView:Landroidx/media3/ui/LegacyPlayerControlView;

.field private playerNeedsSource:Z

.field private preventsDisplaySleepDuringVideoPlayback:Z

.field private final progressHandler:Landroid/os/Handler;

.field private rate:F

.field private repeat:Z

.field private resumePosition:J

.field private resumeWindow:I

.field private rootViewChildrenOriginalVisibility:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private seekPosition:J

.field private selectTrackWhenReady:Z

.field private selectedSpeedIndex:I

.field private showNotificationControls:Z

.field private source:Lcom/brentvatne/common/api/Source;

.field private textTrackType:Ljava/lang/String;

.field private textTrackValue:Ljava/lang/String;

.field private final themedReactContext:Lcom/facebook/react/uimanager/ThemedReactContext;

.field private trackSelector:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

.field private useCache:Z

.field private videoTrackType:Ljava/lang/String;

.field private videoTrackValue:Ljava/lang/String;

.field private viewHasDropped:Z


# direct methods
.method public static synthetic $r8$lambda$16cOjWz_uwmq5w8rlasdkYl27Fc(Lcom/brentvatne/exoplayer/ReactExoplayerView;Landroidx/media3/common/MediaItem$AdsConfiguration;)Landroidx/media3/exoplayer/source/ads/AdsLoader;
    .locals 0

    invoke-direct {p0, p1}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->lambda$initializePlayerCore$13(Landroidx/media3/common/MediaItem$AdsConfiguration;)Landroidx/media3/exoplayer/source/ads/AdsLoader;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$2x3ha1VEdPnl_yC4Q4pvfwdkYdM(Lcom/brentvatne/exoplayer/ReactExoplayerView;Lcom/brentvatne/common/api/Source;Landroid/app/Activity;Lcom/brentvatne/exoplayer/ReactExoplayerView;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->lambda$initializePlayer$11(Lcom/brentvatne/common/api/Source;Landroid/app/Activity;Lcom/brentvatne/exoplayer/ReactExoplayerView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7Yg2lo-WieSyvYB5zK2Fa0i7g9s(Lcom/brentvatne/exoplayer/ReactExoplayerView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->lambda$initializePlayerControl$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7uL9nk9csvnRpmKm6QmROTfpY4A(Lcom/brentvatne/exoplayer/ReactExoplayerView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->lambda$initializePlayerControl$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$A_ObqnoG9pMCXLCc5oF6UZe9MjM(Lcom/brentvatne/exoplayer/ReactExoplayerView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->lambda$initializePlayerControl$7(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ar1K5dkt0LNV3EBL3ZTBfybgcIY(Lcom/brentvatne/exoplayer/ReactExoplayerView;)V
    .locals 0

    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->lambda$setFullscreen$17()V

    return-void
.end method

.method public static synthetic $r8$lambda$D-UXVL-CMgDuGhFuaskZdvjLyCc(Lcom/brentvatne/exoplayer/ReactExoplayerView;Lcom/brentvatne/common/api/Source;Lcom/brentvatne/exoplayer/ReactExoplayerView;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->lambda$initializePlayer$10(Lcom/brentvatne/common/api/Source;Lcom/brentvatne/exoplayer/ReactExoplayerView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DtlOBSYwKr8--eBmlbF3eRZRGLQ(Lcom/brentvatne/exoplayer/ReactExoplayerView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->lambda$initializePlayerControl$6(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$I10_L7tBxRpkfA2s8aURhoFnafs(Lcom/brentvatne/exoplayer/ReactExoplayerView;Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->lambda$createViews$0(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method public static synthetic $r8$lambda$Jpa4AxYwloqIWt1VpCu77OBgmxU(Lcom/brentvatne/exoplayer/ReactExoplayerView;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->lambda$openSettings$8(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$KXBiatVqy2S0bWGw2NmmUKbsVn8(Lcom/brentvatne/exoplayer/ReactExoplayerView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->lambda$initializePlayerControl$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$N7gJCQBWDdJBQrsANw6fFDUR9Dg(Lcom/brentvatne/exoplayer/ReactExoplayerView;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->lambda$showPlaybackSpeedOptions$9(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$NbQenzQJmRxYHlKUjcN9EfAmx94(Lcom/brentvatne/exoplayer/ReactExoplayerView;JJIILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->lambda$videoLoaded$16(JJIILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Nz_ABcaXoqhO174D3QBBOfTWJ2s(Lcom/brentvatne/exoplayer/ReactExoplayerView;Lcom/brentvatne/common/api/Source;Lcom/brentvatne/exoplayer/ReactExoplayerView;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->lambda$initializePlayer$12(Lcom/brentvatne/common/api/Source;Lcom/brentvatne/exoplayer/ReactExoplayerView;Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$O9BJo271NsQdwwX2DXPrSDSJpvw(Lcom/brentvatne/exoplayer/ReactExoplayerView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->lambda$initializePlayerControl$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OJd5tnbliOxLLtDSFARGbE1-O8g(Lcom/brentvatne/exoplayer/ReactExoplayerView;Landroidx/media3/common/MediaItem$AdsConfiguration;)Landroidx/media3/exoplayer/source/ads/AdsLoader;
    .locals 0

    invoke-direct {p0, p1}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->lambda$initializeAds$14(Landroidx/media3/common/MediaItem$AdsConfiguration;)Landroidx/media3/exoplayer/source/ads/AdsLoader;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$YWlGda2P_CnZiYTe_15pQk3lXfM(Lcom/brentvatne/exoplayer/ReactExoplayerView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->lambda$initializePlayerControl$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$p2XZy8QDjSDv8tLhIdf7sZdCeo0(Lcom/brentvatne/exoplayer/ReactExoplayerView;)V
    .locals 0

    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->lambda$setFullscreen$18()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetaudioManager(Lcom/brentvatne/exoplayer/ReactExoplayerView;)Landroid/media/AudioManager;
    .locals 0

    iget-object p0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->audioManager:Landroid/media/AudioManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetaudioVolume(Lcom/brentvatne/exoplayer/ReactExoplayerView;)F
    .locals 0

    iget p0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->audioVolume:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetbufferingStrategy(Lcom/brentvatne/exoplayer/ReactExoplayerView;)Lcom/brentvatne/common/api/BufferingStrategy$BufferingStrategyEnum;
    .locals 0

    iget-object p0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->bufferingStrategy:Lcom/brentvatne/common/api/BufferingStrategy$BufferingStrategyEnum;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgeteventListener(Lcom/brentvatne/exoplayer/ReactExoplayerView;)Landroidx/media3/common/Player$Listener;
    .locals 0

    iget-object p0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->eventListener:Landroidx/media3/common/Player$Listener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmProgressUpdateInterval(Lcom/brentvatne/exoplayer/ReactExoplayerView;)F
    .locals 0

    iget p0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->mProgressUpdateInterval:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmuted(Lcom/brentvatne/exoplayer/ReactExoplayerView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->muted:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetplayPauseControlContainer(Lcom/brentvatne/exoplayer/ReactExoplayerView;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playPauseControlContainer:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetplaybackServiceBinder(Lcom/brentvatne/exoplayer/ReactExoplayerView;)Lcom/brentvatne/exoplayer/PlaybackServiceBinder;
    .locals 0

    iget-object p0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playbackServiceBinder:Lcom/brentvatne/exoplayer/PlaybackServiceBinder;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetplayer(Lcom/brentvatne/exoplayer/ReactExoplayerView;)Landroidx/media3/exoplayer/ExoPlayer;
    .locals 0

    iget-object p0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetplayerControlView(Lcom/brentvatne/exoplayer/ReactExoplayerView;)Landroidx/media3/ui/LegacyPlayerControlView;
    .locals 0

    iget-object p0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playerControlView:Landroidx/media3/ui/LegacyPlayerControlView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsource(Lcom/brentvatne/exoplayer/ReactExoplayerView;)Lcom/brentvatne/common/api/Source;
    .locals 0

    iget-object p0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->source:Lcom/brentvatne/common/api/Source;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetthemedReactContext(Lcom/brentvatne/exoplayer/ReactExoplayerView;)Lcom/facebook/react/uimanager/ThemedReactContext;
    .locals 0

    iget-object p0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->themedReactContext:Lcom/facebook/react/uimanager/ThemedReactContext;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputhasAudioFocus(Lcom/brentvatne/exoplayer/ReactExoplayerView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->hasAudioFocus:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputplaybackServiceBinder(Lcom/brentvatne/exoplayer/ReactExoplayerView;Lcom/brentvatne/exoplayer/PlaybackServiceBinder;)V
    .locals 0

    iput-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playbackServiceBinder:Lcom/brentvatne/exoplayer/PlaybackServiceBinder;

    return-void
.end method

.method static bridge synthetic -$$Nest$mexoplayerVideoTrackToGenericVideoTrack(Lcom/brentvatne/exoplayer/ReactExoplayerView;Landroidx/media3/common/Format;I)Lcom/brentvatne/common/api/VideoTrack;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->exoplayerVideoTrackToGenericVideoTrack(Landroidx/media3/common/Format;I)Lcom/brentvatne/common/api/VideoTrack;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misFormatSupported(Lcom/brentvatne/exoplayer/ReactExoplayerView;Landroidx/media3/common/Format;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->isFormatSupported(Landroidx/media3/common/Format;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mpausePlayback(Lcom/brentvatne/exoplayer/ReactExoplayerView;)V
    .locals 0

    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->pausePlayback()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mreLayout(Lcom/brentvatne/exoplayer/ReactExoplayerView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->reLayout(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateProgress(Lcom/brentvatne/exoplayer/ReactExoplayerView;)V
    .locals 0

    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->updateProgress()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 174
    new-instance v0, Ljava/net/CookieManager;

    invoke-direct {v0}, Ljava/net/CookieManager;-><init>()V

    sput-object v0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->DEFAULT_COOKIE_MANAGER:Ljava/net/CookieManager;

    .line 175
    sget-object v1, Ljava/net/CookiePolicy;->ACCEPT_ORIGINAL_SERVER:Ljava/net/CookiePolicy;

    invoke-virtual {v0, v1}, Ljava/net/CookieManager;->setCookiePolicy(Ljava/net/CookiePolicy;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/uimanager/ThemedReactContext;Lcom/brentvatne/exoplayer/ReactExoplayerConfig;)V
    .locals 6

    .line 322
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 197
    iput-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->debugEventLogger:Landroidx/media3/exoplayer/util/EventLogger;

    const/4 v1, 0x0

    .line 198
    iput-boolean v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->enableDebug:Z

    .line 208
    iput-boolean v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->muted:Z

    .line 209
    iput-boolean v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->enterPictureInPictureOnLeave:Z

    .line 211
    iput-boolean v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->hasAudioFocus:Z

    const/high16 v2, 0x3f800000    # 1.0f

    .line 212
    iput v2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->rate:F

    .line 213
    sget-object v3, Lcom/brentvatne/exoplayer/AudioOutput;->SPEAKER:Lcom/brentvatne/exoplayer/AudioOutput;

    iput-object v3, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->audioOutput:Lcom/brentvatne/exoplayer/AudioOutput;

    .line 214
    iput v2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->audioVolume:F

    .line 215
    iput v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->maxBitRate:I

    .line 216
    iput-boolean v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->hasDrmFailed:Z

    .line 217
    iput-boolean v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->isUsingContentResolution:Z

    .line 218
    iput-boolean v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->selectTrackWhenReady:Z

    .line 222
    iput-boolean v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->useCache:Z

    .line 223
    iput-boolean v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->disableCache:Z

    .line 224
    new-instance v2, Lcom/brentvatne/common/api/ControlsConfig;

    invoke-direct {v2}, Lcom/brentvatne/common/api/ControlsConfig;-><init>()V

    iput-object v2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->controlsConfig:Lcom/brentvatne/common/api/ControlsConfig;

    .line 225
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->rootViewChildrenOriginalVisibility:Ljava/util/ArrayList;

    .line 231
    iput-boolean v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->isSeeking:Z

    const-wide/16 v2, -0x1

    .line 232
    iput-wide v2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->seekPosition:J

    .line 235
    new-instance v4, Lcom/brentvatne/common/api/Source;

    invoke-direct {v4}, Lcom/brentvatne/common/api/Source;-><init>()V

    iput-object v4, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->source:Lcom/brentvatne/common/api/Source;

    .line 241
    const-string v4, "disabled"

    iput-object v4, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->textTrackType:Ljava/lang/String;

    const/4 v4, 0x1

    .line 244
    iput-boolean v4, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->focusable:Z

    .line 247
    iput-boolean v4, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->preventsDisplaySleepDuringVideoPlayback:Z

    const/high16 v5, 0x437a0000    # 250.0f

    .line 248
    iput v5, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->mProgressUpdateInterval:F

    .line 249
    iput-boolean v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playInBackground:Z

    .line 250
    iput-boolean v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->mReportBandwidth:Z

    .line 253
    iput-boolean v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->showNotificationControls:Z

    .line 264
    iput-wide v2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->lastPos:J

    .line 265
    iput-wide v2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->lastBufferDuration:J

    .line 266
    iput-wide v2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->lastDuration:J

    .line 268
    iput-boolean v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->viewHasDropped:Z

    .line 269
    iput v4, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->selectedSpeedIndex:I

    .line 271
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->instanceId:Ljava/lang/String;

    .line 302
    new-instance v1, Lcom/brentvatne/exoplayer/ReactExoplayerView$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/brentvatne/exoplayer/ReactExoplayerView$1;-><init>(Lcom/brentvatne/exoplayer/ReactExoplayerView;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->progressHandler:Landroid/os/Handler;

    .line 323
    iput-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->themedReactContext:Lcom/facebook/react/uimanager/ThemedReactContext;

    .line 324
    new-instance v1, Lcom/brentvatne/common/react/VideoEventEmitter;

    invoke-direct {v1}, Lcom/brentvatne/common/react/VideoEventEmitter;-><init>()V

    iput-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->eventEmitter:Lcom/brentvatne/common/react/VideoEventEmitter;

    .line 325
    iput-object p2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->config:Lcom/brentvatne/exoplayer/ReactExoplayerConfig;

    .line 326
    invoke-interface {p2}, Lcom/brentvatne/exoplayer/ReactExoplayerConfig;->getBandwidthMeter()Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;

    move-result-object p2

    iput-object p2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->bandwidthMeter:Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;

    .line 327
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt p2, v1, :cond_0

    iget-object p2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->pictureInPictureParamsBuilder:Landroid/app/PictureInPictureParams$Builder;

    if-nez p2, :cond_0

    .line 328
    new-instance p2, Landroid/app/PictureInPictureParams$Builder;

    invoke-direct {p2}, Landroid/app/PictureInPictureParams$Builder;-><init>()V

    iput-object p2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->pictureInPictureParamsBuilder:Landroid/app/PictureInPictureParams$Builder;

    .line 330
    :cond_0
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->mainHandler:Landroid/os/Handler;

    .line 332
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->createViews()V

    .line 334
    const-string p2, "audio"

    invoke-virtual {p1, p2}, Lcom/facebook/react/uimanager/ThemedReactContext;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/AudioManager;

    iput-object p2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->audioManager:Landroid/media/AudioManager;

    .line 335
    invoke-virtual {p1, p0}, Lcom/facebook/react/uimanager/ThemedReactContext;->addLifecycleEventListener(Lcom/facebook/react/bridge/LifecycleEventListener;)V

    .line 336
    new-instance p2, Lcom/brentvatne/receiver/AudioBecomingNoisyReceiver;

    invoke-direct {p2, p1}, Lcom/brentvatne/receiver/AudioBecomingNoisyReceiver;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->audioBecomingNoisyReceiver:Lcom/brentvatne/receiver/AudioBecomingNoisyReceiver;

    .line 337
    new-instance p2, Lcom/brentvatne/exoplayer/ReactExoplayerView$OnAudioFocusChangedListener;

    invoke-direct {p2, p0, p1, v0}, Lcom/brentvatne/exoplayer/ReactExoplayerView$OnAudioFocusChangedListener;-><init>(Lcom/brentvatne/exoplayer/ReactExoplayerView;Lcom/facebook/react/uimanager/ThemedReactContext;Lcom/brentvatne/exoplayer/ReactExoplayerView-IA;)V

    iput-object p2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->audioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 338
    new-instance p2, Lcom/brentvatne/receiver/PictureInPictureReceiver;

    invoke-direct {p2, p0, p1}, Lcom/brentvatne/receiver/PictureInPictureReceiver;-><init>(Lcom/brentvatne/exoplayer/ReactExoplayerView;Lcom/facebook/react/uimanager/ThemedReactContext;)V

    iput-object p2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->pictureInPictureReceiver:Lcom/brentvatne/receiver/PictureInPictureReceiver;

    return-void
.end method

.method private addPlayerControl()V
    .locals 3

    .line 557
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playerControlView:Landroidx/media3/ui/LegacyPlayerControlView;

    if-nez v0, :cond_0

    return-void

    .line 558
    :cond_0
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 561
    iget-object v2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playerControlView:Landroidx/media3/ui/LegacyPlayerControlView;

    invoke-virtual {v2, v0}, Landroidx/media3/ui/LegacyPlayerControlView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 562
    iget-object v2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playerControlView:Landroidx/media3/ui/LegacyPlayerControlView;

    invoke-virtual {p0, v2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->indexOfChild(Landroid/view/View;)I

    move-result v2

    if-eq v2, v1, :cond_1

    .line 564
    invoke-virtual {p0, v2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->removeViewAt(I)V

    .line 566
    :cond_1
    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playerControlView:Landroidx/media3/ui/LegacyPlayerControlView;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2, v0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 567
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playerControlView:Landroidx/media3/ui/LegacyPlayerControlView;

    invoke-direct {p0, v0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->reLayout(Landroid/view/View;)V

    return-void
.end method

.method private applyModifiers()V
    .locals 1

    .line 1995
    iget-boolean v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->repeat:Z

    invoke-virtual {p0, v0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setRepeatModifier(Z)V

    .line 1996
    iget-boolean v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->muted:Z

    invoke-virtual {p0, v0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setMutedModifier(Z)V

    return-void
.end method

.method private buildDataSourceFactory(Z)Landroidx/media3/datasource/DataSource$Factory;
    .locals 2

    .line 1456
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->themedReactContext:Lcom/facebook/react/uimanager/ThemedReactContext;

    if-eqz p1, :cond_0

    .line 1457
    iget-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->bandwidthMeter:Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->source:Lcom/brentvatne/common/api/Source;

    invoke-virtual {v1}, Lcom/brentvatne/common/api/Source;->getHeaders()Ljava/util/Map;

    move-result-object v1

    .line 1456
    invoke-static {v0, p1, v1}, Lcom/brentvatne/exoplayer/DataSourceUtil;->getDefaultDataSourceFactory(Lcom/facebook/react/bridge/ReactContext;Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;Ljava/util/Map;)Landroidx/media3/datasource/DataSource$Factory;

    move-result-object p1

    return-object p1
.end method

.method private buildDrmSessionManager(Ljava/util/UUID;Lcom/brentvatne/common/api/DRMProps;)Landroidx/media3/exoplayer/drm/DrmSessionManager;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/drm/UnsupportedDrmException;
        }
    .end annotation

    .line 935
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x12

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return-object v2

    .line 941
    :cond_0
    :try_start_0
    sget-object v0, Lcom/brentvatne/react/ReactNativeVideoManager;->Companion:Lcom/brentvatne/react/ReactNativeVideoManager$Companion;

    invoke-virtual {v0}, Lcom/brentvatne/react/ReactNativeVideoManager$Companion;->getInstance()Lcom/brentvatne/react/ReactNativeVideoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/brentvatne/react/ReactNativeVideoManager;->getDRMManager()Lcom/brentvatne/exoplayer/DRMManagerSpec;

    move-result-object v0

    if-nez v0, :cond_1

    .line 944
    new-instance v0, Lcom/brentvatne/exoplayer/DRMManager;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->buildHttpDataSourceFactory(Z)Landroidx/media3/datasource/HttpDataSource$Factory;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/brentvatne/exoplayer/DRMManager;-><init>(Landroidx/media3/datasource/HttpDataSource$Factory;)V

    .line 947
    :cond_1
    invoke-interface {v0, p1, p2}, Lcom/brentvatne/exoplayer/DRMManagerSpec;->buildDrmSessionManager(Ljava/util/UUID;Lcom/brentvatne/common/api/DRMProps;)Landroidx/media3/exoplayer/drm/DrmSessionManager;

    move-result-object p1

    if-nez p1, :cond_2

    .line 949
    iget-object p2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->eventEmitter:Lcom/brentvatne/common/react/VideoEventEmitter;

    iget-object p2, p2, Lcom/brentvatne/common/react/VideoEventEmitter;->onVideoError:Lkotlin/jvm/functions/Function3;

    const-string v0, "Failed to build DRM session manager"

    new-instance v1, Ljava/lang/Exception;

    const-string v3, "DRM session manager is null"

    invoke-direct {v1, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const-string v3, "3007"

    invoke-interface {p2, v0, v1, v3}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroidx/media3/exoplayer/drm/UnsupportedDrmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-object p1

    :catch_0
    move-exception p1

    .line 957
    iget-object p2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->eventEmitter:Lcom/brentvatne/common/react/VideoEventEmitter;

    iget-object p2, p2, Lcom/brentvatne/common/react/VideoEventEmitter;->onVideoError:Lkotlin/jvm/functions/Function3;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3006"

    invoke-interface {p2, v0, p1, v1}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2

    :catch_1
    move-exception p1

    .line 954
    throw p1
.end method

.method private buildHttpDataSourceFactory(Z)Landroidx/media3/datasource/HttpDataSource$Factory;
    .locals 2

    .line 1468
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->themedReactContext:Lcom/facebook/react/uimanager/ThemedReactContext;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->bandwidthMeter:Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->source:Lcom/brentvatne/common/api/Source;

    invoke-virtual {v1}, Lcom/brentvatne/common/api/Source;->getHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/brentvatne/exoplayer/DataSourceUtil;->getDefaultHttpDataSourceFactory(Lcom/facebook/react/bridge/ReactContext;Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;Ljava/util/Map;)Landroidx/media3/datasource/HttpDataSource$Factory;

    move-result-object p1

    return-object p1
.end method

.method private buildMediaSource(Landroid/net/Uri;Ljava/lang/String;Landroidx/media3/exoplayer/drm/DrmSessionManager;JJ)Landroidx/media3/exoplayer/source/MediaSource;
    .locals 6

    if-eqz p1, :cond_13

    .line 1127
    const-string/jumbo v0, "rtsp"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    move p2, v1

    goto :goto_1

    .line 1130
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 1131
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p2

    .line 1130
    :goto_0
    invoke-static {p2}, Landroidx/media3/common/util/Util;->inferContentType(Ljava/lang/String;)I

    move-result p2

    .line 1133
    :goto_1
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->config:Lcom/brentvatne/exoplayer/ReactExoplayerConfig;

    iget-boolean v2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->disableDisconnectError:Z

    invoke-interface {v0, v2}, Lcom/brentvatne/exoplayer/ReactExoplayerConfig;->setDisableDisconnectError(Z)V

    .line 1135
    new-instance v0, Landroidx/media3/common/MediaItem$Builder;

    invoke-direct {v0}, Landroidx/media3/common/MediaItem$Builder;-><init>()V

    .line 1136
    invoke-virtual {v0, p1}, Landroidx/media3/common/MediaItem$Builder;->setUri(Landroid/net/Uri;)Landroidx/media3/common/MediaItem$Builder;

    move-result-object v0

    .line 1139
    iget-object v2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->source:Lcom/brentvatne/common/api/Source;

    invoke-virtual {v2}, Lcom/brentvatne/common/api/Source;->getMetadata()Lcom/brentvatne/common/api/Source$Metadata;

    move-result-object v2

    invoke-static {v2}, Lcom/brentvatne/exoplayer/ConfigurationUtils;->buildCustomMetadata(Lcom/brentvatne/common/api/Source$Metadata;)Landroidx/media3/common/MediaMetadata;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1141
    invoke-virtual {v0, v2}, Landroidx/media3/common/MediaItem$Builder;->setMediaMetadata(Landroidx/media3/common/MediaMetadata;)Landroidx/media3/common/MediaItem$Builder;

    .line 1143
    :cond_2
    iget-object v2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->source:Lcom/brentvatne/common/api/Source;

    invoke-virtual {v2}, Lcom/brentvatne/common/api/Source;->getAdsProps()Lcom/brentvatne/common/api/AdsProps;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1144
    iget-object v2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->source:Lcom/brentvatne/common/api/Source;

    invoke-virtual {v2}, Lcom/brentvatne/common/api/Source;->getAdsProps()Lcom/brentvatne/common/api/AdsProps;

    move-result-object v2

    invoke-virtual {v2}, Lcom/brentvatne/common/api/AdsProps;->getAdTagUrl()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1146
    new-instance v3, Landroidx/media3/common/MediaItem$AdsConfiguration$Builder;

    invoke-direct {v3, v2}, Landroidx/media3/common/MediaItem$AdsConfiguration$Builder;-><init>(Landroid/net/Uri;)V

    .line 1147
    invoke-virtual {v3}, Landroidx/media3/common/MediaItem$AdsConfiguration$Builder;->build()Landroidx/media3/common/MediaItem$AdsConfiguration;

    move-result-object v2

    .line 1146
    invoke-virtual {v0, v2}, Landroidx/media3/common/MediaItem$Builder;->setAdsConfiguration(Landroidx/media3/common/MediaItem$AdsConfiguration;)Landroidx/media3/common/MediaItem$Builder;

    .line 1152
    :cond_3
    iget-object v2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->source:Lcom/brentvatne/common/api/Source;

    invoke-virtual {v2}, Lcom/brentvatne/common/api/Source;->getBufferConfig()Lcom/brentvatne/common/api/BufferConfig;

    move-result-object v2

    invoke-static {v2}, Lcom/brentvatne/exoplayer/ConfigurationUtils;->getLiveConfiguration(Lcom/brentvatne/common/api/BufferConfig;)Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;

    move-result-object v2

    .line 1153
    invoke-virtual {v2}, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->build()Landroidx/media3/common/MediaItem$LiveConfiguration;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/media3/common/MediaItem$Builder;->setLiveConfiguration(Landroidx/media3/common/MediaItem$LiveConfiguration;)Landroidx/media3/common/MediaItem$Builder;

    .line 1157
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p3, :cond_4

    .line 1159
    new-instance v3, Lcom/brentvatne/exoplayer/ReactExoplayerView$$ExternalSyntheticLambda16;

    invoke-direct {v3, p3}, Lcom/brentvatne/exoplayer/ReactExoplayerView$$ExternalSyntheticLambda16;-><init>(Landroidx/media3/exoplayer/drm/DrmSessionManager;)V

    goto :goto_2

    .line 1161
    :cond_4
    new-instance v3, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManagerProvider;

    invoke-direct {v3}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManagerProvider;-><init>()V

    :goto_2
    const/4 p3, 0x0

    if-eqz p2, :cond_d

    const/4 v4, 0x1

    if-eq p2, v4, :cond_c

    const/4 p3, 0x2

    if-eq p2, p3, :cond_a

    if-eq p2, v1, :cond_9

    const/4 p3, 0x4

    if-ne p2, p3, :cond_8

    .line 1205
    const-string p2, "asset"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 1207
    :try_start_0
    iget-object p2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->themedReactContext:Lcom/facebook/react/uimanager/ThemedReactContext;

    invoke-static {p2, p1}, Lcom/brentvatne/exoplayer/DataSourceUtil;->buildAssetDataSourceFactory(Lcom/facebook/react/bridge/ReactContext;Landroid/net/Uri;)Landroidx/media3/datasource/DataSource$Factory;

    move-result-object p2

    .line 1208
    new-instance p3, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;

    invoke-direct {p3, p2}, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;-><init>(Landroidx/media3/datasource/DataSource$Factory;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5

    .line 1210
    :catch_0
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "cannot open input file:"

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1212
    :cond_5
    const-string p2, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    iget-boolean p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->useCache:Z

    if-nez p1, :cond_6

    goto :goto_3

    .line 1218
    :cond_6
    new-instance p3, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;

    sget-object p1, Lcom/brentvatne/exoplayer/RNVSimpleCache;->INSTANCE:Lcom/brentvatne/exoplayer/RNVSimpleCache;

    .line 1219
    invoke-direct {p0, v4}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->buildHttpDataSourceFactory(Z)Landroidx/media3/datasource/HttpDataSource$Factory;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/brentvatne/exoplayer/RNVSimpleCache;->getCacheFactory(Landroidx/media3/datasource/HttpDataSource$Factory;)Landroidx/media3/datasource/DataSource$Factory;

    move-result-object p1

    invoke-direct {p3, p1}, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;-><init>(Landroidx/media3/datasource/DataSource$Factory;)V

    goto :goto_5

    .line 1214
    :cond_7
    :goto_3
    new-instance p3, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;

    iget-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->mediaDataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

    invoke-direct {p3, p1}, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;-><init>(Landroidx/media3/datasource/DataSource$Factory;)V

    goto :goto_5

    .line 1233
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Unsupported type: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1226
    :cond_9
    const-string p1, "Exo Player Exception"

    const-string p2, "RTSP is not enabled!"

    invoke-static {p1, p2}, Lcom/brentvatne/common/toolbox/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1227
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1194
    :cond_a
    iget-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->mediaDataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

    .line 1196
    iget-boolean p2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->useCache:Z

    if-eqz p2, :cond_b

    iget-boolean p2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->disableCache:Z

    if-nez p2, :cond_b

    .line 1197
    sget-object p1, Lcom/brentvatne/exoplayer/RNVSimpleCache;->INSTANCE:Lcom/brentvatne/exoplayer/RNVSimpleCache;

    invoke-direct {p0, v4}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->buildHttpDataSourceFactory(Z)Landroidx/media3/datasource/HttpDataSource$Factory;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/brentvatne/exoplayer/RNVSimpleCache;->getCacheFactory(Landroidx/media3/datasource/HttpDataSource$Factory;)Landroidx/media3/datasource/DataSource$Factory;

    move-result-object p1

    .line 1200
    :cond_b
    new-instance p2, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;

    invoke-direct {p2, p1}, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;-><init>(Landroidx/media3/datasource/DataSource$Factory;)V

    iget-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->source:Lcom/brentvatne/common/api/Source;

    .line 1202
    invoke-virtual {p1}, Lcom/brentvatne/common/api/Source;->getTextTracksAllowChunklessPreparation()Z

    move-result p1

    invoke-virtual {p2, p1}, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->setAllowChunklessPreparation(Z)Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;

    move-result-object p3

    goto :goto_5

    .line 1172
    :cond_c
    new-instance p1, Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource$Factory;

    new-instance p2, Landroidx/media3/exoplayer/smoothstreaming/DefaultSsChunkSource$Factory;

    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->mediaDataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

    invoke-direct {p2, v1}, Landroidx/media3/exoplayer/smoothstreaming/DefaultSsChunkSource$Factory;-><init>(Landroidx/media3/datasource/DataSource$Factory;)V

    .line 1174
    invoke-direct {p0, p3}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->buildDataSourceFactory(Z)Landroidx/media3/datasource/DataSource$Factory;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource$Factory;-><init>(Landroidx/media3/exoplayer/smoothstreaming/SsChunkSource$Factory;Landroidx/media3/datasource/DataSource$Factory;)V

    goto :goto_4

    .line 1183
    :cond_d
    new-instance p1, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;

    new-instance p2, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$Factory;

    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->mediaDataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

    invoke-direct {p2, v1}, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$Factory;-><init>(Landroidx/media3/datasource/DataSource$Factory;)V

    .line 1185
    invoke-direct {p0, p3}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->buildDataSourceFactory(Z)Landroidx/media3/datasource/DataSource$Factory;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;-><init>(Landroidx/media3/exoplayer/dash/DashChunkSource$Factory;Landroidx/media3/datasource/DataSource$Factory;)V

    :goto_4
    move-object p3, p1

    .line 1237
    :goto_5
    iget-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->cmcdConfigurationFactory:Landroidx/media3/exoplayer/upstream/CmcdConfiguration$Factory;

    if-eqz p1, :cond_e

    .line 1239
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lcom/brentvatne/exoplayer/ReactExoplayerView$$ExternalSyntheticLambda17;

    invoke-direct {p2, p1}, Lcom/brentvatne/exoplayer/ReactExoplayerView$$ExternalSyntheticLambda17;-><init>(Landroidx/media3/exoplayer/upstream/CmcdConfiguration$Factory;)V

    .line 1238
    invoke-interface {p3, p2}, Landroidx/media3/exoplayer/source/MediaSource$Factory;->setCmcdConfigurationFactory(Landroidx/media3/exoplayer/upstream/CmcdConfiguration$Factory;)Landroidx/media3/exoplayer/source/MediaSource$Factory;

    move-result-object p3

    .line 1243
    :cond_e
    invoke-virtual {v0, v2}, Landroidx/media3/common/MediaItem$Builder;->setStreamKeys(Ljava/util/List;)Landroidx/media3/common/MediaItem$Builder;

    .line 1246
    sget-object p1, Lcom/brentvatne/react/ReactNativeVideoManager;->Companion:Lcom/brentvatne/react/ReactNativeVideoManager$Companion;

    invoke-virtual {p1}, Lcom/brentvatne/react/ReactNativeVideoManager$Companion;->getInstance()Lcom/brentvatne/react/ReactNativeVideoManager;

    move-result-object p1

    iget-object p2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->source:Lcom/brentvatne/common/api/Source;

    invoke-virtual {p1, p2, v0}, Lcom/brentvatne/react/ReactNativeVideoManager;->overrideMediaItemBuilder(Lcom/brentvatne/common/api/Source;Landroidx/media3/common/MediaItem$Builder;)Landroidx/media3/common/MediaItem$Builder;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 1249
    invoke-virtual {p1}, Landroidx/media3/common/MediaItem$Builder;->build()Landroidx/media3/common/MediaItem;

    move-result-object p1

    goto :goto_6

    .line 1250
    :cond_f
    invoke-virtual {v0}, Landroidx/media3/common/MediaItem$Builder;->build()Landroidx/media3/common/MediaItem;

    move-result-object p1

    .line 1253
    :goto_6
    invoke-interface {p3, v3}, Landroidx/media3/exoplayer/source/MediaSource$Factory;->setDrmSessionManagerProvider(Landroidx/media3/exoplayer/drm/DrmSessionManagerProvider;)Landroidx/media3/exoplayer/source/MediaSource$Factory;

    move-result-object p2

    iget-object p3, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->config:Lcom/brentvatne/exoplayer/ReactExoplayerConfig;

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->source:Lcom/brentvatne/common/api/Source;

    .line 1255
    invoke-virtual {v0}, Lcom/brentvatne/common/api/Source;->getMinLoadRetryCount()I

    move-result v0

    invoke-interface {p3, v0}, Lcom/brentvatne/exoplayer/ReactExoplayerConfig;->buildLoadErrorHandlingPolicy(I)Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    move-result-object p3

    .line 1254
    invoke-interface {p2, p3}, Landroidx/media3/exoplayer/source/MediaSource$Factory;->setLoadErrorHandlingPolicy(Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;)Landroidx/media3/exoplayer/source/MediaSource$Factory;

    move-result-object p2

    .line 1257
    invoke-interface {p2, p1}, Landroidx/media3/exoplayer/source/MediaSource$Factory;->createMediaSource(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/source/MediaSource;

    move-result-object v1

    const-wide/16 p1, 0x0

    cmp-long p3, p4, p1

    const-wide/16 v2, 0x3e8

    if-ltz p3, :cond_10

    cmp-long v0, p6, p1

    if-ltz v0, :cond_10

    .line 1260
    new-instance p1, Landroidx/media3/exoplayer/source/ClippingMediaSource;

    mul-long p2, p4, v2

    mul-long v4, p6, v2

    move-object v0, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Landroidx/media3/exoplayer/source/ClippingMediaSource;-><init>(Landroidx/media3/exoplayer/source/MediaSource;JJ)V

    return-object p1

    :cond_10
    if-ltz p3, :cond_11

    .line 1262
    new-instance p1, Landroidx/media3/exoplayer/source/ClippingMediaSource;

    mul-long/2addr v2, p4

    const-wide/high16 v4, -0x8000000000000000L

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Landroidx/media3/exoplayer/source/ClippingMediaSource;-><init>(Landroidx/media3/exoplayer/source/MediaSource;JJ)V

    return-object p1

    :cond_11
    cmp-long p1, p6, p1

    if-ltz p1, :cond_12

    .line 1264
    new-instance p1, Landroidx/media3/exoplayer/source/ClippingMediaSource;

    const-wide/16 p2, 0x0

    mul-long v4, p6, v2

    move-object v0, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Landroidx/media3/exoplayer/source/ClippingMediaSource;-><init>(Landroidx/media3/exoplayer/source/MediaSource;JJ)V

    return-object p1

    :cond_12
    return-object v1

    .line 1124
    :cond_13
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Invalid video uri"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private buildTextSource()Landroidx/media3/exoplayer/source/MediaSource;
    .locals 5

    .line 1272
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->source:Lcom/brentvatne/common/api/Source;

    invoke-virtual {v0}, Lcom/brentvatne/common/api/Source;->getSideLoadedTextTracks()Lcom/brentvatne/common/api/SideLoadedTextTrackList;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1276
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1278
    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->source:Lcom/brentvatne/common/api/Source;

    invoke-virtual {v1}, Lcom/brentvatne/common/api/Source;->getSideLoadedTextTracks()Lcom/brentvatne/common/api/SideLoadedTextTrackList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/brentvatne/common/api/SideLoadedTextTrackList;->getTracks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/brentvatne/common/api/SideLoadedTextTrack;

    .line 1279
    new-instance v3, Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;

    invoke-virtual {v2}, Lcom/brentvatne/common/api/SideLoadedTextTrack;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;-><init>(Landroid/net/Uri;)V

    .line 1280
    invoke-virtual {v2}, Lcom/brentvatne/common/api/SideLoadedTextTrack;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;->setMimeType(Ljava/lang/String;)Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;

    move-result-object v3

    .line 1281
    invoke-virtual {v2}, Lcom/brentvatne/common/api/SideLoadedTextTrack;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;->setLanguage(Ljava/lang/String;)Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;

    move-result-object v3

    const/4 v4, 0x1

    .line 1282
    invoke-virtual {v3, v4}, Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;->setSelectionFlags(I)Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;

    move-result-object v3

    const/16 v4, 0x80

    .line 1283
    invoke-virtual {v3, v4}, Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;->setRoleFlags(I)Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;

    move-result-object v3

    .line 1284
    invoke-virtual {v2}, Lcom/brentvatne/common/api/SideLoadedTextTrack;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;->setLabel(Ljava/lang/String;)Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;

    move-result-object v2

    .line 1285
    invoke-virtual {v2}, Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;->build()Landroidx/media3/common/MediaItem$SubtitleConfiguration;

    move-result-object v2

    .line 1286
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1289
    :cond_1
    new-instance v1, Landroidx/media3/common/MediaItem$Builder;

    invoke-direct {v1}, Landroidx/media3/common/MediaItem$Builder;-><init>()V

    iget-object v2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->source:Lcom/brentvatne/common/api/Source;

    .line 1290
    invoke-virtual {v2}, Lcom/brentvatne/common/api/Source;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/media3/common/MediaItem$Builder;->setUri(Landroid/net/Uri;)Landroidx/media3/common/MediaItem$Builder;

    move-result-object v1

    .line 1291
    invoke-virtual {v1, v0}, Landroidx/media3/common/MediaItem$Builder;->setSubtitleConfigurations(Ljava/util/List;)Landroidx/media3/common/MediaItem$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/MediaItem$Builder;->build()Landroidx/media3/common/MediaItem;

    move-result-object v0

    .line 1293
    new-instance v1, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;

    iget-object v2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->mediaDataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

    invoke-direct {v1, v2}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;-><init>(Landroidx/media3/datasource/DataSource$Factory;)V

    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->createMediaSource(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/source/MediaSource;

    move-result-object v0

    return-object v0
.end method

.method private changeAudioOutput(Lcom/brentvatne/exoplayer/AudioOutput;)V
    .locals 3

    .line 2347
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_2

    .line 2348
    invoke-virtual {p1}, Lcom/brentvatne/exoplayer/AudioOutput;->getStreamType()I

    move-result v0

    .line 2349
    invoke-static {v0}, Landroidx/media3/common/util/Util;->getAudioUsageForStreamType(I)I

    move-result v1

    .line 2350
    invoke-static {v0}, Landroidx/media3/common/util/Util;->getAudioContentTypeForStreamType(I)I

    move-result v0

    .line 2351
    new-instance v2, Landroidx/media3/common/AudioAttributes$Builder;

    invoke-direct {v2}, Landroidx/media3/common/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v2, v1}, Landroidx/media3/common/AudioAttributes$Builder;->setUsage(I)Landroidx/media3/common/AudioAttributes$Builder;

    move-result-object v1

    .line 2352
    invoke-virtual {v1, v0}, Landroidx/media3/common/AudioAttributes$Builder;->setContentType(I)Landroidx/media3/common/AudioAttributes$Builder;

    move-result-object v0

    .line 2353
    invoke-virtual {v0}, Landroidx/media3/common/AudioAttributes$Builder;->build()Landroidx/media3/common/AudioAttributes;

    move-result-object v0

    .line 2354
    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroidx/media3/exoplayer/ExoPlayer;->setAudioAttributes(Landroidx/media3/common/AudioAttributes;Z)V

    .line 2355
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->themedReactContext:Lcom/facebook/react/uimanager/ThemedReactContext;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Lcom/facebook/react/uimanager/ThemedReactContext;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2356
    sget-object v1, Lcom/brentvatne/exoplayer/AudioOutput;->SPEAKER:Lcom/brentvatne/exoplayer/AudioOutput;

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x3

    .line 2357
    :goto_1
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setMode(I)V

    .line 2360
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    :cond_2
    return-void
.end method

.method private cleanupPlaybackService()V
    .locals 2

    .line 1108
    :try_start_0
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playbackServiceBinder:Lcom/brentvatne/exoplayer/PlaybackServiceBinder;

    if-eqz v0, :cond_0

    .line 1109
    invoke-virtual {v0}, Lcom/brentvatne/exoplayer/PlaybackServiceBinder;->getService()Lcom/brentvatne/exoplayer/VideoPlaybackService;

    move-result-object v0

    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-virtual {v0, v1}, Lcom/brentvatne/exoplayer/VideoPlaybackService;->unregisterPlayer(Landroidx/media3/exoplayer/ExoPlayer;)V

    :cond_0
    const/4 v0, 0x0

    .line 1112
    iput-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playbackServiceBinder:Lcom/brentvatne/exoplayer/PlaybackServiceBinder;

    .line 1114
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playbackServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_1

    .line 1115
    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->themedReactContext:Lcom/facebook/react/uimanager/ThemedReactContext;

    invoke-virtual {v1, v0}, Lcom/facebook/react/uimanager/ThemedReactContext;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1118
    :catch_0
    const-string v0, "ReactExoplayerView"

    const-string v1, "Cloud not cleanup playback service"

    invoke-static {v0, v1}, Lcom/brentvatne/common/toolbox/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private clearProgressMessageHandler()V
    .locals 2

    .line 1547
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->progressHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private clearResumePosition()V
    .locals 2

    const/4 v0, -0x1

    .line 1444
    iput v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->resumeWindow:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 1445
    iput-wide v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->resumePosition:J

    return-void
.end method

.method private createViews()V
    .locals 3

    .line 346
    invoke-static {}, Ljava/net/CookieHandler;->getDefault()Ljava/net/CookieHandler;

    move-result-object v0

    sget-object v1, Lcom/brentvatne/exoplayer/ReactExoplayerView;->DEFAULT_COOKIE_MANAGER:Ljava/net/CookieManager;

    if-eq v0, v1, :cond_0

    .line 347
    invoke-static {v1}, Ljava/net/CookieHandler;->setDefault(Ljava/net/CookieHandler;)V

    .line 350
    :cond_0
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 353
    new-instance v1, Lcom/brentvatne/exoplayer/ExoPlayerView;

    invoke-virtual {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/brentvatne/exoplayer/ExoPlayerView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->exoPlayerView:Lcom/brentvatne/exoplayer/ExoPlayerView;

    .line 354
    new-instance v2, Lcom/brentvatne/exoplayer/ReactExoplayerView$$ExternalSyntheticLambda18;

    invoke-direct {v2, p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView$$ExternalSyntheticLambda18;-><init>(Lcom/brentvatne/exoplayer/ReactExoplayerView;)V

    invoke-virtual {v1, v2}, Lcom/brentvatne/exoplayer/ExoPlayerView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 357
    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->exoPlayerView:Lcom/brentvatne/exoplayer/ExoPlayerView;

    invoke-virtual {v1, v0}, Lcom/brentvatne/exoplayer/ExoPlayerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 358
    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->exoPlayerView:Lcom/brentvatne/exoplayer/ExoPlayerView;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 360
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->exoPlayerView:Lcom/brentvatne/exoplayer/ExoPlayerView;

    iget-boolean v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->focusable:Z

    invoke-virtual {v0, v1}, Lcom/brentvatne/exoplayer/ExoPlayerView;->setFocusable(Z)V

    return-void
.end method

.method private exoplayerTrackToGenericTrack(Landroidx/media3/common/Format;ILandroidx/media3/exoplayer/trackselection/TrackSelection;Landroidx/media3/common/TrackGroup;)Lcom/brentvatne/common/api/Track;
    .locals 2

    .line 1737
    new-instance v0, Lcom/brentvatne/common/api/Track;

    invoke-direct {v0}, Lcom/brentvatne/common/api/Track;-><init>()V

    .line 1738
    invoke-virtual {v0, p2}, Lcom/brentvatne/common/api/Track;->setIndex(I)V

    .line 1739
    iget-object v1, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/brentvatne/common/api/Track;->setMimeType(Ljava/lang/String;)V

    .line 1740
    :cond_0
    iget-object v1, p1, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p1, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/brentvatne/common/api/Track;->setLanguage(Ljava/lang/String;)V

    .line 1741
    :cond_1
    iget-object v1, p1, Landroidx/media3/common/Format;->label:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object p1, p1, Landroidx/media3/common/Format;->label:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/brentvatne/common/api/Track;->setTitle(Ljava/lang/String;)V

    .line 1742
    :cond_2
    invoke-static {p3, p4, p2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->isTrackSelected(Landroidx/media3/exoplayer/trackselection/TrackSelection;Landroidx/media3/common/TrackGroup;I)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/brentvatne/common/api/Track;->setSelected(Z)V

    return-object v0
.end method

.method private exoplayerVideoTrackToGenericVideoTrack(Landroidx/media3/common/Format;I)Lcom/brentvatne/common/api/VideoTrack;
    .locals 4

    .line 1630
    new-instance v0, Lcom/brentvatne/common/api/VideoTrack;

    invoke-direct {v0}, Lcom/brentvatne/common/api/VideoTrack;-><init>()V

    .line 1631
    iget v1, p1, Landroidx/media3/common/Format;->width:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    iget v1, p1, Landroidx/media3/common/Format;->width:I

    :goto_0
    invoke-virtual {v0, v1}, Lcom/brentvatne/common/api/VideoTrack;->setWidth(I)V

    .line 1632
    iget v1, p1, Landroidx/media3/common/Format;->height:I

    if-ne v1, v3, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    iget v1, p1, Landroidx/media3/common/Format;->height:I

    :goto_1
    invoke-virtual {v0, v1}, Lcom/brentvatne/common/api/VideoTrack;->setHeight(I)V

    .line 1633
    iget v1, p1, Landroidx/media3/common/Format;->bitrate:I

    if-ne v1, v3, :cond_2

    goto :goto_2

    :cond_2
    iget v2, p1, Landroidx/media3/common/Format;->bitrate:I

    :goto_2
    invoke-virtual {v0, v2}, Lcom/brentvatne/common/api/VideoTrack;->setBitrate(I)V

    .line 1634
    iget v1, p1, Landroidx/media3/common/Format;->rotationDegrees:I

    invoke-virtual {v0, v1}, Lcom/brentvatne/common/api/VideoTrack;->setRotation(I)V

    .line 1635
    iget-object v1, p1, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p1, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/brentvatne/common/api/VideoTrack;->setCodecs(Ljava/lang/String;)V

    .line 1636
    :cond_3
    iget-object v1, p1, Landroidx/media3/common/Format;->id:Ljava/lang/String;

    if-nez v1, :cond_4

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_4
    iget-object p1, p1, Landroidx/media3/common/Format;->id:Ljava/lang/String;

    :goto_3
    invoke-virtual {v0, p1}, Lcom/brentvatne/common/api/VideoTrack;->setTrackId(Ljava/lang/String;)V

    .line 1637
    invoke-virtual {v0, p2}, Lcom/brentvatne/common/api/VideoTrack;->setIndex(I)V

    return-object v0
.end method

.method private finishPlayerInitialization()V
    .locals 1

    .line 1041
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->initializePlayerControl()V

    .line 1042
    iget-boolean v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->controls:Z

    invoke-virtual {p0, v0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setControls(Z)V

    .line 1043
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->applyModifiers()V

    return-void
.end method

.method private getAudioTrackInfo()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/brentvatne/common/api/Track;",
            ">;"
        }
    .end annotation

    .line 1604
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1605
    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->trackSelector:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

    if-nez v1, :cond_0

    return-object v0

    .line 1610
    :cond_0
    invoke-virtual {v1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->getCurrentMappedTrackInfo()Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;

    move-result-object v1

    const/4 v2, 0x1

    .line 1611
    invoke-virtual {p0, v2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->getTrackRendererIndex(I)I

    move-result v3

    if-eqz v1, :cond_3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    goto :goto_2

    .line 1615
    :cond_1
    invoke-virtual {v1, v3}, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Landroidx/media3/exoplayer/source/TrackGroupArray;

    move-result-object v1

    .line 1616
    iget-object v3, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v3}, Landroidx/media3/exoplayer/ExoPlayer;->getCurrentTrackSelections()Landroidx/media3/exoplayer/trackselection/TrackSelectionArray;

    move-result-object v3

    .line 1617
    invoke-virtual {v3, v2}, Landroidx/media3/exoplayer/trackselection/TrackSelectionArray;->get(I)Landroidx/media3/exoplayer/trackselection/TrackSelection;

    move-result-object v2

    const/4 v3, 0x0

    move v5, v3

    .line 1619
    :goto_0
    iget v6, v1, Landroidx/media3/exoplayer/source/TrackGroupArray;->length:I

    if-ge v5, v6, :cond_3

    .line 1620
    invoke-virtual {v1, v5}, Landroidx/media3/exoplayer/source/TrackGroupArray;->get(I)Landroidx/media3/common/TrackGroup;

    move-result-object v6

    .line 1621
    invoke-virtual {v6, v3}, Landroidx/media3/common/TrackGroup;->getFormat(I)Landroidx/media3/common/Format;

    move-result-object v7

    .line 1622
    invoke-direct {p0, v7, v5, v2, v6}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->exoplayerTrackToGenericTrack(Landroidx/media3/common/Format;ILandroidx/media3/exoplayer/trackselection/TrackSelection;Landroidx/media3/common/TrackGroup;)Lcom/brentvatne/common/api/Track;

    move-result-object v6

    .line 1623
    iget v8, v7, Landroidx/media3/common/Format;->bitrate:I

    if-ne v8, v4, :cond_2

    move v7, v3

    goto :goto_1

    :cond_2
    iget v7, v7, Landroidx/media3/common/Format;->bitrate:I

    :goto_1
    invoke-virtual {v6, v7}, Lcom/brentvatne/common/api/Track;->setBitrate(I)V

    .line 1624
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-object v0
.end method

.method private getGroupIndexForDefaultLocale(Landroidx/media3/exoplayer/source/TrackGroupArray;)I
    .locals 6

    .line 2211
    iget v0, p1, Landroidx/media3/exoplayer/source/TrackGroupArray;->length:I

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 2216
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 2217
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    .line 2218
    :goto_0
    iget v4, p1, Landroidx/media3/exoplayer/source/TrackGroupArray;->length:I

    if-ge v3, v4, :cond_3

    .line 2219
    invoke-virtual {p1, v3}, Landroidx/media3/exoplayer/source/TrackGroupArray;->get(I)Landroidx/media3/common/TrackGroup;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroidx/media3/common/TrackGroup;->getFormat(I)Landroidx/media3/common/Format;

    move-result-object v4

    .line 2220
    iget-object v4, v4, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 2221
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    move v2, v3

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v2
.end method

.method private getTextTrackInfo()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/brentvatne/common/api/Track;",
            ">;"
        }
    .end annotation

    .line 1747
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1748
    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->trackSelector:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

    if-nez v1, :cond_0

    return-object v0

    .line 1751
    :cond_0
    invoke-virtual {v1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->getCurrentMappedTrackInfo()Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;

    move-result-object v1

    const/4 v2, 0x3

    .line 1752
    invoke-virtual {p0, v2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->getTrackRendererIndex(I)I

    move-result v2

    if-eqz v1, :cond_2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    goto :goto_1

    .line 1756
    :cond_1
    iget-object v3, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v3}, Landroidx/media3/exoplayer/ExoPlayer;->getCurrentTrackSelections()Landroidx/media3/exoplayer/trackselection/TrackSelectionArray;

    move-result-object v3

    const/4 v4, 0x2

    .line 1757
    invoke-virtual {v3, v4}, Landroidx/media3/exoplayer/trackselection/TrackSelectionArray;->get(I)Landroidx/media3/exoplayer/trackselection/TrackSelection;

    move-result-object v3

    .line 1758
    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Landroidx/media3/exoplayer/source/TrackGroupArray;

    move-result-object v1

    const/4 v2, 0x0

    move v4, v2

    .line 1760
    :goto_0
    iget v5, v1, Landroidx/media3/exoplayer/source/TrackGroupArray;->length:I

    if-ge v4, v5, :cond_2

    .line 1761
    invoke-virtual {v1, v4}, Landroidx/media3/exoplayer/source/TrackGroupArray;->get(I)Landroidx/media3/common/TrackGroup;

    move-result-object v5

    .line 1762
    invoke-virtual {v5, v2}, Landroidx/media3/common/TrackGroup;->getFormat(I)Landroidx/media3/common/Format;

    move-result-object v6

    .line 1763
    invoke-direct {p0, v6, v4, v3, v5}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->exoplayerTrackToGenericTrack(Landroidx/media3/common/Format;ILandroidx/media3/exoplayer/trackselection/TrackSelection;Landroidx/media3/common/TrackGroup;)Lcom/brentvatne/common/api/Track;

    move-result-object v5

    .line 1764
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method private getVideoTrackInfo()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/brentvatne/common/api/VideoTrack;",
            ">;"
        }
    .end annotation

    .line 1642
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1643
    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->trackSelector:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

    if-nez v1, :cond_0

    return-object v0

    .line 1647
    :cond_0
    invoke-virtual {v1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->getCurrentMappedTrackInfo()Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;

    move-result-object v1

    const/4 v2, 0x2

    .line 1648
    invoke-virtual {p0, v2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->getTrackRendererIndex(I)I

    move-result v2

    if-eqz v1, :cond_4

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    goto :goto_2

    .line 1653
    :cond_1
    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Landroidx/media3/exoplayer/source/TrackGroupArray;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    .line 1654
    :goto_0
    iget v4, v1, Landroidx/media3/exoplayer/source/TrackGroupArray;->length:I

    if-ge v3, v4, :cond_4

    .line 1655
    invoke-virtual {v1, v3}, Landroidx/media3/exoplayer/source/TrackGroupArray;->get(I)Landroidx/media3/common/TrackGroup;

    move-result-object v4

    move v5, v2

    .line 1657
    :goto_1
    iget v6, v4, Landroidx/media3/common/TrackGroup;->length:I

    if-ge v5, v6, :cond_3

    .line 1658
    invoke-virtual {v4, v5}, Landroidx/media3/common/TrackGroup;->getFormat(I)Landroidx/media3/common/Format;

    move-result-object v6

    .line 1659
    invoke-direct {p0, v6}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->isFormatSupported(Landroidx/media3/common/Format;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1660
    invoke-direct {p0, v6, v5}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->exoplayerVideoTrackToGenericVideoTrack(Landroidx/media3/common/Format;I)Lcom/brentvatne/common/api/VideoTrack;

    move-result-object v6

    .line 1661
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return-object v0
.end method

.method private getVideoTrackInfoFromManifest()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/brentvatne/common/api/VideoTrack;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1669
    invoke-direct {p0, v0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->getVideoTrackInfoFromManifest(I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private getVideoTrackInfoFromManifest(I)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/brentvatne/common/api/VideoTrack;",
            ">;"
        }
    .end annotation

    .line 1675
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 1676
    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->mediaDataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

    invoke-interface {v1}, Landroidx/media3/datasource/DataSource$Factory;->createDataSource()Landroidx/media3/datasource/DataSource;

    move-result-object v4

    .line 1677
    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->source:Lcom/brentvatne/common/api/Source;

    invoke-virtual {v1}, Lcom/brentvatne/common/api/Source;->getUri()Landroid/net/Uri;

    move-result-object v5

    .line 1678
    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->source:Lcom/brentvatne/common/api/Source;

    invoke-virtual {v1}, Lcom/brentvatne/common/api/Source;->getContentStartTime()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    add-int/lit8 v1, v1, -0x64

    int-to-long v6, v1

    .line 1680
    new-instance v1, Lcom/brentvatne/exoplayer/ReactExoplayerView$5;

    move-object v2, v1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/brentvatne/exoplayer/ReactExoplayerView$5;-><init>(Lcom/brentvatne/exoplayer/ReactExoplayerView;Landroidx/media3/datasource/DataSource;Landroid/net/Uri;J)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 1723
    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0xbb8

    invoke-interface {v1, v3, v4, v2}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_0

    const/4 v2, 0x1

    if-ge p1, v2, :cond_0

    add-int/2addr p1, v2

    .line 1725
    invoke-direct {p0, p1}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->getVideoTrackInfoFromManifest(I)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1

    .line 1727
    :cond_0
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    .line 1730
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "error in getVideoTrackInfoFromManifest handling request:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ReactExoplayerView"

    invoke-static {v0, p1}, Lcom/brentvatne/common/toolbox/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private initializeAds(Landroidx/media3/exoplayer/source/MediaSource;Lcom/brentvatne/common/api/Source;)Landroidx/media3/exoplayer/source/ads/AdsMediaSource;
    .locals 11

    .line 900
    invoke-virtual {p2}, Lcom/brentvatne/common/api/Source;->getAdsProps()Lcom/brentvatne/common/api/AdsProps;

    move-result-object v0

    .line 901
    invoke-virtual {p2}, Lcom/brentvatne/common/api/Source;->getUri()Landroid/net/Uri;

    move-result-object p2

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 903
    invoke-virtual {v0}, Lcom/brentvatne/common/api/AdsProps;->getAdTagUrl()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 905
    iget-object v2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->exoPlayerView:Lcom/brentvatne/exoplayer/ExoPlayerView;

    invoke-virtual {v2}, Lcom/brentvatne/exoplayer/ExoPlayerView;->showAds()V

    .line 907
    new-instance v2, Landroidx/media3/exoplayer/ima/ImaAdsLoader$Builder;

    iget-object v3, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->themedReactContext:Lcom/facebook/react/uimanager/ThemedReactContext;

    invoke-direct {v2, v3}, Landroidx/media3/exoplayer/ima/ImaAdsLoader$Builder;-><init>(Landroid/content/Context;)V

    .line 909
    invoke-virtual {v2, p0}, Landroidx/media3/exoplayer/ima/ImaAdsLoader$Builder;->setAdEventListener(Ljava/lang/Object;)Landroidx/media3/exoplayer/ima/ImaAdsLoader$Builder;

    move-result-object v2

    .line 910
    invoke-virtual {v2, p0}, Landroidx/media3/exoplayer/ima/ImaAdsLoader$Builder;->setAdErrorListener(Ljava/lang/Object;)Landroidx/media3/exoplayer/ima/ImaAdsLoader$Builder;

    move-result-object v2

    .line 912
    invoke-virtual {v0}, Lcom/brentvatne/common/api/AdsProps;->getAdLanguage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 913
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->getInstance()Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->createImaSdkSettings()Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;

    move-result-object v3

    .line 914
    invoke-virtual {v0}, Lcom/brentvatne/common/api/AdsProps;->getAdLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;->setLanguage(Ljava/lang/String;)V

    .line 915
    invoke-virtual {v2, v3}, Landroidx/media3/exoplayer/ima/ImaAdsLoader$Builder;->setImaSdkSettings(Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;)Landroidx/media3/exoplayer/ima/ImaAdsLoader$Builder;

    .line 917
    :cond_0
    invoke-virtual {v2}, Landroidx/media3/exoplayer/ima/ImaAdsLoader$Builder;->build()Landroidx/media3/exoplayer/ima/ImaAdsLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->adsLoader:Landroidx/media3/exoplayer/ima/ImaAdsLoader;

    .line 918
    iget-object v2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-virtual {v0, v2}, Landroidx/media3/exoplayer/ima/ImaAdsLoader;->setPlayer(Landroidx/media3/exoplayer/ExoPlayer;)V

    .line 919
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->adsLoader:Landroidx/media3/exoplayer/ima/ImaAdsLoader;

    if-eqz v0, :cond_1

    .line 920
    new-instance v0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;

    iget-object v2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->mediaDataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

    invoke-direct {v0, v2}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;-><init>(Landroidx/media3/datasource/DataSource$Factory;)V

    new-instance v2, Lcom/brentvatne/exoplayer/ReactExoplayerView$$ExternalSyntheticLambda20;

    invoke-direct {v2, p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView$$ExternalSyntheticLambda20;-><init>(Lcom/brentvatne/exoplayer/ReactExoplayerView;)V

    iget-object v3, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->exoPlayerView:Lcom/brentvatne/exoplayer/ExoPlayerView;

    .line 921
    invoke-virtual {v0, v2, v3}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->setLocalAdInsertionComponents(Landroidx/media3/exoplayer/source/ads/AdsLoader$Provider;Landroidx/media3/common/AdViewProvider;)Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;

    move-result-object v8

    .line 922
    new-instance v6, Landroidx/media3/datasource/DataSpec;

    invoke-direct {v6, v1}, Landroidx/media3/datasource/DataSpec;-><init>(Landroid/net/Uri;)V

    .line 923
    new-instance v0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource;

    .line 925
    invoke-static {p2, v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v7

    iget-object v9, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->adsLoader:Landroidx/media3/exoplayer/ima/ImaAdsLoader;

    iget-object v10, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->exoPlayerView:Lcom/brentvatne/exoplayer/ExoPlayerView;

    move-object v4, v0

    move-object v5, p1

    invoke-direct/range {v4 .. v10}, Landroidx/media3/exoplayer/source/ads/AdsMediaSource;-><init>(Landroidx/media3/exoplayer/source/MediaSource;Landroidx/media3/datasource/DataSpec;Ljava/lang/Object;Landroidx/media3/exoplayer/source/MediaSource$Factory;Landroidx/media3/exoplayer/source/ads/AdsLoader;Landroidx/media3/common/AdViewProvider;)V

    return-object v0

    .line 930
    :cond_1
    iget-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->exoPlayerView:Lcom/brentvatne/exoplayer/ExoPlayerView;

    invoke-virtual {p1}, Lcom/brentvatne/exoplayer/ExoPlayerView;->hideAds()V

    const/4 p1, 0x0

    return-object p1
.end method

.method private initializePlayer()V
    .locals 5

    .line 754
    sget-object v0, Lcom/brentvatne/react/ReactNativeVideoManager;->Companion:Lcom/brentvatne/react/ReactNativeVideoManager$Companion;

    invoke-virtual {v0}, Lcom/brentvatne/react/ReactNativeVideoManager$Companion;->getInstance()Lcom/brentvatne/react/ReactNativeVideoManager;

    move-result-object v0

    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->source:Lcom/brentvatne/common/api/Source;

    invoke-virtual {v0, v1}, Lcom/brentvatne/react/ReactNativeVideoManager;->shouldDisableCache(Lcom/brentvatne/common/api/Source;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->disableCache:Z

    .line 757
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->themedReactContext:Lcom/facebook/react/uimanager/ThemedReactContext;

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/ThemedReactContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 759
    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->source:Lcom/brentvatne/common/api/Source;

    .line 760
    new-instance v2, Lcom/brentvatne/exoplayer/ReactExoplayerView$$ExternalSyntheticLambda22;

    invoke-direct {v2, p0, v1, p0, v0}, Lcom/brentvatne/exoplayer/ReactExoplayerView$$ExternalSyntheticLambda22;-><init>(Lcom/brentvatne/exoplayer/ReactExoplayerView;Lcom/brentvatne/common/api/Source;Lcom/brentvatne/exoplayer/ReactExoplayerView;Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->mainRunnable:Ljava/lang/Runnable;

    .line 829
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->mainHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x1

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private initializePlayerControl()V
    .locals 3

    .line 438
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playerControlView:Landroidx/media3/ui/LegacyPlayerControlView;

    if-nez v0, :cond_0

    .line 439
    new-instance v0, Landroidx/media3/ui/LegacyPlayerControlView;

    invoke-virtual {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/media3/ui/LegacyPlayerControlView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playerControlView:Landroidx/media3/ui/LegacyPlayerControlView;

    .line 440
    new-instance v1, Lcom/brentvatne/exoplayer/ReactExoplayerView$2;

    invoke-direct {v1, p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView$2;-><init>(Lcom/brentvatne/exoplayer/ReactExoplayerView;)V

    invoke-virtual {v0, v1}, Landroidx/media3/ui/LegacyPlayerControlView;->addVisibilityListener(Landroidx/media3/ui/LegacyPlayerControlView$VisibilityListener;)V

    .line 449
    :cond_0
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playerControlView:Landroidx/media3/ui/LegacyPlayerControlView;

    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-virtual {v0, v1}, Landroidx/media3/ui/LegacyPlayerControlView;->setPlayer(Landroidx/media3/common/Player;)V

    .line 450
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playerControlView:Landroidx/media3/ui/LegacyPlayerControlView;

    sget v1, Lcom/brentvatne/react/R$id;->exo_play_pause_container:I

    invoke-virtual {v0, v1}, Landroidx/media3/ui/LegacyPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playPauseControlContainer:Landroid/view/View;

    .line 453
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->exoPlayerView:Lcom/brentvatne/exoplayer/ExoPlayerView;

    new-instance v1, Lcom/brentvatne/exoplayer/ReactExoplayerView$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView$$ExternalSyntheticLambda9;-><init>(Lcom/brentvatne/exoplayer/ReactExoplayerView;)V

    invoke-virtual {v0, v1}, Lcom/brentvatne/exoplayer/ExoPlayerView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 460
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playerControlView:Landroidx/media3/ui/LegacyPlayerControlView;

    sget v1, Lcom/brentvatne/react/R$id;->exo_play:I

    invoke-virtual {v0, v1}, Landroidx/media3/ui/LegacyPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 462
    new-instance v1, Lcom/brentvatne/exoplayer/ReactExoplayerView$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView$$ExternalSyntheticLambda10;-><init>(Lcom/brentvatne/exoplayer/ReactExoplayerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 470
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playerControlView:Landroidx/media3/ui/LegacyPlayerControlView;

    sget v1, Lcom/brentvatne/react/R$id;->exo_rew:I

    invoke-virtual {v0, v1}, Landroidx/media3/ui/LegacyPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 471
    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playerControlView:Landroidx/media3/ui/LegacyPlayerControlView;

    sget v2, Lcom/brentvatne/react/R$id;->exo_ffwd:I

    invoke-virtual {v1, v2}, Landroidx/media3/ui/LegacyPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 472
    new-instance v2, Lcom/brentvatne/exoplayer/ReactExoplayerView$$ExternalSyntheticLambda11;

    invoke-direct {v2, p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView$$ExternalSyntheticLambda11;-><init>(Lcom/brentvatne/exoplayer/ReactExoplayerView;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 476
    new-instance v0, Lcom/brentvatne/exoplayer/ReactExoplayerView$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView$$ExternalSyntheticLambda12;-><init>(Lcom/brentvatne/exoplayer/ReactExoplayerView;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 481
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playerControlView:Landroidx/media3/ui/LegacyPlayerControlView;

    sget v1, Lcom/brentvatne/react/R$id;->exo_pause:I

    invoke-virtual {v0, v1}, Landroidx/media3/ui/LegacyPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 482
    new-instance v1, Lcom/brentvatne/exoplayer/ReactExoplayerView$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView$$ExternalSyntheticLambda13;-><init>(Lcom/brentvatne/exoplayer/ReactExoplayerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 487
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playerControlView:Landroidx/media3/ui/LegacyPlayerControlView;

    sget v1, Lcom/brentvatne/react/R$id;->exo_settings:I

    invoke-virtual {v0, v1}, Landroidx/media3/ui/LegacyPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 488
    new-instance v1, Lcom/brentvatne/exoplayer/ReactExoplayerView$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView$$ExternalSyntheticLambda14;-><init>(Lcom/brentvatne/exoplayer/ReactExoplayerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 491
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playerControlView:Landroidx/media3/ui/LegacyPlayerControlView;

    sget v1, Lcom/brentvatne/react/R$id;->exo_fullscreen:I

    invoke-virtual {v0, v1}, Landroidx/media3/ui/LegacyPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 492
    new-instance v1, Lcom/brentvatne/exoplayer/ReactExoplayerView$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView$$ExternalSyntheticLambda15;-><init>(Lcom/brentvatne/exoplayer/ReactExoplayerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 493
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->updateFullScreenButtonVisibility()V

    .line 494
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->refreshControlsStyles()V

    .line 497
    new-instance v0, Lcom/brentvatne/exoplayer/ReactExoplayerView$3;

    invoke-direct {v0, p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView$3;-><init>(Lcom/brentvatne/exoplayer/ReactExoplayerView;)V

    iput-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->eventListener:Landroidx/media3/common/Player$Listener;

    .line 521
    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v1, v0}, Landroidx/media3/exoplayer/ExoPlayer;->addListener(Landroidx/media3/common/Player$Listener;)V

    return-void
.end method

.method private initializePlayerCore(Lcom/brentvatne/exoplayer/ReactExoplayerView;)V
    .locals 7

    .line 842
    new-instance v0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$Factory;

    invoke-direct {v0}, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$Factory;-><init>()V

    .line 843
    new-instance v1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

    invoke-virtual {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;-><init>(Landroid/content/Context;Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Factory;)V

    iput-object v1, p1, Lcom/brentvatne/exoplayer/ReactExoplayerView;->trackSelector:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

    .line 844
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->trackSelector:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->buildUponParameters()Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object v0

    .line 845
    iget v2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->maxBitRate:I

    if-nez v2, :cond_0

    const v2, 0x7fffffff

    :cond_0
    invoke-virtual {v0, v2}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setMaxVideoBitrate(I)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object v0

    .line 844
    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->setParameters(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;)V

    .line 847
    new-instance v0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;

    const/high16 v1, 0x10000

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Landroidx/media3/exoplayer/upstream/DefaultAllocator;-><init>(ZI)V

    .line 848
    new-instance v1, Lcom/brentvatne/exoplayer/ReactExoplayerView$RNVLoadControl;

    iget-object v3, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->source:Lcom/brentvatne/common/api/Source;

    .line 850
    invoke-virtual {v3}, Lcom/brentvatne/common/api/Source;->getBufferConfig()Lcom/brentvatne/common/api/BufferConfig;

    move-result-object v3

    invoke-direct {v1, p0, v0, v3}, Lcom/brentvatne/exoplayer/ReactExoplayerView$RNVLoadControl;-><init>(Lcom/brentvatne/exoplayer/ReactExoplayerView;Landroidx/media3/exoplayer/upstream/DefaultAllocator;Lcom/brentvatne/common/api/BufferConfig;)V

    .line 853
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->source:Lcom/brentvatne/common/api/Source;

    invoke-virtual {v0}, Lcom/brentvatne/common/api/Source;->getBufferConfig()Lcom/brentvatne/common/api/BufferConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/brentvatne/common/api/BufferConfig;->getInitialBitrate()I

    move-result v0

    int-to-long v3, v0

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_1

    .line 855
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->config:Lcom/brentvatne/exoplayer/ReactExoplayerConfig;

    invoke-interface {v0, v3, v4}, Lcom/brentvatne/exoplayer/ReactExoplayerConfig;->setInitialBitrate(J)V

    .line 856
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->config:Lcom/brentvatne/exoplayer/ReactExoplayerConfig;

    invoke-interface {v0}, Lcom/brentvatne/exoplayer/ReactExoplayerConfig;->getBandwidthMeter()Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;

    move-result-object v0

    iput-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->bandwidthMeter:Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;

    .line 859
    :cond_1
    new-instance v0, Landroidx/media3/exoplayer/DefaultRenderersFactory;

    .line 860
    invoke-virtual {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroidx/media3/exoplayer/DefaultRenderersFactory;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    .line 861
    invoke-virtual {v0, v3}, Landroidx/media3/exoplayer/DefaultRenderersFactory;->setExtensionRendererMode(I)Landroidx/media3/exoplayer/DefaultRenderersFactory;

    move-result-object v0

    .line 862
    invoke-virtual {v0, v2}, Landroidx/media3/exoplayer/DefaultRenderersFactory;->setEnableDecoderFallback(Z)Landroidx/media3/exoplayer/DefaultRenderersFactory;

    move-result-object v0

    .line 863
    invoke-virtual {v0}, Landroidx/media3/exoplayer/DefaultRenderersFactory;->forceEnableMediaCodecAsynchronousQueueing()Landroidx/media3/exoplayer/DefaultRenderersFactory;

    move-result-object v0

    .line 865
    new-instance v3, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;

    iget-object v4, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->mediaDataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

    invoke-direct {v3, v4}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;-><init>(Landroidx/media3/datasource/DataSource$Factory;)V

    .line 866
    iget-boolean v4, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->useCache:Z

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->disableCache:Z

    if-nez v4, :cond_2

    .line 867
    sget-object v4, Lcom/brentvatne/exoplayer/RNVSimpleCache;->INSTANCE:Lcom/brentvatne/exoplayer/RNVSimpleCache;

    invoke-direct {p0, v2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->buildHttpDataSourceFactory(Z)Landroidx/media3/datasource/HttpDataSource$Factory;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/brentvatne/exoplayer/RNVSimpleCache;->getCacheFactory(Landroidx/media3/datasource/HttpDataSource$Factory;)Landroidx/media3/datasource/DataSource$Factory;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->setDataSourceFactory(Landroidx/media3/datasource/DataSource$Factory;)Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;

    .line 870
    :cond_2
    new-instance v4, Lcom/brentvatne/exoplayer/ReactExoplayerView$$ExternalSyntheticLambda21;

    invoke-direct {v4, p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView$$ExternalSyntheticLambda21;-><init>(Lcom/brentvatne/exoplayer/ReactExoplayerView;)V

    iget-object v5, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->exoPlayerView:Lcom/brentvatne/exoplayer/ExoPlayerView;

    invoke-virtual {v3, v4, v5}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->setLocalAdInsertionComponents(Landroidx/media3/exoplayer/source/ads/AdsLoader$Provider;Landroidx/media3/common/AdViewProvider;)Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;

    .line 872
    new-instance v4, Landroidx/media3/exoplayer/ExoPlayer$Builder;

    invoke-virtual {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Landroidx/media3/exoplayer/ExoPlayer$Builder;-><init>(Landroid/content/Context;Landroidx/media3/exoplayer/RenderersFactory;)V

    iget-object v0, p1, Lcom/brentvatne/exoplayer/ReactExoplayerView;->trackSelector:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

    .line 873
    invoke-virtual {v4, v0}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->setTrackSelector(Landroidx/media3/exoplayer/trackselection/TrackSelector;)Landroidx/media3/exoplayer/ExoPlayer$Builder;

    move-result-object v0

    iget-object v4, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->bandwidthMeter:Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;

    .line 874
    invoke-virtual {v0, v4}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->setBandwidthMeter(Landroidx/media3/exoplayer/upstream/BandwidthMeter;)Landroidx/media3/exoplayer/ExoPlayer$Builder;

    move-result-object v0

    .line 875
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->setLoadControl(Landroidx/media3/exoplayer/LoadControl;)Landroidx/media3/exoplayer/ExoPlayer$Builder;

    move-result-object v0

    .line 876
    invoke-virtual {v0, v3}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->setMediaSourceFactory(Landroidx/media3/exoplayer/source/MediaSource$Factory;)Landroidx/media3/exoplayer/ExoPlayer$Builder;

    move-result-object v0

    .line 877
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->build()Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 878
    sget-object v0, Lcom/brentvatne/react/ReactNativeVideoManager;->Companion:Lcom/brentvatne/react/ReactNativeVideoManager$Companion;

    invoke-virtual {v0}, Lcom/brentvatne/react/ReactNativeVideoManager$Companion;->getInstance()Lcom/brentvatne/react/ReactNativeVideoManager;

    move-result-object v0

    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->instanceId:Ljava/lang/String;

    iget-object v3, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-virtual {v0, v1, v3}, Lcom/brentvatne/react/ReactNativeVideoManager;->onInstanceCreated(Ljava/lang/String;Ljava/lang/Object;)V

    .line 879
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->refreshDebugState()V

    .line 880
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/ExoPlayer;->addListener(Landroidx/media3/common/Player$Listener;)V

    .line 881
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    iget-boolean v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->muted:Z

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->audioVolume:F

    mul-float/2addr v1, v3

    :goto_0
    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/ExoPlayer;->setVolume(F)V

    .line 882
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->exoPlayerView:Lcom/brentvatne/exoplayer/ExoPlayerView;

    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-virtual {v0, v1}, Lcom/brentvatne/exoplayer/ExoPlayerView;->setPlayer(Landroidx/media3/exoplayer/ExoPlayer;)V

    .line 884
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->audioBecomingNoisyReceiver:Lcom/brentvatne/receiver/AudioBecomingNoisyReceiver;

    invoke-virtual {v0, p1}, Lcom/brentvatne/receiver/AudioBecomingNoisyReceiver;->setListener(Lcom/brentvatne/receiver/BecomingNoisyListener;)V

    .line 885
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->pictureInPictureReceiver:Lcom/brentvatne/receiver/PictureInPictureReceiver;

    invoke-virtual {v0}, Lcom/brentvatne/receiver/PictureInPictureReceiver;->setListener()V

    .line 886
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->bandwidthMeter:Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v0, v1, p1}, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->addEventListener(Landroid/os/Handler;Landroidx/media3/exoplayer/upstream/BandwidthMeter$EventListener;)V

    .line 887
    iget-boolean p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->isPaused:Z

    xor-int/2addr p1, v2

    invoke-direct {p0, p1}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setPlayWhenReady(Z)V

    .line 888
    iput-boolean v2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playerNeedsSource:Z

    .line 890
    new-instance p1, Landroidx/media3/common/PlaybackParameters;

    iget v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->rate:F

    invoke-direct {p1, v0, v3}, Landroidx/media3/common/PlaybackParameters;-><init>(FF)V

    .line 891
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/ExoPlayer;->setPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)V

    .line 892
    iget-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->audioOutput:Lcom/brentvatne/exoplayer/AudioOutput;

    invoke-direct {p0, p1}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->changeAudioOutput(Lcom/brentvatne/exoplayer/AudioOutput;)V

    .line 894
    iget-boolean p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->showNotificationControls:Z

    if-eqz p1, :cond_4

    .line 895
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setupPlaybackService()V

    :cond_4
    return-void
.end method

.method private initializePlayerDrm()Landroidx/media3/exoplayer/drm/DrmSessionManager;
    .locals 4

    .line 1020
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->source:Lcom/brentvatne/common/api/Source;

    invoke-virtual {v0}, Lcom/brentvatne/common/api/Source;->getDrmProps()Lcom/brentvatne/common/api/DRMProps;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1022
    invoke-virtual {v0}, Lcom/brentvatne/common/api/DRMProps;->getDrmType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1023
    invoke-virtual {v0}, Lcom/brentvatne/common/api/DRMProps;->getDrmType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/common/util/Util;->getDrmUuid(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1026
    :try_start_0
    const-string v2, "ReactExoplayerView"

    const-string v3, "drm buildDrmSessionManager"

    invoke-static {v2, v3}, Lcom/brentvatne/common/toolbox/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1027
    invoke-direct {p0, v1, v0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->buildDrmSessionManager(Ljava/util/UUID;Lcom/brentvatne/common/api/DRMProps;)Landroidx/media3/exoplayer/drm/DrmSessionManager;

    move-result-object v0
    :try_end_0
    .catch Landroidx/media3/exoplayer/drm/UnsupportedDrmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 1029
    sget v1, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v2, 0x12

    if-ge v1, v2, :cond_0

    sget v1, Lcom/brentvatne/react/R$string;->error_drm_not_supported:I

    goto :goto_0

    .line 1030
    :cond_0
    iget v1, v0, Landroidx/media3/exoplayer/drm/UnsupportedDrmException;->reason:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1031
    sget v1, Lcom/brentvatne/react/R$string;->error_drm_unsupported_scheme:I

    goto :goto_0

    :cond_1
    sget v1, Lcom/brentvatne/react/R$string;->error_drm_unknown:I

    .line 1032
    :goto_0
    iget-object v2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->eventEmitter:Lcom/brentvatne/common/react/VideoEventEmitter;

    iget-object v2, v2, Lcom/brentvatne/common/react/VideoEventEmitter;->onVideoError:Lkotlin/jvm/functions/Function3;

    invoke-virtual {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "3003"

    invoke-interface {v2, v1, v0, v3}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method private initializePlayerSource(Lcom/brentvatne/common/api/Source;)V
    .locals 9

    .line 963
    invoke-virtual {p1}, Lcom/brentvatne/common/api/Source;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 967
    :cond_0
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->initializePlayerDrm()Landroidx/media3/exoplayer/drm/DrmSessionManager;

    move-result-object v4

    .line 968
    const-string v0, "ReactExoplayerView"

    if-nez v4, :cond_1

    invoke-virtual {p1}, Lcom/brentvatne/common/api/Source;->getDrmProps()Lcom/brentvatne/common/api/DRMProps;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/brentvatne/common/api/Source;->getDrmProps()Lcom/brentvatne/common/api/DRMProps;

    move-result-object v1

    invoke-virtual {v1}, Lcom/brentvatne/common/api/DRMProps;->getDrmType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 970
    const-string p1, "Failed to initialize DRM Session Manager Framework!"

    invoke-static {v0, p1}, Lcom/brentvatne/common/toolbox/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 974
    :cond_1
    invoke-virtual {p1}, Lcom/brentvatne/common/api/Source;->getUri()Landroid/net/Uri;

    move-result-object v2

    .line 975
    invoke-virtual {p1}, Lcom/brentvatne/common/api/Source;->getExtension()Ljava/lang/String;

    move-result-object v3

    .line 977
    invoke-virtual {p1}, Lcom/brentvatne/common/api/Source;->getCropStartMs()I

    move-result v1

    int-to-long v5, v1

    .line 978
    invoke-virtual {p1}, Lcom/brentvatne/common/api/Source;->getCropEndMs()I

    move-result v1

    int-to-long v7, v1

    move-object v1, p0

    .line 974
    invoke-direct/range {v1 .. v8}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->buildMediaSource(Landroid/net/Uri;Ljava/lang/String;Landroidx/media3/exoplayer/drm/DrmSessionManager;JJ)Landroidx/media3/exoplayer/source/MediaSource;

    move-result-object v1

    .line 979
    invoke-direct {p0, v1, p1}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->initializeAds(Landroidx/media3/exoplayer/source/MediaSource;Lcom/brentvatne/common/api/Source;)Landroidx/media3/exoplayer/source/ads/AdsMediaSource;

    move-result-object v2

    .line 980
    invoke-static {v2, v1}, Lio/sentry/react/RNSentryPackage$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/source/MediaSource;

    .line 982
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->buildTextSource()Landroidx/media3/exoplayer/source/MediaSource;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    const/4 v5, 0x2

    .line 984
    new-array v5, v5, [Landroidx/media3/exoplayer/source/MediaSource;

    aput-object v1, v5, v4

    aput-object v2, v5, v3

    .line 985
    new-instance v1, Landroidx/media3/exoplayer/source/MergingMediaSource;

    invoke-direct {v1, v5}, Landroidx/media3/exoplayer/source/MergingMediaSource;-><init>([Landroidx/media3/exoplayer/source/MediaSource;)V

    .line 989
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    if-nez v2, :cond_3

    .line 991
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 993
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    .line 994
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/brentvatne/common/toolbox/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 998
    :cond_3
    iget v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->resumeWindow:I

    const/4 v5, -0x1

    if-eq v0, v5, :cond_4

    .line 1000
    iget-wide v5, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->resumePosition:J

    invoke-interface {v2, v0, v5, v6}, Landroidx/media3/exoplayer/ExoPlayer;->seekTo(IJ)V

    .line 1001
    iget-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {p1, v1, v4}, Landroidx/media3/exoplayer/ExoPlayer;->setMediaSource(Landroidx/media3/exoplayer/source/MediaSource;Z)V

    goto :goto_1

    .line 1002
    :cond_4
    invoke-virtual {p1}, Lcom/brentvatne/common/api/Source;->getStartPositionMs()I

    move-result v0

    if-lez v0, :cond_5

    .line 1003
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-virtual {p1}, Lcom/brentvatne/common/api/Source;->getStartPositionMs()I

    move-result p1

    int-to-long v5, p1

    invoke-interface {v0, v1, v5, v6}, Landroidx/media3/exoplayer/ExoPlayer;->setMediaSource(Landroidx/media3/exoplayer/source/MediaSource;J)V

    goto :goto_1

    .line 1005
    :cond_5
    iget-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {p1, v1, v3}, Landroidx/media3/exoplayer/ExoPlayer;->setMediaSource(Landroidx/media3/exoplayer/source/MediaSource;Z)V

    .line 1007
    :goto_1
    iget-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {p1}, Landroidx/media3/exoplayer/ExoPlayer;->prepare()V

    .line 1008
    iput-boolean v4, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playerNeedsSource:Z

    .line 1010
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->reLayoutControls()V

    .line 1012
    iget-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->eventEmitter:Lcom/brentvatne/common/react/VideoEventEmitter;

    iget-object p1, p1, Lcom/brentvatne/common/react/VideoEventEmitter;->onVideoLoadStart:Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 1013
    iput-boolean v3, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->loadVideoStarted:Z

    .line 1015
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->finishPlayerInitialization()V

    return-void
.end method

.method private static isBehindLiveWindow(Landroidx/media3/common/PlaybackException;)Z
    .locals 1

    .line 1886
    iget p0, p0, Landroidx/media3/common/PlaybackException;->errorCode:I

    const/16 v0, 0x3ea

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isFormatSupported(Landroidx/media3/common/Format;)Z
    .locals 7

    .line 2192
    iget v0, p1, Landroidx/media3/common/Format;->width:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget v0, p1, Landroidx/media3/common/Format;->width:I

    .line 2193
    :goto_0
    iget v3, p1, Landroidx/media3/common/Format;->height:I

    if-ne v3, v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    iget v2, p1, Landroidx/media3/common/Format;->height:I

    .line 2194
    :goto_1
    iget v3, p1, Landroidx/media3/common/Format;->frameRate:F

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    iget v3, p1, Landroidx/media3/common/Format;->frameRate:F

    .line 2195
    :goto_2
    iget-object p1, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const/4 v4, 0x1

    if-nez p1, :cond_3

    return v4

    .line 2201
    :cond_3
    :try_start_0
    invoke-static {p1, v1, v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->getDecoderInfo(Ljava/lang/String;ZZ)Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    move-result-object p1

    float-to-double v5, v3

    .line 2202
    invoke-virtual {p1, v0, v2, v5, v6}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->isVideoSizeAndRateSupportedV21(IID)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v4
.end method

.method private isPlayingAd()Z
    .locals 1

    .line 342
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isTrackSelected(Landroidx/media3/exoplayer/trackselection/TrackSelection;Landroidx/media3/common/TrackGroup;I)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 1599
    invoke-interface {p0}, Landroidx/media3/exoplayer/trackselection/TrackSelection;->getTrackGroup()Landroidx/media3/common/TrackGroup;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 1600
    invoke-interface {p0, p2}, Landroidx/media3/exoplayer/trackselection/TrackSelection;->indexOf(I)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$buildMediaSource$15(Landroidx/media3/exoplayer/drm/DrmSessionManager;Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/drm/DrmSessionManager;
    .locals 0

    return-object p0
.end method

.method private synthetic lambda$createViews$0(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 355
    iget-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->themedReactContext:Lcom/facebook/react/uimanager/ThemedReactContext;

    iget-object p2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->pictureInPictureParamsBuilder:Landroid/app/PictureInPictureParams$Builder;

    iget-object p3, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->exoPlayerView:Lcom/brentvatne/exoplayer/ExoPlayerView;

    invoke-static {p1, p2, p3}, Lcom/brentvatne/exoplayer/PictureInPictureUtil;->applySourceRectHint(Lcom/facebook/react/uimanager/ThemedReactContext;Landroid/app/PictureInPictureParams$Builder;Lcom/brentvatne/exoplayer/ExoPlayerView;)V

    return-void
.end method

.method private synthetic lambda$initializeAds$14(Landroidx/media3/common/MediaItem$AdsConfiguration;)Landroidx/media3/exoplayer/source/ads/AdsLoader;
    .locals 0

    .line 921
    iget-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->adsLoader:Landroidx/media3/exoplayer/ima/ImaAdsLoader;

    return-object p1
.end method

.method private synthetic lambda$initializePlayer$10(Lcom/brentvatne/common/api/Source;Lcom/brentvatne/exoplayer/ReactExoplayerView;)V
    .locals 2

    .line 803
    iget-boolean v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->viewHasDropped:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->source:Lcom/brentvatne/common/api/Source;

    if-ne p1, v0, :cond_0

    return-void

    .line 808
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->initializePlayerSource(Lcom/brentvatne/common/api/Source;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v0, 0x1

    .line 810
    iput-boolean v0, p2, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playerNeedsSource:Z

    .line 811
    const-string p2, "Failed to initialize Player! 1"

    const-string v0, "ReactExoplayerView"

    invoke-static {v0, p2}, Lcom/brentvatne/common/toolbox/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/brentvatne/common/toolbox/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 814
    iget-object p2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->eventEmitter:Lcom/brentvatne/common/react/VideoEventEmitter;

    iget-object p2, p2, Lcom/brentvatne/common/react/VideoEventEmitter;->onVideoError:Lkotlin/jvm/functions/Function3;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1001"

    invoke-interface {p2, v0, p1, v1}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method private synthetic lambda$initializePlayer$11(Lcom/brentvatne/common/api/Source;Landroid/app/Activity;Lcom/brentvatne/exoplayer/ReactExoplayerView;)V
    .locals 1

    .line 792
    iget-boolean v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->viewHasDropped:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->source:Lcom/brentvatne/common/api/Source;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 796
    const-string p1, "ReactExoplayerView"

    const-string p2, "Failed to initialize Player!, null activity"

    invoke-static {p1, p2}, Lcom/brentvatne/common/toolbox/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    iget-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->eventEmitter:Lcom/brentvatne/common/react/VideoEventEmitter;

    iget-object p1, p1, Lcom/brentvatne/common/react/VideoEventEmitter;->onVideoError:Lkotlin/jvm/functions/Function3;

    new-instance p2, Ljava/lang/Exception;

    const-string p3, "Current Activity is null!"

    invoke-direct {p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const-string p3, "1001"

    const-string v0, "Failed to initialize Player!"

    invoke-interface {p1, v0, p2, p3}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 802
    :cond_1
    new-instance v0, Lcom/brentvatne/exoplayer/ReactExoplayerView$$ExternalSyntheticLambda19;

    invoke-direct {v0, p0, p1, p3}, Lcom/brentvatne/exoplayer/ReactExoplayerView$$ExternalSyntheticLambda19;-><init>(Lcom/brentvatne/exoplayer/ReactExoplayerView;Lcom/brentvatne/common/api/Source;Lcom/brentvatne/exoplayer/ReactExoplayerView;)V

    invoke-virtual {p2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$initializePlayer$12(Lcom/brentvatne/common/api/Source;Lcom/brentvatne/exoplayer/ReactExoplayerView;Landroid/app/Activity;)V
    .locals 4

    .line 761
    iget-boolean v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->viewHasDropped:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->source:Lcom/brentvatne/common/api/Source;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 765
    :try_start_0
    invoke-virtual {p1}, Lcom/brentvatne/common/api/Source;->getUri()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 769
    :cond_1
    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    if-nez v1, :cond_2

    .line 771
    invoke-direct {p0, p2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->initializePlayerCore(Lcom/brentvatne/exoplayer/ReactExoplayerView;)V

    .line 772
    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->themedReactContext:Lcom/facebook/react/uimanager/ThemedReactContext;

    invoke-static {v1, p0}, Lcom/brentvatne/exoplayer/PictureInPictureUtil;->addLifecycleEventListener(Lcom/facebook/react/uimanager/ThemedReactContext;Lcom/brentvatne/exoplayer/ReactExoplayerView;)Ljava/lang/Runnable;

    move-result-object v1

    iput-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->pipListenerUnsubscribe:Ljava/lang/Runnable;

    .line 773
    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->themedReactContext:Lcom/facebook/react/uimanager/ThemedReactContext;

    iget-object v2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->pictureInPictureParamsBuilder:Landroid/app/PictureInPictureParams$Builder;

    iget-boolean v3, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->enterPictureInPictureOnLeave:Z

    invoke-static {v1, v2, v3}, Lcom/brentvatne/exoplayer/PictureInPictureUtil;->applyAutoEnterEnabled(Lcom/facebook/react/uimanager/ThemedReactContext;Landroid/app/PictureInPictureParams$Builder;Z)V

    .line 775
    :cond_2
    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->source:Lcom/brentvatne/common/api/Source;

    invoke-virtual {v1}, Lcom/brentvatne/common/api/Source;->isLocalAssetFile()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->source:Lcom/brentvatne/common/api/Source;

    invoke-virtual {v1}, Lcom/brentvatne/common/api/Source;->isAsset()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->source:Lcom/brentvatne/common/api/Source;

    invoke-virtual {v1}, Lcom/brentvatne/common/api/Source;->getBufferConfig()Lcom/brentvatne/common/api/BufferConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/brentvatne/common/api/BufferConfig;->getCacheSize()I

    move-result v1

    if-lez v1, :cond_3

    .line 776
    sget-object v1, Lcom/brentvatne/exoplayer/RNVSimpleCache;->INSTANCE:Lcom/brentvatne/exoplayer/RNVSimpleCache;

    .line 777
    invoke-virtual {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->source:Lcom/brentvatne/common/api/Source;

    .line 778
    invoke-virtual {v3}, Lcom/brentvatne/common/api/Source;->getBufferConfig()Lcom/brentvatne/common/api/BufferConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/brentvatne/common/api/BufferConfig;->getCacheSize()I

    move-result v3

    .line 776
    invoke-virtual {v1, v2, v3}, Lcom/brentvatne/exoplayer/RNVSimpleCache;->setSimpleCache(Landroid/content/Context;I)V

    .line 780
    iput-boolean v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->useCache:Z

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 782
    iput-boolean v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->useCache:Z

    .line 784
    :goto_0
    iget-boolean v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playerNeedsSource:Z

    if-eqz v1, :cond_4

    .line 786
    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->exoPlayerView:Lcom/brentvatne/exoplayer/ExoPlayerView;

    invoke-virtual {v1}, Lcom/brentvatne/exoplayer/ExoPlayerView;->updateShutterViewVisibility()V

    .line 787
    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->exoPlayerView:Lcom/brentvatne/exoplayer/ExoPlayerView;

    invoke-virtual {v1}, Lcom/brentvatne/exoplayer/ExoPlayerView;->invalidateAspectRatio()V

    .line 789
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    .line 790
    new-instance v2, Lcom/brentvatne/exoplayer/ReactExoplayerView$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0, p1, p3, p2}, Lcom/brentvatne/exoplayer/ReactExoplayerView$$ExternalSyntheticLambda6;-><init>(Lcom/brentvatne/exoplayer/ReactExoplayerView;Lcom/brentvatne/common/api/Source;Landroid/app/Activity;Lcom/brentvatne/exoplayer/ReactExoplayerView;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 818
    :cond_4
    iget-object p3, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->source:Lcom/brentvatne/common/api/Source;

    if-ne p1, p3, :cond_5

    .line 819
    invoke-direct {p0, p1}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->initializePlayerSource(Lcom/brentvatne/common/api/Source;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 822
    iput-boolean v0, p2, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playerNeedsSource:Z

    .line 823
    const-string p2, "Failed to initialize Player! 2"

    const-string p3, "ReactExoplayerView"

    invoke-static {p3, p2}, Lcom/brentvatne/common/toolbox/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/brentvatne/common/toolbox/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 826
    iget-object p2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->eventEmitter:Lcom/brentvatne/common/react/VideoEventEmitter;

    iget-object p2, p2, Lcom/brentvatne/common/react/VideoEventEmitter;->onVideoError:Lkotlin/jvm/functions/Function3;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "1001"

    invoke-interface {p2, p3, p1, v0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_1
    return-void
.end method

.method private synthetic lambda$initializePlayerControl$1(Landroid/view/View;)V
    .locals 0

    .line 454
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->isPlayingAd()Z

    move-result p1

    if-nez p1, :cond_0

    .line 455
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->togglePlayerControlVisibility()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$initializePlayerControl$2(Landroid/view/View;)V
    .locals 2

    .line 463
    iget-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroidx/media3/exoplayer/ExoPlayer;->getPlaybackState()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 464
    iget-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    const-wide/16 v0, 0x0

    invoke-interface {p1, v0, v1}, Landroidx/media3/exoplayer/ExoPlayer;->seekTo(J)V

    :cond_0
    const/4 p1, 0x0

    .line 466
    invoke-virtual {p0, p1}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setPausedModifier(Z)V

    return-void
.end method

.method private synthetic lambda$initializePlayerControl$3(Landroid/view/View;)V
    .locals 4

    .line 473
    iget-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {p1}, Landroidx/media3/exoplayer/ExoPlayer;->getCurrentPosition()J

    move-result-wide v0

    iget-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->controlsConfig:Lcom/brentvatne/common/api/ControlsConfig;

    invoke-virtual {p1}, Lcom/brentvatne/common/api/ControlsConfig;->getSeekIncrementMS()I

    move-result p1

    int-to-long v2, p1

    sub-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->seekTo(J)V

    return-void
.end method

.method private synthetic lambda$initializePlayerControl$4(Landroid/view/View;)V
    .locals 4

    .line 477
    iget-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {p1}, Landroidx/media3/exoplayer/ExoPlayer;->getCurrentPosition()J

    move-result-wide v0

    iget-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->controlsConfig:Lcom/brentvatne/common/api/ControlsConfig;

    invoke-virtual {p1}, Lcom/brentvatne/common/api/ControlsConfig;->getSeekIncrementMS()I

    move-result p1

    int-to-long v2, p1

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->seekTo(J)V

    return-void
.end method

.method private synthetic lambda$initializePlayerControl$5(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    .line 483
    invoke-virtual {p0, p1}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setPausedModifier(Z)V

    return-void
.end method

.method private synthetic lambda$initializePlayerControl$6(Landroid/view/View;)V
    .locals 0

    .line 488
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->openSettings()V

    return-void
.end method

.method private synthetic lambda$initializePlayerControl$7(Landroid/view/View;)V
    .locals 0

    .line 492
    iget-boolean p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->isFullscreen:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setFullscreen(Z)V

    return-void
.end method

.method private synthetic lambda$initializePlayerCore$13(Landroidx/media3/common/MediaItem$AdsConfiguration;)Landroidx/media3/exoplayer/source/ads/AdsLoader;
    .locals 0

    .line 870
    iget-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->adsLoader:Landroidx/media3/exoplayer/ima/ImaAdsLoader;

    return-object p1
.end method

.method private synthetic lambda$openSettings$8(Landroid/content/DialogInterface;I)V
    .locals 0

    if-nez p2, :cond_0

    .line 529
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->showPlaybackSpeedOptions()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$setFullscreen$17()V
    .locals 1

    .line 2477
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->eventEmitter:Lcom/brentvatne/common/react/VideoEventEmitter;

    iget-object v0, v0, Lcom/brentvatne/common/react/VideoEventEmitter;->onVideoFullscreenPlayerDidPresent:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method private synthetic lambda$setFullscreen$18()V
    .locals 1

    .line 2487
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->eventEmitter:Lcom/brentvatne/common/react/VideoEventEmitter;

    iget-object v0, v0, Lcom/brentvatne/common/react/VideoEventEmitter;->onVideoFullscreenPlayerDidDismiss:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method private synthetic lambda$showPlaybackSpeedOptions$9(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 541
    iput p2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->selectedSpeedIndex:I

    if-eqz p2, :cond_2

    const/4 p1, 0x2

    if-eq p2, p1, :cond_1

    const/4 p1, 0x3

    if-eq p2, p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/high16 p1, 0x40000000    # 2.0f

    goto :goto_0

    :cond_1
    const/high16 p1, 0x3fc00000    # 1.5f

    goto :goto_0

    :cond_2
    const/high16 p1, 0x3f000000    # 0.5f

    .line 548
    :goto_0
    invoke-virtual {p0, p1}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setRateModifier(F)V

    return-void
.end method

.method private synthetic lambda$videoLoaded$16(JJIILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 10

    move-object v0, p0

    .line 1578
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->getVideoTrackInfoFromManifest()Ljava/util/ArrayList;

    move-result-object v8

    if-eqz v8, :cond_0

    const/4 v1, 0x1

    .line 1580
    iput-boolean v1, v0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->isUsingContentResolution:Z

    .line 1582
    :cond_0
    iget-object v1, v0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->eventEmitter:Lcom/brentvatne/common/react/VideoEventEmitter;

    iget-object v1, v1, Lcom/brentvatne/common/react/VideoEventEmitter;->onVideoLoad:Lkotlin/jvm/functions/Function8;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v9, p9

    invoke-interface/range {v1 .. v9}, Lkotlin/jvm/functions/Function8;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private onBuffering(Z)V
    .locals 4

    .line 1770
    iget-boolean v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->isBuffering:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 1774
    :cond_0
    iget-boolean v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->isPaused:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->isSeeking:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 1775
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->eventEmitter:Lcom/brentvatne/common/react/VideoEventEmitter;

    iget-object v0, v0, Lcom/brentvatne/common/react/VideoEventEmitter;->onVideoSeek:Lkotlin/jvm/functions/Function2;

    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v1}, Landroidx/media3/exoplayer/ExoPlayer;->getCurrentPosition()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->seekPosition:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 1776
    iput-boolean v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->isSeeking:Z

    .line 1779
    :cond_1
    iput-boolean p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->isBuffering:Z

    .line 1780
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->eventEmitter:Lcom/brentvatne/common/react/VideoEventEmitter;

    iget-object v0, v0, Lcom/brentvatne/common/react/VideoEventEmitter;->onVideoBuffer:Lkotlin/jvm/functions/Function1;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private onStopPlayback()V
    .locals 2

    .line 1434
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->audioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->audioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    return-void
.end method

.method private openSettings()V
    .locals 4

    .line 524
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->themedReactContext:Lcom/facebook/react/uimanager/ThemedReactContext;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 525
    sget v1, Lcom/brentvatne/react/R$string;->settings:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x1

    .line 526
    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->themedReactContext:Lcom/facebook/react/uimanager/ThemedReactContext;

    sget v3, Lcom/brentvatne/react/R$string;->playback_speed:I

    invoke-virtual {v2, v3}, Lcom/facebook/react/uimanager/ThemedReactContext;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 527
    new-instance v2, Lcom/brentvatne/exoplayer/ReactExoplayerView$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView$$ExternalSyntheticLambda7;-><init>(Lcom/brentvatne/exoplayer/ReactExoplayerView;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 532
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private pausePlayback()V
    .locals 2

    .line 1420
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1421
    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->getPlayWhenReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1422
    invoke-direct {p0, v1}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setPlayWhenReady(Z)V

    .line 1425
    :cond_0
    invoke-virtual {p0, v1}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setKeepScreenOn(Z)V

    return-void
.end method

.method private reLayout(Landroid/view/View;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 578
    :cond_0
    invoke-virtual {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->getMeasuredWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 579
    invoke-virtual {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->getMeasuredHeight()I

    move-result v2

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 578
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    .line 580
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method private reLayoutControls()V
    .locals 1

    .line 657
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->exoPlayerView:Lcom/brentvatne/exoplayer/ExoPlayerView;

    invoke-direct {p0, v0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->reLayout(Landroid/view/View;)V

    .line 658
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playerControlView:Landroidx/media3/ui/LegacyPlayerControlView;

    invoke-direct {p0, v0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->reLayout(Landroid/view/View;)V

    return-void
.end method

.method private refreshControlsStyles()V
    .locals 4

    .line 584
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playerControlView:Landroidx/media3/ui/LegacyPlayerControlView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->controls:Z

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 585
    :cond_0
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->updateLiveContent()V

    .line 586
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->updatePlayPauseButtons()V

    .line 587
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->controlsConfig:Lcom/brentvatne/common/api/ControlsConfig;

    invoke-virtual {v0}, Lcom/brentvatne/common/api/ControlsConfig;->getHideForward()Z

    move-result v0

    sget v1, Lcom/brentvatne/react/R$id;->exo_ffwd:I

    invoke-direct {p0, v0, v1}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->updateButtonVisibility(ZI)V

    .line 588
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->controlsConfig:Lcom/brentvatne/common/api/ControlsConfig;

    invoke-virtual {v0}, Lcom/brentvatne/common/api/ControlsConfig;->getHideRewind()Z

    move-result v0

    sget v1, Lcom/brentvatne/react/R$id;->exo_rew:I

    invoke-direct {p0, v0, v1}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->updateButtonVisibility(ZI)V

    .line 589
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->controlsConfig:Lcom/brentvatne/common/api/ControlsConfig;

    invoke-virtual {v0}, Lcom/brentvatne/common/api/ControlsConfig;->getHideNext()Z

    move-result v0

    sget v1, Lcom/brentvatne/react/R$id;->exo_next:I

    invoke-direct {p0, v0, v1}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->updateButtonVisibility(ZI)V

    .line 590
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->controlsConfig:Lcom/brentvatne/common/api/ControlsConfig;

    invoke-virtual {v0}, Lcom/brentvatne/common/api/ControlsConfig;->getHidePrevious()Z

    move-result v0

    sget v1, Lcom/brentvatne/react/R$id;->exo_prev:I

    invoke-direct {p0, v0, v1}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->updateButtonVisibility(ZI)V

    .line 591
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playerControlView:Landroidx/media3/ui/LegacyPlayerControlView;

    sget v1, Lcom/brentvatne/react/R$id;->exo_fullscreen:I

    invoke-virtual {v0, v1}, Landroidx/media3/ui/LegacyPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->controlsConfig:Lcom/brentvatne/common/api/ControlsConfig;

    invoke-virtual {v1}, Lcom/brentvatne/common/api/ControlsConfig;->getHideFullscreen()Z

    move-result v1

    const/16 v2, 0x8

    invoke-direct {p0, v0, v1, v2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->updateViewVisibility(Landroid/view/View;ZI)V

    .line 592
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playerControlView:Landroidx/media3/ui/LegacyPlayerControlView;

    sget v1, Lcom/brentvatne/react/R$id;->exo_position:I

    invoke-virtual {v0, v1}, Landroidx/media3/ui/LegacyPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->controlsConfig:Lcom/brentvatne/common/api/ControlsConfig;

    invoke-virtual {v1}, Lcom/brentvatne/common/api/ControlsConfig;->getHidePosition()Z

    move-result v1

    invoke-direct {p0, v0, v1, v2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->updateViewVisibility(Landroid/view/View;ZI)V

    .line 593
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playerControlView:Landroidx/media3/ui/LegacyPlayerControlView;

    sget v1, Lcom/brentvatne/react/R$id;->exo_progress:I

    invoke-virtual {v0, v1}, Landroidx/media3/ui/LegacyPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->controlsConfig:Lcom/brentvatne/common/api/ControlsConfig;

    invoke-virtual {v1}, Lcom/brentvatne/common/api/ControlsConfig;->getHideSeekBar()Z

    move-result v1

    const/4 v3, 0x4

    invoke-direct {p0, v0, v1, v3}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->updateViewVisibility(Landroid/view/View;ZI)V

    .line 594
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playerControlView:Landroidx/media3/ui/LegacyPlayerControlView;

    sget v1, Lcom/brentvatne/react/R$id;->exo_duration:I

    invoke-virtual {v0, v1}, Landroidx/media3/ui/LegacyPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->controlsConfig:Lcom/brentvatne/common/api/ControlsConfig;

    invoke-virtual {v1}, Lcom/brentvatne/common/api/ControlsConfig;->getHideDuration()Z

    move-result v1

    invoke-direct {p0, v0, v1, v2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->updateViewVisibility(Landroid/view/View;ZI)V

    .line 595
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playerControlView:Landroidx/media3/ui/LegacyPlayerControlView;

    sget v1, Lcom/brentvatne/react/R$id;->exo_settings:I

    invoke-virtual {v0, v1}, Landroidx/media3/ui/LegacyPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->controlsConfig:Lcom/brentvatne/common/api/ControlsConfig;

    invoke-virtual {v1}, Lcom/brentvatne/common/api/ControlsConfig;->getHideSettingButton()Z

    move-result v1

    invoke-direct {p0, v0, v1, v2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->updateViewVisibility(Landroid/view/View;ZI)V

    :cond_1
    :goto_0
    return-void
.end method

.method private refreshDebugState()V
    .locals 2

    .line 672
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    if-nez v0, :cond_0

    return-void

    .line 675
    :cond_0
    iget-boolean v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->enableDebug:Z

    if-eqz v1, :cond_1

    .line 676
    new-instance v0, Landroidx/media3/exoplayer/util/EventLogger;

    const-string v1, "RNVExoplayer"

    invoke-direct {v0, v1}, Landroidx/media3/exoplayer/util/EventLogger;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->debugEventLogger:Landroidx/media3/exoplayer/util/EventLogger;

    .line 677
    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v1, v0}, Landroidx/media3/exoplayer/ExoPlayer;->addAnalyticsListener(Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V

    goto :goto_0

    .line 678
    :cond_1
    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->debugEventLogger:Landroidx/media3/exoplayer/util/EventLogger;

    if-eqz v1, :cond_2

    .line 679
    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/ExoPlayer;->removeAnalyticsListener(Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V

    const/4 v0, 0x0

    .line 680
    iput-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->debugEventLogger:Landroidx/media3/exoplayer/util/EventLogger;

    :cond_2
    :goto_0
    return-void
.end method

.method private releasePlayer()V
    .locals 4

    .line 1297
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1298
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playbackServiceBinder:Lcom/brentvatne/exoplayer/PlaybackServiceBinder;

    if-eqz v0, :cond_0

    .line 1299
    invoke-virtual {v0}, Lcom/brentvatne/exoplayer/PlaybackServiceBinder;->getService()Lcom/brentvatne/exoplayer/VideoPlaybackService;

    move-result-object v0

    iget-object v2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-virtual {v0, v2}, Lcom/brentvatne/exoplayer/VideoPlaybackService;->unregisterPlayer(Landroidx/media3/exoplayer/ExoPlayer;)V

    .line 1300
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->themedReactContext:Lcom/facebook/react/uimanager/ThemedReactContext;

    iget-object v2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playbackServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Lcom/facebook/react/uimanager/ThemedReactContext;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1303
    :cond_0
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->updateResumePosition()V

    .line 1304
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->release()V

    .line 1305
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v0, p0}, Landroidx/media3/exoplayer/ExoPlayer;->removeListener(Landroidx/media3/common/Player$Listener;)V

    .line 1306
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->themedReactContext:Lcom/facebook/react/uimanager/ThemedReactContext;

    iget-object v2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->pictureInPictureParamsBuilder:Landroid/app/PictureInPictureParams$Builder;

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/brentvatne/exoplayer/PictureInPictureUtil;->applyAutoEnterEnabled(Lcom/facebook/react/uimanager/ThemedReactContext;Landroid/app/PictureInPictureParams$Builder;Z)V

    .line 1307
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->pipListenerUnsubscribe:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 1308
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1310
    :cond_1
    iput-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->trackSelector:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

    .line 1312
    sget-object v0, Lcom/brentvatne/react/ReactNativeVideoManager;->Companion:Lcom/brentvatne/react/ReactNativeVideoManager$Companion;

    invoke-virtual {v0}, Lcom/brentvatne/react/ReactNativeVideoManager$Companion;->getInstance()Lcom/brentvatne/react/ReactNativeVideoManager;

    move-result-object v0

    iget-object v2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->instanceId:Ljava/lang/String;

    iget-object v3, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-virtual {v0, v2, v3}, Lcom/brentvatne/react/ReactNativeVideoManager;->onInstanceRemoved(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1313
    iput-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 1316
    :cond_2
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->adsLoader:Landroidx/media3/exoplayer/ima/ImaAdsLoader;

    if-eqz v0, :cond_3

    .line 1317
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ima/ImaAdsLoader;->release()V

    .line 1318
    iput-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->adsLoader:Landroidx/media3/exoplayer/ima/ImaAdsLoader;

    .line 1320
    :cond_3
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->progressHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1321
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->audioBecomingNoisyReceiver:Lcom/brentvatne/receiver/AudioBecomingNoisyReceiver;

    invoke-virtual {v0}, Lcom/brentvatne/receiver/AudioBecomingNoisyReceiver;->removeListener()V

    .line 1322
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->pictureInPictureReceiver:Lcom/brentvatne/receiver/PictureInPictureReceiver;

    invoke-virtual {v0}, Lcom/brentvatne/receiver/PictureInPictureReceiver;->removeListener()V

    .line 1323
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->bandwidthMeter:Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;

    invoke-virtual {v0, p0}, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->removeEventListener(Landroidx/media3/exoplayer/upstream/BandwidthMeter$EventListener;)V

    .line 1325
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->mainHandler:Landroid/os/Handler;

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->mainRunnable:Ljava/lang/Runnable;

    if-eqz v2, :cond_4

    .line 1326
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1327
    iput-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->mainRunnable:Ljava/lang/Runnable;

    :cond_4
    return-void
.end method

.method private requestAudioFocus()Z
    .locals 4

    .line 1386
    iget-boolean v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->disableFocus:Z

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->source:Lcom/brentvatne/common/api/Source;

    invoke-virtual {v0}, Lcom/brentvatne/common/api/Source;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->hasAudioFocus:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1389
    :cond_0
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->audioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->audioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method private resumePlayback()V
    .locals 1

    .line 1411
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_1

    .line 1412
    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->getPlayWhenReady()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1413
    invoke-direct {p0, v0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setPlayWhenReady(Z)V

    .line 1415
    :cond_0
    iget-boolean v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->preventsDisplaySleepDuringVideoPlayback:Z

    invoke-virtual {p0, v0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setKeepScreenOn(Z)V

    :cond_1
    return-void
.end method

.method private setPlayWhenReady(Z)V
    .locals 1

    .line 1396
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 1401
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->requestAudioFocus()Z

    move-result p1

    iput-boolean p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->hasAudioFocus:Z

    if-eqz p1, :cond_2

    .line 1403
    iget-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroidx/media3/exoplayer/ExoPlayer;->setPlayWhenReady(Z)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 1406
    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/ExoPlayer;->setPlayWhenReady(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private setupPlaybackService()V
    .locals 4

    .line 1047
    iget-boolean v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->showNotificationControls:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    if-nez v0, :cond_0

    goto :goto_2

    .line 1051
    :cond_0
    new-instance v0, Lcom/brentvatne/exoplayer/ReactExoplayerView$4;

    invoke-direct {v0, p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView$4;-><init>(Lcom/brentvatne/exoplayer/ReactExoplayerView;)V

    iput-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playbackServiceConnection:Landroid/content/ServiceConnection;

    .line 1087
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->themedReactContext:Lcom/facebook/react/uimanager/ThemedReactContext;

    const-class v2, Lcom/brentvatne/exoplayer/VideoPlaybackService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1088
    const-string v1, "androidx.media3.session.MediaSessionService"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1090
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_1

    .line 1091
    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->themedReactContext:Lcom/facebook/react/uimanager/ThemedReactContext;

    invoke-virtual {v1, v0}, Lcom/facebook/react/uimanager/ThemedReactContext;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 1093
    :cond_1
    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->themedReactContext:Lcom/facebook/react/uimanager/ThemedReactContext;

    invoke-virtual {v1, v0}, Lcom/facebook/react/uimanager/ThemedReactContext;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1097
    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_2

    const/16 v1, 0x1001

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    .line 1103
    :goto_1
    iget-object v2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->themedReactContext:Lcom/facebook/react/uimanager/ThemedReactContext;

    iget-object v3, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playbackServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v0, v3, v1}, Lcom/facebook/react/uimanager/ThemedReactContext;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_3
    :goto_2
    return-void
.end method

.method private showPlaybackSpeedOptions()V
    .locals 4

    const/4 v0, 0x4

    .line 536
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "0.5x"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "1.0x"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "1.5x"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "2.0x"

    aput-object v2, v0, v1

    .line 537
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->themedReactContext:Lcom/facebook/react/uimanager/ThemedReactContext;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 538
    sget v2, Lcom/brentvatne/react/R$string;->select_playback_speed:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 540
    iget v2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->selectedSpeedIndex:I

    new-instance v3, Lcom/brentvatne/exoplayer/ReactExoplayerView$$ExternalSyntheticLambda8;

    invoke-direct {v3, p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView$$ExternalSyntheticLambda8;-><init>(Lcom/brentvatne/exoplayer/ReactExoplayerView;)V

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 550
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private startProgressHandler()V
    .locals 2

    .line 1538
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->progressHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private stopPlayback()V
    .locals 0

    .line 1429
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->onStopPlayback()V

    .line 1430
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->releasePlayer()V

    return-void
.end method

.method private togglePlayerControlVisibility()V
    .locals 1

    .line 425
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    if-nez v0, :cond_0

    return-void

    .line 426
    :cond_0
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->reLayoutControls()V

    .line 427
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playerControlView:Landroidx/media3/ui/LegacyPlayerControlView;

    invoke-virtual {v0}, Landroidx/media3/ui/LegacyPlayerControlView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 428
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playerControlView:Landroidx/media3/ui/LegacyPlayerControlView;

    invoke-virtual {v0}, Landroidx/media3/ui/LegacyPlayerControlView;->hide()V

    goto :goto_0

    .line 430
    :cond_1
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playerControlView:Landroidx/media3/ui/LegacyPlayerControlView;

    invoke-virtual {v0}, Landroidx/media3/ui/LegacyPlayerControlView;->show()V

    :goto_0
    return-void
.end method

.method private updateButtonVisibility(ZI)V
    .locals 1

    .line 636
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playerControlView:Landroidx/media3/ui/LegacyPlayerControlView;

    invoke-virtual {v0, p2}, Landroidx/media3/ui/LegacyPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 638
    invoke-virtual {p2, p1}, Landroid/widget/ImageButton;->setImageAlpha(I)V

    .line 639
    invoke-virtual {p2, p1}, Landroid/widget/ImageButton;->setClickable(Z)V

    goto :goto_0

    :cond_0
    const/16 p1, 0xff

    .line 641
    invoke-virtual {p2, p1}, Landroid/widget/ImageButton;->setImageAlpha(I)V

    const/4 p1, 0x1

    .line 642
    invoke-virtual {p2, p1}, Landroid/widget/ImageButton;->setClickable(Z)V

    :goto_0
    return-void
.end method

.method private updateFullScreenButtonVisibility()V
    .locals 2

    .line 2439
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playerControlView:Landroidx/media3/ui/LegacyPlayerControlView;

    if-eqz v0, :cond_1

    .line 2440
    sget v1, Lcom/brentvatne/react/R$id;->exo_fullscreen:I

    invoke-virtual {v0, v1}, Landroidx/media3/ui/LegacyPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 2442
    iget-boolean v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->isFullscreen:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->fullScreenPlayerView:Lcom/brentvatne/exoplayer/FullScreenPlayerView;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/brentvatne/exoplayer/FullScreenPlayerView;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x8

    .line 2443
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2445
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateLiveContent()V
    .locals 6

    .line 599
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playerControlView:Landroidx/media3/ui/LegacyPlayerControlView;

    sget v1, Lcom/brentvatne/react/R$id;->exo_live_container:I

    invoke-virtual {v0, v1}, Landroidx/media3/ui/LegacyPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 600
    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playerControlView:Landroidx/media3/ui/LegacyPlayerControlView;

    sget v2, Lcom/brentvatne/react/R$id;->exo_live_label:I

    invoke-virtual {v1, v2}, Landroidx/media3/ui/LegacyPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 603
    iget-object v2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v2}, Landroidx/media3/exoplayer/ExoPlayer;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v2

    .line 606
    invoke-virtual {v2}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 607
    new-instance v3, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v3}, Landroidx/media3/common/Timeline$Window;-><init>()V

    .line 608
    iget-object v5, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v5}, Landroidx/media3/exoplayer/ExoPlayer;->getCurrentMediaItemIndex()I

    move-result v5

    invoke-virtual {v2, v5, v3}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    .line 609
    invoke-virtual {v3}, Landroidx/media3/common/Timeline$Window;->isLive()Z

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    if-eqz v2, :cond_1

    .line 612
    iget-object v2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->controlsConfig:Lcom/brentvatne/common/api/ControlsConfig;

    invoke-virtual {v2}, Lcom/brentvatne/common/api/ControlsConfig;->getLiveLabel()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 613
    iget-object v2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->controlsConfig:Lcom/brentvatne/common/api/ControlsConfig;

    invoke-virtual {v2}, Lcom/brentvatne/common/api/ControlsConfig;->getLiveLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 614
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    .line 616
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private updatePlayPauseButtons()V
    .locals 4

    .line 621
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playerControlView:Landroidx/media3/ui/LegacyPlayerControlView;

    sget v1, Lcom/brentvatne/react/R$id;->exo_play:I

    invoke-virtual {v0, v1}, Landroidx/media3/ui/LegacyPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 622
    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playerControlView:Landroidx/media3/ui/LegacyPlayerControlView;

    sget v2, Lcom/brentvatne/react/R$id;->exo_pause:I

    invoke-virtual {v1, v2}, Landroidx/media3/ui/LegacyPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 624
    iget-object v2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->controlsConfig:Lcom/brentvatne/common/api/ControlsConfig;

    invoke-virtual {v2}, Lcom/brentvatne/common/api/ControlsConfig;->getHidePlayPause()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 625
    iget-object v2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playPauseControlContainer:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    const/4 v2, 0x0

    .line 626
    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 627
    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setClickable(Z)V

    goto :goto_0

    .line 629
    :cond_0
    iget-object v2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playPauseControlContainer:Landroid/view/View;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    const/4 v2, 0x1

    .line 630
    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 631
    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setClickable(Z)V

    :goto_0
    return-void
.end method

.method private updateProgress()V
    .locals 8

    .line 280
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_3

    .line 281
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playerControlView:Landroidx/media3/ui/LegacyPlayerControlView;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->controls:Z

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playerControlView:Landroidx/media3/ui/LegacyPlayerControlView;

    invoke-virtual {v0}, Landroidx/media3/ui/LegacyPlayerControlView;->hide()V

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->getBufferedPercentage()I

    move-result v0

    int-to-long v0, v0

    iget-object v2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v2}, Landroidx/media3/exoplayer/ExoPlayer;->getDuration()J

    move-result-wide v2

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x64

    div-long/2addr v0, v2

    .line 285
    iget-object v2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v2}, Landroidx/media3/exoplayer/ExoPlayer;->getDuration()J

    move-result-wide v2

    .line 286
    iget-object v4, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v4}, Landroidx/media3/exoplayer/ExoPlayer;->getCurrentPosition()J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-lez v6, :cond_1

    move-wide v4, v2

    .line 291
    :cond_1
    iget-wide v6, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->lastPos:J

    cmp-long v6, v6, v4

    if-nez v6, :cond_2

    iget-wide v6, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->lastBufferDuration:J

    cmp-long v6, v6, v0

    if-nez v6, :cond_2

    iget-wide v6, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->lastDuration:J

    cmp-long v6, v6, v2

    if-eqz v6, :cond_3

    .line 294
    :cond_2
    iput-wide v4, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->lastPos:J

    .line 295
    iput-wide v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->lastBufferDuration:J

    .line 296
    iput-wide v2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->lastDuration:J

    .line 297
    iget-object v2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->eventEmitter:Lcom/brentvatne/common/react/VideoEventEmitter;

    iget-object v2, v2, Lcom/brentvatne/common/react/VideoEventEmitter;->onVideoProgress:Lkotlin/jvm/functions/Function4;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v1}, Landroidx/media3/exoplayer/ExoPlayer;->getDuration()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v4, v5}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->getPositionInFirstPeriodMsForCurrentWindow(J)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v2, v3, v0, v1, v4}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method private updateResumePosition()V
    .locals 4

    .line 1438
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->getCurrentMediaItemIndex()I

    move-result v0

    iput v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->resumeWindow:I

    .line 1439
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->isCurrentMediaItemSeekable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->getCurrentPosition()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 1440
    :goto_0
    iput-wide v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->resumePosition:J

    return-void
.end method

.method private updateViewVisibility(Landroid/view/View;ZI)V
    .locals 0

    if-eqz p2, :cond_0

    .line 648
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 649
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-ne p2, p3, :cond_1

    const/4 p2, 0x0

    .line 650
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private videoLoaded()V
    .locals 15

    .line 1551
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->isPlayingAd()Z

    move-result v0

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->loadVideoStarted:Z

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    .line 1552
    iput-boolean v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->loadVideoStarted:Z

    .line 1553
    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->audioTrackType:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1554
    iget-object v2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->audioTrackValue:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setSelectedAudioTrack(Ljava/lang/String;Ljava/lang/String;)V

    .line 1556
    :cond_0
    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->videoTrackType:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1557
    iget-object v2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->videoTrackValue:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setSelectedVideoTrack(Ljava/lang/String;Ljava/lang/String;)V

    .line 1559
    :cond_1
    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->textTrackType:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 1560
    iget-object v2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->textTrackValue:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setSelectedTextTrack(Ljava/lang/String;Ljava/lang/String;)V

    .line 1562
    :cond_2
    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v1}, Landroidx/media3/exoplayer/ExoPlayer;->getVideoFormat()Landroidx/media3/common/Format;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1563
    iget v2, v1, Landroidx/media3/common/Format;->rotationDegrees:I

    const/16 v3, 0x5a

    if-eq v2, v3, :cond_3

    iget v2, v1, Landroidx/media3/common/Format;->rotationDegrees:I

    const/16 v3, 0x10e

    if-ne v2, v3, :cond_4

    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    :cond_4
    move v2, v0

    :goto_0
    if-eqz v1, :cond_6

    if-eqz v2, :cond_5

    .line 1564
    iget v3, v1, Landroidx/media3/common/Format;->height:I

    goto :goto_1

    :cond_5
    iget v3, v1, Landroidx/media3/common/Format;->width:I

    :goto_1
    move v10, v3

    goto :goto_2

    :cond_6
    move v10, v0

    :goto_2
    if-eqz v1, :cond_8

    if-eqz v2, :cond_7

    .line 1565
    iget v0, v1, Landroidx/media3/common/Format;->width:I

    goto :goto_3

    :cond_7
    iget v0, v1, Landroidx/media3/common/Format;->height:I

    :cond_8
    :goto_3
    move v11, v0

    if-eqz v1, :cond_9

    .line 1566
    iget-object v0, v1, Landroidx/media3/common/Format;->id:Ljava/lang/String;

    goto :goto_4

    :cond_9
    const/4 v0, 0x0

    .line 1569
    :goto_4
    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v1}, Landroidx/media3/exoplayer/ExoPlayer;->getDuration()J

    move-result-wide v6

    .line 1570
    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v1}, Landroidx/media3/exoplayer/ExoPlayer;->getCurrentPosition()J

    move-result-wide v8

    .line 1571
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->getAudioTrackInfo()Ljava/util/ArrayList;

    move-result-object v12

    .line 1572
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->getTextTrackInfo()Ljava/util/ArrayList;

    move-result-object v13

    .line 1574
    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->source:Lcom/brentvatne/common/api/Source;

    invoke-virtual {v1}, Lcom/brentvatne/common/api/Source;->getContentStartTime()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_a

    .line 1575
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    .line 1576
    new-instance v2, Lcom/brentvatne/exoplayer/ReactExoplayerView$$ExternalSyntheticLambda3;

    move-object v4, v2

    move-object v5, p0

    move-object v14, v0

    invoke-direct/range {v4 .. v14}, Lcom/brentvatne/exoplayer/ReactExoplayerView$$ExternalSyntheticLambda3;-><init>(Lcom/brentvatne/exoplayer/ReactExoplayerView;JJIILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 1589
    :cond_a
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->getVideoTrackInfo()Ljava/util/ArrayList;

    move-result-object v14

    .line 1591
    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->eventEmitter:Lcom/brentvatne/common/react/VideoEventEmitter;

    iget-object v1, v1, Lcom/brentvatne/common/react/VideoEventEmitter;->onVideoLoad:Lkotlin/jvm/functions/Function8;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v6, v12

    move-object v7, v13

    move-object v8, v14

    move-object v9, v0

    invoke-interface/range {v1 .. v9}, Lkotlin/jvm/functions/Function8;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1593
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->refreshControlsStyles()V

    :cond_b
    return-void
.end method


# virtual methods
.method public cleanUpResources()V
    .locals 1

    .line 396
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->stopPlayback()V

    .line 397
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->themedReactContext:Lcom/facebook/react/uimanager/ThemedReactContext;

    invoke-virtual {v0, p0}, Lcom/facebook/react/uimanager/ThemedReactContext;->removeLifecycleEventListener(Lcom/facebook/react/bridge/LifecycleEventListener;)V

    .line 398
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->releasePlayer()V

    const/4 v0, 0x1

    .line 399
    iput-boolean v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->viewHasDropped:Z

    return-void
.end method

.method public clearSrc()V
    .locals 1

    .line 1968
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->source:Lcom/brentvatne/common/api/Source;

    invoke-virtual {v0}, Lcom/brentvatne/common/api/Source;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1969
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_0

    .line 1970
    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->stop()V

    .line 1971
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->clearMediaItems()V

    .line 1974
    :cond_0
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->exoPlayerView:Lcom/brentvatne/exoplayer/ExoPlayerView;

    invoke-virtual {v0}, Lcom/brentvatne/exoplayer/ExoPlayerView;->hideAds()V

    .line 1975
    new-instance v0, Lcom/brentvatne/common/api/Source;

    invoke-direct {v0}, Lcom/brentvatne/common/api/Source;-><init>()V

    iput-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->source:Lcom/brentvatne/common/api/Source;

    const/4 v0, 0x0

    .line 1976
    iput-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->mediaDataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

    .line 1977
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->clearResumePosition()V

    return-void
.end method

.method public disableTrack(I)V
    .locals 2

    .line 2015
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->trackSelector:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->getParameters()Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v0

    .line 2016
    invoke-virtual {v0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->buildUpon()Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 2017
    invoke-virtual {v0, p1, v1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setRendererDisabled(IZ)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object p1

    .line 2018
    invoke-virtual {p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->build()Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    move-result-object p1

    .line 2019
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->trackSelector:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->setParameters(Landroidx/media3/common/TrackSelectionParameters;)V

    return-void
.end method

.method public enterPictureInPictureMode()V
    .locals 3

    .line 2308
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    .line 2309
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->themedReactContext:Lcom/facebook/react/uimanager/ThemedReactContext;

    iget-boolean v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->isPaused:Z

    iget-object v2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->pictureInPictureReceiver:Lcom/brentvatne/receiver/PictureInPictureReceiver;

    invoke-static {v0, v1, v2}, Lcom/brentvatne/exoplayer/PictureInPictureUtil;->getPictureInPictureActions(Lcom/facebook/react/uimanager/ThemedReactContext;ZLcom/brentvatne/receiver/PictureInPictureReceiver;)Ljava/util/ArrayList;

    move-result-object v0

    .line 2310
    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->pictureInPictureParamsBuilder:Landroid/app/PictureInPictureParams$Builder;

    invoke-virtual {v1, v0}, Landroid/app/PictureInPictureParams$Builder;->setActions(Ljava/util/List;)Landroid/app/PictureInPictureParams$Builder;

    .line 2311
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->getPlaybackState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2312
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->pictureInPictureParamsBuilder:Landroid/app/PictureInPictureParams$Builder;

    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-static {v1}, Lcom/brentvatne/exoplayer/PictureInPictureUtil;->calcPictureInPictureAspectRatio(Landroidx/media3/exoplayer/ExoPlayer;)Landroid/util/Rational;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/PictureInPictureParams$Builder;->setAspectRatio(Landroid/util/Rational;)Landroid/app/PictureInPictureParams$Builder;

    .line 2314
    :cond_0
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->pictureInPictureParamsBuilder:Landroid/app/PictureInPictureParams$Builder;

    invoke-virtual {v0}, Landroid/app/PictureInPictureParams$Builder;->build()Landroid/app/PictureInPictureParams;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 2316
    :goto_0
    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->themedReactContext:Lcom/facebook/react/uimanager/ThemedReactContext;

    invoke-static {v1, v0}, Lcom/brentvatne/exoplayer/PictureInPictureUtil;->enterPictureInPictureMode(Lcom/facebook/react/uimanager/ThemedReactContext;Landroid/app/PictureInPictureParams;)V

    return-void
.end method

.method public exitPictureInPictureMode()V
    .locals 6

    .line 2320
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->themedReactContext:Lcom/facebook/react/uimanager/ThemedReactContext;

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/ThemedReactContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2323
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const v2, 0x1020002

    .line 2324
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 2326
    iget-object v2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->rootViewChildrenOriginalVisibility:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_3

    .line 2327
    iget-object v2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->exoPlayerView:Lcom/brentvatne/exoplayer/ExoPlayerView;

    invoke-virtual {v2}, Lcom/brentvatne/exoplayer/ExoPlayerView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->exoPlayerView:Lcom/brentvatne/exoplayer/ExoPlayerView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    move v2, v3

    .line 2328
    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 2329
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->rootViewChildrenOriginalVisibility:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2331
    :cond_2
    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->rootViewChildrenOriginalVisibility:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2334
    :cond_3
    invoke-virtual {v0}, Landroid/app/Activity;->isInPictureInPictureMode()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2335
    invoke-virtual {v0, v3}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    :cond_4
    return-void
.end method

.method public getCurrentPosition(Lcom/facebook/react/bridge/Promise;)V
    .locals 2

    .line 833
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_0

    .line 834
    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->getCurrentPosition()J

    move-result-wide v0

    long-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    .line 835
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    goto :goto_0

    .line 837
    :cond_0
    const-string v0, "PLAYER_NOT_AVAILABLE"

    const-string v1, "Player is not initialized."

    invoke-interface {p1, v0, v1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public getPositionInFirstPeriodMsForCurrentWindow(J)D
    .locals 3

    .line 314
    new-instance v0, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v0}, Landroidx/media3/common/Timeline$Window;-><init>()V

    .line 315
    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v1}, Landroidx/media3/exoplayer/ExoPlayer;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 316
    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v1}, Landroidx/media3/exoplayer/ExoPlayer;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v1

    iget-object v2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v2}, Landroidx/media3/exoplayer/ExoPlayer;->getCurrentMediaItemIndex()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    .line 318
    :cond_0
    iget-wide v0, v0, Landroidx/media3/common/Timeline$Window;->windowStartTimeMs:J

    add-long/2addr v0, p1

    long-to-double p1, v0

    return-wide p1
.end method

.method public getPreventsDisplaySleepDuringVideoPlayback()Z
    .locals 1

    .line 2435
    iget-boolean v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->preventsDisplaySleepDuringVideoPlayback:Z

    return v0
.end method

.method public getTrackRendererIndex(I)I
    .locals 3

    .line 1890
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_1

    .line 1891
    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->getRendererCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 1893
    iget-object v2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v2, v1}, Landroidx/media3/exoplayer/ExoPlayer;->getRendererType(I)I

    move-result v2

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public isUsingVideoABR()Z
    .locals 2

    .line 663
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->videoTrackType:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, "auto"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public onAdError(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V
    .locals 6

    .line 2567
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;->getError()Lcom/google/ads/interactivemedia/v3/api/AdError;

    move-result-object p1

    .line 2569
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/api/AdError;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 2570
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/api/AdError;->getErrorCode()Landroidx/annotation/InspectableProperty;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 2571
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/api/AdError;->getErrorType()Landroidx/annotation/InspectableProperty;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 2568
    const-string/jumbo v0, "message"

    const-string v2, "code"

    const-string/jumbo v4, "type"

    invoke-static/range {v0 .. v5}, Lio/sentry/react/RNSentryPackage$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    .line 2573
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->eventEmitter:Lcom/brentvatne/common/react/VideoEventEmitter;

    iget-object v0, v0, Lcom/brentvatne/common/react/VideoEventEmitter;->onReceiveAdEvent:Lkotlin/jvm/functions/Function2;

    const-string v1, "ERROR"

    invoke-interface {v0, v1, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onAdEvent(Lcom/google/ads/interactivemedia/v3/api/AdEvent;)V
    .locals 2

    .line 2558
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/api/AdEvent;->getAdData()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2559
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->eventEmitter:Lcom/brentvatne/common/react/VideoEventEmitter;

    iget-object v0, v0, Lcom/brentvatne/common/react/VideoEventEmitter;->onReceiveAdEvent:Lkotlin/jvm/functions/Function2;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/api/AdEvent;->getType()Landroidx/annotation/InspectableProperty;

    move-result-object v1

    invoke-interface {v1}, Landroidx/annotation/InspectableProperty;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/api/AdEvent;->getAdData()Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2561
    :cond_0
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->eventEmitter:Lcom/brentvatne/common/react/VideoEventEmitter;

    iget-object v0, v0, Lcom/brentvatne/common/react/VideoEventEmitter;->onReceiveAdEvent:Lkotlin/jvm/functions/Function2;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/api/AdEvent;->getType()Landroidx/annotation/InspectableProperty;

    move-result-object p1

    invoke-interface {p1}, Landroidx/annotation/InspectableProperty;->name()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public onAudioBecomingNoisy()V
    .locals 1

    .line 1474
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->eventEmitter:Lcom/brentvatne/common/react/VideoEventEmitter;

    iget-object v0, v0, Lcom/brentvatne/common/react/VideoEventEmitter;->onVideoAudioBecomingNoisy:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public onBandwidthSample(IJJ)V
    .locals 2

    .line 405
    iget-boolean p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->mReportBandwidth:Z

    if-eqz p1, :cond_8

    .line 406
    iget-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    const/4 p2, 0x0

    const/4 p3, 0x0

    if-nez p1, :cond_0

    .line 407
    iget-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->eventEmitter:Lcom/brentvatne/common/react/VideoEventEmitter;

    iget-object p1, p1, Lcom/brentvatne/common/react/VideoEventEmitter;->onVideoBandwidthUpdate:Lkotlin/jvm/functions/Function4;

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p4, p5, p3, p2}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 409
    :cond_0
    invoke-interface {p1}, Landroidx/media3/exoplayer/ExoPlayer;->getVideoFormat()Landroidx/media3/common/Format;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 410
    iget v0, p1, Landroidx/media3/common/Format;->rotationDegrees:I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_1

    iget v0, p1, Landroidx/media3/common/Format;->rotationDegrees:I

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, p3

    :goto_0
    if-eqz p1, :cond_4

    if-eqz v0, :cond_3

    .line 411
    iget v1, p1, Landroidx/media3/common/Format;->height:I

    goto :goto_1

    :cond_3
    iget v1, p1, Landroidx/media3/common/Format;->width:I

    goto :goto_1

    :cond_4
    move v1, p3

    :goto_1
    if-eqz p1, :cond_6

    if-eqz v0, :cond_5

    .line 412
    iget p3, p1, Landroidx/media3/common/Format;->width:I

    goto :goto_2

    :cond_5
    iget p3, p1, Landroidx/media3/common/Format;->height:I

    :cond_6
    :goto_2
    if-eqz p1, :cond_7

    .line 413
    iget-object p2, p1, Landroidx/media3/common/Format;->id:Ljava/lang/String;

    .line 414
    :cond_7
    iget-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->eventEmitter:Lcom/brentvatne/common/react/VideoEventEmitter;

    iget-object p1, p1, Lcom/brentvatne/common/react/VideoEventEmitter;->onVideoBandwidthUpdate:Lkotlin/jvm/functions/Function4;

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-interface {p1, p4, p3, p5, p2}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    :goto_3
    return-void
.end method

.method public onCues(Landroidx/media3/common/text/CueGroup;)V
    .locals 2

    .line 1930
    iget-object v0, p1, Landroidx/media3/common/text/CueGroup;->cues:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Landroidx/media3/common/text/CueGroup;->cues:Lcom/google/common/collect/ImmutableList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/text/Cue;

    iget-object v0, v0, Landroidx/media3/common/text/Cue;->text:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 1931
    iget-object p1, p1, Landroidx/media3/common/text/CueGroup;->cues:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p1, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/common/text/Cue;

    iget-object p1, p1, Landroidx/media3/common/text/Cue;->text:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1932
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->eventEmitter:Lcom/brentvatne/common/react/VideoEventEmitter;

    iget-object v0, v0, Lcom/brentvatne/common/react/VideoEventEmitter;->onTextTrackDataChanged:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 365
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->cleanupPlaybackService()V

    .line 366
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public onDrmKeysLoaded(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .locals 0

    .line 2500
    const-string p1, "DRM Info"

    const-string/jumbo p2, "onDrmKeysLoaded"

    invoke-static {p1, p2}, Lcom/brentvatne/common/toolbox/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDrmKeysRemoved(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .locals 0

    .line 2526
    const-string p1, "DRM Info"

    const-string/jumbo p2, "onDrmKeysRemoved"

    invoke-static {p1, p2}, Lcom/brentvatne/common/toolbox/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDrmKeysRestored(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .locals 0

    .line 2521
    const-string p1, "DRM Info"

    const-string/jumbo p2, "onDrmKeysRestored"

    invoke-static {p1, p2}, Lcom/brentvatne/common/toolbox/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDrmSessionAcquired(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;I)V
    .locals 0

    .line 2505
    const-string p1, "DRM Info"

    const-string/jumbo p2, "onDrmSessionAcquired"

    invoke-static {p1, p2}, Lcom/brentvatne/common/toolbox/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDrmSessionManagerError(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Ljava/lang/Exception;)V
    .locals 1

    .line 2515
    const-string p1, "DRM Info"

    const-string/jumbo p2, "onDrmSessionManagerError"

    invoke-static {p1, p2}, Lcom/brentvatne/common/toolbox/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2516
    iget-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->eventEmitter:Lcom/brentvatne/common/react/VideoEventEmitter;

    iget-object p1, p1, Lcom/brentvatne/common/react/VideoEventEmitter;->onVideoError:Lkotlin/jvm/functions/Function3;

    const-string v0, "3002"

    invoke-interface {p1, p2, p3, v0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onDrmSessionReleased(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .locals 0

    .line 2510
    const-string p1, "DRM Info"

    const-string/jumbo p2, "onDrmSessionReleased"

    invoke-static {p1, p2}, Lcom/brentvatne/common/toolbox/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onEvents(Landroidx/media3/common/Player;Landroidx/media3/common/Player$Events;)V
    .locals 5

    const/4 v0, 0x4

    .line 1485
    invoke-virtual {p2, v0}, Landroidx/media3/common/Player$Events;->contains(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x5

    invoke-virtual {p2, v1}, Landroidx/media3/common/Player$Events;->contains(I)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 1486
    :cond_0
    invoke-interface {p1}, Landroidx/media3/common/Player;->getPlaybackState()I

    move-result p2

    .line 1487
    invoke-interface {p1}, Landroidx/media3/common/Player;->getPlayWhenReady()Z

    move-result v1

    .line 1488
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onStateChanged: playWhenReady="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", playbackState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1489
    iget-object v3, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->eventEmitter:Lcom/brentvatne/common/react/VideoEventEmitter;

    iget-object v3, v3, Lcom/brentvatne/common/react/VideoEventEmitter;->onPlaybackRateChange:Lkotlin/jvm/functions/Function1;

    const/4 v4, 0x3

    if-eqz v1, :cond_1

    if-ne p2, v4, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v3, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-eq p2, v1, :cond_7

    const/4 p1, 0x2

    if-eq p2, p1, :cond_6

    if-eq p2, v4, :cond_3

    if-eq p2, v0, :cond_2

    .line 1530
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string/jumbo p2, "unknown"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_2

    .line 1523
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "ended"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1524
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->updateProgress()V

    .line 1525
    iget-object p2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->eventEmitter:Lcom/brentvatne/common/react/VideoEventEmitter;

    iget-object p2, p2, Lcom/brentvatne/common/react/VideoEventEmitter;->onVideoEnd:Lkotlin/jvm/functions/Function0;

    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 1526
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->onStopPlayback()V

    .line 1527
    invoke-virtual {p0, v3}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setKeepScreenOn(Z)V

    goto/16 :goto_2

    .line 1506
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string/jumbo v0, "ready"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1507
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->eventEmitter:Lcom/brentvatne/common/react/VideoEventEmitter;

    iget-object v0, v0, Lcom/brentvatne/common/react/VideoEventEmitter;->onReadyForDisplay:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 1508
    invoke-direct {p0, v3}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->onBuffering(Z)V

    .line 1509
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->clearProgressMessageHandler()V

    .line 1510
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->startProgressHandler()V

    .line 1511
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->videoLoaded()V

    .line 1512
    iget-boolean v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->selectTrackWhenReady:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->isUsingContentResolution:Z

    if-eqz v0, :cond_4

    .line 1513
    iput-boolean v3, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->selectTrackWhenReady:Z

    .line 1514
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->videoTrackType:Ljava/lang/String;

    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->videoTrackValue:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setSelectedTrack(ILjava/lang/String;Ljava/lang/String;)V

    .line 1517
    :cond_4
    iget-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playerControlView:Landroidx/media3/ui/LegacyPlayerControlView;

    if-eqz p1, :cond_5

    .line 1518
    invoke-virtual {p1}, Landroidx/media3/ui/LegacyPlayerControlView;->show()V

    .line 1520
    :cond_5
    iget-boolean p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->preventsDisplaySleepDuringVideoPlayback:Z

    invoke-virtual {p0, p1}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setKeepScreenOn(Z)V

    goto :goto_1

    .line 1500
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "buffering"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1501
    invoke-direct {p0, v1}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->onBuffering(Z)V

    .line 1502
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->clearProgressMessageHandler()V

    .line 1503
    iget-boolean p2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->preventsDisplaySleepDuringVideoPlayback:Z

    invoke-virtual {p0, p2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setKeepScreenOn(Z)V

    goto :goto_2

    .line 1492
    :cond_7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "idle"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1493
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->eventEmitter:Lcom/brentvatne/common/react/VideoEventEmitter;

    iget-object v0, v0, Lcom/brentvatne/common/react/VideoEventEmitter;->onVideoIdle:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 1494
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->clearProgressMessageHandler()V

    .line 1495
    invoke-interface {p1}, Landroidx/media3/common/Player;->getPlayWhenReady()Z

    move-result p1

    if-nez p1, :cond_8

    .line 1496
    invoke-virtual {p0, v3}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setKeepScreenOn(Z)V

    :cond_8
    :goto_1
    move-object p1, p2

    .line 1533
    :goto_2
    const-string p2, "ReactExoplayerView"

    invoke-static {p2, p1}, Lcom/brentvatne/common/toolbox/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public onHostDestroy()V
    .locals 0

    .line 392
    invoke-virtual {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->cleanUpResources()V

    return-void
.end method

.method public onHostPause()V
    .locals 6

    const/4 v0, 0x1

    .line 380
    iput-boolean v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->isInBackground:Z

    .line 381
    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->themedReactContext:Lcom/facebook/react/uimanager/ThemedReactContext;

    invoke-virtual {v1}, Lcom/facebook/react/uimanager/ThemedReactContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    .line 382
    sget v2, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/4 v3, 0x0

    const/16 v4, 0x18

    if-lt v2, v4, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/Activity;->isInPictureInPictureMode()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v3

    .line 383
    :goto_0
    sget v5, Landroidx/media3/common/util/Util;->SDK_INT:I

    if-lt v5, v4, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v3

    .line 384
    :goto_1
    iget-boolean v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playInBackground:Z

    if-nez v1, :cond_3

    if-nez v2, :cond_3

    if-eqz v0, :cond_2

    goto :goto_2

    .line 387
    :cond_2
    invoke-direct {p0, v3}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setPlayWhenReady(Z)V

    :cond_3
    :goto_2
    return-void
.end method

.method public onHostResume()V
    .locals 1

    .line 372
    iget-boolean v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playInBackground:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->isInBackground:Z

    if-nez v0, :cond_1

    .line 373
    :cond_0
    iget-boolean v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->isPaused:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setPlayWhenReady(Z)V

    :cond_1
    const/4 v0, 0x0

    .line 375
    iput-boolean v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->isInBackground:Z

    return-void
.end method

.method public onIsLoadingChanged(Z)V
    .locals 0

    return-void
.end method

.method public onIsPlayingChanged(Z)V
    .locals 4

    if-eqz p1, :cond_0

    .line 1838
    iget-boolean v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->isSeeking:Z

    if-eqz v0, :cond_0

    .line 1839
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->eventEmitter:Lcom/brentvatne/common/react/VideoEventEmitter;

    iget-object v0, v0, Lcom/brentvatne/common/react/VideoEventEmitter;->onVideoSeek:Lkotlin/jvm/functions/Function2;

    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v1}, Landroidx/media3/exoplayer/ExoPlayer;->getCurrentPosition()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->seekPosition:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1841
    :cond_0
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->themedReactContext:Lcom/facebook/react/uimanager/ThemedReactContext;

    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->pictureInPictureParamsBuilder:Landroid/app/PictureInPictureParams$Builder;

    iget-object v2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->pictureInPictureReceiver:Lcom/brentvatne/receiver/PictureInPictureReceiver;

    xor-int/lit8 v3, p1, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/brentvatne/exoplayer/PictureInPictureUtil;->applyPlayingStatus(Lcom/facebook/react/uimanager/ThemedReactContext;Landroid/app/PictureInPictureParams$Builder;Lcom/brentvatne/receiver/PictureInPictureReceiver;Z)V

    .line 1842
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->eventEmitter:Lcom/brentvatne/common/react/VideoEventEmitter;

    iget-object v0, v0, Lcom/brentvatne/common/react/VideoEventEmitter;->onVideoPlaybackStateChanged:Lkotlin/jvm/functions/Function2;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->isSeeking:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 1845
    iput-boolean p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->isSeeking:Z

    :cond_1
    return-void
.end method

.method public onMetadata(Landroidx/media3/common/Metadata;)V
    .locals 5

    .line 1903
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 1904
    :goto_0
    invoke-virtual {p1}, Landroidx/media3/common/Metadata;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 1905
    invoke-virtual {p1, v1}, Landroidx/media3/common/Metadata;->get(I)Landroidx/media3/common/Metadata$Entry;

    move-result-object v2

    .line 1907
    instance-of v3, v2, Landroidx/media3/extractor/metadata/id3/Id3Frame;

    if-eqz v3, :cond_1

    .line 1908
    invoke-virtual {p1, v1}, Landroidx/media3/common/Metadata;->get(I)Landroidx/media3/common/Metadata$Entry;

    move-result-object v2

    check-cast v2, Landroidx/media3/extractor/metadata/id3/Id3Frame;

    .line 1912
    instance-of v3, v2, Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    if-eqz v3, :cond_0

    .line 1913
    move-object v3, v2

    check-cast v3, Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    .line 1914
    iget-object v3, v3, Landroidx/media3/extractor/metadata/id3/TextInformationFrame;->value:Ljava/lang/String;

    goto :goto_1

    .line 1912
    :cond_0
    const-string v3, ""

    .line 1916
    :goto_1
    new-instance v4, Lcom/brentvatne/common/api/TimedMetadata;

    iget-object v2, v2, Landroidx/media3/extractor/metadata/id3/Id3Frame;->id:Ljava/lang/String;

    invoke-direct {v4, v2, v3}, Lcom/brentvatne/common/api/TimedMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1917
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1918
    :cond_1
    instance-of v3, v2, Landroidx/media3/extractor/metadata/emsg/EventMessage;

    if-eqz v3, :cond_2

    .line 1919
    check-cast v2, Landroidx/media3/extractor/metadata/emsg/EventMessage;

    .line 1920
    new-instance v3, Lcom/brentvatne/common/api/TimedMetadata;

    iget-object v4, v2, Landroidx/media3/extractor/metadata/emsg/EventMessage;->schemeIdUri:Ljava/lang/String;

    iget-object v2, v2, Landroidx/media3/extractor/metadata/emsg/EventMessage;->value:Ljava/lang/String;

    invoke-direct {v3, v4, v2}, Lcom/brentvatne/common/api/TimedMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1921
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1923
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "unhandled metadata "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ReactExoplayerView"

    invoke-static {v3, v2}, Lcom/brentvatne/common/toolbox/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1926
    :cond_3
    iget-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->eventEmitter:Lcom/brentvatne/common/react/VideoEventEmitter;

    iget-object p1, p1, Lcom/brentvatne/common/react/VideoEventEmitter;->onTimedMetadata:Lkotlin/jvm/functions/Function1;

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onPlaybackParametersChanged(Landroidx/media3/common/PlaybackParameters;)V
    .locals 1

    .line 1828
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->eventEmitter:Lcom/brentvatne/common/react/VideoEventEmitter;

    iget-object v0, v0, Lcom/brentvatne/common/react/VideoEventEmitter;->onPlaybackRateChange:Lkotlin/jvm/functions/Function1;

    iget p1, p1, Landroidx/media3/common/PlaybackParameters;->speed:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onPlayerError(Landroidx/media3/common/PlaybackException;)V
    .locals 5

    .line 1851
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ExoPlaybackException: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Landroidx/media3/common/PlaybackException;->errorCode:I

    invoke-static {v1}, Landroidx/media3/common/PlaybackException;->getErrorCodeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1852
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "2"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroidx/media3/common/PlaybackException;->errorCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1853
    iget v2, p1, Landroidx/media3/common/PlaybackException;->errorCode:I

    const/16 v3, 0x1770

    const/4 v4, 0x1

    if-eq v2, v3, :cond_0

    const/16 v3, 0x1772

    if-eq v2, v3, :cond_0

    const/16 v3, 0x1774

    if-eq v2, v3, :cond_0

    const/16 v3, 0x1776

    if-eq v2, v3, :cond_0

    const/16 v3, 0x1777

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 1859
    :cond_0
    iget-boolean v2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->hasDrmFailed:Z

    if-nez v2, :cond_1

    .line 1861
    iput-boolean v4, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->hasDrmFailed:Z

    .line 1862
    iput-boolean v4, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playerNeedsSource:Z

    .line 1863
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->updateResumePosition()V

    .line 1864
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->initializePlayer()V

    .line 1865
    invoke-direct {p0, v4}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setPlayWhenReady(Z)V

    return-void

    .line 1872
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->eventEmitter:Lcom/brentvatne/common/react/VideoEventEmitter;

    iget-object v2, v2, Lcom/brentvatne/common/react/VideoEventEmitter;->onVideoError:Lkotlin/jvm/functions/Function3;

    invoke-interface {v2, v0, p1, v1}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1873
    iput-boolean v4, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playerNeedsSource:Z

    .line 1874
    invoke-static {p1}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->isBehindLiveWindow(Landroidx/media3/common/PlaybackException;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1875
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->clearResumePosition()V

    .line 1876
    iget-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz p1, :cond_3

    .line 1877
    invoke-interface {p1}, Landroidx/media3/exoplayer/ExoPlayer;->seekToDefaultPosition()V

    .line 1878
    iget-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {p1}, Landroidx/media3/exoplayer/ExoPlayer;->prepare()V

    goto :goto_1

    .line 1881
    :cond_2
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->updateResumePosition()V

    :cond_3
    :goto_1
    return-void
.end method

.method public onPositionDiscontinuity(Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;I)V
    .locals 3

    const/4 p1, 0x2

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 1786
    iput-boolean v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->isSeeking:Z

    .line 1787
    iget-wide v1, p2, Landroidx/media3/common/Player$PositionInfo;->positionMs:J

    iput-wide v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->seekPosition:J

    .line 1788
    iget-boolean p2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->isUsingContentResolution:Z

    if-eqz p2, :cond_0

    .line 1790
    iget-object p2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->videoTrackType:Ljava/lang/String;

    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->videoTrackValue:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v1}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setSelectedTrack(ILjava/lang/String;Ljava/lang/String;)V

    .line 1794
    :cond_0
    iget-boolean p2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playerNeedsSource:Z

    if-eqz p2, :cond_1

    .line 1798
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->updateResumePosition()V

    .line 1800
    :cond_1
    iget-boolean p2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->isUsingContentResolution:Z

    if-eqz p2, :cond_2

    .line 1802
    iget-object p2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->videoTrackType:Ljava/lang/String;

    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->videoTrackValue:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v1}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setSelectedTrack(ILjava/lang/String;Ljava/lang/String;)V

    .line 1803
    iput-boolean v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->selectTrackWhenReady:Z

    :cond_2
    if-nez p3, :cond_3

    .line 1807
    iget-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 1808
    invoke-interface {p1}, Landroidx/media3/exoplayer/ExoPlayer;->getRepeatMode()I

    move-result p1

    if-ne p1, v0, :cond_3

    .line 1809
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->updateProgress()V

    .line 1810
    iget-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->eventEmitter:Lcom/brentvatne/common/react/VideoEventEmitter;

    iget-object p1, p1, Lcom/brentvatne/common/react/VideoEventEmitter;->onVideoEnd:Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method public onTimelineChanged(Landroidx/media3/common/Timeline;I)V
    .locals 0

    return-void
.end method

.method public onTracksChanged(Landroidx/media3/common/Tracks;)V
    .locals 1

    .line 1821
    iget-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->eventEmitter:Lcom/brentvatne/common/react/VideoEventEmitter;

    iget-object p1, p1, Lcom/brentvatne/common/react/VideoEventEmitter;->onTextTracks:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->getTextTrackInfo()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1822
    iget-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->eventEmitter:Lcom/brentvatne/common/react/VideoEventEmitter;

    iget-object p1, p1, Lcom/brentvatne/common/react/VideoEventEmitter;->onAudioTracks:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->getAudioTrackInfo()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1823
    iget-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->eventEmitter:Lcom/brentvatne/common/react/VideoEventEmitter;

    iget-object p1, p1, Lcom/brentvatne/common/react/VideoEventEmitter;->onVideoTracks:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->getVideoTrackInfo()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onVolumeChanged(F)V
    .locals 1

    .line 1833
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->eventEmitter:Lcom/brentvatne/common/react/VideoEventEmitter;

    iget-object v0, v0, Lcom/brentvatne/common/react/VideoEventEmitter;->onVolumeChange:Lkotlin/jvm/functions/Function1;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public seekTo(J)V
    .locals 1

    .line 2379
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_0

    .line 2380
    invoke-interface {v0, p1, p2}, Landroidx/media3/exoplayer/ExoPlayer;->seekTo(J)V

    :cond_0
    return-void
.end method

.method public setAudioOutput(Lcom/brentvatne/exoplayer/AudioOutput;)V
    .locals 1

    .line 2365
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->audioOutput:Lcom/brentvatne/exoplayer/AudioOutput;

    if-eq v0, p1, :cond_0

    .line 2366
    iput-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->audioOutput:Lcom/brentvatne/exoplayer/AudioOutput;

    .line 2367
    invoke-direct {p0, p1}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->changeAudioOutput(Lcom/brentvatne/exoplayer/AudioOutput;)V

    :cond_0
    return-void
.end method

.method public setBufferingStrategy(Lcom/brentvatne/common/api/BufferingStrategy$BufferingStrategyEnum;)V
    .locals 0

    .line 2431
    iput-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->bufferingStrategy:Lcom/brentvatne/common/api/BufferingStrategy$BufferingStrategyEnum;

    return-void
.end method

.method public setCmcdConfigurationFactory(Landroidx/media3/exoplayer/upstream/CmcdConfiguration$Factory;)V
    .locals 0

    .line 276
    iput-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->cmcdConfigurationFactory:Landroidx/media3/exoplayer/upstream/CmcdConfiguration$Factory;

    return-void
.end method

.method public setControls(Z)V
    .locals 1

    .line 2535
    iput-boolean p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->controls:Z

    if-eqz p1, :cond_0

    .line 2537
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->addPlayerControl()V

    .line 2538
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->updateFullScreenButtonVisibility()V

    goto :goto_0

    .line 2540
    :cond_0
    iget-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playerControlView:Landroidx/media3/ui/LegacyPlayerControlView;

    invoke-virtual {p0, p1}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->indexOfChild(Landroid/view/View;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 2542
    invoke-virtual {p0, p1}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->removeViewAt(I)V

    .line 2545
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->refreshControlsStyles()V

    return-void
.end method

.method public setControlsStyles(Lcom/brentvatne/common/api/ControlsConfig;)V
    .locals 0

    .line 2577
    iput-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->controlsConfig:Lcom/brentvatne/common/api/ControlsConfig;

    .line 2578
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->refreshControlsStyles()V

    return-void
.end method

.method public setDebug(Z)V
    .locals 0

    .line 667
    iput-boolean p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->enableDebug:Z

    .line 668
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->refreshDebugState()V

    return-void
.end method

.method public setDisableDisconnectError(Z)V
    .locals 0

    .line 2451
    iput-boolean p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->disableDisconnectError:Z

    return-void
.end method

.method public setDisableFocus(Z)V
    .locals 0

    .line 2412
    iput-boolean p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->disableFocus:Z

    return-void
.end method

.method public setEnterPictureInPictureOnLeave(Z)V
    .locals 2

    .line 2259
    iput-boolean p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->enterPictureInPictureOnLeave:Z

    .line 2260
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_0

    .line 2261
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->themedReactContext:Lcom/facebook/react/uimanager/ThemedReactContext;

    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->pictureInPictureParamsBuilder:Landroid/app/PictureInPictureParams$Builder;

    invoke-static {v0, v1, p1}, Lcom/brentvatne/exoplayer/PictureInPictureUtil;->applyAutoEnterEnabled(Lcom/facebook/react/uimanager/ThemedReactContext;Landroid/app/PictureInPictureParams$Builder;Z)V

    :cond_0
    return-void
.end method

.method public setFocusable(Z)V
    .locals 1

    .line 2416
    iput-boolean p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->focusable:Z

    .line 2417
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->exoPlayerView:Lcom/brentvatne/exoplayer/ExoPlayerView;

    invoke-virtual {v0, p1}, Lcom/brentvatne/exoplayer/ExoPlayerView;->setFocusable(Z)V

    return-void
.end method

.method public setFullscreen(Z)V
    .locals 7

    .line 2455
    iget-boolean v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->isFullscreen:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 2458
    :cond_0
    iput-boolean p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->isFullscreen:Z

    .line 2460
    iget-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->themedReactContext:Lcom/facebook/react/uimanager/ThemedReactContext;

    invoke-virtual {p1}, Lcom/facebook/react/uimanager/ThemedReactContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 2465
    :cond_1
    iget-boolean p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->isFullscreen:Z

    if-eqz p1, :cond_3

    .line 2466
    new-instance p1, Lcom/brentvatne/exoplayer/FullScreenPlayerView;

    invoke-virtual {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->exoPlayerView:Lcom/brentvatne/exoplayer/ExoPlayerView;

    iget-object v4, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playerControlView:Landroidx/media3/ui/LegacyPlayerControlView;

    new-instance v5, Lcom/brentvatne/exoplayer/ReactExoplayerView$6;

    const/4 v0, 0x1

    invoke-direct {v5, p0, v0}, Lcom/brentvatne/exoplayer/ReactExoplayerView$6;-><init>(Lcom/brentvatne/exoplayer/ReactExoplayerView;Z)V

    iget-object v6, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->controlsConfig:Lcom/brentvatne/common/api/ControlsConfig;

    move-object v0, p1

    move-object v3, p0

    invoke-direct/range {v0 .. v6}, Lcom/brentvatne/exoplayer/FullScreenPlayerView;-><init>(Landroid/content/Context;Lcom/brentvatne/exoplayer/ExoPlayerView;Lcom/brentvatne/exoplayer/ReactExoplayerView;Landroidx/media3/ui/LegacyPlayerControlView;Landroidx/activity/OnBackPressedCallback;Lcom/brentvatne/common/api/ControlsConfig;)V

    iput-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->fullScreenPlayerView:Lcom/brentvatne/exoplayer/FullScreenPlayerView;

    .line 2472
    iget-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->eventEmitter:Lcom/brentvatne/common/react/VideoEventEmitter;

    iget-object p1, p1, Lcom/brentvatne/common/react/VideoEventEmitter;->onVideoFullscreenPlayerWillPresent:Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 2473
    iget-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->fullScreenPlayerView:Lcom/brentvatne/exoplayer/FullScreenPlayerView;

    if-eqz p1, :cond_2

    .line 2474
    invoke-virtual {p1}, Lcom/brentvatne/exoplayer/FullScreenPlayerView;->show()V

    .line 2476
    :cond_2
    new-instance p1, Lcom/brentvatne/exoplayer/ReactExoplayerView$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView$$ExternalSyntheticLambda4;-><init>(Lcom/brentvatne/exoplayer/ReactExoplayerView;)V

    invoke-static {p1}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 2480
    :cond_3
    iget-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->eventEmitter:Lcom/brentvatne/common/react/VideoEventEmitter;

    iget-object p1, p1, Lcom/brentvatne/common/react/VideoEventEmitter;->onVideoFullscreenPlayerWillDismiss:Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 2481
    iget-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->fullScreenPlayerView:Lcom/brentvatne/exoplayer/FullScreenPlayerView;

    if-eqz p1, :cond_4

    .line 2482
    invoke-virtual {p1}, Lcom/brentvatne/exoplayer/FullScreenPlayerView;->dismiss()V

    .line 2483
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->reLayoutControls()V

    .line 2484
    iget-boolean p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->controls:Z

    invoke-virtual {p0, p1}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setControls(Z)V

    .line 2486
    :cond_4
    new-instance p1, Lcom/brentvatne/exoplayer/ReactExoplayerView$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView$$ExternalSyntheticLambda5;-><init>(Lcom/brentvatne/exoplayer/ReactExoplayerView;)V

    invoke-static {p1}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)Z

    .line 2491
    :goto_0
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->updateFullScreenButtonVisibility()V

    return-void
.end method

.method public setHideShutterView(Z)V
    .locals 1

    .line 2495
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->exoPlayerView:Lcom/brentvatne/exoplayer/ExoPlayerView;

    invoke-virtual {v0, p1}, Lcom/brentvatne/exoplayer/ExoPlayerView;->setHideShutterView(Z)V

    return-void
.end method

.method protected setIsInPictureInPicture(Z)V
    .locals 5

    .line 2266
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->eventEmitter:Lcom/brentvatne/common/react/VideoEventEmitter;

    iget-object v0, v0, Lcom/brentvatne/common/react/VideoEventEmitter;->onPictureInPictureStatusChanged:Lkotlin/jvm/functions/Function1;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2268
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->fullScreenPlayerView:Lcom/brentvatne/exoplayer/FullScreenPlayerView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/brentvatne/exoplayer/FullScreenPlayerView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 2269
    iget-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->fullScreenPlayerView:Lcom/brentvatne/exoplayer/FullScreenPlayerView;

    invoke-virtual {p1}, Lcom/brentvatne/exoplayer/FullScreenPlayerView;->hideWithoutPlayer()V

    :cond_0
    return-void

    .line 2273
    :cond_1
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->themedReactContext:Lcom/facebook/react/uimanager/ThemedReactContext;

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/ThemedReactContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 2276
    :cond_2
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    .line 2277
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2279
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x0

    if-eqz p1, :cond_6

    .line 2284
    iget-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->exoPlayerView:Lcom/brentvatne/exoplayer/ExoPlayerView;

    invoke-virtual {p1}, Lcom/brentvatne/exoplayer/ExoPlayerView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_3

    .line 2286
    iget-object v3, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->exoPlayerView:Lcom/brentvatne/exoplayer/ExoPlayerView;

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2288
    :cond_3
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-ge v2, p1, :cond_5

    .line 2289
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iget-object v3, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->exoPlayerView:Lcom/brentvatne/exoplayer/ExoPlayerView;

    if-eq p1, v3, :cond_4

    .line 2290
    iget-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->rootViewChildrenOriginalVisibility:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2291
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    const/16 v3, 0x8

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2294
    :cond_5
    iget-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->exoPlayerView:Lcom/brentvatne/exoplayer/ExoPlayerView;

    invoke-virtual {v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 2296
    :cond_6
    iget-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->exoPlayerView:Lcom/brentvatne/exoplayer/ExoPlayerView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2297
    iget-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->rootViewChildrenOriginalVisibility:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_8

    move p1, v2

    .line 2298
    :goto_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge p1, v3, :cond_7

    .line 2299
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->rootViewChildrenOriginalVisibility:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 2301
    :cond_7
    iget-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->exoPlayerView:Lcom/brentvatne/exoplayer/ExoPlayerView;

    invoke-virtual {p0, p1, v2, v1}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_8
    :goto_2
    return-void
.end method

.method public setMaxBitRateModifier(I)V
    .locals 2

    .line 2399
    iput p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->maxBitRate:I

    .line 2400
    iget-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->isUsingVideoABR()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2402
    iget-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->trackSelector:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

    invoke-virtual {p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->buildUponParameters()Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object v0

    .line 2403
    iget v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->maxBitRate:I

    if-nez v1, :cond_0

    const v1, 0x7fffffff

    :cond_0
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setMaxVideoBitrate(I)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object v0

    .line 2402
    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->setParameters(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;)V

    :cond_1
    return-void
.end method

.method public setMutedModifier(Z)V
    .locals 1

    .line 2340
    iput-boolean p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->muted:Z

    .line 2341
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2342
    :cond_0
    iget p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->audioVolume:F

    :goto_0
    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/ExoPlayer;->setVolume(F)V

    :cond_1
    return-void
.end method

.method public setPausedModifier(Z)V
    .locals 1

    .line 2248
    iput-boolean p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->isPaused:Z

    .line 2249
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 2251
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->resumePlayback()V

    goto :goto_0

    .line 2253
    :cond_0
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->pausePlayback()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setPlayInBackground(Z)V
    .locals 0

    .line 2408
    iput-boolean p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playInBackground:Z

    return-void
.end method

.method public setPreventsDisplaySleepDuringVideoPlayback(Z)V
    .locals 0

    .line 2011
    iput-boolean p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->preventsDisplaySleepDuringVideoPlayback:Z

    return-void
.end method

.method public setProgressUpdateInterval(F)V
    .locals 0

    .line 1981
    iput p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->mProgressUpdateInterval:F

    return-void
.end method

.method public setRateModifier(F)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 2386
    const-string p1, "ReactExoplayerView"

    const-string v0, "cannot set rate <= 0"

    invoke-static {p1, v0}, Lcom/brentvatne/common/toolbox/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2390
    :cond_0
    iput p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->rate:F

    .line 2392
    iget-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz p1, :cond_1

    .line 2393
    new-instance p1, Landroidx/media3/common/PlaybackParameters;

    iget v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->rate:F

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p1, v0, v1}, Landroidx/media3/common/PlaybackParameters;-><init>(FF)V

    .line 2394
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/ExoPlayer;->setPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)V

    :cond_1
    return-void
.end method

.method public setRepeatModifier(Z)V
    .locals 2

    .line 2000
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    .line 2002
    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/ExoPlayer;->setRepeatMode(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2004
    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/ExoPlayer;->setRepeatMode(I)V

    .line 2007
    :cond_1
    :goto_0
    iput-boolean p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->repeat:Z

    return-void
.end method

.method public setReportBandwidth(Z)V
    .locals 0

    .line 1985
    iput-boolean p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->mReportBandwidth:Z

    return-void
.end method

.method public setResizeModeModifier(I)V
    .locals 1

    .line 1989
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->exoPlayerView:Lcom/brentvatne/exoplayer/ExoPlayerView;

    if-eqz v0, :cond_0

    .line 1990
    invoke-virtual {v0, p1}, Lcom/brentvatne/exoplayer/ExoPlayerView;->setResizeMode(I)V

    :cond_0
    return-void
.end method

.method public setSelectedAudioTrack(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2236
    iput-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->audioTrackType:Ljava/lang/String;

    .line 2237
    iput-object p2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->audioTrackValue:Ljava/lang/String;

    const/4 v0, 0x1

    .line 2238
    invoke-virtual {p0, v0, p1, p2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setSelectedTrack(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSelectedTextTrack(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2242
    iput-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->textTrackType:Ljava/lang/String;

    .line 2243
    iput-object p2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->textTrackValue:Ljava/lang/String;

    const/4 v0, 0x3

    .line 2244
    invoke-virtual {p0, v0, p1, p2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setSelectedTrack(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSelectedTrack(ILjava/lang/String;Ljava/lang/String;)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    .line 2023
    iget-object v3, v0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    if-nez v3, :cond_0

    return-void

    .line 2024
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->getTrackRendererIndex(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    return-void

    .line 2028
    :cond_1
    iget-object v5, v0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->trackSelector:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

    invoke-virtual {v5}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->getCurrentMappedTrackInfo()Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;

    move-result-object v5

    if-nez v5, :cond_2

    return-void

    .line 2033
    :cond_2
    invoke-virtual {v5, v3}, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Landroidx/media3/exoplayer/source/TrackGroupArray;

    move-result-object v5

    .line 2035
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    .line 2036
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2038
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2039
    const-string v8, "default"

    goto :goto_0

    :cond_3
    move-object/from16 v8, p2

    .line 2042
    :goto_0
    const-string v9, "disabled"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 2043
    invoke-virtual {v0, v3}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->disableTrack(I)V

    return-void

    .line 2045
    :cond_4
    const-string v9, "language"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-eqz v9, :cond_7

    move v8, v7

    .line 2046
    :goto_1
    iget v9, v5, Landroidx/media3/exoplayer/source/TrackGroupArray;->length:I

    if-ge v8, v9, :cond_6

    .line 2047
    invoke-virtual {v5, v8}, Landroidx/media3/exoplayer/source/TrackGroupArray;->get(I)Landroidx/media3/common/TrackGroup;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroidx/media3/common/TrackGroup;->getFormat(I)Landroidx/media3/common/Format;

    move-result-object v9

    .line 2048
    iget-object v13, v9, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    if-eqz v13, :cond_5

    iget-object v9, v9, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    goto :goto_2

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_6
    move v8, v4

    :goto_2
    move v2, v4

    goto/16 :goto_a

    .line 2053
    :cond_7
    const-string/jumbo v9, "title"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    move v8, v7

    .line 2054
    :goto_3
    iget v9, v5, Landroidx/media3/exoplayer/source/TrackGroupArray;->length:I

    if-ge v8, v9, :cond_6

    .line 2055
    invoke-virtual {v5, v8}, Landroidx/media3/exoplayer/source/TrackGroupArray;->get(I)Landroidx/media3/common/TrackGroup;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroidx/media3/common/TrackGroup;->getFormat(I)Landroidx/media3/common/Format;

    move-result-object v9

    .line 2056
    iget-object v13, v9, Landroidx/media3/common/Format;->label:Ljava/lang/String;

    if-eqz v13, :cond_8

    iget-object v9, v9, Landroidx/media3/common/Format;->label:Ljava/lang/String;

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    goto :goto_2

    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 2061
    :cond_9
    const-string v9, "index"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 2062
    invoke-static {v2, v4}, Lcom/brentvatne/common/toolbox/ReactBridgeUtils;->safeParseInt(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v4, :cond_6

    if-ne v1, v11, :cond_b

    .line 2064
    iget v8, v5, Landroidx/media3/exoplayer/source/TrackGroupArray;->length:I

    if-ne v8, v12, :cond_b

    .line 2066
    invoke-virtual {v5, v7}, Landroidx/media3/exoplayer/source/TrackGroupArray;->get(I)Landroidx/media3/common/TrackGroup;

    move-result-object v8

    iget v8, v8, Landroidx/media3/common/TrackGroup;->length:I

    if-ge v2, v8, :cond_a

    .line 2067
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v6, v7, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_a
    move v8, v7

    goto :goto_2

    .line 2069
    :cond_b
    iget v8, v5, Landroidx/media3/exoplayer/source/TrackGroupArray;->length:I

    if-ge v2, v8, :cond_6

    move v8, v2

    goto :goto_2

    .line 2073
    :cond_c
    const-string/jumbo v9, "resolution"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_17

    .line 2074
    invoke-static {v2, v4}, Lcom/brentvatne/common/toolbox/ReactBridgeUtils;->safeParseInt(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v4, :cond_16

    move v9, v4

    move v8, v7

    .line 2076
    :goto_4
    iget v13, v5, Landroidx/media3/exoplayer/source/TrackGroupArray;->length:I

    if-ge v8, v13, :cond_15

    .line 2077
    invoke-virtual {v5, v8}, Landroidx/media3/exoplayer/source/TrackGroupArray;->get(I)Landroidx/media3/common/TrackGroup;

    move-result-object v13

    move/from16 v16, v4

    move v15, v7

    const/4 v10, 0x0

    .line 2081
    :goto_5
    iget v14, v13, Landroidx/media3/common/TrackGroup;->length:I

    if-ge v15, v14, :cond_11

    .line 2082
    invoke-virtual {v13, v15}, Landroidx/media3/common/TrackGroup;->getFormat(I)Landroidx/media3/common/Format;

    move-result-object v14

    .line 2083
    iget v11, v14, Landroidx/media3/common/Format;->height:I

    if-ne v11, v2, :cond_d

    .line 2085
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v6, v7, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v10, v4

    move v9, v8

    const/4 v14, 0x0

    goto :goto_7

    .line 2090
    :cond_d
    iget-boolean v11, v0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->isUsingContentResolution:Z

    if-eqz v11, :cond_10

    if-eqz v10, :cond_f

    .line 2093
    iget v11, v14, Landroidx/media3/common/Format;->bitrate:I

    iget v12, v10, Landroidx/media3/common/Format;->bitrate:I

    if-gt v11, v12, :cond_e

    iget v11, v14, Landroidx/media3/common/Format;->height:I

    iget v12, v10, Landroidx/media3/common/Format;->height:I

    if-le v11, v12, :cond_10

    :cond_e
    iget v11, v14, Landroidx/media3/common/Format;->height:I

    if-ge v11, v2, :cond_10

    goto :goto_6

    .line 2098
    :cond_f
    iget v11, v14, Landroidx/media3/common/Format;->height:I

    if-ge v11, v2, :cond_10

    :goto_6
    move-object v10, v14

    move/from16 v16, v15

    :cond_10
    add-int/lit8 v15, v15, 0x1

    const/4 v11, 0x2

    const/4 v12, 0x1

    goto :goto_5

    :cond_11
    move v12, v7

    move-object v14, v10

    move/from16 v10, v16

    :goto_7
    if-nez v14, :cond_13

    .line 2105
    iget-boolean v11, v0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->isUsingContentResolution:Z

    if-eqz v11, :cond_13

    if-nez v12, :cond_13

    move v11, v7

    const v12, 0x7fffffff

    .line 2108
    :goto_8
    iget v15, v13, Landroidx/media3/common/TrackGroup;->length:I

    if-ge v11, v15, :cond_13

    .line 2109
    invoke-virtual {v13, v11}, Landroidx/media3/common/TrackGroup;->getFormat(I)Landroidx/media3/common/Format;

    move-result-object v15

    .line 2110
    iget v4, v15, Landroidx/media3/common/Format;->height:I

    if-ge v4, v12, :cond_12

    .line 2111
    iget v12, v15, Landroidx/media3/common/Format;->height:I

    .line 2113
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v6, v7, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v9, v8

    :cond_12
    add-int/lit8 v11, v11, 0x1

    const/4 v4, -0x1

    goto :goto_8

    :cond_13
    if-eqz v14, :cond_14

    const/4 v4, -0x1

    if-eq v10, v4, :cond_14

    .line 2121
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v6, v7, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v9, v8

    :cond_14
    add-int/lit8 v8, v8, 0x1

    const/4 v4, -0x1

    const/4 v11, 0x2

    const/4 v12, 0x1

    goto/16 :goto_4

    :cond_15
    move v8, v9

    goto :goto_9

    :cond_16
    const/4 v8, -0x1

    :goto_9
    const/4 v2, -0x1

    goto :goto_a

    :cond_17
    const/4 v2, 0x3

    if-ne v1, v2, :cond_18

    .line 2125
    sget v2, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v4, 0x12

    if-le v2, v4, :cond_18

    .line 2127
    iget-object v2, v0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->themedReactContext:Lcom/facebook/react/uimanager/ThemedReactContext;

    const-string v4, "captioning"

    .line 2128
    invoke-virtual {v2, v4}, Lcom/facebook/react/uimanager/ThemedReactContext;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/CaptioningManager;

    if-eqz v2, :cond_16

    .line 2129
    invoke-virtual {v2}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 2130
    invoke-direct {v0, v5}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->getGroupIndexForDefaultLocale(Landroidx/media3/exoplayer/source/TrackGroupArray;)I

    move-result v2

    move v8, v2

    goto :goto_9

    :cond_18
    const/4 v2, 0x1

    if-ne v3, v2, :cond_19

    .line 2133
    invoke-direct {v0, v5}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->getGroupIndexForDefaultLocale(Landroidx/media3/exoplayer/source/TrackGroupArray;)I

    move-result v8

    goto :goto_9

    :cond_19
    const/4 v2, -0x1

    const/4 v8, -0x1

    :goto_a
    if-ne v8, v2, :cond_20

    const/4 v2, 0x2

    if-ne v1, v2, :cond_20

    .line 2136
    iget v2, v5, Landroidx/media3/exoplayer/source/TrackGroupArray;->length:I

    if-eqz v2, :cond_20

    .line 2138
    invoke-virtual {v5, v7}, Landroidx/media3/exoplayer/source/TrackGroupArray;->get(I)Landroidx/media3/common/TrackGroup;

    move-result-object v2

    .line 2139
    new-instance v6, Ljava/util/ArrayList;

    iget v4, v2, Landroidx/media3/common/TrackGroup;->length:I

    invoke-direct {v6, v4}, Ljava/util/ArrayList;-><init>(I)V

    move v4, v7

    .line 2141
    :goto_b
    iget v8, v2, Landroidx/media3/common/TrackGroup;->length:I

    if-ge v4, v8, :cond_1a

    .line 2142
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_1a
    move v4, v7

    move v8, v4

    .line 2147
    :goto_c
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v4, v9, :cond_1c

    .line 2148
    invoke-virtual {v2, v4}, Landroidx/media3/common/TrackGroup;->getFormat(I)Landroidx/media3/common/Format;

    move-result-object v9

    .line 2149
    invoke-direct {v0, v9}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->isFormatSupported(Landroidx/media3/common/Format;)Z

    move-result v9

    if-eqz v9, :cond_1b

    add-int/lit8 v8, v8, 0x1

    :cond_1b
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 2153
    :cond_1c
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v9, 0x1

    if-ne v4, v9, :cond_1d

    :goto_d
    move v8, v7

    goto :goto_f

    .line 2157
    :cond_1d
    new-instance v4, Ljava/util/ArrayList;

    add-int/2addr v8, v9

    invoke-direct {v4, v8}, Ljava/util/ArrayList;-><init>(I)V

    move v8, v7

    .line 2158
    :goto_e
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_1f

    .line 2159
    invoke-virtual {v2, v8}, Landroidx/media3/common/TrackGroup;->getFormat(I)Landroidx/media3/common/Format;

    move-result-object v9

    .line 2160
    invoke-direct {v0, v9}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->isFormatSupported(Landroidx/media3/common/Format;)Z

    move-result v9

    if-eqz v9, :cond_1e

    .line 2161
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1e
    add-int/lit8 v8, v8, 0x1

    goto :goto_e

    :cond_1f
    move-object v6, v4

    goto :goto_d

    :cond_20
    :goto_f
    const/4 v2, -0x1

    if-ne v8, v2, :cond_21

    .line 2168
    invoke-virtual {v0, v3}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->disableTrack(I)V

    return-void

    .line 2172
    :cond_21
    new-instance v2, Landroidx/media3/common/TrackSelectionOverride;

    invoke-virtual {v5, v8}, Landroidx/media3/exoplayer/source/TrackGroupArray;->get(I)Landroidx/media3/common/TrackGroup;

    move-result-object v4

    invoke-direct {v2, v4, v6}, Landroidx/media3/common/TrackSelectionOverride;-><init>(Landroidx/media3/common/TrackGroup;Ljava/util/List;)V

    .line 2174
    iget-object v4, v0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->trackSelector:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

    invoke-virtual {v4}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->getParameters()Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v4

    .line 2175
    invoke-virtual {v4}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->buildUpon()Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object v4

    const/4 v5, 0x1

    .line 2176
    invoke-virtual {v4, v5}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setExceedAudioConstraintsIfNecessary(Z)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object v4

    .line 2177
    invoke-virtual {v4, v5}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setExceedRendererCapabilitiesIfNecessary(Z)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object v4

    .line 2178
    invoke-virtual {v4, v5}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setExceedVideoConstraintsIfNecessary(Z)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object v4

    .line 2179
    invoke-virtual {v4, v3, v7}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setRendererDisabled(IZ)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object v3

    .line 2180
    invoke-virtual {v2}, Landroidx/media3/common/TrackSelectionOverride;->getType()I

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->clearOverridesOfType(I)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object v3

    const/4 v4, 0x2

    if-ne v1, v4, :cond_23

    .line 2182
    invoke-virtual/range {p0 .. p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->isUsingVideoABR()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 2183
    iget v1, v0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->maxBitRate:I

    if-nez v1, :cond_22

    const v10, 0x7fffffff

    goto :goto_10

    :cond_22
    move v10, v1

    :goto_10
    invoke-virtual {v3, v10}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setMaxVideoBitrate(I)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    goto :goto_11

    .line 2185
    :cond_23
    invoke-virtual {v3, v2}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->addOverride(Landroidx/media3/common/TrackSelectionOverride;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 2188
    :goto_11
    iget-object v1, v0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->trackSelector:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

    invoke-virtual {v3}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->build()Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->setParameters(Landroidx/media3/common/TrackSelectionParameters;)V

    return-void
.end method

.method public setSelectedVideoTrack(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2230
    iput-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->videoTrackType:Ljava/lang/String;

    .line 2231
    iput-object p2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->videoTrackValue:Ljava/lang/String;

    .line 2232
    iget-boolean v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->loadVideoStarted:Z

    if-nez v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1, p2}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setSelectedTrack(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setShowNotificationControls(Z)V
    .locals 1

    .line 2421
    iput-boolean p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->showNotificationControls:Z

    .line 2423
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playbackServiceConnection:Landroid/content/ServiceConnection;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 2424
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setupPlaybackService()V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    if-eqz v0, :cond_1

    .line 2426
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->cleanupPlaybackService()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setShutterColor(Ljava/lang/Integer;)V
    .locals 1

    .line 2553
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->exoPlayerView:Lcom/brentvatne/exoplayer/ExoPlayerView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/brentvatne/exoplayer/ExoPlayerView;->setShutterColor(I)V

    return-void
.end method

.method public setSrc(Lcom/brentvatne/common/api/Source;)V
    .locals 4

    .line 1937
    invoke-virtual {p1}, Lcom/brentvatne/common/api/Source;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1938
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->clearResumePosition()V

    .line 1939
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->source:Lcom/brentvatne/common/api/Source;

    invoke-virtual {p1, v0}, Lcom/brentvatne/common/api/Source;->isEquals(Lcom/brentvatne/common/api/Source;)Z

    move-result v0

    const/4 v1, 0x0

    .line 1940
    iput-boolean v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->hasDrmFailed:Z

    .line 1941
    iput-object p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->source:Lcom/brentvatne/common/api/Source;

    .line 1942
    iget-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->themedReactContext:Lcom/facebook/react/uimanager/ThemedReactContext;

    iget-object v2, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->bandwidthMeter:Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;

    .line 1944
    invoke-virtual {p1}, Lcom/brentvatne/common/api/Source;->getHeaders()Ljava/util/Map;

    move-result-object v3

    .line 1943
    invoke-static {v1, v2, v3}, Lcom/brentvatne/exoplayer/DataSourceUtil;->getDefaultDataSourceFactory(Lcom/facebook/react/bridge/ReactContext;Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;Ljava/util/Map;)Landroidx/media3/datasource/DataSource$Factory;

    move-result-object v1

    .line 1947
    sget-object v2, Lcom/brentvatne/react/ReactNativeVideoManager;->Companion:Lcom/brentvatne/react/ReactNativeVideoManager$Companion;

    invoke-virtual {v2}, Lcom/brentvatne/react/ReactNativeVideoManager$Companion;->getInstance()Lcom/brentvatne/react/ReactNativeVideoManager;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Lcom/brentvatne/react/ReactNativeVideoManager;->overrideMediaDataSourceFactory(Lcom/brentvatne/common/api/Source;Landroidx/media3/datasource/DataSource$Factory;)Landroidx/media3/datasource/DataSource$Factory;

    move-result-object v2

    .line 1949
    invoke-static {v2, v1}, Lio/sentry/react/RNSentryPackage$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/datasource/DataSource$Factory;

    iput-object v1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->mediaDataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

    .line 1951
    invoke-virtual {p1}, Lcom/brentvatne/common/api/Source;->getCmcdProps()Lcom/brentvatne/common/api/CMCDProps;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1952
    new-instance v1, Lcom/brentvatne/exoplayer/CMCDConfig;

    invoke-virtual {p1}, Lcom/brentvatne/common/api/Source;->getCmcdProps()Lcom/brentvatne/common/api/CMCDProps;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/brentvatne/exoplayer/CMCDConfig;-><init>(Lcom/brentvatne/common/api/CMCDProps;)V

    .line 1953
    invoke-virtual {v1}, Lcom/brentvatne/exoplayer/CMCDConfig;->toCmcdConfigurationFactory()Landroidx/media3/exoplayer/upstream/CmcdConfiguration$Factory;

    move-result-object p1

    .line 1954
    invoke-virtual {p0, p1}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setCmcdConfigurationFactory(Landroidx/media3/exoplayer/upstream/CmcdConfiguration$Factory;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1956
    invoke-virtual {p0, p1}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->setCmcdConfigurationFactory(Landroidx/media3/exoplayer/upstream/CmcdConfiguration$Factory;)V

    :goto_0
    if-nez v0, :cond_2

    const/4 p1, 0x1

    .line 1960
    iput-boolean p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->playerNeedsSource:Z

    .line 1961
    invoke-direct {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->initializePlayer()V

    goto :goto_1

    .line 1964
    :cond_1
    invoke-virtual {p0}, Lcom/brentvatne/exoplayer/ReactExoplayerView;->clearSrc()V

    :cond_2
    :goto_1
    return-void
.end method

.method public setSubtitleStyle(Lcom/brentvatne/common/api/SubtitleStyle;)V
    .locals 1

    .line 2549
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->exoPlayerView:Lcom/brentvatne/exoplayer/ExoPlayerView;

    invoke-virtual {v0, p1}, Lcom/brentvatne/exoplayer/ExoPlayerView;->setSubtitleStyle(Lcom/brentvatne/common/api/SubtitleStyle;)V

    return-void
.end method

.method public setViewType(I)V
    .locals 1

    .line 685
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->exoPlayerView:Lcom/brentvatne/exoplayer/ExoPlayerView;

    invoke-virtual {v0, p1}, Lcom/brentvatne/exoplayer/ExoPlayerView;->updateSurfaceView(I)V

    return-void
.end method

.method public setVolumeModifier(F)V
    .locals 1

    .line 2372
    iput p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->audioVolume:F

    .line 2373
    iget-object v0, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;->player:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_0

    .line 2374
    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/ExoPlayer;->setVolume(F)V

    :cond_0
    return-void
.end method
