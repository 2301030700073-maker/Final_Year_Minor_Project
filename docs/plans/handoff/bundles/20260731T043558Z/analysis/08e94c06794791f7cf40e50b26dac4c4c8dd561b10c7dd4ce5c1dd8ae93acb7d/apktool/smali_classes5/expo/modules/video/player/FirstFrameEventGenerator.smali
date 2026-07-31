.class public final Lexpo/modules/video/player/FirstFrameEventGenerator;
.super Ljava/lang/Object;
.source "FirstFrameEventGenerator.kt"

# interfaces
.implements Landroidx/media3/common/Player$Listener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0008\u0001\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000e\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0005\u0012\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0008\u0010\u0014\u001a\u00020\tH\u0016J\u001a\u0010\u0015\u001a\u00020\t2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J\u0018\u0010\u001a\u001a\u00020\t2\u0006\u0010\u001b\u001a\u00020\u00192\u0006\u0010\u001c\u001a\u00020\u0019H\u0016J\u0008\u0010\u001d\u001a\u00020\tH\u0002J\u0008\u0010\u001e\u001a\u00020\u0012H\u0002R\u0016\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001f\u0010\u000c\u001a\u0010\u0012\u000c\u0012\n \u000e*\u0004\u0018\u00010\u00030\u00030\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001f"
    }
    d2 = {
        "Lexpo/modules/video/player/FirstFrameEventGenerator;",
        "Landroidx/media3/common/Player$Listener;",
        "player",
        "Landroidx/media3/exoplayer/ExoPlayer;",
        "currentViewReference",
        "Lexpo/modules/video/utils/MutableWeakReference;",
        "Landroidx/media3/ui/PlayerView;",
        "onFirstFrameRendered",
        "Lkotlin/Function0;",
        "",
        "<init>",
        "(Landroidx/media3/exoplayer/ExoPlayer;Lexpo/modules/video/utils/MutableWeakReference;Lkotlin/jvm/functions/Function0;)V",
        "playerReference",
        "Ljava/lang/ref/WeakReference;",
        "kotlin.jvm.PlatformType",
        "getPlayerReference",
        "()Ljava/lang/ref/WeakReference;",
        "hasPendingOnFirstFrame",
        "",
        "hasSentFirstFrameForCurrentMediaItem",
        "onRenderedFirstFrame",
        "onMediaItemTransition",
        "mediaItem",
        "Landroidx/media3/common/MediaItem;",
        "reason",
        "",
        "onSurfaceSizeChanged",
        "width",
        "height",
        "maybeCallOnFirstFrameRendered",
        "isPlayerSurfaceLayoutValid",
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


# instance fields
.field private final currentViewReference:Lexpo/modules/video/utils/MutableWeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lexpo/modules/video/utils/MutableWeakReference<",
            "Landroidx/media3/ui/PlayerView;",
            ">;"
        }
    .end annotation
.end field

.field private hasPendingOnFirstFrame:Z

.field private hasSentFirstFrameForCurrentMediaItem:Z

.field private final onFirstFrameRendered:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final playerReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/media3/exoplayer/ExoPlayer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/ExoPlayer;Lexpo/modules/video/utils/MutableWeakReference;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/ExoPlayer;",
            "Lexpo/modules/video/utils/MutableWeakReference<",
            "Landroidx/media3/ui/PlayerView;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "player"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currentViewReference"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onFirstFrameRendered"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p2, p0, Lexpo/modules/video/player/FirstFrameEventGenerator;->currentViewReference:Lexpo/modules/video/utils/MutableWeakReference;

    .line 26
    iput-object p3, p0, Lexpo/modules/video/player/FirstFrameEventGenerator;->onFirstFrameRendered:Lkotlin/jvm/functions/Function0;

    .line 28
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lexpo/modules/video/player/FirstFrameEventGenerator;->playerReference:Ljava/lang/ref/WeakReference;

    .line 33
    move-object p2, p0

    check-cast p2, Landroidx/media3/common/Player$Listener;

    invoke-interface {p1, p2}, Landroidx/media3/exoplayer/ExoPlayer;->addListener(Landroidx/media3/common/Player$Listener;)V

    return-void
.end method

.method private final isPlayerSurfaceLayoutValid()Z
    .locals 8

    .line 68
    iget-object v0, p0, Lexpo/modules/video/player/FirstFrameEventGenerator;->playerReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/ExoPlayer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, p0

    check-cast v0, Lexpo/modules/video/player/FirstFrameEventGenerator;

    return v1

    .line 71
    :cond_0
    iget-object v2, p0, Lexpo/modules/video/player/FirstFrameEventGenerator;->currentViewReference:Lexpo/modules/video/utils/MutableWeakReference;

    invoke-virtual {v2}, Lexpo/modules/video/utils/MutableWeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/ui/PlayerView;

    if-nez v2, :cond_1

    move-object v0, p0

    check-cast v0, Lexpo/modules/video/player/FirstFrameEventGenerator;

    return v1

    .line 74
    :cond_1
    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->getSurfaceSize()Landroidx/media3/common/util/Size;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/media3/common/util/Size;->getWidth()I

    move-result v3

    .line 75
    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->getSurfaceSize()Landroidx/media3/common/util/Size;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/media3/common/util/Size;->getHeight()I

    move-result v4

    .line 76
    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->getVideoSize()Landroidx/media3/common/VideoSize;

    move-result-object v5

    iget v5, v5, Landroidx/media3/common/VideoSize;->width:I

    .line 77
    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->getVideoSize()Landroidx/media3/common/VideoSize;

    move-result-object v6

    iget v6, v6, Landroidx/media3/common/VideoSize;->height:I

    .line 78
    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->getVideoSize()Landroidx/media3/common/VideoSize;

    move-result-object v0

    iget v0, v0, Landroidx/media3/common/VideoSize;->pixelWidthHeightRatio:F

    if-eqz v3, :cond_8

    if-nez v4, :cond_2

    goto :goto_4

    :cond_2
    int-to-float v3, v3

    int-to-float v4, v4

    div-float/2addr v3, v4

    int-to-float v4, v5

    int-to-float v7, v6

    div-float/2addr v4, v7

    mul-float/2addr v4, v0

    const/4 v0, 0x1

    if-eqz v5, :cond_4

    if-nez v6, :cond_3

    goto :goto_0

    :cond_3
    move v5, v1

    goto :goto_1

    :cond_4
    :goto_0
    move v5, v0

    .line 88
    :goto_1
    invoke-virtual {v2}, Landroidx/media3/ui/PlayerView;->getResizeMode()I

    move-result v2

    sget-object v6, Lexpo/modules/video/enums/ContentFit;->FILL:Lexpo/modules/video/enums/ContentFit;

    invoke-virtual {v6}, Lexpo/modules/video/enums/ContentFit;->toResizeMode()I

    move-result v6

    if-ne v2, v6, :cond_5

    move v2, v0

    goto :goto_2

    :cond_5
    move v2, v1

    :goto_2
    sub-float/2addr v4, v3

    .line 89
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v3, v3

    const-wide v6, 0x3fa999999999999aL    # 0.05

    cmpg-double v3, v3, v6

    if-gez v3, :cond_6

    goto :goto_3

    :cond_6
    if-nez v2, :cond_7

    if-eqz v5, :cond_8

    :cond_7
    :goto_3
    move v1, v0

    :cond_8
    :goto_4
    return v1
.end method

.method private final maybeCallOnFirstFrameRendered()V
    .locals 1

    .line 58
    iget-boolean v0, p0, Lexpo/modules/video/player/FirstFrameEventGenerator;->hasSentFirstFrameForCurrentMediaItem:Z

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Lexpo/modules/video/player/FirstFrameEventGenerator;->onFirstFrameRendered:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lexpo/modules/video/player/FirstFrameEventGenerator;->hasPendingOnFirstFrame:Z

    const/4 v0, 0x1

    .line 62
    iput-boolean v0, p0, Lexpo/modules/video/player/FirstFrameEventGenerator;->hasSentFirstFrameForCurrentMediaItem:Z

    return-void
.end method


# virtual methods
.method public final getPlayerReference()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/media3/exoplayer/ExoPlayer;",
            ">;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lexpo/modules/video/player/FirstFrameEventGenerator;->playerReference:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public onMediaItemTransition(Landroidx/media3/common/MediaItem;I)V
    .locals 1

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lexpo/modules/video/player/FirstFrameEventGenerator;->hasSentFirstFrameForCurrentMediaItem:Z

    .line 46
    invoke-super {p0, p1, p2}, Landroidx/media3/common/Player$Listener;->onMediaItemTransition(Landroidx/media3/common/MediaItem;I)V

    return-void
.end method

.method public onRenderedFirstFrame()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lexpo/modules/video/player/FirstFrameEventGenerator;->isPlayerSurfaceLayoutValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    invoke-direct {p0}, Lexpo/modules/video/player/FirstFrameEventGenerator;->maybeCallOnFirstFrameRendered()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lexpo/modules/video/player/FirstFrameEventGenerator;->hasPendingOnFirstFrame:Z

    :goto_0
    return-void
.end method

.method public onSurfaceSizeChanged(II)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lexpo/modules/video/player/FirstFrameEventGenerator;->isPlayerSurfaceLayoutValid()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lexpo/modules/video/player/FirstFrameEventGenerator;->hasPendingOnFirstFrame:Z

    if-eqz p1, :cond_0

    .line 51
    invoke-direct {p0}, Lexpo/modules/video/player/FirstFrameEventGenerator;->maybeCallOnFirstFrameRendered()V

    :cond_0
    return-void
.end method
