.class public final Lexpo/modules/video/utils/PictureInPictureUtilsKt;
.super Ljava/lang/Object;
.source "PictureInPictureUtils.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPictureInPictureUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PictureInPictureUtils.kt\nexpo/modules/video/utils/PictureInPictureUtilsKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,97:1\n1#2:98\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0004\u001a\u0010\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0001\u001a(\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u000cH\u0000\u001a\u0018\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0001H\u0000\u001a\"\u0010\u0012\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00142\u000e\u0010\u0015\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00170\u0016H\u0000\u001a$\u0010\u0018\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0019\u001a\u00020\u00142\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u0005H\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "calculateRectHint",
        "Landroid/graphics/Rect;",
        "playerView",
        "Landroidx/media3/ui/PlayerView;",
        "calculatePiPAspectRatio",
        "Landroid/util/Rational;",
        "videoSize",
        "Landroidx/media3/common/VideoSize;",
        "viewWidth",
        "",
        "viewHeight",
        "contentFit",
        "Lexpo/modules/video/enums/ContentFit;",
        "applyRectHint",
        "",
        "activity",
        "Landroid/app/Activity;",
        "rectHint",
        "runWithPiPMisconfigurationSoftHandling",
        "shouldThrow",
        "",
        "block",
        "Lkotlin/Function0;",
        "",
        "applyPiPParams",
        "autoEnterPiP",
        "aspectRatio",
        "expo-video_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic $r8$lambda$j6gUpgHhuIp4ig-7lsYFFulN5DU(Landroid/app/Activity;Landroid/app/PictureInPictureParams$Builder;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lexpo/modules/video/utils/PictureInPictureUtilsKt;->applyPiPParams$lambda$3(Landroid/app/Activity;Landroid/app/PictureInPictureParams$Builder;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$pozHbjKCkCGT0cjIFY-foG0yUWA(Landroid/app/Activity;Landroid/graphics/Rect;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lexpo/modules/video/utils/PictureInPictureUtilsKt;->applyRectHint$lambda$0(Landroid/app/Activity;Landroid/graphics/Rect;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static final applyPiPParams(Landroid/app/Activity;ZLandroid/util/Rational;)V
    .locals 5

    const-string v0, "activity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 81
    invoke-virtual {p2}, Landroid/util/Rational;->floatValue()F

    move-result v1

    float-to-double v1, v1

    const-wide v3, 0x3fdac73abc947065L    # 0.41841

    cmpg-double v3, v3, v1

    if-gtz v3, :cond_0

    const-wide v3, 0x40031eb851eb851fL    # 2.39

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, v0

    .line 83
    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_3

    sget-object v1, Lexpo/modules/video/VideoView;->Companion:Lexpo/modules/video/VideoView$Companion;

    invoke-virtual {v1, p0}, Lexpo/modules/video/VideoView$Companion;->isPictureInPictureSupported(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 84
    new-instance v1, Landroid/app/PictureInPictureParams$Builder;

    invoke-direct {v1}, Landroid/app/PictureInPictureParams$Builder;-><init>()V

    if-eqz p2, :cond_1

    .line 87
    invoke-virtual {v1, p2}, Landroid/app/PictureInPictureParams$Builder;->setAspectRatio(Landroid/util/Rational;)Landroid/app/PictureInPictureParams$Builder;

    .line 89
    :cond_1
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    if-lt p2, v2, :cond_2

    .line 90
    invoke-virtual {v1, p1}, Landroid/app/PictureInPictureParams$Builder;->setAutoEnterEnabled(Z)Landroid/app/PictureInPictureParams$Builder;

    .line 92
    :cond_2
    new-instance p1, Lexpo/modules/video/utils/PictureInPictureUtilsKt$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, v1}, Lexpo/modules/video/utils/PictureInPictureUtilsKt$$ExternalSyntheticLambda0;-><init>(Landroid/app/Activity;Landroid/app/PictureInPictureParams$Builder;)V

    const/4 p0, 0x1

    const/4 p2, 0x0

    invoke-static {p2, p1, p0, v0}, Lexpo/modules/video/utils/PictureInPictureUtilsKt;->runWithPiPMisconfigurationSoftHandling$default(ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public static synthetic applyPiPParams$default(Landroid/app/Activity;ZLandroid/util/Rational;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 79
    :cond_0
    invoke-static {p0, p1, p2}, Lexpo/modules/video/utils/PictureInPictureUtilsKt;->applyPiPParams(Landroid/app/Activity;ZLandroid/util/Rational;)V

    return-void
.end method

.method private static final applyPiPParams$lambda$3(Landroid/app/Activity;Landroid/app/PictureInPictureParams$Builder;)Lkotlin/Unit;
    .locals 0

    .line 93
    invoke-virtual {p1}, Landroid/app/PictureInPictureParams$Builder;->build()Landroid/app/PictureInPictureParams;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setPictureInPictureParams(Landroid/app/PictureInPictureParams;)V

    .line 94
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final applyRectHint(Landroid/app/Activity;Landroid/graphics/Rect;)V
    .locals 2

    const-string v0, "activity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rectHint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    sget-object v0, Lexpo/modules/video/VideoView;->Companion:Lexpo/modules/video/VideoView$Companion;

    invoke-virtual {v0, p0}, Lexpo/modules/video/VideoView$Companion;->isPictureInPictureSupported(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    new-instance v0, Lexpo/modules/video/utils/PictureInPictureUtilsKt$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lexpo/modules/video/utils/PictureInPictureUtilsKt$$ExternalSyntheticLambda1;-><init>(Landroid/app/Activity;Landroid/graphics/Rect;)V

    const/4 p0, 0x1

    const/4 p1, 0x0

    const/4 v1, 0x0

    invoke-static {v1, v0, p0, p1}, Lexpo/modules/video/utils/PictureInPictureUtilsKt;->runWithPiPMisconfigurationSoftHandling$default(ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static final applyRectHint$lambda$0(Landroid/app/Activity;Landroid/graphics/Rect;)Lkotlin/Unit;
    .locals 1

    .line 62
    new-instance v0, Landroid/app/PictureInPictureParams$Builder;

    invoke-direct {v0}, Landroid/app/PictureInPictureParams$Builder;-><init>()V

    invoke-virtual {v0, p1}, Landroid/app/PictureInPictureParams$Builder;->setSourceRectHint(Landroid/graphics/Rect;)Landroid/app/PictureInPictureParams$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/PictureInPictureParams$Builder;->build()Landroid/app/PictureInPictureParams;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setPictureInPictureParams(Landroid/app/PictureInPictureParams;)V

    .line 63
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final calculatePiPAspectRatio(Landroidx/media3/common/VideoSize;IILexpo/modules/video/enums/ContentFit;)Landroid/util/Rational;
    .locals 1

    const-string v0, "videoSize"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentFit"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    sget-object v0, Lexpo/modules/video/enums/ContentFit;->CONTAIN:Lexpo/modules/video/enums/ContentFit;

    if-ne p3, v0, :cond_0

    .line 42
    new-instance p1, Landroid/util/Rational;

    iget p2, p0, Landroidx/media3/common/VideoSize;->width:I

    iget p0, p0, Landroidx/media3/common/VideoSize;->height:I

    invoke-direct {p1, p2, p0}, Landroid/util/Rational;-><init>(II)V

    goto :goto_0

    .line 44
    :cond_0
    new-instance p0, Landroid/util/Rational;

    invoke-direct {p0, p1, p2}, Landroid/util/Rational;-><init>(II)V

    move-object p1, p0

    .line 48
    :goto_0
    new-instance p0, Landroid/util/Rational;

    const/16 p2, 0xef

    const/16 p3, 0x64

    invoke-direct {p0, p2, p3}, Landroid/util/Rational;-><init>(II)V

    .line 49
    new-instance v0, Landroid/util/Rational;

    invoke-direct {v0, p3, p2}, Landroid/util/Rational;-><init>(II)V

    .line 51
    invoke-virtual {p1}, Landroid/util/Rational;->floatValue()F

    move-result p2

    invoke-virtual {p0}, Landroid/util/Rational;->floatValue()F

    move-result p3

    cmpl-float p2, p2, p3

    if-lez p2, :cond_1

    move-object p1, p0

    goto :goto_1

    .line 53
    :cond_1
    invoke-virtual {p1}, Landroid/util/Rational;->floatValue()F

    move-result p0

    invoke-virtual {v0}, Landroid/util/Rational;->floatValue()F

    move-result p2

    cmpg-float p0, p0, p2

    if-gez p0, :cond_2

    move-object p1, v0

    :cond_2
    :goto_1
    return-object p1
.end method

.method public static final calculateRectHint(Landroidx/media3/ui/PlayerView;)Landroid/graphics/Rect;
    .locals 3

    const-string v0, "playerView"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 20
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->getVideoSurfaceView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    :cond_0
    const/4 v1, 0x2

    .line 21
    new-array v1, v1, [I

    .line 22
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->getVideoSurfaceView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 34
    :cond_1
    iget p0, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p0, v2

    const/4 v2, 0x1

    .line 35
    aget v1, v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 36
    iget v1, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, p0

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    return-object v0
.end method

.method public static final runWithPiPMisconfigurationSoftHandling(ZLkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    :try_start_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 72
    :catch_0
    const-string p1, "ExpoVideo"

    const-string v0, "Current activity does not support picture-in-picture. Make sure you have configured the `expo-video` config plugin correctly."

    invoke-static {p1, v0}, Lio/sentry/android/core/SentryLogcatAdapter;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_0

    :goto_0
    return-void

    .line 74
    :cond_0
    new-instance p0, Lexpo/modules/video/PictureInPictureConfigurationException;

    invoke-direct {p0}, Lexpo/modules/video/PictureInPictureConfigurationException;-><init>()V

    throw p0
.end method

.method public static synthetic runWithPiPMisconfigurationSoftHandling$default(ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p0, 0x0

    .line 68
    :cond_0
    invoke-static {p0, p1}, Lexpo/modules/video/utils/PictureInPictureUtilsKt;->runWithPiPMisconfigurationSoftHandling(ZLkotlin/jvm/functions/Function0;)V

    return-void
.end method
