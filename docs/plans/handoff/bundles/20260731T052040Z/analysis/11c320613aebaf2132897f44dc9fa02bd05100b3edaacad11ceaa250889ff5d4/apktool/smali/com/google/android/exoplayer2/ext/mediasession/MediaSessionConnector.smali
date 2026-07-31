.class public final Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$MediaButtonEventHandler;,
        Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$CaptionCallback;,
        Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$QueueEditor;,
        Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$RatingCallback;,
        Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$PlaybackPreparer;,
        Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$QueueNavigator;,
        Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;,
        Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$CustomActionProvider;,
        Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$DefaultMediaMetadataProvider;,
        Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$MediaMetadataProvider;,
        Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$CommandReceiver;,
        Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$PlaybackActions;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final ALL_PLAYBACK_ACTIONS:J = 0x64034fL

.field private static final BASE_MEDIA_SESSION_FLAGS:I = 0x3

.field private static final BASE_PLAYBACK_ACTIONS:J = 0x640207L

.field public static final DEFAULT_PLAYBACK_ACTIONS:J = 0x24034fL

.field private static final EDITOR_MEDIA_SESSION_FLAGS:I = 0x7

.field public static final EXTRAS_SPEED:Ljava/lang/String; = "EXO_SPEED"

.field private static final METADATA_EMPTY:Landroid/support/v4/media/MediaMetadataCompat;


# instance fields
.field private captionCallback:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$CaptionCallback;

.field private clearMediaItemsOnStop:Z

.field private final commandReceivers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$CommandReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private final componentListener:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;

.field private customActionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$CustomActionProvider;",
            ">;"
        }
    .end annotation
.end field

.field private customActionProviders:[Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$CustomActionProvider;

.field private final customCommandReceivers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$CommandReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private customError:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private customErrorExtras:Landroid/os/Bundle;

.field private dispatchUnsupportedActionsEnabled:Z

.field private enabledPlaybackActions:J

.field private errorMessageProvider:Lcom/google/android/exoplayer2/util/ErrorMessageProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/util/ErrorMessageProvider<",
            "-",
            "Lcom/google/android/exoplayer2/PlaybackException;",
            ">;"
        }
    .end annotation
.end field

.field private final looper:Landroid/os/Looper;

.field private mapIdleToStopped:Z

.field private mediaButtonEventHandler:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$MediaButtonEventHandler;

.field private mediaMetadataProvider:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$MediaMetadataProvider;

.field public final mediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

.field private metadataDeduplicationEnabled:Z

.field private playbackPreparer:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$PlaybackPreparer;

.field private player:Lcom/google/android/exoplayer2/Player;

.field private queueEditor:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$QueueEditor;

.field private queueNavigator:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$QueueNavigator;

.field private ratingCallback:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$RatingCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "goog.exo.mediasession"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerLibraryInfo;->registerModule(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroid/os/Bundle;

    .line 7
    .line 8
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v1, Landroid/support/v4/media/MediaMetadataCompat;

    .line 12
    .line 13
    invoke-direct {v1, v0}, Landroid/support/v4/media/MediaMetadataCompat;-><init>(Landroid/os/Bundle;)V

    .line 14
    .line 15
    .line 16
    sput-object v1, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->METADATA_EMPTY:Landroid/support/v4/media/MediaMetadataCompat;

    .line 17
    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/media/session/MediaSessionCompat;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->mediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 5
    .line 6
    invoke-static {}, Lcom/google/android/exoplayer2/util/Util;->getCurrentOrMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->looper:Landroid/os/Looper;

    .line 11
    .line 12
    new-instance v1, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-direct {v1, p0, v2}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;-><init>(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$1;)V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->componentListener:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;

    .line 19
    .line 20
    new-instance v3, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v3, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->commandReceivers:Ljava/util/ArrayList;

    .line 26
    .line 27
    new-instance v3, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v3, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->customCommandReceivers:Ljava/util/ArrayList;

    .line 33
    .line 34
    const/4 v3, 0x0

    .line 35
    new-array v3, v3, [Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$CustomActionProvider;

    .line 36
    .line 37
    iput-object v3, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->customActionProviders:[Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$CustomActionProvider;

    .line 38
    .line 39
    sget-object v3, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 40
    .line 41
    iput-object v3, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->customActionMap:Ljava/util/Map;

    .line 42
    .line 43
    new-instance v3, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$DefaultMediaMetadataProvider;

    .line 44
    .line 45
    iget-object v4, p1, Landroid/support/v4/media/session/MediaSessionCompat;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 46
    .line 47
    invoke-direct {v3, v4, v2}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$DefaultMediaMetadataProvider;-><init>(Landroid/support/v4/media/session/MediaControllerCompat;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iput-object v3, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->mediaMetadataProvider:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$MediaMetadataProvider;

    .line 51
    .line 52
    const-wide/32 v2, 0x24034f

    .line 53
    .line 54
    .line 55
    iput-wide v2, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->enabledPlaybackActions:J

    .line 56
    .line 57
    iget-object p1, p1, Landroid/support/v4/media/session/MediaSessionCompat;->mImpl:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi22;

    .line 58
    .line 59
    iget-object v2, p1, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi22;->mSessionFwk:Landroid/media/session/MediaSession;

    .line 60
    .line 61
    const/4 v3, 0x3

    .line 62
    invoke-virtual {v2, v3}, Landroid/media/session/MediaSession;->setFlags(I)V

    .line 63
    .line 64
    .line 65
    new-instance v2, Landroid/os/Handler;

    .line 66
    .line 67
    invoke-direct {v2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, v1, v2}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi22;->setCallback(Landroid/support/v4/media/session/MediaSessionCompat$Callback;Landroid/os/Handler;)V

    .line 71
    .line 72
    .line 73
    const/4 p1, 0x1

    .line 74
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->clearMediaItemsOnStop:Z

    .line 75
    .line 76
    return-void
.end method

.method public static synthetic access$100()Landroid/support/v4/media/MediaMetadataCompat;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->METADATA_EMPTY:Landroid/support/v4/media/MediaMetadataCompat;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic access$1000(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->commandReceivers:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$1100(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->customCommandReceivers:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$1200(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;J)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->canDispatchToPlaybackPreparer(J)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$1300(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->canDispatchSetRating()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$1400(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$RatingCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->ratingCallback:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$RatingCallback;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$1500(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->canDispatchQueueEdit()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$1600(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$QueueEditor;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->queueEditor:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$QueueEditor;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$1700(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->canDispatchSetCaptioningEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$1800(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$CaptionCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->captionCallback:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$CaptionCallback;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$1900(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->canDispatchMediaButtonEvent()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$200(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$QueueNavigator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->queueNavigator:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$QueueNavigator;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$2000(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$MediaButtonEventHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->mediaButtonEventHandler:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$MediaButtonEventHandler;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;J)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->canDispatchPlaybackAction(J)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$400(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/Player;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->player:Lcom/google/android/exoplayer2/Player;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$500(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$PlaybackPreparer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->playbackPreparer:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$PlaybackPreparer;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$600(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;Lcom/google/android/exoplayer2/Player;IJ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->seekTo(Lcom/google/android/exoplayer2/Player;IJ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$700(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->clearMediaItemsOnStop:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$800(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;J)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->canDispatchToQueueNavigator(J)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$900(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->customActionMap:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method private buildPlaybackActions(Lcom/google/android/exoplayer2/Player;)J
    .locals 10

    .line 1
    const/4 v0, 0x5

    .line 2
    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/Player;->isCommandAvailable(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    const/16 v1, 0xb

    .line 7
    .line 8
    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/Player;->isCommandAvailable(I)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/16 v2, 0xc

    .line 13
    .line 14
    invoke-interface {p1, v2}, Lcom/google/android/exoplayer2/Player;->isCommandAvailable(I)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    const/4 v4, 0x0

    .line 27
    if-nez v3, :cond_2

    .line 28
    .line 29
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->isPlayingAd()Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-nez v3, :cond_2

    .line 34
    .line 35
    iget-object v3, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->ratingCallback:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$RatingCallback;

    .line 36
    .line 37
    const/4 v5, 0x1

    .line 38
    if-eqz v3, :cond_0

    .line 39
    .line 40
    move v3, v5

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    move v3, v4

    .line 43
    :goto_0
    iget-object v6, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->captionCallback:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$CaptionCallback;

    .line 44
    .line 45
    if-eqz v6, :cond_1

    .line 46
    .line 47
    invoke-interface {v6, p1}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$CaptionCallback;->hasCaptions(Lcom/google/android/exoplayer2/Player;)Z

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    if-eqz v6, :cond_1

    .line 52
    .line 53
    move v4, v5

    .line 54
    :cond_1
    move v9, v4

    .line 55
    move v4, v3

    .line 56
    move v3, v9

    .line 57
    goto :goto_1

    .line 58
    :cond_2
    move v3, v4

    .line 59
    :goto_1
    if-eqz v0, :cond_3

    .line 60
    .line 61
    const-wide/32 v5, 0x640307

    .line 62
    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_3
    const-wide/32 v5, 0x640207

    .line 66
    .line 67
    .line 68
    :goto_2
    if-eqz v2, :cond_4

    .line 69
    .line 70
    const-wide/16 v7, 0x40

    .line 71
    .line 72
    or-long/2addr v5, v7

    .line 73
    :cond_4
    if-eqz v1, :cond_5

    .line 74
    .line 75
    const-wide/16 v0, 0x8

    .line 76
    .line 77
    or-long/2addr v5, v0

    .line 78
    :cond_5
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->enabledPlaybackActions:J

    .line 79
    .line 80
    and-long/2addr v0, v5

    .line 81
    iget-object p0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->queueNavigator:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$QueueNavigator;

    .line 82
    .line 83
    if-eqz p0, :cond_6

    .line 84
    .line 85
    const-wide/16 v5, 0x1030

    .line 86
    .line 87
    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$QueueNavigator;->getSupportedQueueNavigatorActions(Lcom/google/android/exoplayer2/Player;)J

    .line 88
    .line 89
    .line 90
    move-result-wide p0

    .line 91
    and-long/2addr p0, v5

    .line 92
    or-long/2addr v0, p0

    .line 93
    :cond_6
    if-eqz v4, :cond_7

    .line 94
    .line 95
    const-wide/16 p0, 0x80

    .line 96
    .line 97
    or-long/2addr v0, p0

    .line 98
    :cond_7
    if-eqz v3, :cond_8

    .line 99
    .line 100
    const-wide/32 p0, 0x100000

    .line 101
    .line 102
    .line 103
    or-long/2addr p0, v0

    .line 104
    return-wide p0

    .line 105
    :cond_8
    return-wide v0
.end method

.method private buildPrepareActions()J
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->playbackPreparer:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$PlaybackPreparer;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const-wide/16 v0, 0x0

    .line 6
    .line 7
    return-wide v0

    .line 8
    :cond_0
    const-wide/32 v0, 0x3ec00

    .line 9
    .line 10
    .line 11
    invoke-interface {p0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$PlaybackPreparer;->getSupportedPrepareActions()J

    .line 12
    .line 13
    .line 14
    move-result-wide v2

    .line 15
    and-long/2addr v0, v2

    .line 16
    return-wide v0
.end method

.method private canDispatchMediaButtonEvent()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->player:Lcom/google/android/exoplayer2/Player;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->mediaButtonEventHandler:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$MediaButtonEventHandler;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0
.end method

.method private canDispatchPlaybackAction(J)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->player:Lcom/google/android/exoplayer2/Player;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->enabledPlaybackActions:J

    .line 6
    .line 7
    and-long/2addr p1, v0

    .line 8
    const-wide/16 v0, 0x0

    .line 9
    .line 10
    cmp-long p1, p1, v0

    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->dispatchUnsupportedActionsEnabled:Z

    .line 15
    .line 16
    if-eqz p0, :cond_1

    .line 17
    .line 18
    :cond_0
    const/4 p0, 0x1

    .line 19
    return p0

    .line 20
    :cond_1
    const/4 p0, 0x0

    .line 21
    return p0
.end method

.method private canDispatchQueueEdit()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->player:Lcom/google/android/exoplayer2/Player;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->queueEditor:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$QueueEditor;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0
.end method

.method private canDispatchSetCaptioningEnabled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->player:Lcom/google/android/exoplayer2/Player;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->captionCallback:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$CaptionCallback;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0
.end method

.method private canDispatchSetRating()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->player:Lcom/google/android/exoplayer2/Player;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->ratingCallback:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$RatingCallback;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0
.end method

.method private canDispatchToPlaybackPreparer(J)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->playbackPreparer:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$PlaybackPreparer;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$PlaybackPreparer;->getSupportedPrepareActions()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    and-long/2addr p1, v0

    .line 10
    const-wide/16 v0, 0x0

    .line 11
    .line 12
    cmp-long p1, p1, v0

    .line 13
    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->dispatchUnsupportedActionsEnabled:Z

    .line 17
    .line 18
    if-eqz p0, :cond_1

    .line 19
    .line 20
    :cond_0
    const/4 p0, 0x1

    .line 21
    return p0

    .line 22
    :cond_1
    const/4 p0, 0x0

    .line 23
    return p0
.end method

.method private canDispatchToQueueNavigator(J)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->player:Lcom/google/android/exoplayer2/Player;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->queueNavigator:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$QueueNavigator;

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$QueueNavigator;->getSupportedQueueNavigatorActions(Lcom/google/android/exoplayer2/Player;)J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    and-long/2addr p1, v0

    .line 14
    const-wide/16 v0, 0x0

    .line 15
    .line 16
    cmp-long p1, p1, v0

    .line 17
    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->dispatchUnsupportedActionsEnabled:Z

    .line 21
    .line 22
    if-eqz p0, :cond_1

    .line 23
    .line 24
    :cond_0
    const/4 p0, 0x1

    .line 25
    return p0

    .line 26
    :cond_1
    const/4 p0, 0x0

    .line 27
    return p0
.end method

.method private getMediaSessionPlaybackState(IZ)I
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    if-eq p1, v0, :cond_3

    .line 3
    .line 4
    const/4 v1, 0x3

    .line 5
    if-eq p1, v1, :cond_1

    .line 6
    .line 7
    const/4 p2, 0x4

    .line 8
    if-eq p1, p2, :cond_0

    .line 9
    .line 10
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->mapIdleToStopped:Z

    .line 11
    .line 12
    return p0

    .line 13
    :cond_0
    const/4 p0, 0x1

    .line 14
    return p0

    .line 15
    :cond_1
    if-eqz p2, :cond_2

    .line 16
    .line 17
    return v1

    .line 18
    :cond_2
    return v0

    .line 19
    :cond_3
    if-eqz p2, :cond_4

    .line 20
    .line 21
    const/4 p0, 0x6

    .line 22
    return p0

    .line 23
    :cond_4
    return v0
.end method

.method private registerCommandReceiver(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$CommandReceiver;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->commandReceivers:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->commandReceivers:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method private seekTo(Lcom/google/android/exoplayer2/Player;IJ)V
    .locals 0

    .line 1
    invoke-interface {p1, p2, p3, p4}, Lcom/google/android/exoplayer2/Player;->seekTo(IJ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private unregisterCommandReceiver(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$CommandReceiver;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->commandReceivers:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method


# virtual methods
.method public final invalidateMediaSessionMetadata()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->mediaMetadataProvider:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$MediaMetadataProvider;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->player:Lcom/google/android/exoplayer2/Player;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$MediaMetadataProvider;->getMetadata(Lcom/google/android/exoplayer2/Player;)Landroid/support/v4/media/MediaMetadataCompat;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    sget-object v0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->METADATA_EMPTY:Landroid/support/v4/media/MediaMetadataCompat;

    .line 15
    .line 16
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->mediaMetadataProvider:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$MediaMetadataProvider;

    .line 17
    .line 18
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->metadataDeduplicationEnabled:Z

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    if-eqz v2, :cond_2

    .line 22
    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->mediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 26
    .line 27
    iget-object v2, v2, Landroid/support/v4/media/session/MediaSessionCompat;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 28
    .line 29
    iget-object v2, v2, Landroid/support/v4/media/session/MediaControllerCompat;->mImpl:Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;

    .line 30
    .line 31
    iget-object v2, v2, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mControllerFwk:Landroid/media/session/MediaController;

    .line 32
    .line 33
    invoke-virtual {v2}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    sget-object v4, Landroid/support/v4/media/MediaMetadataCompat;->METADATA_KEYS_TYPE:Landroidx/collection/ArrayMap;

    .line 40
    .line 41
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    const/4 v5, 0x0

    .line 46
    invoke-virtual {v2, v4, v5}, Landroid/media/MediaMetadata;->writeToParcel(Landroid/os/Parcel;I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 50
    .line 51
    .line 52
    sget-object v5, Landroid/support/v4/media/MediaMetadataCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 53
    .line 54
    invoke-interface {v5, v4}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    check-cast v5, Landroid/support/v4/media/MediaMetadataCompat;

    .line 59
    .line 60
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 61
    .line 62
    .line 63
    iput-object v2, v5, Landroid/support/v4/media/MediaMetadataCompat;->mMetadataFwk:Landroid/media/MediaMetadata;

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_1
    move-object v5, v3

    .line 67
    :goto_1
    if-eqz v5, :cond_2

    .line 68
    .line 69
    invoke-interface {v1, v5, v0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$MediaMetadataProvider;->sameAs(Landroid/support/v4/media/MediaMetadataCompat;Landroid/support/v4/media/MediaMetadataCompat;)Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-eqz v1, :cond_2

    .line 74
    .line 75
    return-void

    .line 76
    :cond_2
    iget-object p0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->mediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 77
    .line 78
    iget-object p0, p0, Landroid/support/v4/media/session/MediaSessionCompat;->mImpl:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi22;

    .line 79
    .line 80
    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi22;->mMetadata:Landroid/support/v4/media/MediaMetadataCompat;

    .line 81
    .line 82
    iget-object p0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi22;->mSessionFwk:Landroid/media/session/MediaSession;

    .line 83
    .line 84
    if-nez v0, :cond_3

    .line 85
    .line 86
    goto/16 :goto_4

    .line 87
    .line 88
    :cond_3
    iget-object v1, v0, Landroid/support/v4/media/MediaMetadataCompat;->mBundle:Landroid/os/Bundle;

    .line 89
    .line 90
    iget-object v2, v0, Landroid/support/v4/media/MediaMetadataCompat;->mMetadataFwk:Landroid/media/MediaMetadata;

    .line 91
    .line 92
    if-nez v2, :cond_f

    .line 93
    .line 94
    new-instance v2, Landroid/media/MediaMetadata$Builder;

    .line 95
    .line 96
    invoke-direct {v2}, Landroid/media/MediaMetadata$Builder;-><init>()V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 108
    .line 109
    .line 110
    move-result v4

    .line 111
    if-eqz v4, :cond_e

    .line 112
    .line 113
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    check-cast v4, Ljava/lang/String;

    .line 118
    .line 119
    sget-object v5, Landroid/support/v4/media/MediaMetadataCompat;->METADATA_KEYS_TYPE:Landroidx/collection/ArrayMap;

    .line 120
    .line 121
    invoke-virtual {v5, v4}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v5

    .line 125
    check-cast v5, Ljava/lang/Integer;

    .line 126
    .line 127
    if-nez v5, :cond_5

    .line 128
    .line 129
    const/4 v5, -0x1

    .line 130
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 131
    .line 132
    .line 133
    move-result-object v5

    .line 134
    :cond_5
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 135
    .line 136
    .line 137
    move-result v5

    .line 138
    if-eqz v5, :cond_d

    .line 139
    .line 140
    const/4 v6, 0x1

    .line 141
    if-eq v5, v6, :cond_c

    .line 142
    .line 143
    const/4 v6, 0x2

    .line 144
    if-eq v5, v6, :cond_b

    .line 145
    .line 146
    const/4 v6, 0x3

    .line 147
    if-eq v5, v6, :cond_a

    .line 148
    .line 149
    invoke-virtual {v1, v4}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v5

    .line 153
    if-eqz v5, :cond_9

    .line 154
    .line 155
    instance-of v6, v5, Ljava/lang/CharSequence;

    .line 156
    .line 157
    if-eqz v6, :cond_6

    .line 158
    .line 159
    goto :goto_3

    .line 160
    :cond_6
    instance-of v6, v5, Ljava/lang/Long;

    .line 161
    .line 162
    if-eqz v6, :cond_7

    .line 163
    .line 164
    check-cast v5, Ljava/lang/Long;

    .line 165
    .line 166
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 167
    .line 168
    .line 169
    move-result-wide v5

    .line 170
    invoke-virtual {v2, v4, v5, v6}, Landroid/media/MediaMetadata$Builder;->putLong(Ljava/lang/String;J)Landroid/media/MediaMetadata$Builder;

    .line 171
    .line 172
    .line 173
    goto :goto_2

    .line 174
    :cond_7
    instance-of v6, v5, Landroid/graphics/Bitmap;

    .line 175
    .line 176
    if-eqz v6, :cond_8

    .line 177
    .line 178
    check-cast v5, Landroid/graphics/Bitmap;

    .line 179
    .line 180
    invoke-virtual {v2, v4, v5}, Landroid/media/MediaMetadata$Builder;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/media/MediaMetadata$Builder;

    .line 181
    .line 182
    .line 183
    goto :goto_2

    .line 184
    :cond_8
    instance-of v6, v5, Landroid/media/Rating;

    .line 185
    .line 186
    if-eqz v6, :cond_4

    .line 187
    .line 188
    check-cast v5, Landroid/media/Rating;

    .line 189
    .line 190
    invoke-virtual {v2, v4, v5}, Landroid/media/MediaMetadata$Builder;->putRating(Ljava/lang/String;Landroid/media/Rating;)Landroid/media/MediaMetadata$Builder;

    .line 191
    .line 192
    .line 193
    goto :goto_2

    .line 194
    :cond_9
    :goto_3
    check-cast v5, Ljava/lang/CharSequence;

    .line 195
    .line 196
    invoke-virtual {v2, v4, v5}, Landroid/media/MediaMetadata$Builder;->putText(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/media/MediaMetadata$Builder;

    .line 197
    .line 198
    .line 199
    goto :goto_2

    .line 200
    :cond_a
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 201
    .line 202
    .line 203
    move-result-object v5

    .line 204
    check-cast v5, Landroid/media/Rating;

    .line 205
    .line 206
    invoke-virtual {v2, v4, v5}, Landroid/media/MediaMetadata$Builder;->putRating(Ljava/lang/String;Landroid/media/Rating;)Landroid/media/MediaMetadata$Builder;

    .line 207
    .line 208
    .line 209
    goto :goto_2

    .line 210
    :cond_b
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 211
    .line 212
    .line 213
    move-result-object v5

    .line 214
    check-cast v5, Landroid/graphics/Bitmap;

    .line 215
    .line 216
    invoke-virtual {v2, v4, v5}, Landroid/media/MediaMetadata$Builder;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/media/MediaMetadata$Builder;

    .line 217
    .line 218
    .line 219
    goto :goto_2

    .line 220
    :cond_c
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 221
    .line 222
    .line 223
    move-result-object v5

    .line 224
    invoke-virtual {v2, v4, v5}, Landroid/media/MediaMetadata$Builder;->putText(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/media/MediaMetadata$Builder;

    .line 225
    .line 226
    .line 227
    goto :goto_2

    .line 228
    :cond_d
    const-wide/16 v5, 0x0

    .line 229
    .line 230
    invoke-virtual {v1, v4, v5, v6}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    .line 231
    .line 232
    .line 233
    move-result-wide v5

    .line 234
    invoke-virtual {v2, v4, v5, v6}, Landroid/media/MediaMetadata$Builder;->putLong(Ljava/lang/String;J)Landroid/media/MediaMetadata$Builder;

    .line 235
    .line 236
    .line 237
    goto/16 :goto_2

    .line 238
    .line 239
    :cond_e
    invoke-virtual {v2}, Landroid/media/MediaMetadata$Builder;->build()Landroid/media/MediaMetadata;

    .line 240
    .line 241
    .line 242
    move-result-object v1

    .line 243
    iput-object v1, v0, Landroid/support/v4/media/MediaMetadataCompat;->mMetadataFwk:Landroid/media/MediaMetadata;

    .line 244
    .line 245
    :cond_f
    iget-object v3, v0, Landroid/support/v4/media/MediaMetadataCompat;->mMetadataFwk:Landroid/media/MediaMetadata;

    .line 246
    .line 247
    :goto_4
    invoke-virtual {p0, v3}, Landroid/media/session/MediaSession;->setMetadata(Landroid/media/MediaMetadata;)V

    .line 248
    .line 249
    .line 250
    return-void
.end method

.method public final invalidateMediaSessionPlaybackState()V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v13, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->player:Lcom/google/android/exoplayer2/Player;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v10, 0x0

    .line 12
    const/4 v9, 0x0

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    invoke-direct {v0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->buildPrepareActions()J

    .line 16
    .line 17
    .line 18
    move-result-wide v7

    .line 19
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 20
    .line 21
    .line 22
    move-result-wide v11

    .line 23
    iget-object v1, v0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->mediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->setRepeatMode(I)V

    .line 26
    .line 27
    .line 28
    iget-object v1, v0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->mediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->setShuffleMode(I)V

    .line 31
    .line 32
    .line 33
    iget-object v0, v0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->mediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 34
    .line 35
    move-object v1, v0

    .line 36
    new-instance v0, Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 37
    .line 38
    move-object v2, v1

    .line 39
    const/4 v1, 0x0

    .line 40
    move-object v4, v2

    .line 41
    const-wide/16 v2, 0x0

    .line 42
    .line 43
    move-object v6, v4

    .line 44
    const-wide/16 v4, 0x0

    .line 45
    .line 46
    move-object v14, v6

    .line 47
    const/4 v6, 0x0

    .line 48
    move-object/from16 v16, v14

    .line 49
    .line 50
    const-wide/16 v14, -0x1

    .line 51
    .line 52
    move-object/from16 v17, v16

    .line 53
    .line 54
    const/16 v16, 0x0

    .line 55
    .line 56
    move-object/from16 v18, v17

    .line 57
    .line 58
    invoke-direct/range {v0 .. v16}, Landroid/support/v4/media/session/PlaybackStateCompat;-><init>(IJJFJILjava/lang/CharSequence;JLjava/util/ArrayList;JLandroid/os/Bundle;)V

    .line 59
    .line 60
    .line 61
    move-object/from16 v1, v18

    .line 62
    .line 63
    invoke-virtual {v1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->setPlaybackState(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_0
    new-instance v3, Ljava/util/HashMap;

    .line 68
    .line 69
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 70
    .line 71
    .line 72
    iget-object v4, v0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->customActionProviders:[Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$CustomActionProvider;

    .line 73
    .line 74
    array-length v5, v4

    .line 75
    move v6, v2

    .line 76
    :goto_0
    if-ge v6, v5, :cond_2

    .line 77
    .line 78
    aget-object v7, v4, v6

    .line 79
    .line 80
    invoke-interface {v7, v1}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$CustomActionProvider;->getCustomAction(Lcom/google/android/exoplayer2/Player;)Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    .line 81
    .line 82
    .line 83
    move-result-object v8

    .line 84
    if-eqz v8, :cond_1

    .line 85
    .line 86
    iget-object v11, v8, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->mAction:Ljava/lang/String;

    .line 87
    .line 88
    invoke-virtual {v3, v11, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    :cond_1
    add-int/lit8 v6, v6, 0x1

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_2
    invoke-static {v3}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    iput-object v3, v0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->customActionMap:Ljava/util/Map;

    .line 102
    .line 103
    new-instance v3, Landroid/os/Bundle;

    .line 104
    .line 105
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 106
    .line 107
    .line 108
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getPlayerError()Lcom/google/android/exoplayer2/PlaybackException;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    if-nez v4, :cond_4

    .line 113
    .line 114
    iget-object v5, v0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->customError:Landroid/util/Pair;

    .line 115
    .line 116
    if-eqz v5, :cond_3

    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_3
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getPlaybackState()I

    .line 120
    .line 121
    .line 122
    move-result v5

    .line 123
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getPlayWhenReady()Z

    .line 124
    .line 125
    .line 126
    move-result v6

    .line 127
    invoke-direct {v0, v5, v6}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->getMediaSessionPlaybackState(IZ)I

    .line 128
    .line 129
    .line 130
    move-result v5

    .line 131
    goto :goto_2

    .line 132
    :cond_4
    :goto_1
    const/4 v5, 0x7

    .line 133
    :goto_2
    iget-object v6, v0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->customError:Landroid/util/Pair;

    .line 134
    .line 135
    if-eqz v6, :cond_5

    .line 136
    .line 137
    iget-object v4, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 138
    .line 139
    check-cast v4, Ljava/lang/Integer;

    .line 140
    .line 141
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 142
    .line 143
    .line 144
    move-result v9

    .line 145
    iget-object v4, v0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->customError:Landroid/util/Pair;

    .line 146
    .line 147
    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 148
    .line 149
    move-object v10, v4

    .line 150
    check-cast v10, Ljava/lang/CharSequence;

    .line 151
    .line 152
    iget-object v4, v0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->customErrorExtras:Landroid/os/Bundle;

    .line 153
    .line 154
    if-eqz v4, :cond_6

    .line 155
    .line 156
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 157
    .line 158
    .line 159
    goto :goto_3

    .line 160
    :cond_5
    if-eqz v4, :cond_6

    .line 161
    .line 162
    iget-object v6, v0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->errorMessageProvider:Lcom/google/android/exoplayer2/util/ErrorMessageProvider;

    .line 163
    .line 164
    if-eqz v6, :cond_6

    .line 165
    .line 166
    invoke-interface {v6, v4}, Lcom/google/android/exoplayer2/util/ErrorMessageProvider;->getErrorMessage(Ljava/lang/Throwable;)Landroid/util/Pair;

    .line 167
    .line 168
    .line 169
    move-result-object v4

    .line 170
    iget-object v6, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 171
    .line 172
    check-cast v6, Ljava/lang/Integer;

    .line 173
    .line 174
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 175
    .line 176
    .line 177
    move-result v9

    .line 178
    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 179
    .line 180
    move-object v10, v4

    .line 181
    check-cast v10, Ljava/lang/CharSequence;

    .line 182
    .line 183
    :cond_6
    :goto_3
    iget-object v4, v0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->queueNavigator:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$QueueNavigator;

    .line 184
    .line 185
    if-eqz v4, :cond_7

    .line 186
    .line 187
    invoke-interface {v4, v1}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$QueueNavigator;->getActiveQueueItemId(Lcom/google/android/exoplayer2/Player;)J

    .line 188
    .line 189
    .line 190
    move-result-wide v6

    .line 191
    :goto_4
    move-wide v14, v6

    .line 192
    goto :goto_5

    .line 193
    :cond_7
    const-wide/16 v6, -0x1

    .line 194
    .line 195
    goto :goto_4

    .line 196
    :goto_5
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    .line 197
    .line 198
    .line 199
    move-result-object v4

    .line 200
    iget v4, v4, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    .line 201
    .line 202
    const-string v6, "EXO_SPEED"

    .line 203
    .line 204
    invoke-virtual {v3, v6, v4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 205
    .line 206
    .line 207
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->isPlaying()Z

    .line 208
    .line 209
    .line 210
    move-result v6

    .line 211
    if-eqz v6, :cond_8

    .line 212
    .line 213
    :goto_6
    move v6, v4

    .line 214
    goto :goto_7

    .line 215
    :cond_8
    const/4 v4, 0x0

    .line 216
    goto :goto_6

    .line 217
    :goto_7
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getCurrentMediaItem()Lcom/google/android/exoplayer2/MediaItem;

    .line 218
    .line 219
    .line 220
    move-result-object v4

    .line 221
    if-eqz v4, :cond_9

    .line 222
    .line 223
    const-string v7, ""

    .line 224
    .line 225
    iget-object v8, v4, Lcom/google/android/exoplayer2/MediaItem;->mediaId:Ljava/lang/String;

    .line 226
    .line 227
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    move-result v7

    .line 231
    if-nez v7, :cond_9

    .line 232
    .line 233
    const-string v7, "androidx.media.PlaybackStateCompat.Extras.KEY_MEDIA_ID"

    .line 234
    .line 235
    iget-object v4, v4, Lcom/google/android/exoplayer2/MediaItem;->mediaId:Ljava/lang/String;

    .line 236
    .line 237
    invoke-virtual {v3, v7, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    :cond_9
    invoke-direct {v0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->buildPrepareActions()J

    .line 241
    .line 242
    .line 243
    move-result-wide v7

    .line 244
    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->buildPlaybackActions(Lcom/google/android/exoplayer2/Player;)J

    .line 245
    .line 246
    .line 247
    move-result-wide v11

    .line 248
    or-long/2addr v7, v11

    .line 249
    move-object v11, v1

    .line 250
    move v1, v5

    .line 251
    invoke-interface {v11}, Lcom/google/android/exoplayer2/Player;->getBufferedPosition()J

    .line 252
    .line 253
    .line 254
    move-result-wide v4

    .line 255
    move v12, v2

    .line 256
    move-object/from16 v16, v3

    .line 257
    .line 258
    invoke-interface {v11}, Lcom/google/android/exoplayer2/Player;->getCurrentPosition()J

    .line 259
    .line 260
    .line 261
    move-result-wide v2

    .line 262
    move-object/from16 v17, v11

    .line 263
    .line 264
    move/from16 v18, v12

    .line 265
    .line 266
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 267
    .line 268
    .line 269
    move-result-wide v11

    .line 270
    move/from16 v19, v1

    .line 271
    .line 272
    invoke-interface/range {v17 .. v17}, Lcom/google/android/exoplayer2/Player;->getRepeatMode()I

    .line 273
    .line 274
    .line 275
    move-result v1

    .line 276
    move-wide/from16 v20, v2

    .line 277
    .line 278
    iget-object v2, v0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->mediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 279
    .line 280
    const/4 v3, 0x1

    .line 281
    if-ne v1, v3, :cond_a

    .line 282
    .line 283
    goto :goto_8

    .line 284
    :cond_a
    const/4 v3, 0x2

    .line 285
    if-ne v1, v3, :cond_b

    .line 286
    .line 287
    goto :goto_8

    .line 288
    :cond_b
    move/from16 v3, v18

    .line 289
    .line 290
    :goto_8
    invoke-virtual {v2, v3}, Landroid/support/v4/media/session/MediaSessionCompat;->setRepeatMode(I)V

    .line 291
    .line 292
    .line 293
    iget-object v1, v0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->mediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 294
    .line 295
    invoke-interface/range {v17 .. v17}, Lcom/google/android/exoplayer2/Player;->getShuffleModeEnabled()Z

    .line 296
    .line 297
    .line 298
    move-result v2

    .line 299
    invoke-virtual {v1, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->setShuffleMode(I)V

    .line 300
    .line 301
    .line 302
    iget-object v0, v0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->mediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 303
    .line 304
    move-object v1, v0

    .line 305
    new-instance v0, Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 306
    .line 307
    move-object/from16 v22, v1

    .line 308
    .line 309
    move/from16 v1, v19

    .line 310
    .line 311
    move-wide/from16 v2, v20

    .line 312
    .line 313
    invoke-direct/range {v0 .. v16}, Landroid/support/v4/media/session/PlaybackStateCompat;-><init>(IJJFJILjava/lang/CharSequence;JLjava/util/ArrayList;JLandroid/os/Bundle;)V

    .line 314
    .line 315
    .line 316
    move-object/from16 v1, v22

    .line 317
    .line 318
    invoke-virtual {v1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->setPlaybackState(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    .line 319
    .line 320
    .line 321
    return-void
.end method

.method public final invalidateMediaSessionQueue()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->queueNavigator:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$QueueNavigator;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->player:Lcom/google/android/exoplayer2/Player;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$QueueNavigator;->onTimelineChanged(Lcom/google/android/exoplayer2/Player;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public registerCustomCommandReceiver(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$CommandReceiver;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->customCommandReceivers:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->customCommandReceivers:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public setCaptionCallback(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$CaptionCallback;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->captionCallback:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$CaptionCallback;

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->unregisterCommandReceiver(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$CommandReceiver;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->captionCallback:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$CaptionCallback;

    .line 9
    .line 10
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->registerCommandReceiver(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$CommandReceiver;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public setClearMediaItemsOnStop(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->clearMediaItemsOnStop:Z

    .line 2
    .line 3
    return-void
.end method

.method public varargs setCustomActionProviders([Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$CustomActionProvider;)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    new-array p1, p1, [Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$CustomActionProvider;

    .line 5
    .line 6
    :cond_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->customActionProviders:[Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$CustomActionProvider;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->invalidateMediaSessionPlaybackState()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setCustomErrorMessage(Ljava/lang/CharSequence;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 27
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->setCustomErrorMessage(Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public setCustomErrorMessage(Ljava/lang/CharSequence;I)V
    .locals 1

    const/4 v0, 0x0

    .line 26
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->setCustomErrorMessage(Ljava/lang/CharSequence;ILandroid/os/Bundle;)V

    return-void
.end method

.method public setCustomErrorMessage(Ljava/lang/CharSequence;ILandroid/os/Bundle;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    move-object v1, v0

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    new-instance v1, Landroid/util/Pair;

    .line 7
    .line 8
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    invoke-direct {v1, p2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    :goto_0
    iput-object v1, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->customError:Landroid/util/Pair;

    .line 16
    .line 17
    if-nez p1, :cond_1

    .line 18
    .line 19
    move-object p3, v0

    .line 20
    :cond_1
    iput-object p3, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->customErrorExtras:Landroid/os/Bundle;

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->invalidateMediaSessionPlaybackState()V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public setDispatchUnsupportedActionsEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->dispatchUnsupportedActionsEnabled:Z

    .line 2
    .line 3
    return-void
.end method

.method public setEnabledPlaybackActions(J)V
    .locals 2

    .line 1
    const-wide/32 v0, 0x64034f

    .line 2
    .line 3
    .line 4
    and-long/2addr p1, v0

    .line 5
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->enabledPlaybackActions:J

    .line 6
    .line 7
    cmp-long v0, v0, p1

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iput-wide p1, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->enabledPlaybackActions:J

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->invalidateMediaSessionPlaybackState()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public setErrorMessageProvider(Lcom/google/android/exoplayer2/util/ErrorMessageProvider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/ErrorMessageProvider<",
            "-",
            "Lcom/google/android/exoplayer2/PlaybackException;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->errorMessageProvider:Lcom/google/android/exoplayer2/util/ErrorMessageProvider;

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->errorMessageProvider:Lcom/google/android/exoplayer2/util/ErrorMessageProvider;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->invalidateMediaSessionPlaybackState()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setMapStateIdleToSessionStateStopped(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->mapIdleToStopped:Z

    .line 2
    .line 3
    return-void
.end method

.method public setMediaButtonEventHandler(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$MediaButtonEventHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->mediaButtonEventHandler:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$MediaButtonEventHandler;

    .line 2
    .line 3
    return-void
.end method

.method public setMediaMetadataProvider(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$MediaMetadataProvider;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->mediaMetadataProvider:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$MediaMetadataProvider;

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->mediaMetadataProvider:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$MediaMetadataProvider;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->invalidateMediaSessionMetadata()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setMetadataDeduplicationEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->metadataDeduplicationEnabled:Z

    .line 2
    .line 3
    return-void
.end method

.method public setPlaybackPreparer(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$PlaybackPreparer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->playbackPreparer:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$PlaybackPreparer;

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->unregisterCommandReceiver(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$CommandReceiver;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->playbackPreparer:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$PlaybackPreparer;

    .line 9
    .line 10
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->registerCommandReceiver(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$CommandReceiver;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->invalidateMediaSessionPlaybackState()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public setPlayer(Lcom/google/android/exoplayer2/Player;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getApplicationLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->looper:Landroid/os/Looper;

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 15
    :goto_1
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->player:Lcom/google/android/exoplayer2/Player;

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->componentListener:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;

    .line 23
    .line 24
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player;->removeListener(Lcom/google/android/exoplayer2/Player$Listener;)V

    .line 25
    .line 26
    .line 27
    :cond_2
    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->player:Lcom/google/android/exoplayer2/Player;

    .line 28
    .line 29
    if-eqz p1, :cond_3

    .line 30
    .line 31
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->componentListener:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;

    .line 32
    .line 33
    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/Player;->addListener(Lcom/google/android/exoplayer2/Player$Listener;)V

    .line 34
    .line 35
    .line 36
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->invalidateMediaSessionPlaybackState()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->invalidateMediaSessionMetadata()V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public setQueueEditor(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$QueueEditor;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->queueEditor:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$QueueEditor;

    .line 2
    .line 3
    if-eq v0, p1, :cond_1

    .line 4
    .line 5
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->unregisterCommandReceiver(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$CommandReceiver;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->queueEditor:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$QueueEditor;

    .line 9
    .line 10
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->registerCommandReceiver(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$CommandReceiver;)V

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->mediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 14
    .line 15
    const/4 v0, 0x3

    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    move p1, v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p1, 0x7

    .line 21
    :goto_0
    iget-object p0, p0, Landroid/support/v4/media/session/MediaSessionCompat;->mImpl:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi22;

    .line 22
    .line 23
    iget-object p0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi22;->mSessionFwk:Landroid/media/session/MediaSession;

    .line 24
    .line 25
    or-int/2addr p1, v0

    .line 26
    invoke-virtual {p0, p1}, Landroid/media/session/MediaSession;->setFlags(I)V

    .line 27
    .line 28
    .line 29
    :cond_1
    return-void
.end method

.method public setQueueNavigator(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$QueueNavigator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->queueNavigator:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$QueueNavigator;

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->unregisterCommandReceiver(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$CommandReceiver;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->queueNavigator:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$QueueNavigator;

    .line 9
    .line 10
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->registerCommandReceiver(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$CommandReceiver;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public setRatingCallback(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$RatingCallback;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->ratingCallback:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$RatingCallback;

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->unregisterCommandReceiver(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$CommandReceiver;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->ratingCallback:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$RatingCallback;

    .line 9
    .line 10
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->registerCommandReceiver(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$CommandReceiver;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public unregisterCustomCommandReceiver(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$CommandReceiver;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->customCommandReceivers:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
