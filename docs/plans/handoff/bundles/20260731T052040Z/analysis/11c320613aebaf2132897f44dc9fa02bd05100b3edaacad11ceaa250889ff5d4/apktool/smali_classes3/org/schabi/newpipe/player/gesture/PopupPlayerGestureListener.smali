.class public final Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;
.super Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final Companion:Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener$Companion;


# instance fields
.field public initFirstPointerX:F

.field public initFirstPointerY:F

.field public initPointerDistance:D

.field public initSecPointerX:F

.field public initSecPointerY:F

.field public initialPopupX:I

.field public initialPopupY:I

.field public isMoving:Z

.field public isResizing:Z

.field public final playerUi:Lorg/schabi/newpipe/player/ui/PopupPlayerUi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->Companion:Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener$Companion;

    .line 7
    .line 8
    sget v0, Lorg/schabi/newpipe/MainActivity;->$r8$clinit:I

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Lorg/schabi/newpipe/player/ui/PopupPlayerUi;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;-><init>(Lorg/schabi/newpipe/player/ui/VideoPlayerUi;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->playerUi:Lorg/schabi/newpipe/player/ui/PopupPlayerUi;

    .line 5
    .line 6
    const/4 p1, -0x1

    .line 7
    iput p1, p0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->initialPopupX:I

    .line 8
    .line 9
    iput p1, p0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->initialPopupY:I

    .line 10
    .line 11
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 12
    .line 13
    iput-wide v0, p0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->initPointerDistance:D

    .line 14
    .line 15
    const/high16 p1, -0x40800000    # -1.0f

    .line 16
    .line 17
    iput p1, p0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->initFirstPointerX:F

    .line 18
    .line 19
    iput p1, p0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->initFirstPointerY:F

    .line 20
    .line 21
    iput p1, p0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->initSecPointerX:F

    .line 22
    .line 23
    iput p1, p0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->initSecPointerY:F

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final getDisplayPortion(Landroid/view/MotionEvent;)Lorg/schabi/newpipe/player/gesture/DisplayPortion;
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    float-to-double v0, v0

    .line 6
    iget-object p0, p0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->playerUi:Lorg/schabi/newpipe/player/ui/PopupPlayerUi;

    .line 7
    .line 8
    iget-object v2, p0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->popupLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 9
    .line 10
    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 11
    .line 12
    int-to-double v2, v2

    .line 13
    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    .line 14
    .line 15
    div-double/2addr v2, v4

    .line 16
    cmpg-double v0, v0, v2

    .line 17
    .line 18
    if-gez v0, :cond_0

    .line 19
    .line 20
    sget-object p0, Lorg/schabi/newpipe/player/gesture/DisplayPortion;->LEFT:Lorg/schabi/newpipe/player/gesture/DisplayPortion;

    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    float-to-double v0, p1

    .line 28
    iget-object p0, p0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->popupLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 29
    .line 30
    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 31
    .line 32
    int-to-double p0, p0

    .line 33
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 34
    .line 35
    mul-double/2addr p0, v2

    .line 36
    div-double/2addr p0, v4

    .line 37
    cmpl-double p0, v0, p0

    .line 38
    .line 39
    if-lez p0, :cond_1

    .line 40
    .line 41
    sget-object p0, Lorg/schabi/newpipe/player/gesture/DisplayPortion;->RIGHT:Lorg/schabi/newpipe/player/gesture/DisplayPortion;

    .line 42
    .line 43
    return-object p0

    .line 44
    :cond_1
    sget-object p0, Lorg/schabi/newpipe/player/gesture/DisplayPortion;->MIDDLE:Lorg/schabi/newpipe/player/gesture/DisplayPortion;

    .line 45
    .line 46
    return-object p0
.end method

.method public final onDownNotDoubleTapping(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->playerUi:Lorg/schabi/newpipe/player/ui/PopupPlayerUi;

    .line 2
    .line 3
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->updateScreenSize()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->checkPopupPositionBounds()V

    .line 7
    .line 8
    .line 9
    iget-object p1, p1, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->popupLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 10
    .line 11
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 12
    .line 13
    iput v0, p0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->initialPopupX:I

    .line 14
    .line 15
    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 16
    .line 17
    iput p1, p0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->initialPopupY:I

    .line 18
    .line 19
    const/4 p0, 0x1

    .line 20
    return p0
.end method

.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->player:Lorg/schabi/newpipe/player/Player;

    .line 5
    .line 6
    iget-object p1, p1, Lorg/schabi/newpipe/player/Player;->playerType:Lorg/schabi/newpipe/player/PlayerType;

    .line 7
    .line 8
    sget-object p2, Lorg/schabi/newpipe/player/PlayerType;->POPUP:Lorg/schabi/newpipe/player/PlayerType;

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    if-ne p1, p2, :cond_4

    .line 12
    .line 13
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    cmpg-float v1, p1, p2

    .line 22
    .line 23
    if-gez v1, :cond_0

    .line 24
    .line 25
    move v1, p2

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move v1, p1

    .line 28
    :goto_0
    const v2, 0x451c4000    # 2500.0f

    .line 29
    .line 30
    .line 31
    cmpl-float v1, v1, v2

    .line 32
    .line 33
    if-lez v1, :cond_3

    .line 34
    .line 35
    cmpl-float p1, p1, v2

    .line 36
    .line 37
    iget-object v1, p0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->playerUi:Lorg/schabi/newpipe/player/ui/PopupPlayerUi;

    .line 38
    .line 39
    if-lez p1, :cond_1

    .line 40
    .line 41
    iget-object p1, v1, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->popupLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 42
    .line 43
    float-to-int p3, p3

    .line 44
    iput p3, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 45
    .line 46
    :cond_1
    cmpl-float p1, p2, v2

    .line 47
    .line 48
    if-lez p1, :cond_2

    .line 49
    .line 50
    iget-object p1, v1, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->popupLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 51
    .line 52
    float-to-int p2, p4

    .line 53
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 54
    .line 55
    :cond_2
    invoke-virtual {v1}, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->checkPopupPositionBounds()V

    .line 56
    .line 57
    .line 58
    iget-object p1, v1, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->windowManager:Landroid/view/WindowManager;

    .line 59
    .line 60
    iget-object p0, p0, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    .line 61
    .line 62
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/PlayerBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 63
    .line 64
    iget-object p2, v1, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->popupLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 65
    .line 66
    invoke-interface {p1, p0, p2}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    .line 68
    .line 69
    return v0

    .line 70
    :cond_3
    const/4 p0, 0x0

    .line 71
    return p0

    .line 72
    :cond_4
    return v0
.end method

.method public final onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->playerUi:Lorg/schabi/newpipe/player/ui/PopupPlayerUi;

    .line 5
    .line 6
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->updateScreenSize()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->checkPopupPositionBounds()V

    .line 10
    .line 11
    .line 12
    iget p1, p0, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->screenWidth:I

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->changePopupSize(I)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 13

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return v1

    .line 8
    :cond_0
    iget-boolean v2, p0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->isResizing:Z

    .line 9
    .line 10
    if-eqz v2, :cond_1

    .line 11
    .line 12
    invoke-super/range {p0 .. p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    return v0

    .line 17
    :cond_1
    iget-boolean v2, p0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->isMoving:Z

    .line 18
    .line 19
    iget-object v3, p0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->playerUi:Lorg/schabi/newpipe/player/ui/PopupPlayerUi;

    .line 20
    .line 21
    if-nez v2, :cond_2

    .line 22
    .line 23
    iget-object v2, v3, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->closeOverlayBinding:Lorg/jsoup/parser/TokenData;

    .line 24
    .line 25
    iget-object v2, v2, Lorg/jsoup/parser/TokenData;->builder:Ljava/lang/Object;

    .line 26
    .line 27
    move-object v4, v2

    .line 28
    check-cast v4, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 29
    .line 30
    const/4 v11, 0x0

    .line 31
    const/16 v12, 0x1c

    .line 32
    .line 33
    const/4 v5, 0x1

    .line 34
    const-wide/16 v6, 0xc8

    .line 35
    .line 36
    const/4 v8, 0x0

    .line 37
    const-wide/16 v9, 0x0

    .line 38
    .line 39
    invoke-static/range {v4 .. v12}, Lnet/newpipe/app/AppKt;->animate$default(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda13;I)V

    .line 40
    .line 41
    .line 42
    :cond_2
    const/4 v2, 0x1

    .line 43
    iput-boolean v2, p0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->isMoving:Z

    .line 44
    .line 45
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    sub-float/2addr v4, v5

    .line 54
    iget v5, p0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->initialPopupX:I

    .line 55
    .line 56
    int-to-float v5, v5

    .line 57
    add-float/2addr v5, v4

    .line 58
    iget v4, v3, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->screenWidth:I

    .line 59
    .line 60
    iget-object v6, v3, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->popupLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 61
    .line 62
    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 63
    .line 64
    sub-int/2addr v4, v6

    .line 65
    int-to-float v4, v4

    .line 66
    const/4 v6, 0x0

    .line 67
    cmpg-float v7, v4, v6

    .line 68
    .line 69
    if-gez v7, :cond_3

    .line 70
    .line 71
    move v4, v6

    .line 72
    :cond_3
    invoke-static {v5, v6, v4}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 81
    .line 82
    .line 83
    move-result v7

    .line 84
    sub-float/2addr v5, v7

    .line 85
    iget v7, p0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->initialPopupY:I

    .line 86
    .line 87
    int-to-float v7, v7

    .line 88
    add-float/2addr v7, v5

    .line 89
    iget v5, v3, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->screenHeight:I

    .line 90
    .line 91
    iget-object v8, v3, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->popupLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 92
    .line 93
    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 94
    .line 95
    sub-int/2addr v5, v8

    .line 96
    int-to-float v5, v5

    .line 97
    cmpg-float v8, v5, v6

    .line 98
    .line 99
    if-gez v8, :cond_4

    .line 100
    .line 101
    move v5, v6

    .line 102
    :cond_4
    invoke-static {v7, v6, v5}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    .line 103
    .line 104
    .line 105
    move-result v5

    .line 106
    iget-object v6, v3, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->popupLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 107
    .line 108
    float-to-int v4, v4

    .line 109
    iput v4, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 110
    .line 111
    float-to-int v4, v5

    .line 112
    iput v4, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 113
    .line 114
    invoke-virtual {v3, p2}, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->isInsideClosingRadius(Landroid/view/MotionEvent;)Z

    .line 115
    .line 116
    .line 117
    move-result v5

    .line 118
    iget-object v0, p0, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    .line 119
    .line 120
    iget-object v4, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->closingOverlay:Landroid/view/View;

    .line 121
    .line 122
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 123
    .line 124
    .line 125
    move-result v4

    .line 126
    if-nez v4, :cond_5

    .line 127
    .line 128
    move v1, v2

    .line 129
    :cond_5
    if-eq v1, v5, :cond_6

    .line 130
    .line 131
    iget-object v4, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->closingOverlay:Landroid/view/View;

    .line 132
    .line 133
    const/4 v11, 0x0

    .line 134
    const/16 v12, 0x1c

    .line 135
    .line 136
    const-wide/16 v6, 0xc8

    .line 137
    .line 138
    const/4 v8, 0x0

    .line 139
    const-wide/16 v9, 0x0

    .line 140
    .line 141
    invoke-static/range {v4 .. v12}, Lnet/newpipe/app/AppKt;->animate$default(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda13;I)V

    .line 142
    .line 143
    .line 144
    :cond_6
    iget-object v1, v3, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->windowManager:Landroid/view/WindowManager;

    .line 145
    .line 146
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 147
    .line 148
    iget-object v3, v3, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->popupLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 149
    .line 150
    invoke-interface {v1, v0, v3}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    .line 152
    .line 153
    return v2
.end method

.method public final onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-boolean p1, p0, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->isDoubleTapping:Z

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    return v0

    .line 10
    :cond_0
    iget-object p1, p0, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->player:Lorg/schabi/newpipe/player/Player;

    .line 11
    .line 12
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/Player;->exoPlayerIsNull()Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    const/4 p0, 0x0

    .line 19
    return p0

    .line 20
    :cond_1
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->onSingleTap()V

    .line 21
    .line 22
    .line 23
    return v0
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-super/range {p0 .. p2}, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    iget-object v3, v0, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    .line 19
    .line 20
    iget-object v4, v0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->playerUi:Lorg/schabi/newpipe/player/ui/PopupPlayerUi;

    .line 21
    .line 22
    const/4 v5, 0x0

    .line 23
    const/4 v6, 0x1

    .line 24
    const/4 v7, 0x2

    .line 25
    if-ne v2, v7, :cond_0

    .line 26
    .line 27
    iget-boolean v2, v0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->isMoving:Z

    .line 28
    .line 29
    if-nez v2, :cond_0

    .line 30
    .line 31
    iget-boolean v2, v0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->isResizing:Z

    .line 32
    .line 33
    if-nez v2, :cond_0

    .line 34
    .line 35
    iget-object v2, v3, Lorg/schabi/newpipe/databinding/PlayerBinding;->loadingPanel:Landroid/widget/RelativeLayout;

    .line 36
    .line 37
    const/16 v8, 0x8

    .line 38
    .line 39
    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 40
    .line 41
    .line 42
    const-wide/16 v8, 0x0

    .line 43
    .line 44
    invoke-virtual {v4, v8, v9, v8, v9}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->hideControls(JJ)V

    .line 45
    .line 46
    .line 47
    iget-object v10, v3, Lorg/schabi/newpipe/databinding/PlayerBinding;->fastSeekOverlay:Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay;

    .line 48
    .line 49
    const/16 v17, 0x0

    .line 50
    .line 51
    const/16 v18, 0x1c

    .line 52
    .line 53
    const/4 v11, 0x0

    .line 54
    const-wide/16 v12, 0x0

    .line 55
    .line 56
    const/4 v14, 0x0

    .line 57
    const-wide/16 v15, 0x0

    .line 58
    .line 59
    invoke-static/range {v10 .. v18}, Lnet/newpipe/app/AppKt;->animate$default(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda13;I)V

    .line 60
    .line 61
    .line 62
    iget-object v2, v3, Lorg/schabi/newpipe/databinding/PlayerBinding;->currentDisplaySeek:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 63
    .line 64
    const/16 v26, 0x0

    .line 65
    .line 66
    const/16 v27, 0x10

    .line 67
    .line 68
    const/16 v20, 0x0

    .line 69
    .line 70
    const-wide/16 v21, 0x0

    .line 71
    .line 72
    sget-object v23, Lorg/schabi/newpipe/ktx/AnimationType;->ALPHA:Lorg/schabi/newpipe/ktx/AnimationType;

    .line 73
    .line 74
    const-wide/16 v24, 0x0

    .line 75
    .line 76
    move-object/from16 v19, v2

    .line 77
    .line 78
    invoke-static/range {v19 .. v27}, Lnet/newpipe/app/AppKt;->animate$default(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda13;I)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getX(I)F

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    iput v2, v0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->initFirstPointerX:F

    .line 86
    .line 87
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getY(I)F

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    iput v2, v0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->initFirstPointerY:F

    .line 92
    .line 93
    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getX(I)F

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    iput v2, v0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->initSecPointerX:F

    .line 98
    .line 99
    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getY(I)F

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    iput v2, v0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->initSecPointerY:F

    .line 104
    .line 105
    iget v8, v0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->initFirstPointerX:F

    .line 106
    .line 107
    float-to-double v8, v8

    .line 108
    iget v10, v0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->initSecPointerX:F

    .line 109
    .line 110
    float-to-double v10, v10

    .line 111
    sub-double/2addr v8, v10

    .line 112
    iget v10, v0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->initFirstPointerY:F

    .line 113
    .line 114
    float-to-double v10, v10

    .line 115
    float-to-double v12, v2

    .line 116
    sub-double/2addr v10, v12

    .line 117
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->hypot(DD)D

    .line 118
    .line 119
    .line 120
    move-result-wide v8

    .line 121
    iput-wide v8, v0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->initPointerDistance:D

    .line 122
    .line 123
    iput-boolean v6, v0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->isResizing:Z

    .line 124
    .line 125
    :cond_0
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    iget-object v8, v0, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->player:Lorg/schabi/newpipe/player/Player;

    .line 130
    .line 131
    const-wide/high16 v9, -0x4010000000000000L    # -1.0

    .line 132
    .line 133
    if-ne v2, v7, :cond_4

    .line 134
    .line 135
    iget-boolean v2, v0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->isMoving:Z

    .line 136
    .line 137
    if-nez v2, :cond_4

    .line 138
    .line 139
    iget-boolean v2, v0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->isResizing:Z

    .line 140
    .line 141
    if-eqz v2, :cond_4

    .line 142
    .line 143
    iget-wide v2, v0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->initPointerDistance:D

    .line 144
    .line 145
    cmpg-double v2, v2, v9

    .line 146
    .line 147
    if-nez v2, :cond_1

    .line 148
    .line 149
    goto :goto_0

    .line 150
    :cond_1
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 151
    .line 152
    .line 153
    move-result v2

    .line 154
    if-eq v2, v7, :cond_2

    .line 155
    .line 156
    goto :goto_0

    .line 157
    :cond_2
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getX(I)F

    .line 158
    .line 159
    .line 160
    move-result v2

    .line 161
    float-to-double v2, v2

    .line 162
    iget v7, v0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->initFirstPointerX:F

    .line 163
    .line 164
    float-to-double v9, v7

    .line 165
    sub-double/2addr v2, v9

    .line 166
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getY(I)F

    .line 167
    .line 168
    .line 169
    move-result v7

    .line 170
    float-to-double v9, v7

    .line 171
    iget v7, v0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->initFirstPointerY:F

    .line 172
    .line 173
    float-to-double v11, v7

    .line 174
    sub-double/2addr v9, v11

    .line 175
    invoke-static {v2, v3, v9, v10}, Ljava/lang/Math;->hypot(DD)D

    .line 176
    .line 177
    .line 178
    move-result-wide v2

    .line 179
    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getX(I)F

    .line 180
    .line 181
    .line 182
    move-result v7

    .line 183
    float-to-double v9, v7

    .line 184
    iget v7, v0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->initSecPointerX:F

    .line 185
    .line 186
    float-to-double v11, v7

    .line 187
    sub-double/2addr v9, v11

    .line 188
    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getY(I)F

    .line 189
    .line 190
    .line 191
    move-result v7

    .line 192
    float-to-double v11, v7

    .line 193
    iget v7, v0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->initSecPointerY:F

    .line 194
    .line 195
    float-to-double v13, v7

    .line 196
    sub-double/2addr v11, v13

    .line 197
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->hypot(DD)D

    .line 198
    .line 199
    .line 200
    move-result-wide v9

    .line 201
    iget-object v7, v8, Lorg/schabi/newpipe/player/Player;->context:Lorg/schabi/newpipe/player/PlayerService;

    .line 202
    .line 203
    invoke-static {v7}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 204
    .line 205
    .line 206
    move-result-object v7

    .line 207
    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 208
    .line 209
    .line 210
    move-result v7

    .line 211
    invoke-static {v2, v3, v9, v10}, Ljava/lang/Math;->max(DD)D

    .line 212
    .line 213
    .line 214
    move-result-wide v2

    .line 215
    int-to-double v7, v7

    .line 216
    cmpg-double v2, v2, v7

    .line 217
    .line 218
    if-gtz v2, :cond_3

    .line 219
    .line 220
    :goto_0
    return v5

    .line 221
    :cond_3
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getX(I)F

    .line 222
    .line 223
    .line 224
    move-result v2

    .line 225
    float-to-double v2, v2

    .line 226
    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getX(I)F

    .line 227
    .line 228
    .line 229
    move-result v7

    .line 230
    float-to-double v7, v7

    .line 231
    sub-double/2addr v2, v7

    .line 232
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getY(I)F

    .line 233
    .line 234
    .line 235
    move-result v5

    .line 236
    float-to-double v7, v5

    .line 237
    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getY(I)F

    .line 238
    .line 239
    .line 240
    move-result v1

    .line 241
    float-to-double v9, v1

    .line 242
    sub-double/2addr v7, v9

    .line 243
    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->hypot(DD)D

    .line 244
    .line 245
    .line 246
    move-result-wide v1

    .line 247
    iget-object v3, v4, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->popupLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 248
    .line 249
    iget v5, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 250
    .line 251
    int-to-double v7, v5

    .line 252
    mul-double v9, v7, v1

    .line 253
    .line 254
    iget-wide v11, v0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->initPointerDistance:D

    .line 255
    .line 256
    div-double/2addr v9, v11

    .line 257
    iput-wide v1, v0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->initPointerDistance:D

    .line 258
    .line 259
    iget v0, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 260
    .line 261
    sub-double/2addr v7, v9

    .line 262
    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    .line 263
    .line 264
    div-double/2addr v7, v1

    .line 265
    double-to-int v1, v7

    .line 266
    add-int/2addr v0, v1

    .line 267
    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 268
    .line 269
    invoke-virtual {v4}, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->checkPopupPositionBounds()V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v4}, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->updateScreenSize()V

    .line 273
    .line 274
    .line 275
    iget v0, v4, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->screenWidth:I

    .line 276
    .line 277
    int-to-double v0, v0

    .line 278
    invoke-static {v0, v1, v9, v10}, Ljava/lang/Math;->min(DD)D

    .line 279
    .line 280
    .line 281
    move-result-wide v0

    .line 282
    double-to-int v0, v0

    .line 283
    invoke-virtual {v4, v0}, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->changePopupSize(I)V

    .line 284
    .line 285
    .line 286
    return v6

    .line 287
    :cond_4
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    .line 288
    .line 289
    .line 290
    move-result v2

    .line 291
    if-ne v2, v6, :cond_a

    .line 292
    .line 293
    iget-boolean v2, v0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->isMoving:Z

    .line 294
    .line 295
    if-eqz v2, :cond_8

    .line 296
    .line 297
    iput-boolean v5, v0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->isMoving:Z

    .line 298
    .line 299
    iget-object v2, v0, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->playerUi:Lorg/schabi/newpipe/player/ui/VideoPlayerUi;

    .line 300
    .line 301
    invoke-virtual {v2}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->isControlsVisible()Z

    .line 302
    .line 303
    .line 304
    move-result v7

    .line 305
    if-eqz v7, :cond_5

    .line 306
    .line 307
    iget v7, v8, Lorg/schabi/newpipe/player/Player;->currentState:I

    .line 308
    .line 309
    const/16 v11, 0x7c

    .line 310
    .line 311
    if-ne v7, v11, :cond_5

    .line 312
    .line 313
    const-wide/16 v11, 0x12c

    .line 314
    .line 315
    const-wide/16 v13, 0x7d0

    .line 316
    .line 317
    invoke-virtual {v2, v11, v12, v13, v14}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->hideControls(JJ)V

    .line 318
    .line 319
    .line 320
    :cond_5
    invoke-virtual {v4, v1}, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->isInsideClosingRadius(Landroid/view/MotionEvent;)Z

    .line 321
    .line 322
    .line 323
    move-result v1

    .line 324
    if-eqz v1, :cond_7

    .line 325
    .line 326
    sget v1, Lorg/schabi/newpipe/MainActivity;->$r8$clinit:I

    .line 327
    .line 328
    iget-boolean v1, v4, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->isPopupClosing:Z

    .line 329
    .line 330
    if-eqz v1, :cond_6

    .line 331
    .line 332
    goto/16 :goto_1

    .line 333
    .line 334
    :cond_6
    iput-boolean v6, v4, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->isPopupClosing:Z

    .line 335
    .line 336
    iget-object v1, v4, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    .line 337
    .line 338
    invoke-virtual {v1}, Lorg/schabi/newpipe/player/Player;->saveStreamProgressState()V

    .line 339
    .line 340
    .line 341
    iget-object v1, v4, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->windowManager:Landroid/view/WindowManager;

    .line 342
    .line 343
    iget-object v2, v4, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    .line 344
    .line 345
    iget-object v2, v2, Lorg/schabi/newpipe/databinding/PlayerBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 346
    .line 347
    invoke-interface {v1, v2}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    .line 348
    .line 349
    .line 350
    iget-object v1, v4, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->closeOverlayBinding:Lorg/jsoup/parser/TokenData;

    .line 351
    .line 352
    iget-object v1, v1, Lorg/jsoup/parser/TokenData;->builder:Ljava/lang/Object;

    .line 353
    .line 354
    check-cast v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 355
    .line 356
    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 357
    .line 358
    .line 359
    move-result-object v1

    .line 360
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 361
    .line 362
    .line 363
    move-result v1

    .line 364
    int-to-float v1, v1

    .line 365
    iget-object v2, v4, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->closeOverlayBinding:Lorg/jsoup/parser/TokenData;

    .line 366
    .line 367
    iget-object v2, v2, Lorg/jsoup/parser/TokenData;->builder:Ljava/lang/Object;

    .line 368
    .line 369
    check-cast v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 370
    .line 371
    invoke-virtual {v2}, Landroid/view/View;->getY()F

    .line 372
    .line 373
    .line 374
    move-result v2

    .line 375
    sub-float/2addr v1, v2

    .line 376
    float-to-int v1, v1

    .line 377
    iget-object v2, v4, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->closeOverlayBinding:Lorg/jsoup/parser/TokenData;

    .line 378
    .line 379
    iget-object v2, v2, Lorg/jsoup/parser/TokenData;->builder:Ljava/lang/Object;

    .line 380
    .line 381
    check-cast v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 382
    .line 383
    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 384
    .line 385
    .line 386
    move-result-object v2

    .line 387
    const/4 v3, 0x0

    .line 388
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 389
    .line 390
    .line 391
    move-result-object v2

    .line 392
    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 393
    .line 394
    .line 395
    iget-object v2, v4, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->closeOverlayBinding:Lorg/jsoup/parser/TokenData;

    .line 396
    .line 397
    iget-object v2, v2, Lorg/jsoup/parser/TokenData;->builder:Ljava/lang/Object;

    .line 398
    .line 399
    check-cast v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 400
    .line 401
    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 402
    .line 403
    .line 404
    move-result-object v2

    .line 405
    new-instance v3, Landroid/view/animation/AnticipateInterpolator;

    .line 406
    .line 407
    invoke-direct {v3}, Landroid/view/animation/AnticipateInterpolator;-><init>()V

    .line 408
    .line 409
    .line 410
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 411
    .line 412
    .line 413
    move-result-object v2

    .line 414
    int-to-float v1, v1

    .line 415
    invoke-virtual {v2, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 416
    .line 417
    .line 418
    move-result-object v1

    .line 419
    const-wide/16 v2, 0x190

    .line 420
    .line 421
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 422
    .line 423
    .line 424
    move-result-object v1

    .line 425
    new-instance v2, Landroidx/transition/Transition$3;

    .line 426
    .line 427
    const/16 v3, 0xc

    .line 428
    .line 429
    invoke-direct {v2, v4, v3}, Landroidx/transition/Transition$3;-><init>(Ljava/lang/Object;I)V

    .line 430
    .line 431
    .line 432
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 433
    .line 434
    .line 435
    move-result-object v1

    .line 436
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 437
    .line 438
    .line 439
    goto :goto_1

    .line 440
    :cond_7
    iget-boolean v1, v4, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->isPopupClosing:Z

    .line 441
    .line 442
    if-nez v1, :cond_8

    .line 443
    .line 444
    iget-object v1, v4, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->closeOverlayBinding:Lorg/jsoup/parser/TokenData;

    .line 445
    .line 446
    iget-object v1, v1, Lorg/jsoup/parser/TokenData;->builder:Ljava/lang/Object;

    .line 447
    .line 448
    move-object v11, v1

    .line 449
    check-cast v11, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 450
    .line 451
    const/16 v18, 0x0

    .line 452
    .line 453
    const/16 v19, 0x1c

    .line 454
    .line 455
    const/4 v12, 0x0

    .line 456
    const-wide/16 v13, 0xc8

    .line 457
    .line 458
    const/4 v15, 0x0

    .line 459
    const-wide/16 v16, 0x0

    .line 460
    .line 461
    invoke-static/range {v11 .. v19}, Lnet/newpipe/app/AppKt;->animate$default(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda13;I)V

    .line 462
    .line 463
    .line 464
    iget-object v1, v3, Lorg/schabi/newpipe/databinding/PlayerBinding;->closingOverlay:Landroid/view/View;

    .line 465
    .line 466
    const/16 v27, 0x0

    .line 467
    .line 468
    const/16 v28, 0x1c

    .line 469
    .line 470
    const/16 v21, 0x0

    .line 471
    .line 472
    const-wide/16 v22, 0xc8

    .line 473
    .line 474
    const/16 v24, 0x0

    .line 475
    .line 476
    const-wide/16 v25, 0x0

    .line 477
    .line 478
    move-object/from16 v20, v1

    .line 479
    .line 480
    invoke-static/range {v20 .. v28}, Lnet/newpipe/app/AppKt;->animate$default(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda13;I)V

    .line 481
    .line 482
    .line 483
    :cond_8
    :goto_1
    iget-boolean v1, v0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->isResizing:Z

    .line 484
    .line 485
    if-eqz v1, :cond_9

    .line 486
    .line 487
    iput-boolean v5, v0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->isResizing:Z

    .line 488
    .line 489
    iput-wide v9, v0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->initPointerDistance:D

    .line 490
    .line 491
    const/high16 v1, -0x40800000    # -1.0f

    .line 492
    .line 493
    iput v1, v0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->initFirstPointerX:F

    .line 494
    .line 495
    iput v1, v0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->initFirstPointerY:F

    .line 496
    .line 497
    iput v1, v0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->initSecPointerX:F

    .line 498
    .line 499
    iput v1, v0, Lorg/schabi/newpipe/player/gesture/PopupPlayerGestureListener;->initSecPointerY:F

    .line 500
    .line 501
    iget v0, v8, Lorg/schabi/newpipe/player/Player;->currentState:I

    .line 502
    .line 503
    invoke-virtual {v8, v0}, Lorg/schabi/newpipe/player/Player;->changeState(I)V

    .line 504
    .line 505
    .line 506
    :cond_9
    iget-boolean v0, v4, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->isPopupClosing:Z

    .line 507
    .line 508
    if-nez v0, :cond_a

    .line 509
    .line 510
    iget-object v0, v4, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->popupLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 511
    .line 512
    if-eqz v0, :cond_a

    .line 513
    .line 514
    iget-object v0, v4, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    .line 515
    .line 516
    iget-object v1, v0, Lorg/schabi/newpipe/player/Player;->context:Lorg/schabi/newpipe/player/PlayerService;

    .line 517
    .line 518
    iget-object v0, v0, Lorg/schabi/newpipe/player/Player;->prefs:Landroid/content/SharedPreferences;

    .line 519
    .line 520
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 521
    .line 522
    .line 523
    move-result-object v0

    .line 524
    const v2, 0x7f1303e6

    .line 525
    .line 526
    .line 527
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 528
    .line 529
    .line 530
    move-result-object v2

    .line 531
    iget-object v3, v4, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->popupLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 532
    .line 533
    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 534
    .line 535
    int-to-float v3, v3

    .line 536
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 537
    .line 538
    .line 539
    move-result-object v0

    .line 540
    const v2, 0x7f1303e7

    .line 541
    .line 542
    .line 543
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 544
    .line 545
    .line 546
    move-result-object v2

    .line 547
    iget-object v3, v4, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->popupLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 548
    .line 549
    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 550
    .line 551
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 552
    .line 553
    .line 554
    move-result-object v0

    .line 555
    const v2, 0x7f1303e8

    .line 556
    .line 557
    .line 558
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 559
    .line 560
    .line 561
    move-result-object v1

    .line 562
    iget-object v2, v4, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->popupLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 563
    .line 564
    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 565
    .line 566
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 567
    .line 568
    .line 569
    move-result-object v0

    .line 570
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 571
    .line 572
    .line 573
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->performClick()Z

    .line 574
    .line 575
    .line 576
    return v6
.end method
