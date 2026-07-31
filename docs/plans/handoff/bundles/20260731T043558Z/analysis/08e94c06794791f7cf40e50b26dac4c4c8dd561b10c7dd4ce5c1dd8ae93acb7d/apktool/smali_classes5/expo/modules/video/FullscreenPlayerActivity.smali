.class public final Lexpo/modules/video/FullscreenPlayerActivity;
.super Landroid/app/Activity;
.source "FullscreenPlayerActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0014J\u0012\u0010\u0015\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0014J\u0008\u0010\u0016\u001a\u00020\u0012H\u0016J\u0008\u0010\u0017\u001a\u00020\u0012H\u0014J\u0008\u0010\u0018\u001a\u00020\u0012H\u0014J\u0008\u0010\u0019\u001a\u00020\u0012H\u0014J\u0008\u0010\u001a\u001a\u00020\u0012H\u0002J\u001a\u0010\u001b\u001a\u00020\u00122\u0006\u0010\u001c\u001a\u00020\u000f2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0016J\u0008\u0010\u001f\u001a\u00020\u0012H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006 "
    }
    d2 = {
        "Lexpo/modules/video/FullscreenPlayerActivity;",
        "Landroid/app/Activity;",
        "<init>",
        "()V",
        "mContentView",
        "Landroid/view/View;",
        "videoViewId",
        "",
        "videoPlayer",
        "Lexpo/modules/video/player/VideoPlayer;",
        "playerView",
        "Landroidx/media3/ui/PlayerView;",
        "videoView",
        "Lexpo/modules/video/VideoView;",
        "didFinish",
        "",
        "wasAutoPaused",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onPostCreate",
        "finish",
        "onResume",
        "onPause",
        "onDestroy",
        "setupFullscreenButton",
        "onPictureInPictureModeChanged",
        "isInPictureInPictureMode",
        "newConfig",
        "Landroid/content/res/Configuration;",
        "hideStatusBar",
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
.field private didFinish:Z

.field private mContentView:Landroid/view/View;

.field private playerView:Landroidx/media3/ui/PlayerView;

.field private videoPlayer:Lexpo/modules/video/player/VideoPlayer;

.field private videoView:Lexpo/modules/video/VideoView;

.field private videoViewId:Ljava/lang/String;

.field private wasAutoPaused:Z


# direct methods
.method public static synthetic $r8$lambda$3QEQoPC4xLgmGDgPsqnL65usUnI(Lexpo/modules/video/FullscreenPlayerActivity;Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-static/range {p0 .. p9}, Lexpo/modules/video/FullscreenPlayerActivity;->onPostCreate$lambda$2(Lexpo/modules/video/FullscreenPlayerActivity;Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method public static synthetic $r8$lambda$HZi1QGtSqdDz8KjHa0akyh_u0YA(Lexpo/modules/video/FullscreenPlayerActivity;Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-static/range {p0 .. p9}, Lexpo/modules/video/FullscreenPlayerActivity;->onPostCreate$lambda$1(Lexpo/modules/video/FullscreenPlayerActivity;Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method public static synthetic $r8$lambda$QzA2nQ3pORBZmOuPpVsYafdBEP0(Lexpo/modules/video/FullscreenPlayerActivity;Z)V
    .locals 0

    invoke-static {p0, p1}, Lexpo/modules/video/FullscreenPlayerActivity;->setupFullscreenButton$lambda$3(Lexpo/modules/video/FullscreenPlayerActivity;Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private final hideStatusBar()V
    .locals 4

    .line 127
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    const/4 v2, 0x0

    const-string v3, "mContentView"

    if-lt v0, v1, :cond_1

    .line 128
    iget-object v0, p0, Lexpo/modules/video/FullscreenPlayerActivity;->mContentView:Landroid/view/View;

    if-nez v0, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    invoke-virtual {v2}, Landroid/view/View;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x2

    .line 130
    invoke-interface {v0, v1}, Landroid/view/WindowInsetsController;->setSystemBarsBehavior(I)V

    .line 131
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v1

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v2

    or-int/2addr v1, v2

    invoke-interface {v0, v1}, Landroid/view/WindowInsetsController;->hide(I)V

    goto :goto_2

    .line 135
    :cond_1
    iget-object v0, p0, Lexpo/modules/video/FullscreenPlayerActivity;->mContentView:Landroid/view/View;

    if-nez v0, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v2, v0

    :goto_1
    const/16 v0, 0x1307

    invoke-virtual {v2, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_3
    :goto_2
    return-void
.end method

.method private static final onPostCreate$lambda$1(Lexpo/modules/video/FullscreenPlayerActivity;Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 62
    iget-object p1, p0, Lexpo/modules/video/FullscreenPlayerActivity;->playerView:Landroidx/media3/ui/PlayerView;

    if-nez p1, :cond_0

    const-string p1, "playerView"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    iget-object p0, p0, Lexpo/modules/video/FullscreenPlayerActivity;->videoPlayer:Lexpo/modules/video/player/VideoPlayer;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lexpo/modules/video/player/VideoPlayer;->getRequiresLinearPlayback()Z

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_0
    invoke-static {p1, p0}, Lexpo/modules/video/PlayerViewExtensionKt;->setTimeBarInteractive(Landroidx/media3/ui/PlayerView;Z)V

    return-void
.end method

.method private static final onPostCreate$lambda$2(Lexpo/modules/video/FullscreenPlayerActivity;Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 67
    move-object p1, p0

    check-cast p1, Landroid/app/Activity;

    iget-object p0, p0, Lexpo/modules/video/FullscreenPlayerActivity;->playerView:Landroidx/media3/ui/PlayerView;

    if-nez p0, :cond_0

    const-string p0, "playerView"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-static {p0}, Lexpo/modules/video/utils/PictureInPictureUtilsKt;->calculateRectHint(Landroidx/media3/ui/PlayerView;)Landroid/graphics/Rect;

    move-result-object p0

    invoke-static {p1, p0}, Lexpo/modules/video/utils/PictureInPictureUtilsKt;->applyRectHint(Landroid/app/Activity;Landroid/graphics/Rect;)V

    return-void
.end method

.method private final setupFullscreenButton()V
    .locals 4

    .line 108
    iget-object v0, p0, Lexpo/modules/video/FullscreenPlayerActivity;->playerView:Landroidx/media3/ui/PlayerView;

    const/4 v1, 0x0

    const-string v2, "playerView"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    new-instance v3, Lexpo/modules/video/FullscreenPlayerActivity$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lexpo/modules/video/FullscreenPlayerActivity$$ExternalSyntheticLambda0;-><init>(Lexpo/modules/video/FullscreenPlayerActivity;)V

    invoke-virtual {v0, v3}, Landroidx/media3/ui/PlayerView;->setFullscreenButtonClickListener(Landroidx/media3/ui/PlayerView$FullscreenButtonClickListener;)V

    .line 110
    iget-object v0, p0, Lexpo/modules/video/FullscreenPlayerActivity;->playerView:Landroidx/media3/ui/PlayerView;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    sget v0, Landroidx/media3/ui/R$id;->exo_fullscreen:I

    invoke-virtual {v1, v0}, Landroidx/media3/ui/PlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageButton;

    .line 111
    sget v1, Landroidx/media3/ui/R$drawable;->exo_icon_fullscreen_exit:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    return-void
.end method

.method private static final setupFullscreenButton$lambda$3(Lexpo/modules/video/FullscreenPlayerActivity;Z)V
    .locals 0

    .line 108
    invoke-virtual {p0}, Lexpo/modules/video/FullscreenPlayerActivity;->finish()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 4

    .line 72
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x1

    .line 73
    iput-boolean v0, p0, Lexpo/modules/video/FullscreenPlayerActivity;->didFinish:Z

    .line 74
    sget-object v1, Lexpo/modules/video/VideoManager;->INSTANCE:Lexpo/modules/video/VideoManager;

    iget-object v2, p0, Lexpo/modules/video/FullscreenPlayerActivity;->videoViewId:Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v2, "videoViewId"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_0
    invoke-virtual {v1, v2}, Lexpo/modules/video/VideoManager;->getVideoView(Ljava/lang/String;)Lexpo/modules/video/VideoView;

    move-result-object v1

    invoke-virtual {v1}, Lexpo/modules/video/VideoView;->attachPlayer()V

    .line 77
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x22

    const/4 v3, 0x0

    if-lt v1, v2, :cond_1

    .line 78
    invoke-virtual {p0, v0, v3, v3}, Lexpo/modules/video/FullscreenPlayerActivity;->overrideActivityTransition(III)V

    goto :goto_0

    .line 81
    :cond_1
    invoke-virtual {p0, v3, v3}, Lexpo/modules/video/FullscreenPlayerActivity;->overridePendingTransition(II)V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 31
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    sget p1, Lexpo/modules/video/R$layout;->fullscreen_player_activity:I

    invoke-virtual {p0, p1}, Lexpo/modules/video/FullscreenPlayerActivity;->setContentView(I)V

    .line 33
    sget p1, Lexpo/modules/video/R$id;->enclosing_layout:I

    invoke-virtual {p0, p1}, Lexpo/modules/video/FullscreenPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lexpo/modules/video/FullscreenPlayerActivity;->mContentView:Landroid/view/View;

    .line 34
    sget p1, Lexpo/modules/video/R$id;->player_view:I

    invoke-virtual {p0, p1}, Lexpo/modules/video/FullscreenPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/media3/ui/PlayerView;

    iput-object p1, p0, Lexpo/modules/video/FullscreenPlayerActivity;->playerView:Landroidx/media3/ui/PlayerView;

    .line 37
    :try_start_0
    invoke-virtual {p0}, Lexpo/modules/video/FullscreenPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "player_uuid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_a

    iput-object p1, p0, Lexpo/modules/video/FullscreenPlayerActivity;->videoViewId:Ljava/lang/String;

    .line 39
    sget-object p1, Lexpo/modules/video/VideoManager;->INSTANCE:Lexpo/modules/video/VideoManager;

    iget-object v0, p0, Lexpo/modules/video/FullscreenPlayerActivity;->videoViewId:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "videoViewId"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {p1, v0}, Lexpo/modules/video/VideoManager;->getVideoView(Ljava/lang/String;)Lexpo/modules/video/VideoView;

    move-result-object p1

    iput-object p1, p0, Lexpo/modules/video/FullscreenPlayerActivity;->videoView:Lexpo/modules/video/VideoView;
    :try_end_0
    .catch Lexpo/modules/kotlin/exception/CodedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    const-string v0, "videoView"

    if-nez p1, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_1
    invoke-virtual {p1}, Lexpo/modules/video/VideoView;->getVideoPlayer()Lexpo/modules/video/player/VideoPlayer;

    move-result-object p1

    iput-object p1, p0, Lexpo/modules/video/FullscreenPlayerActivity;->videoPlayer:Lexpo/modules/video/player/VideoPlayer;

    .line 46
    const-string v2, "playerView"

    if-eqz p1, :cond_3

    iget-object v3, p0, Lexpo/modules/video/FullscreenPlayerActivity;->playerView:Landroidx/media3/ui/PlayerView;

    if-nez v3, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v1

    :cond_2
    invoke-virtual {p1, v3}, Lexpo/modules/video/player/VideoPlayer;->changePlayerView(Landroidx/media3/ui/PlayerView;)V

    .line 47
    :cond_3
    sget-object p1, Lexpo/modules/video/VideoManager;->INSTANCE:Lexpo/modules/video/VideoManager;

    invoke-virtual {p0}, Lexpo/modules/video/FullscreenPlayerActivity;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, p0}, Lexpo/modules/video/VideoManager;->registerFullscreenPlayerActivity(Ljava/lang/String;Lexpo/modules/video/FullscreenPlayerActivity;)V

    .line 48
    iget-object p1, p0, Lexpo/modules/video/FullscreenPlayerActivity;->playerView:Landroidx/media3/ui/PlayerView;

    if-nez p1, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_4
    invoke-virtual {p1}, Landroidx/media3/ui/PlayerView;->getPlayer()Landroidx/media3/common/Player;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 49
    invoke-interface {p1}, Landroidx/media3/common/Player;->getVideoSize()Landroidx/media3/common/VideoSize;

    move-result-object p1

    const-string v3, "getVideoSize(...)"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lexpo/modules/video/FullscreenPlayerActivity;->playerView:Landroidx/media3/ui/PlayerView;

    if-nez v3, :cond_5

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v1

    :cond_5
    invoke-virtual {v3}, Landroidx/media3/ui/PlayerView;->getWidth()I

    move-result v3

    iget-object v4, p0, Lexpo/modules/video/FullscreenPlayerActivity;->playerView:Landroidx/media3/ui/PlayerView;

    if-nez v4, :cond_6

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v1

    :cond_6
    invoke-virtual {v4}, Landroidx/media3/ui/PlayerView;->getHeight()I

    move-result v2

    iget-object v4, p0, Lexpo/modules/video/FullscreenPlayerActivity;->videoView:Lexpo/modules/video/VideoView;

    if-nez v4, :cond_7

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v1

    :cond_7
    invoke-virtual {v4}, Lexpo/modules/video/VideoView;->getContentFit()Lexpo/modules/video/enums/ContentFit;

    move-result-object v4

    invoke-static {p1, v3, v2, v4}, Lexpo/modules/video/utils/PictureInPictureUtilsKt;->calculatePiPAspectRatio(Landroidx/media3/common/VideoSize;IILexpo/modules/video/enums/ContentFit;)Landroid/util/Rational;

    move-result-object p1

    .line 50
    move-object v2, p0

    check-cast v2, Landroid/app/Activity;

    iget-object v3, p0, Lexpo/modules/video/FullscreenPlayerActivity;->videoView:Lexpo/modules/video/VideoView;

    if-nez v3, :cond_8

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    move-object v1, v3

    :goto_0
    invoke-virtual {v1}, Lexpo/modules/video/VideoView;->getAutoEnterPiP()Z

    move-result v0

    invoke-static {v2, v0, p1}, Lexpo/modules/video/utils/PictureInPictureUtilsKt;->applyPiPParams(Landroid/app/Activity;ZLandroid/util/Rational;)V

    :cond_9
    return-void

    .line 38
    :cond_a
    :try_start_1
    new-instance p1, Lexpo/modules/video/FullScreenVideoViewNotFoundException;

    invoke-direct {p1}, Lexpo/modules/video/FullScreenVideoViewNotFoundException;-><init>()V

    throw p1
    :try_end_1
    .catch Lexpo/modules/kotlin/exception/CodedException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    .line 41
    invoke-virtual {p1}, Lexpo/modules/kotlin/exception/CodedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    check-cast p1, Ljava/lang/Throwable;

    const-string v1, "ExpoVideo"

    invoke-static {v1, v0, p1}, Lio/sentry/android/core/SentryLogcatAdapter;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 42
    invoke-virtual {p0}, Lexpo/modules/video/FullscreenPlayerActivity;->finish()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 102
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 103
    iget-object v0, p0, Lexpo/modules/video/FullscreenPlayerActivity;->videoView:Lexpo/modules/video/VideoView;

    if-nez v0, :cond_0

    const-string v0, "videoView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lexpo/modules/video/VideoView;->exitFullscreen()V

    .line 104
    sget-object v0, Lexpo/modules/video/VideoManager;->INSTANCE:Lexpo/modules/video/VideoManager;

    invoke-virtual {p0}, Lexpo/modules/video/FullscreenPlayerActivity;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lexpo/modules/video/VideoManager;->unregisterFullscreenPlayerActivity(Ljava/lang/String;)V

    return-void
.end method

.method protected onPause()V
    .locals 3

    .line 91
    iget-object v0, p0, Lexpo/modules/video/FullscreenPlayerActivity;->videoPlayer:Lexpo/modules/video/player/VideoPlayer;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lexpo/modules/video/player/VideoPlayer;->getStaysActiveInBackground()Z

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Lexpo/modules/video/FullscreenPlayerActivity;->didFinish:Z

    if-nez v0, :cond_3

    .line 92
    iget-object v0, p0, Lexpo/modules/video/FullscreenPlayerActivity;->videoPlayer:Lexpo/modules/video/player/VideoPlayer;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lexpo/modules/video/player/VideoPlayer;->getPlayer()Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->isPlaying()Z

    move-result v0

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lexpo/modules/video/FullscreenPlayerActivity;->wasAutoPaused:Z

    if-eqz v1, :cond_3

    .line 94
    iget-object v0, p0, Lexpo/modules/video/FullscreenPlayerActivity;->playerView:Landroidx/media3/ui/PlayerView;

    if-nez v0, :cond_2

    const-string v0, "playerView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_2
    invoke-virtual {v0, v2}, Landroidx/media3/ui/PlayerView;->setUseController(Z)V

    .line 95
    iget-object v0, p0, Lexpo/modules/video/FullscreenPlayerActivity;->videoPlayer:Lexpo/modules/video/player/VideoPlayer;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lexpo/modules/video/player/VideoPlayer;->getPlayer()Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->pause()V

    .line 98
    :cond_3
    :goto_1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 3

    .line 115
    const-string v0, "playerView"

    const/4 v1, 0x0

    if-nez p1, :cond_2

    .line 116
    iget-object v2, p0, Lexpo/modules/video/FullscreenPlayerActivity;->playerView:Landroidx/media3/ui/PlayerView;

    if-nez v2, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v1

    :cond_0
    iget-object v0, p0, Lexpo/modules/video/FullscreenPlayerActivity;->videoView:Lexpo/modules/video/VideoView;

    if-nez v0, :cond_1

    const-string v0, "videoView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    invoke-virtual {v1}, Lexpo/modules/video/VideoView;->getUseNativeControls()Z

    move-result v0

    invoke-virtual {v2, v0}, Landroidx/media3/ui/PlayerView;->setUseController(Z)V

    goto :goto_2

    .line 118
    :cond_2
    iget-object v2, p0, Lexpo/modules/video/FullscreenPlayerActivity;->playerView:Landroidx/media3/ui/PlayerView;

    if-nez v2, :cond_3

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v1, v2

    :goto_1
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroidx/media3/ui/PlayerView;->setUseController(Z)V

    .line 120
    :goto_2
    iget-boolean v0, p0, Lexpo/modules/video/FullscreenPlayerActivity;->wasAutoPaused:Z

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    .line 121
    iget-object v0, p0, Lexpo/modules/video/FullscreenPlayerActivity;->videoPlayer:Lexpo/modules/video/player/VideoPlayer;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lexpo/modules/video/player/VideoPlayer;->getPlayer()Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->play()V

    .line 123
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V

    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 55
    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-direct {p0}, Lexpo/modules/video/FullscreenPlayerActivity;->hideStatusBar()V

    .line 57
    invoke-direct {p0}, Lexpo/modules/video/FullscreenPlayerActivity;->setupFullscreenButton()V

    .line 58
    iget-object p1, p0, Lexpo/modules/video/FullscreenPlayerActivity;->playerView:Landroidx/media3/ui/PlayerView;

    const-string v0, "playerView"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_0
    iget-object v2, p0, Lexpo/modules/video/FullscreenPlayerActivity;->videoPlayer:Lexpo/modules/video/player/VideoPlayer;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lexpo/modules/video/player/VideoPlayer;->getRequiresLinearPlayback()Z

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {p1, v2}, Lexpo/modules/video/PlayerViewExtensionKt;->applyRequiresLinearPlayback(Landroidx/media3/ui/PlayerView;Z)V

    .line 59
    iget-object p1, p0, Lexpo/modules/video/FullscreenPlayerActivity;->playerView:Landroidx/media3/ui/PlayerView;

    if-nez p1, :cond_2

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_2
    new-instance v2, Lexpo/modules/video/FullscreenPlayerActivity$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lexpo/modules/video/FullscreenPlayerActivity$$ExternalSyntheticLambda1;-><init>(Lexpo/modules/video/FullscreenPlayerActivity;)V

    invoke-virtual {p1, v2}, Landroidx/media3/ui/PlayerView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 64
    iget-object p1, p0, Lexpo/modules/video/FullscreenPlayerActivity;->playerView:Landroidx/media3/ui/PlayerView;

    if-nez p1, :cond_3

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_3
    iget-object v2, p0, Lexpo/modules/video/FullscreenPlayerActivity;->videoView:Lexpo/modules/video/VideoView;

    if-nez v2, :cond_4

    const-string v2, "videoView"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v1

    :cond_4
    invoke-virtual {v2}, Lexpo/modules/video/VideoView;->getShowsSubtitlesButton()Z

    move-result v2

    invoke-virtual {p1, v2}, Landroidx/media3/ui/PlayerView;->setShowSubtitleButton(Z)V

    .line 66
    iget-object p1, p0, Lexpo/modules/video/FullscreenPlayerActivity;->playerView:Landroidx/media3/ui/PlayerView;

    if-nez p1, :cond_5

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    move-object v1, p1

    :goto_1
    new-instance p1, Lexpo/modules/video/FullscreenPlayerActivity$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lexpo/modules/video/FullscreenPlayerActivity$$ExternalSyntheticLambda2;-><init>(Lexpo/modules/video/FullscreenPlayerActivity;)V

    invoke-virtual {v1, p1}, Landroidx/media3/ui/PlayerView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 86
    iget-object v0, p0, Lexpo/modules/video/FullscreenPlayerActivity;->playerView:Landroidx/media3/ui/PlayerView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "playerView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v2, p0, Lexpo/modules/video/FullscreenPlayerActivity;->videoView:Lexpo/modules/video/VideoView;

    if-nez v2, :cond_1

    const-string v2, "videoView"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    invoke-virtual {v1}, Lexpo/modules/video/VideoView;->getUseNativeControls()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/media3/ui/PlayerView;->setUseController(Z)V

    .line 87
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method
