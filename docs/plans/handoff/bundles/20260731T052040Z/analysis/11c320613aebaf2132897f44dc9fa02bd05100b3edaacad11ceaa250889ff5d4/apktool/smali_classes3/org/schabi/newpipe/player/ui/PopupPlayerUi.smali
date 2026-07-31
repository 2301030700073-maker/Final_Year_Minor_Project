.class public final Lorg/schabi/newpipe/player/ui/PopupPlayerUi;
.super Lorg/schabi/newpipe/player/ui/VideoPlayerUi;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public closeOverlayBinding:Lorg/jsoup/parser/TokenData;

.field public isPopupClosing:Z

.field public popupLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field public screenHeight:I

.field public screenWidth:I

.field public final windowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/player/Player;Lorg/schabi/newpipe/databinding/PlayerBinding;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;-><init>(Lorg/schabi/newpipe/player/Player;Lorg/schabi/newpipe/databinding/PlayerBinding;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->isPopupClosing:Z

    .line 6
    .line 7
    iget-object p1, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->context:Lorg/schabi/newpipe/player/PlayerService;

    .line 8
    .line 9
    const-class p2, Landroid/view/WindowManager;

    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Landroid/view/WindowManager;

    .line 16
    .line 17
    iput-object p1, p0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->windowManager:Landroid/view/WindowManager;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final buildGestureListener()Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;
    .locals 1

    .line 1
    new-instance v0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;-><init>(Lorg/schabi/newpipe/player/ui/PopupPlayerUi;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final calculateMaxEndScreenThumbnailHeight(Landroid/graphics/Bitmap;)F
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    int-to-float p0, p0

    .line 6
    return p0
.end method

.method public final changePopupSize(I)V
    .locals 4

    .line 1
    sget v0, Lorg/schabi/newpipe/MainActivity;->$r8$clinit:I

    .line 2
    .line 3
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->popupLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->windowManager:Landroid/view/WindowManager;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    .line 12
    .line 13
    iget-object v2, v1, Lorg/schabi/newpipe/databinding/PlayerBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 14
    .line 15
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object v2, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->context:Lorg/schabi/newpipe/player/PlayerService;

    .line 23
    .line 24
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    const v3, 0x7f07036c

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    float-to-int v2, v2

    .line 36
    iget v3, p0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->screenWidth:I

    .line 37
    .line 38
    invoke-static {p1, v2, v3}, Lokhttp3/Cookie$Companion;->clamp(III)I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    int-to-float p1, p1

    .line 43
    const v3, 0x3fe38e39

    .line 44
    .line 45
    .line 46
    div-float/2addr p1, v3

    .line 47
    float-to-int p1, p1

    .line 48
    iget-object v3, p0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->popupLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 49
    .line 50
    iput v2, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 51
    .line 52
    iput p1, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 53
    .line 54
    iget-object v2, v1, Lorg/schabi/newpipe/databinding/PlayerBinding;->surfaceView:Lorg/schabi/newpipe/views/ExpandableSurfaceView;

    .line 55
    .line 56
    invoke-virtual {v2, p1, p1}, Lorg/schabi/newpipe/views/ExpandableSurfaceView;->setHeights(II)V

    .line 57
    .line 58
    .line 59
    iget-object p1, v1, Lorg/schabi/newpipe/databinding/PlayerBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 60
    .line 61
    iget-object p0, p0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->popupLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 62
    .line 63
    invoke-interface {v0, p1, p0}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    .line 65
    .line 66
    :cond_1
    :goto_0
    return-void
.end method

.method public final changePopupWindowFlags(I)V
    .locals 3

    .line 1
    sget v0, Lorg/schabi/newpipe/MainActivity;->$r8$clinit:I

    .line 2
    .line 3
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->popupLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->windowManager:Landroid/view/WindowManager;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    .line 12
    .line 13
    iget-object v2, v1, Lorg/schabi/newpipe/databinding/PlayerBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 14
    .line 15
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object p0, p0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->popupLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 23
    .line 24
    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 25
    .line 26
    iget-object p1, v1, Lorg/schabi/newpipe/databinding/PlayerBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 27
    .line 28
    invoke-interface {v0, p1, p0}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    :goto_0
    return-void
.end method

.method public final checkPopupPositionBounds()V
    .locals 4

    .line 1
    sget v0, Lorg/schabi/newpipe/MainActivity;->$r8$clinit:I

    .line 2
    .line 3
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->popupLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 9
    .line 10
    iget v2, p0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->screenWidth:I

    .line 11
    .line 12
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 13
    .line 14
    sub-int/2addr v2, v3

    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-static {v1, v3, v2}, Lokhttp3/Cookie$Companion;->clamp(III)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 21
    .line 22
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->popupLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 23
    .line 24
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 25
    .line 26
    iget p0, p0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->screenHeight:I

    .line 27
    .line 28
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 29
    .line 30
    sub-int/2addr p0, v2

    .line 31
    invoke-static {v1, v3, p0}, Lokhttp3/Cookie$Companion;->clamp(III)I

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 36
    .line 37
    return-void
.end method

.method public final destroy()V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    .line 2
    .line 3
    iget-object v1, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->endScreen:Landroid/widget/ImageView;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7
    .line 8
    .line 9
    iget-object v1, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->fastSeekOverlay:Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay;

    .line 10
    .line 11
    new-instance v3, Lorg/koin/compose/KoinApplicationKt$$ExternalSyntheticLambda0;

    .line 12
    .line 13
    const/16 v4, 0xe

    .line 14
    .line 15
    invoke-direct {v3, v4}, Lorg/koin/compose/KoinApplicationKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 16
    .line 17
    .line 18
    iput-object v3, v1, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay;->seekSecondsSupplier:Lkotlin/jvm/functions/Function0;

    .line 19
    .line 20
    iput-object v2, v1, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay;->performListener:Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;

    .line 21
    .line 22
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->deinitListeners()V

    .line 23
    .line 24
    .line 25
    const-string v1, "PopupPlayerUi"

    .line 26
    .line 27
    iget-object v2, p0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->windowManager:Landroid/view/WindowManager;

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    :try_start_0
    iget-object v3, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 32
    .line 33
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    instance-of v4, v4, Landroid/view/WindowManager$LayoutParams;

    .line 38
    .line 39
    if-eqz v4, :cond_0

    .line 40
    .line 41
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    if-eqz v3, :cond_0

    .line 46
    .line 47
    const/4 v3, 0x1

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    const/4 v3, 0x0

    .line 50
    :goto_0
    if-eqz v3, :cond_1

    .line 51
    .line 52
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 53
    .line 54
    invoke-interface {v2, v0}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :catch_0
    move-exception v0

    .line 59
    const-string v3, "Failed to remove popup from window manager"

    .line 60
    .line 61
    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 62
    .line 63
    .line 64
    :cond_1
    :goto_1
    :try_start_1
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->closeOverlayBinding:Lorg/jsoup/parser/TokenData;

    .line 65
    .line 66
    if-eqz v0, :cond_2

    .line 67
    .line 68
    iget-object v0, v0, Lorg/jsoup/parser/TokenData;->value:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v0, Landroid/widget/FrameLayout;

    .line 71
    .line 72
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    if-eqz v0, :cond_2

    .line 77
    .line 78
    iget-object p0, p0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->closeOverlayBinding:Lorg/jsoup/parser/TokenData;

    .line 79
    .line 80
    iget-object p0, p0, Lorg/jsoup/parser/TokenData;->value:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast p0, Landroid/widget/FrameLayout;

    .line 83
    .line 84
    invoke-interface {v2, p0}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 85
    .line 86
    .line 87
    goto :goto_2

    .line 88
    :catch_1
    move-exception p0

    .line 89
    const-string v0, "Failed to remove popup overlay from window manager"

    .line 90
    .line 91
    invoke-static {v1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 92
    .line 93
    .line 94
    :cond_2
    :goto_2
    return-void
.end method

.method public final initPlayback()V
    .locals 1

    .line 1
    invoke-super {p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->initPlayback()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    .line 5
    .line 6
    iget-boolean v0, p0, Lorg/schabi/newpipe/player/Player;->screenOn:Z

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/player/Player;->useVideoAndSubtitles(Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final isInsideClosingRadius(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->closeOverlayBinding:Lorg/jsoup/parser/TokenData;

    .line 2
    .line 3
    iget-object v0, v0, Lorg/jsoup/parser/TokenData;->builder:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->closeOverlayBinding:Lorg/jsoup/parser/TokenData;

    .line 12
    .line 13
    iget-object v1, v1, Lorg/jsoup/parser/TokenData;->builder:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    div-int/lit8 v1, v1, 0x2

    .line 22
    .line 23
    add-int/2addr v1, v0

    .line 24
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->closeOverlayBinding:Lorg/jsoup/parser/TokenData;

    .line 25
    .line 26
    iget-object v0, v0, Lorg/jsoup/parser/TokenData;->builder:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    iget-object v2, p0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->closeOverlayBinding:Lorg/jsoup/parser/TokenData;

    .line 35
    .line 36
    iget-object v2, v2, Lorg/jsoup/parser/TokenData;->builder:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 39
    .line 40
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    div-int/lit8 v2, v2, 0x2

    .line 45
    .line 46
    add-int/2addr v2, v0

    .line 47
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->popupLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 48
    .line 49
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 50
    .line 51
    int-to-float v0, v0

    .line 52
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    add-float/2addr v3, v0

    .line 57
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->popupLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 58
    .line 59
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 60
    .line 61
    int-to-float v0, v0

    .line 62
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    add-float/2addr p1, v0

    .line 67
    int-to-float v0, v1

    .line 68
    sub-float/2addr v0, v3

    .line 69
    float-to-double v0, v0

    .line 70
    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    .line 71
    .line 72
    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->pow(DD)D

    .line 73
    .line 74
    .line 75
    move-result-wide v0

    .line 76
    int-to-float v2, v2

    .line 77
    sub-float/2addr v2, p1

    .line 78
    float-to-double v5, v2

    .line 79
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    .line 80
    .line 81
    .line 82
    move-result-wide v2

    .line 83
    add-double/2addr v2, v0

    .line 84
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    .line 85
    .line 86
    .line 87
    move-result-wide v0

    .line 88
    double-to-int p1, v0

    .line 89
    int-to-float p1, p1

    .line 90
    iget-object p0, p0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->closeOverlayBinding:Lorg/jsoup/parser/TokenData;

    .line 91
    .line 92
    iget-object p0, p0, Lorg/jsoup/parser/TokenData;->builder:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 95
    .line 96
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 97
    .line 98
    .line 99
    move-result p0

    .line 100
    div-int/lit8 p0, p0, 0x2

    .line 101
    .line 102
    int-to-float p0, p0

    .line 103
    const v0, 0x3f99999a    # 1.2f

    .line 104
    .line 105
    .line 106
    mul-float/2addr p0, v0

    .line 107
    cmpg-float p0, p1, p0

    .line 108
    .line 109
    if-gtz p0, :cond_0

    .line 110
    .line 111
    const/4 p0, 0x1

    .line 112
    return p0

    .line 113
    :cond_0
    const/4 p0, 0x0

    .line 114
    return p0
.end method

.method public final onBroadcastReceived(Landroid/content/Intent;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object v2, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, v2, Lorg/schabi/newpipe/player/Player;->currentThumbnail:Landroid/graphics/Bitmap;

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->updateEndScreenThumbnail(Landroid/graphics/Bitmap;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->updateScreenSize()V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->popupLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 34
    .line 35
    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 36
    .line 37
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->changePopupSize(I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->checkPopupPositionBounds()V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_1
    invoke-virtual {v2}, Lorg/schabi/newpipe/player/Player;->isPlaying()Z

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    if-nez p0, :cond_2

    .line 49
    .line 50
    invoke-virtual {v2}, Lorg/schabi/newpipe/player/Player;->isLoading()Z

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    if-eqz p0, :cond_4

    .line 55
    .line 56
    :cond_2
    const-string p0, "android.intent.action.SCREEN_OFF"

    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result p0

    .line 66
    if-eqz p0, :cond_3

    .line 67
    .line 68
    const/4 p0, 0x0

    .line 69
    invoke-virtual {v2, p0}, Lorg/schabi/newpipe/player/Player;->useVideoAndSubtitles(Z)V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :cond_3
    const-string p0, "android.intent.action.SCREEN_ON"

    .line 74
    .line 75
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result p0

    .line 83
    if-eqz p0, :cond_4

    .line 84
    .line 85
    const/4 p0, 0x1

    .line 86
    invoke-virtual {v2, p0}, Lorg/schabi/newpipe/player/Player;->useVideoAndSubtitles(Z)V

    .line 87
    .line 88
    .line 89
    :cond_4
    return-void
.end method

.method public final onCompleted()V
    .locals 1

    .line 1
    invoke-super {p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->onCompleted()V

    .line 2
    .line 3
    .line 4
    const v0, 0x20008

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->changePopupWindowFlags(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onPaused()V
    .locals 1

    .line 1
    invoke-super {p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->onPaused()V

    .line 2
    .line 3
    .line 4
    const v0, 0x20008

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->changePopupWindowFlags(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onPlaybackSpeedClicked()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->playbackSpeedPopupMenu:Lcoil3/ComponentRegistry$Builder;

    .line 2
    .line 3
    iget-object v0, v0, Lcoil3/ComponentRegistry$Builder;->keyers:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Landroidx/appcompat/view/menu/MenuPopupHelper;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuPopupHelper;->isShowing()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v1, v0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {v0, v1, v1, v1, v1}, Landroidx/appcompat/view/menu/MenuPopupHelper;->showPopup(IIZZ)V

    .line 20
    .line 21
    .line 22
    :goto_0
    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->isSomePopupMenuVisible:Z

    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    const-string p0, "MenuPopupHelper cannot be used without an anchor"

    .line 27
    .line 28
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final onPlaying()V
    .locals 1

    .line 1
    invoke-super {p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->onPlaying()V

    .line 2
    .line 3
    .line 4
    const v0, 0x20088

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->changePopupWindowFlags(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final removeViewFromParent()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    .line 2
    .line 3
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 4
    .line 5
    iget-object p0, p0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->windowManager:Landroid/view/WindowManager;

    .line 6
    .line 7
    invoke-interface {p0, v0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final setupAfterIntent()V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    .line 4
    .line 5
    iget-object v2, v1, Lorg/schabi/newpipe/databinding/PlayerBinding;->fullScreenButton:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 9
    .line 10
    .line 11
    iget-object v2, v1, Lorg/schabi/newpipe/databinding/PlayerBinding;->screenRotationButton:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 12
    .line 13
    const/16 v4, 0x8

    .line 14
    .line 15
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    iget-object v2, v1, Lorg/schabi/newpipe/databinding/PlayerBinding;->resizeTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 19
    .line 20
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    iget-object v2, v1, Lorg/schabi/newpipe/databinding/PlayerBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 24
    .line 25
    const v5, 0x7f0a0256

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 33
    .line 34
    .line 35
    iget-object v2, v1, Lorg/schabi/newpipe/databinding/PlayerBinding;->queueButton:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 36
    .line 37
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 38
    .line 39
    .line 40
    iget-object v2, v1, Lorg/schabi/newpipe/databinding/PlayerBinding;->segmentsButton:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 41
    .line 42
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 43
    .line 44
    .line 45
    iget-object v2, v1, Lorg/schabi/newpipe/databinding/PlayerBinding;->moreOptionsButton:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 46
    .line 47
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 48
    .line 49
    .line 50
    iget-object v2, v1, Lorg/schabi/newpipe/databinding/PlayerBinding;->topControls:Landroid/widget/LinearLayout;

    .line 51
    .line 52
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 53
    .line 54
    .line 55
    iget-object v5, v1, Lorg/schabi/newpipe/databinding/PlayerBinding;->primaryControls:Landroid/widget/LinearLayout;

    .line 56
    .line 57
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    const/4 v6, -0x2

    .line 62
    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 63
    .line 64
    iget-object v5, v1, Lorg/schabi/newpipe/databinding/PlayerBinding;->secondaryControls:Landroid/widget/LinearLayout;

    .line 65
    .line 66
    const/high16 v6, 0x3f800000    # 1.0f

    .line 67
    .line 68
    invoke-virtual {v5, v6}, Landroid/view/View;->setAlpha(F)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 72
    .line 73
    .line 74
    const/4 v6, 0x0

    .line 75
    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationY(F)V

    .line 76
    .line 77
    .line 78
    iget-object v5, v1, Lorg/schabi/newpipe/databinding/PlayerBinding;->share:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 79
    .line 80
    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 81
    .line 82
    .line 83
    iget-object v5, v1, Lorg/schabi/newpipe/databinding/PlayerBinding;->playWithKodi:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 84
    .line 85
    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 86
    .line 87
    .line 88
    iget-object v5, v1, Lorg/schabi/newpipe/databinding/PlayerBinding;->openInBrowser:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 89
    .line 90
    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 91
    .line 92
    .line 93
    iget-object v5, v1, Lorg/schabi/newpipe/databinding/PlayerBinding;->switchMute:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 94
    .line 95
    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 96
    .line 97
    .line 98
    iget-object v5, v1, Lorg/schabi/newpipe/databinding/PlayerBinding;->playerCloseButton:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 99
    .line 100
    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v2}, Landroid/view/View;->bringToFront()V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v2, v3}, Landroid/view/View;->setClickable(Z)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v2, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 110
    .line 111
    .line 112
    iget-object v2, v1, Lorg/schabi/newpipe/databinding/PlayerBinding;->bottomControls:Landroid/widget/LinearLayout;

    .line 113
    .line 114
    invoke-virtual {v2}, Landroid/view/View;->bringToFront()V

    .line 115
    .line 116
    .line 117
    iget-object v2, v1, Lorg/schabi/newpipe/databinding/PlayerBinding;->audioTrackTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 118
    .line 119
    iget-object v5, v0, Lorg/schabi/newpipe/player/ui/PlayerUi;->context:Lorg/schabi/newpipe/player/PlayerService;

    .line 120
    .line 121
    const/16 v6, 0x30

    .line 122
    .line 123
    invoke-static {v5, v6}, Lorg/schabi/newpipe/util/DeviceUtils;->dpToPx(Landroid/content/Context;I)I

    .line 124
    .line 125
    .line 126
    move-result v6

    .line 127
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 128
    .line 129
    .line 130
    iget-object v2, v0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    .line 131
    .line 132
    invoke-virtual {v2}, Lorg/schabi/newpipe/player/Player;->isMuted()Z

    .line 133
    .line 134
    .line 135
    move-result v6

    .line 136
    iget-object v7, v1, Lorg/schabi/newpipe/databinding/PlayerBinding;->switchMute:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 137
    .line 138
    if-eqz v6, :cond_0

    .line 139
    .line 140
    const v6, 0x7f080163

    .line 141
    .line 142
    .line 143
    goto :goto_0

    .line 144
    :cond_0
    const v6, 0x7f080164

    .line 145
    .line 146
    .line 147
    :goto_0
    invoke-static {v5, v6}, Lokhttp3/Cookie$Companion;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 148
    .line 149
    .line 150
    move-result-object v6

    .line 151
    invoke-virtual {v7, v6}, Landroidx/appcompat/widget/AppCompatImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 152
    .line 153
    .line 154
    iget-object v6, v1, Lorg/schabi/newpipe/databinding/PlayerBinding;->moreOptionsButton:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 155
    .line 156
    invoke-static {v3, v6}, Lnet/newpipe/app/AppKt;->animateRotation(ILandroid/view/View;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 160
    .line 161
    .line 162
    move-result-object v6

    .line 163
    const v7, 0x7f070363

    .line 164
    .line 165
    .line 166
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 167
    .line 168
    .line 169
    move-result v7

    .line 170
    const v8, 0x7f070362

    .line 171
    .line 172
    .line 173
    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 174
    .line 175
    .line 176
    move-result v6

    .line 177
    invoke-virtual {v0, v3, v3, v7, v6}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->setupElementsSize(IIII)V

    .line 178
    .line 179
    .line 180
    iget-object v6, v1, Lorg/schabi/newpipe/databinding/PlayerBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 181
    .line 182
    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    .line 183
    .line 184
    .line 185
    iget-object v6, v1, Lorg/schabi/newpipe/databinding/PlayerBinding;->playPauseButton:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 186
    .line 187
    invoke-virtual {v6}, Landroid/view/View;->requestFocus()Z

    .line 188
    .line 189
    .line 190
    sget v6, Lorg/schabi/newpipe/MainActivity;->$r8$clinit:I

    .line 191
    .line 192
    const/16 v8, 0x1a

    .line 193
    .line 194
    iget-object v9, v0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->windowManager:Landroid/view/WindowManager;

    .line 195
    .line 196
    const/16 v10, 0x10

    .line 197
    .line 198
    const/16 v11, 0x33

    .line 199
    .line 200
    if-eqz v1, :cond_1

    .line 201
    .line 202
    iget-object v12, v1, Lorg/schabi/newpipe/databinding/PlayerBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 203
    .line 204
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 205
    .line 206
    .line 207
    move-result-object v13

    .line 208
    instance-of v13, v13, Landroid/view/WindowManager$LayoutParams;

    .line 209
    .line 210
    if-eqz v13, :cond_1

    .line 211
    .line 212
    invoke-virtual {v12}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 213
    .line 214
    .line 215
    move-result-object v12

    .line 216
    if-eqz v12, :cond_1

    .line 217
    .line 218
    goto/16 :goto_2

    .line 219
    .line 220
    :cond_1
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->updateScreenSize()V

    .line 221
    .line 222
    .line 223
    iget-object v12, v2, Lorg/schabi/newpipe/player/Player;->prefs:Landroid/content/SharedPreferences;

    .line 224
    .line 225
    iget-object v2, v2, Lorg/schabi/newpipe/player/Player;->context:Lorg/schabi/newpipe/player/PlayerService;

    .line 226
    .line 227
    const v13, 0x7f1303e3

    .line 228
    .line 229
    .line 230
    invoke-virtual {v2, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v13

    .line 234
    const/4 v14, 0x1

    .line 235
    invoke-interface {v12, v13, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 236
    .line 237
    .line 238
    move-result v13

    .line 239
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 240
    .line 241
    .line 242
    move-result-object v14

    .line 243
    const v15, 0x7f07036b

    .line 244
    .line 245
    .line 246
    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimension(I)F

    .line 247
    .line 248
    .line 249
    move-result v14

    .line 250
    if-eqz v13, :cond_2

    .line 251
    .line 252
    const v15, 0x7f1303e6

    .line 253
    .line 254
    .line 255
    invoke-virtual {v2, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v15

    .line 259
    invoke-interface {v12, v15, v14}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    .line 260
    .line 261
    .line 262
    move-result v14

    .line 263
    :cond_2
    const v15, 0x3fe38e39

    .line 264
    .line 265
    .line 266
    div-float v15, v14, v15

    .line 267
    .line 268
    new-instance v16, Landroid/view/WindowManager$LayoutParams;

    .line 269
    .line 270
    float-to-int v6, v14

    .line 271
    float-to-int v7, v15

    .line 272
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 273
    .line 274
    if-ge v4, v8, :cond_3

    .line 275
    .line 276
    const/16 v19, 0x7d2

    .line 277
    .line 278
    goto :goto_1

    .line 279
    :cond_3
    const/16 v19, 0x7f6

    .line 280
    .line 281
    :goto_1
    const v20, 0x20008

    .line 282
    .line 283
    .line 284
    const/16 v21, -0x3

    .line 285
    .line 286
    move/from16 v17, v6

    .line 287
    .line 288
    move/from16 v18, v7

    .line 289
    .line 290
    invoke-direct/range {v16 .. v21}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 291
    .line 292
    .line 293
    move-object/from16 v4, v16

    .line 294
    .line 295
    iput v11, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 296
    .line 297
    iput v10, v4, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 298
    .line 299
    iget v6, v0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->screenWidth:I

    .line 300
    .line 301
    int-to-float v6, v6

    .line 302
    const/high16 v7, 0x40000000    # 2.0f

    .line 303
    .line 304
    div-float/2addr v6, v7

    .line 305
    div-float/2addr v14, v7

    .line 306
    sub-float/2addr v6, v14

    .line 307
    float-to-int v6, v6

    .line 308
    iget v14, v0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->screenHeight:I

    .line 309
    .line 310
    int-to-float v14, v14

    .line 311
    div-float/2addr v14, v7

    .line 312
    div-float/2addr v15, v7

    .line 313
    sub-float/2addr v14, v15

    .line 314
    float-to-int v7, v14

    .line 315
    if-eqz v13, :cond_4

    .line 316
    .line 317
    const v14, 0x7f1303e7

    .line 318
    .line 319
    .line 320
    invoke-virtual {v2, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v14

    .line 324
    invoke-interface {v12, v14, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 325
    .line 326
    .line 327
    move-result v6

    .line 328
    :cond_4
    iput v6, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 329
    .line 330
    if-eqz v13, :cond_5

    .line 331
    .line 332
    const v6, 0x7f1303e8

    .line 333
    .line 334
    .line 335
    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v2

    .line 339
    invoke-interface {v12, v2, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 340
    .line 341
    .line 342
    move-result v7

    .line 343
    :cond_5
    iput v7, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 344
    .line 345
    iput-object v4, v0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->popupLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 346
    .line 347
    iget-object v2, v1, Lorg/schabi/newpipe/databinding/PlayerBinding;->surfaceView:Lorg/schabi/newpipe/views/ExpandableSurfaceView;

    .line 348
    .line 349
    iget-object v6, v1, Lorg/schabi/newpipe/databinding/PlayerBinding;->loadingPanel:Landroid/widget/RelativeLayout;

    .line 350
    .line 351
    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 352
    .line 353
    invoke-virtual {v2, v4, v4}, Lorg/schabi/newpipe/views/ExpandableSurfaceView;->setHeights(II)V

    .line 354
    .line 355
    .line 356
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->checkPopupPositionBounds()V

    .line 357
    .line 358
    .line 359
    iget-object v2, v0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->popupLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 360
    .line 361
    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 362
    .line 363
    invoke-virtual {v6, v2}, Landroid/view/View;->setMinimumWidth(I)V

    .line 364
    .line 365
    .line 366
    iget-object v2, v0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->popupLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 367
    .line 368
    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 369
    .line 370
    invoke-virtual {v6, v2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 371
    .line 372
    .line 373
    iget-object v1, v1, Lorg/schabi/newpipe/databinding/PlayerBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 374
    .line 375
    iget-object v2, v0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->popupLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 376
    .line 377
    invoke-interface {v9, v1, v2}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 378
    .line 379
    .line 380
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->setupVideoSurfaceIfNeeded()V

    .line 381
    .line 382
    .line 383
    invoke-virtual {v0, v3}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->setResizeMode(I)V

    .line 384
    .line 385
    .line 386
    :goto_2
    iget-object v1, v0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->closeOverlayBinding:Lorg/jsoup/parser/TokenData;

    .line 387
    .line 388
    if-eqz v1, :cond_6

    .line 389
    .line 390
    return-void

    .line 391
    :cond_6
    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 392
    .line 393
    .line 394
    move-result-object v1

    .line 395
    const/4 v2, 0x0

    .line 396
    const v4, 0x7f0d00dc

    .line 397
    .line 398
    .line 399
    invoke-virtual {v1, v4, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 400
    .line 401
    .line 402
    move-result-object v1

    .line 403
    const v2, 0x7f0a00bb

    .line 404
    .line 405
    .line 406
    invoke-static {v2, v1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 407
    .line 408
    .line 409
    move-result-object v3

    .line 410
    check-cast v3, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 411
    .line 412
    if-eqz v3, :cond_9

    .line 413
    .line 414
    new-instance v2, Lorg/jsoup/parser/TokenData;

    .line 415
    .line 416
    check-cast v1, Landroid/widget/FrameLayout;

    .line 417
    .line 418
    const/16 v4, 0x8

    .line 419
    .line 420
    invoke-direct {v2, v1, v3, v4}, Lorg/jsoup/parser/TokenData;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 421
    .line 422
    .line 423
    iput-object v2, v0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->closeOverlayBinding:Lorg/jsoup/parser/TokenData;

    .line 424
    .line 425
    new-instance v12, Landroid/view/WindowManager$LayoutParams;

    .line 426
    .line 427
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 428
    .line 429
    if-ge v1, v8, :cond_7

    .line 430
    .line 431
    const/16 v15, 0x7d2

    .line 432
    .line 433
    goto :goto_3

    .line 434
    :cond_7
    const/16 v15, 0x7f6

    .line 435
    .line 436
    :goto_3
    const v16, 0x20018

    .line 437
    .line 438
    .line 439
    const/16 v17, -0x3

    .line 440
    .line 441
    const/4 v13, -0x1

    .line 442
    const/4 v14, -0x1

    .line 443
    invoke-direct/range {v12 .. v17}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 444
    .line 445
    .line 446
    const/16 v2, 0x1f

    .line 447
    .line 448
    if-lt v1, v2, :cond_8

    .line 449
    .line 450
    const v1, 0x3f4ccccd    # 0.8f

    .line 451
    .line 452
    .line 453
    iput v1, v12, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 454
    .line 455
    :cond_8
    iput v11, v12, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 456
    .line 457
    iput v10, v12, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 458
    .line 459
    iget-object v1, v0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->closeOverlayBinding:Lorg/jsoup/parser/TokenData;

    .line 460
    .line 461
    iget-object v1, v1, Lorg/jsoup/parser/TokenData;->builder:Ljava/lang/Object;

    .line 462
    .line 463
    check-cast v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 464
    .line 465
    const/16 v4, 0x8

    .line 466
    .line 467
    invoke-virtual {v1, v4}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setVisibility(I)V

    .line 468
    .line 469
    .line 470
    iget-object v0, v0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->closeOverlayBinding:Lorg/jsoup/parser/TokenData;

    .line 471
    .line 472
    iget-object v0, v0, Lorg/jsoup/parser/TokenData;->value:Ljava/lang/Object;

    .line 473
    .line 474
    check-cast v0, Landroid/widget/FrameLayout;

    .line 475
    .line 476
    invoke-interface {v9, v0, v12}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 477
    .line 478
    .line 479
    return-void

    .line 480
    :cond_9
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 481
    .line 482
    .line 483
    move-result-object v0

    .line 484
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 485
    .line 486
    .line 487
    move-result-object v0

    .line 488
    const-string v1, "Missing required view with ID: "

    .line 489
    .line 490
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 491
    .line 492
    .line 493
    move-result-object v0

    .line 494
    invoke-static {v0}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 495
    .line 496
    .line 497
    return-void
.end method

.method public final setupSubtitleView(F)V
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/PlayerBinding;->subtitleView:Lcom/google/android/exoplayer2/ui/SubtitleView;

    .line 4
    .line 5
    const v0, 0x3d5a511a    # 0.0533f

    .line 6
    .line 7
    .line 8
    mul-float/2addr p1, v0

    .line 9
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setFractionalTextSize(F)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final updateScreenSize()V
    .locals 5

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1e

    .line 4
    .line 5
    iget-object v2, p0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->windowManager:Landroid/view/WindowManager;

    .line 6
    .line 7
    if-lt v0, v1, :cond_0

    .line 8
    .line 9
    invoke-interface {v2}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    or-int/2addr v2, v3

    .line 30
    invoke-virtual {v0, v2}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    invoke-static {v0}, Landroidx/compose/foundation/layout/Arrangement$$ExternalSyntheticLambda0;->m(Landroid/graphics/Insets;)I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    invoke-static {v0}, Landroidx/compose/foundation/layout/Arrangement$$ExternalSyntheticLambda0;->m$2(Landroid/graphics/Insets;)I

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    add-int/2addr v3, v4

    .line 47
    sub-int/2addr v2, v3

    .line 48
    iput v2, p0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->screenWidth:I

    .line 49
    .line 50
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    invoke-static {v0}, Landroidx/compose/foundation/layout/Arrangement$$ExternalSyntheticLambda0;->m$1(Landroid/graphics/Insets;)I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    invoke-static {v0}, Landroidx/compose/foundation/layout/Arrangement$$ExternalSyntheticLambda0;->m$3(Landroid/graphics/Insets;)I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    add-int/2addr v2, v0

    .line 63
    sub-int/2addr v1, v2

    .line 64
    iput v1, p0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->screenHeight:I

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_0
    new-instance v0, Landroid/util/DisplayMetrics;

    .line 68
    .line 69
    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 77
    .line 78
    .line 79
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 80
    .line 81
    iput v1, p0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->screenWidth:I

    .line 82
    .line 83
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 84
    .line 85
    iput v0, p0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->screenHeight:I

    .line 86
    .line 87
    :goto_0
    sget p0, Lorg/schabi/newpipe/MainActivity;->$r8$clinit:I

    .line 88
    .line 89
    return-void
.end method
