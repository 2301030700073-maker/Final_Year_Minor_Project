.class public final Lorg/schabi/newpipe/player/ui/MainPlayerUi;
.super Lorg/schabi/newpipe/player/ui/VideoPlayerUi;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public areSegmentsVisible:Z

.field public fragmentIsVisible:Z

.field public isFullscreen:Z

.field public isQueueVisible:Z

.field public isVerticalVideo:Z

.field public itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

.field public playQueueAdapter:Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter;

.field public segmentAdapter:Lorg/schabi/newpipe/info_list/StreamSegmentAdapter;

.field public settingsContentObserver:Lorg/schabi/newpipe/player/ui/MainPlayerUi$1;


# virtual methods
.method public final buildGestureListener()Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;
    .locals 1

    .line 1
    new-instance v0, Lorg/schabi/newpipe/player/gesture/MainPlayerGestureListener;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lorg/schabi/newpipe/player/gesture/MainPlayerGestureListener;-><init>(Lorg/schabi/newpipe/player/ui/MainPlayerUi;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final calculateMaxEndScreenThumbnailHeight(Landroid/graphics/Bitmap;)F
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->context:Lorg/schabi/newpipe/player/PlayerService;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 12
    .line 13
    invoke-static {v0}, Lorg/schabi/newpipe/util/DeviceUtils;->isTv(Landroid/content/Context;)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const/4 v3, 0x2

    .line 18
    const/16 v4, 0x55

    .line 19
    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    iget-boolean v2, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->isFullscreen:Z

    .line 23
    .line 24
    if-nez v2, :cond_0

    .line 25
    .line 26
    invoke-static {v0, v4}, Lorg/schabi/newpipe/util/DeviceUtils;->dpToPx(Landroid/content/Context;I)I

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const/high16 v2, 0x41800000    # 16.0f

    .line 39
    .line 40
    invoke-static {v3, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    float-to-int v0, v0

    .line 45
    add-int/2addr v0, p0

    .line 46
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    sub-int/2addr v1, v0

    .line 51
    invoke-static {p0, v1}, Ljava/lang/Math;->min(II)I

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    :goto_0
    int-to-float p0, p0

    .line 56
    return p0

    .line 57
    :cond_0
    invoke-static {v0}, Lorg/schabi/newpipe/util/DeviceUtils;->isTablet(Landroid/content/Context;)Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-eqz v2, :cond_1

    .line 62
    .line 63
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->isLandscape()Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-eqz v2, :cond_1

    .line 68
    .line 69
    iget-boolean p0, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->isFullscreen:Z

    .line 70
    .line 71
    if-nez p0, :cond_1

    .line 72
    .line 73
    invoke-static {v0, v4}, Lorg/schabi/newpipe/util/DeviceUtils;->dpToPx(Landroid/content/Context;I)I

    .line 74
    .line 75
    .line 76
    move-result p0

    .line 77
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    const/high16 v2, 0x41700000    # 15.0f

    .line 86
    .line 87
    invoke-static {v3, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    float-to-int v0, v0

    .line 92
    add-int/2addr v0, p0

    .line 93
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 94
    .line 95
    .line 96
    move-result p0

    .line 97
    sub-int/2addr v1, v0

    .line 98
    invoke-static {p0, v1}, Ljava/lang/Math;->min(II)I

    .line 99
    .line 100
    .line 101
    move-result p0

    .line 102
    goto :goto_0

    .line 103
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 104
    .line 105
    .line 106
    move-result p0

    .line 107
    invoke-static {p0, v1}, Ljava/lang/Math;->min(II)I

    .line 108
    .line 109
    .line 110
    move-result p0

    .line 111
    goto :goto_0
.end method

.method public final checkLandscape()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->isLandscape()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    iget-object v3, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-boolean v0, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->isFullscreen:Z

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget-boolean v0, v3, Lorg/schabi/newpipe/player/Player;->isAudioOnly:Z

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    move v0, v2

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v0, v1

    .line 22
    :goto_0
    iget v3, v3, Lorg/schabi/newpipe/player/Player;->currentState:I

    .line 23
    .line 24
    const/16 v4, 0x80

    .line 25
    .line 26
    if-eq v3, v4, :cond_1

    .line 27
    .line 28
    const/16 v4, 0x7e

    .line 29
    .line 30
    if-eq v3, v4, :cond_1

    .line 31
    .line 32
    move v1, v2

    .line 33
    :cond_1
    if-eqz v0, :cond_2

    .line 34
    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->context:Lorg/schabi/newpipe/player/PlayerService;

    .line 38
    .line 39
    invoke-static {v0}, Lorg/schabi/newpipe/util/DeviceUtils;->isTablet(Landroid/content/Context;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_2

    .line 44
    .line 45
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->toggleFullscreen()V

    .line 46
    .line 47
    .line 48
    :cond_2
    return-void
.end method

.method public final closeItemsList()V
    .locals 10

    .line 1
    iget-boolean v0, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->isQueueVisible:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->areSegmentsVisible:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    return-void

    .line 11
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->isQueueVisible:Z

    .line 13
    .line 14
    iput-boolean v0, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->areSegmentsVisible:Z

    .line 15
    .line 16
    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 17
    .line 18
    if-eqz v1, :cond_2

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 22
    .line 23
    .line 24
    :cond_2
    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    .line 25
    .line 26
    iget-object v2, v1, Lorg/schabi/newpipe/databinding/PlayerBinding;->itemsListPanel:Landroid/widget/RelativeLayout;

    .line 27
    .line 28
    new-instance v9, Lorg/schabi/newpipe/player/ui/MainPlayerUi$$ExternalSyntheticLambda3;

    .line 29
    .line 30
    invoke-direct {v9, p0, v0}, Lorg/schabi/newpipe/player/ui/MainPlayerUi$$ExternalSyntheticLambda3;-><init>(Lorg/schabi/newpipe/player/ui/MainPlayerUi;I)V

    .line 31
    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    const-wide/16 v4, 0x12c

    .line 35
    .line 36
    sget-object v6, Lorg/schabi/newpipe/ktx/AnimationType;->SLIDE_AND_ALPHA:Lorg/schabi/newpipe/ktx/AnimationType;

    .line 37
    .line 38
    const-wide/16 v7, 0x0

    .line 39
    .line 40
    invoke-static/range {v2 .. v9}, Lnet/newpipe/app/AppKt;->animate(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLjava/lang/Runnable;)V

    .line 41
    .line 42
    .line 43
    iget-object p0, v1, Lorg/schabi/newpipe/databinding/PlayerBinding;->itemsListClose:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 44
    .line 45
    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V

    .line 46
    .line 47
    .line 48
    iget-object p0, v1, Lorg/schabi/newpipe/databinding/PlayerBinding;->playPauseButton:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 49
    .line 50
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public final deinitListeners()V
    .locals 3

    .line 1
    invoke-super {p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->deinitListeners()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    .line 5
    .line 6
    iget-object v1, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->queueButton:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    .line 11
    .line 12
    iget-object v1, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->segmentsButton:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    .line 16
    .line 17
    iget-object v1, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->addToPlaylistButton:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->context:Lorg/schabi/newpipe/player/PlayerService;

    .line 23
    .line 24
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iget-object v2, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->settingsContentObserver:Lorg/schabi/newpipe/player/ui/MainPlayerUi$1;

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 34
    .line 35
    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final destroy()V
    .locals 4

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
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->fastSeekOverlay:Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay;

    .line 10
    .line 11
    new-instance v1, Lorg/koin/compose/KoinApplicationKt$$ExternalSyntheticLambda0;

    .line 12
    .line 13
    const/16 v3, 0xe

    .line 14
    .line 15
    invoke-direct {v1, v3}, Lorg/koin/compose/KoinApplicationKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 16
    .line 17
    .line 18
    iput-object v1, v0, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay;->seekSecondsSupplier:Lkotlin/jvm/functions/Function0;

    .line 19
    .line 20
    iput-object v2, v0, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay;->performListener:Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;

    .line 21
    .line 22
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->deinitListeners()V

    .line 23
    .line 24
    .line 25
    iget-boolean v0, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->isFullscreen:Z

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->toggleFullscreen()V

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->removeViewFromParent()V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final destroyPlayer()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->clearVideoSurface()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->playQueueAdapter:Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter;

    .line 5
    .line 6
    if-eqz p0, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter;->playQueueItemBuilder:Lorg/schabi/newpipe/player/playqueue/PlayQueueItemBuilder;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iput-object v1, v0, Lorg/schabi/newpipe/player/playqueue/PlayQueueItemBuilder;->onItemClickListener:Lorg/schabi/newpipe/player/playqueue/PlayQueueItemBuilder$OnSelectedListener;

    .line 12
    .line 13
    iget-object v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter;->playQueueReactor:Lio/reactivex/rxjava3/disposables/Disposable;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    .line 18
    .line 19
    .line 20
    :cond_0
    iput-object v1, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter;->playQueueReactor:Lio/reactivex/rxjava3/disposables/Disposable;

    .line 21
    .line 22
    :cond_1
    return-void
.end method

.method public final getNearestStreamSegmentPosition(J)I
    .locals 6

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->getCurrentStreamInfo()Lj$/util/Optional;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    new-instance v0, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda0;

    .line 8
    .line 9
    const/4 v1, 0x4

    .line 10
    invoke-direct {v0, v1}, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda0;-><init>(I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Ljava/util/List;

    .line 24
    .line 25
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const/4 v0, 0x0

    .line 30
    move v1, v0

    .line 31
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Lorg/schabi/newpipe/extractor/stream/StreamSegment;

    .line 42
    .line 43
    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/stream/StreamSegment;->getStartTimeSeconds()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    int-to-long v2, v2

    .line 48
    const-wide/16 v4, 0x3e8

    .line 49
    .line 50
    mul-long/2addr v2, v4

    .line 51
    cmp-long v2, v2, p1

    .line 52
    .line 53
    if-lez v2, :cond_0

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, -0x1

    .line 60
    .line 61
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    return p0
.end method

.method public final getParentActivity()Lj$/util/Optional;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->getParentContext()Lj$/util/Optional;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda48;

    .line 6
    .line 7
    const/16 v1, 0xc

    .line 8
    .line 9
    invoke-direct {v0, v1}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda48;-><init>(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lj$/util/Optional;->filter(Ljava/util/function/Predicate;)Lj$/util/Optional;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    new-instance v0, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda0;

    .line 17
    .line 18
    const/4 v1, 0x7

    .line 19
    invoke-direct {v0, v1}, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda0;-><init>(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v0}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method

.method public final getParentContext()Lj$/util/Optional;
    .locals 2

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/PlayerBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-static {p0}, Lj$/util/Optional;->ofNullable(Ljava/lang/Object;)Lj$/util/Optional;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    new-instance v0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda48;

    .line 14
    .line 15
    const/16 v1, 0xb

    .line 16
    .line 17
    invoke-direct {v0, v1}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda48;-><init>(I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Lj$/util/Optional;->filter(Ljava/util/function/Predicate;)Lj$/util/Optional;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    new-instance v0, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda0;

    .line 25
    .line 26
    const/4 v1, 0x5

    .line 27
    invoke-direct {v0, v1}, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda0;-><init>(I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v0}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0
.end method

.method public final hideSystemUIIfNeeded()V
    .locals 2

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/schabi/newpipe/player/Player;->fragmentListener:Lorg/schabi/newpipe/player/helper/PlayerHolder$1;

    .line 4
    .line 5
    invoke-static {p0}, Lj$/util/Optional;->ofNullable(Ljava/lang/Object;)Lj$/util/Optional;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    new-instance v0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda3;

    .line 10
    .line 11
    const/16 v1, 0xc

    .line 12
    .line 13
    invoke-direct {v0, v1}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda3;-><init>(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final initListeners()V
    .locals 6

    .line 1
    invoke-super {p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->initListeners()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    .line 5
    .line 6
    iget-object v1, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->screenRotationButton:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 7
    .line 8
    new-instance v2, Lorg/schabi/newpipe/player/ui/MainPlayerUi$$ExternalSyntheticLambda3;

    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    invoke-direct {v2, p0, v3}, Lorg/schabi/newpipe/player/ui/MainPlayerUi$$ExternalSyntheticLambda3;-><init>(Lorg/schabi/newpipe/player/ui/MainPlayerUi;I)V

    .line 12
    .line 13
    .line 14
    new-instance v4, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda42;

    .line 15
    .line 16
    const/4 v5, 0x0

    .line 17
    invoke-direct {v4, p0, v2, v5}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda42;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    .line 22
    .line 23
    iget-object v1, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->queueButton:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 24
    .line 25
    new-instance v2, Lorg/schabi/newpipe/player/ui/MainPlayerUi$$ExternalSyntheticLambda8;

    .line 26
    .line 27
    invoke-direct {v2, p0, v5}, Lorg/schabi/newpipe/player/ui/MainPlayerUi$$ExternalSyntheticLambda8;-><init>(Lorg/schabi/newpipe/player/ui/MainPlayerUi;I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    .line 32
    .line 33
    iget-object v1, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->segmentsButton:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 34
    .line 35
    new-instance v2, Lorg/schabi/newpipe/player/ui/MainPlayerUi$$ExternalSyntheticLambda8;

    .line 36
    .line 37
    const/4 v4, 0x4

    .line 38
    invoke-direct {v2, p0, v4}, Lorg/schabi/newpipe/player/ui/MainPlayerUi$$ExternalSyntheticLambda8;-><init>(Lorg/schabi/newpipe/player/ui/MainPlayerUi;I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    .line 43
    .line 44
    iget-object v1, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->addToPlaylistButton:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 45
    .line 46
    new-instance v2, Lorg/schabi/newpipe/player/ui/MainPlayerUi$$ExternalSyntheticLambda8;

    .line 47
    .line 48
    invoke-direct {v2, p0, v3}, Lorg/schabi/newpipe/player/ui/MainPlayerUi$$ExternalSyntheticLambda8;-><init>(Lorg/schabi/newpipe/player/ui/MainPlayerUi;I)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    .line 53
    .line 54
    new-instance v1, Lorg/schabi/newpipe/player/ui/MainPlayerUi$1;

    .line 55
    .line 56
    new-instance v2, Landroid/os/Handler;

    .line 57
    .line 58
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 63
    .line 64
    .line 65
    invoke-direct {v1, p0, v2, v5}, Lorg/schabi/newpipe/player/ui/MainPlayerUi$1;-><init>(Ljava/lang/Object;Landroid/os/Handler;I)V

    .line 66
    .line 67
    .line 68
    iput-object v1, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->settingsContentObserver:Lorg/schabi/newpipe/player/ui/MainPlayerUi$1;

    .line 69
    .line 70
    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->context:Lorg/schabi/newpipe/player/PlayerService;

    .line 71
    .line 72
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    const-string v2, "accelerometer_rotation"

    .line 77
    .line 78
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    iget-object v3, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->settingsContentObserver:Lorg/schabi/newpipe/player/ui/MainPlayerUi$1;

    .line 83
    .line 84
    invoke-virtual {v1, v2, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 85
    .line 86
    .line 87
    iget-object v1, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 88
    .line 89
    invoke-virtual {v1, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 90
    .line 91
    .line 92
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->moreOptionsButton:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 93
    .line 94
    new-instance v1, Lorg/schabi/newpipe/player/ui/MainPlayerUi$$ExternalSyntheticLambda11;

    .line 95
    .line 96
    invoke-direct {v1, p0, v5}, Lorg/schabi/newpipe/player/ui/MainPlayerUi$$ExternalSyntheticLambda11;-><init>(Ljava/lang/Object;I)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 100
    .line 101
    .line 102
    return-void
.end method

.method public final initPlayback()V
    .locals 3

    .line 1
    invoke-super {p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->initPlayback()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->playQueueAdapter:Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object v1, v0, Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter;->playQueueReactor:Lio/reactivex/rxjava3/disposables/Disposable;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-interface {v1}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    .line 13
    .line 14
    .line 15
    :cond_0
    const/4 v1, 0x0

    .line 16
    iput-object v1, v0, Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter;->playQueueReactor:Lio/reactivex/rxjava3/disposables/Disposable;

    .line 17
    .line 18
    :cond_1
    new-instance v0, Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter;

    .line 19
    .line 20
    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    .line 21
    .line 22
    iget-object v2, v1, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 23
    .line 24
    invoke-static {v2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    invoke-direct {v0, v2}, Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter;-><init>(Lorg/schabi/newpipe/player/playqueue/PlayQueue;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->playQueueAdapter:Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter;

    .line 31
    .line 32
    new-instance v0, Lorg/schabi/newpipe/info_list/StreamSegmentAdapter;

    .line 33
    .line 34
    new-instance v2, Lorg/schabi/newpipe/player/ui/MainPlayerUi$3;

    .line 35
    .line 36
    invoke-direct {v2, p0}, Lorg/schabi/newpipe/player/ui/MainPlayerUi$3;-><init>(Lorg/schabi/newpipe/player/ui/MainPlayerUi;)V

    .line 37
    .line 38
    .line 39
    invoke-direct {v0, v2}, Lorg/schabi/newpipe/info_list/StreamSegmentAdapter;-><init>(Lorg/schabi/newpipe/player/ui/MainPlayerUi$3;)V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->segmentAdapter:Lorg/schabi/newpipe/info_list/StreamSegmentAdapter;

    .line 43
    .line 44
    iget-boolean p0, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->fragmentIsVisible:Z

    .line 45
    .line 46
    invoke-virtual {v1, p0}, Lorg/schabi/newpipe/player/Player;->useVideoAndSubtitles(Z)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final isAnyListViewOpen()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->isQueueVisible:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-boolean p0, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->areSegmentsVisible:Z

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return p0

    .line 12
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 13
    return p0
.end method

.method public final isFullscreen()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->isFullscreen:Z

    .line 2
    .line 3
    return p0
.end method

.method public final isLandscape()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->getParentContext()Lj$/util/Optional;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object p0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    .line 6
    .line 7
    iget-object p0, p0, Lorg/schabi/newpipe/player/Player;->service:Lorg/schabi/newpipe/player/PlayerService;

    .line 8
    .line 9
    invoke-virtual {v0, p0}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Landroid/content/Context;

    .line 14
    .line 15
    invoke-static {p0}, Lorg/schabi/newpipe/util/DeviceUtils;->isLandscape(Landroid/content/Context;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
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
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->closeItemsList()V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    const-string v0, "org.schabi.newpipe.player.MainPlayer..player.MainPlayer.PLAY_PAUSE"

    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    iget-boolean p1, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->fragmentIsVisible:Z

    .line 47
    .line 48
    if-nez p1, :cond_4

    .line 49
    .line 50
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->onFragmentStopped()V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_2
    const-string v0, "org.schabi.newpipe.VideoDetailFragment.ACTION_VIDEO_FRAGMENT_STOPPED"

    .line 55
    .line 56
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_3

    .line 65
    .line 66
    const/4 p1, 0x0

    .line 67
    iput-boolean p1, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->fragmentIsVisible:Z

    .line 68
    .line 69
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->onFragmentStopped()V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :cond_3
    const-string v0, "org.schabi.newpipe.VideoDetailFragment.ACTION_VIDEO_FRAGMENT_RESUMED"

    .line 74
    .line 75
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    if-eqz p1, :cond_4

    .line 84
    .line 85
    const/4 p1, 0x1

    .line 86
    iput-boolean p1, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->fragmentIsVisible:Z

    .line 87
    .line 88
    invoke-virtual {v2, p1}, Lorg/schabi/newpipe/player/Player;->useVideoAndSubtitles(Z)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->isControlsVisible()Z

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    if-nez p1, :cond_4

    .line 96
    .line 97
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->hideSystemUIIfNeeded()V

    .line 98
    .line 99
    .line 100
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
    iget-boolean v0, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->isFullscreen:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->toggleFullscreen()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final onFragmentListenerSet()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->fragmentIsVisible:Z

    .line 3
    .line 4
    iget-boolean v0, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->isFullscreen:Z

    .line 5
    .line 6
    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, v1, Lorg/schabi/newpipe/databinding/PlayerBinding;->playbackControlRoot:Landroid/widget/RelativeLayout;

    .line 12
    .line 13
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, v1, Lorg/schabi/newpipe/databinding/PlayerBinding;->itemsListPanel:Landroid/widget/RelativeLayout;

    .line 17
    .line 18
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 19
    .line 20
    .line 21
    iget-object p0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    .line 22
    .line 23
    iget-object p0, p0, Lorg/schabi/newpipe/player/Player;->fragmentListener:Lorg/schabi/newpipe/player/helper/PlayerHolder$1;

    .line 24
    .line 25
    invoke-static {p0}, Lj$/util/Optional;->ofNullable(Ljava/lang/Object;)Lj$/util/Optional;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    new-instance v0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda3;

    .line 30
    .line 31
    const/16 v1, 0xe

    .line 32
    .line 33
    invoke-direct {v0, v1}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda3;-><init>(I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v0}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final onFragmentStopped()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->isPlaying()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->isLoading()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    return-void

    .line 17
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->context:Lorg/schabi/newpipe/player/PlayerService;

    .line 18
    .line 19
    invoke-static {v1}, Lorg/schabi/newpipe/player/helper/PlayerHelper;->getMinimizeOnExitAction(Lorg/schabi/newpipe/player/PlayerService;)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const/4 v2, 0x1

    .line 24
    const/4 v3, 0x0

    .line 25
    if-eq v1, v2, :cond_3

    .line 26
    .line 27
    const/4 v2, 0x2

    .line 28
    if-eq v1, v2, :cond_2

    .line 29
    .line 30
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->pause()V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_2
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->getParentActivity()Lj$/util/Optional;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    new-instance v1, Lorg/schabi/newpipe/player/ui/MainPlayerUi$$ExternalSyntheticLambda16;

    .line 39
    .line 40
    invoke-direct {v1, p0, v3}, Lorg/schabi/newpipe/player/ui/MainPlayerUi$$ExternalSyntheticLambda16;-><init>(Lorg/schabi/newpipe/player/ui/MainPlayerUi;I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_3
    invoke-virtual {v0, v3}, Lorg/schabi/newpipe/player/Player;->useVideoAndSubtitles(Z)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public final onKeyDown(I)Z
    .locals 2

    .line 1
    const/16 v0, 0x3e

    .line 2
    .line 3
    if-ne p1, v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->isFullscreen:Z

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object p1, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    .line 10
    .line 11
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/Player;->playPause()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/Player;->isPlaying()Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    const-wide/16 v0, 0x0

    .line 21
    .line 22
    invoke-virtual {p0, v0, v1, v0, v1}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->hideControls(JJ)V

    .line 23
    .line 24
    .line 25
    :cond_0
    const/4 p0, 0x1

    .line 26
    return p0

    .line 27
    :cond_1
    invoke-super {p0, p1}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->onKeyDown(I)Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    return p0
.end method

.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    if-ne p2, p6, :cond_1

    if-ne p3, p7, :cond_1

    if-ne p4, p8, :cond_1

    if-eq p5, p9, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    .line 1
    invoke-static {p4, p5}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-double p1, p1

    const-wide/high16 p3, 0x3fe8000000000000L    # 0.75

    mul-double/2addr p1, p3

    double-to-int p1, p1

    .line 2
    sget p2, Lorg/schabi/newpipe/MainActivity;->$r8$clinit:I

    .line 3
    iget-object p2, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object p3, p2, Lorg/schabi/newpipe/databinding/PlayerBinding;->volumeProgressBar:Landroid/widget/ProgressBar;

    iget-object p4, p2, Lorg/schabi/newpipe/databinding/PlayerBinding;->itemsListPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {p3, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 4
    iget-object p3, p2, Lorg/schabi/newpipe/databinding/PlayerBinding;->brightnessProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p3, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 5
    iget-object p0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    iget-object p1, p0, Lorg/schabi/newpipe/player/Player;->audioReactor:Lorg/schabi/newpipe/player/helper/AudioReactor;

    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p1, Lorg/schabi/newpipe/player/helper/AudioReactor;->audioManager:Landroid/media/AudioManager;

    const/4 p3, 0x3

    invoke-virtual {p1, p3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p1

    int-to-float p1, p1

    .line 7
    iget-object p0, p0, Lorg/schabi/newpipe/player/Player;->audioReactor:Lorg/schabi/newpipe/player/helper/AudioReactor;

    .line 8
    iget-object p0, p0, Lorg/schabi/newpipe/player/helper/AudioReactor;->audioManager:Landroid/media/AudioManager;

    .line 9
    invoke-virtual {p0, p3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p1, p0

    .line 10
    iget-object p0, p2, Lorg/schabi/newpipe/databinding/PlayerBinding;->volumeProgressBar:Landroid/widget/ProgressBar;

    .line 11
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p2, p1

    float-to-int p1, p2

    .line 12
    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 13
    :cond_2
    invoke-virtual {p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    .line 14
    invoke-virtual {p4}, Landroid/view/View;->getTop()I

    move-result p1

    sub-int/2addr p5, p1

    iput p5, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void
.end method

.method public final onMetadataChanged(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->onMetadataChanged(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->showHideKodiButton()V

    .line 5
    .line 6
    .line 7
    iget-boolean v0, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->areSegmentsVisible:Z

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->segmentAdapter:Lorg/schabi/newpipe/info_list/StreamSegmentAdapter;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/info_list/StreamSegmentAdapter;->setItems(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    iget-object p1, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    .line 20
    .line 21
    iget-object p1, p1, Lorg/schabi/newpipe/player/Player;->simpleExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 22
    .line 23
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getCurrentPosition()J

    .line 24
    .line 25
    .line 26
    move-result-wide v0

    .line 27
    invoke-virtual {p0, v0, v1}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->getNearestStreamSegmentPosition(J)I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->segmentAdapter:Lorg/schabi/newpipe/info_list/StreamSegmentAdapter;

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/info_list/StreamSegmentAdapter;->selectSegmentAt(I)V

    .line 34
    .line 35
    .line 36
    iget-object p0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    .line 37
    .line 38
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/PlayerBinding;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    .line 39
    .line 40
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->closeItemsList()V

    .line 45
    .line 46
    .line 47
    :cond_1
    return-void
.end method

.method public final onPlayQueueEdited()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->showOrHideButtons()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onPlaybackSpeedClicked()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->getParentActivity()Lj$/util/Optional;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lorg/schabi/newpipe/player/ui/MainPlayerUi$$ExternalSyntheticLambda16;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-direct {v1, p0, v2}, Lorg/schabi/newpipe/player/ui/MainPlayerUi$$ExternalSyntheticLambda16;-><init>(Lorg/schabi/newpipe/player/ui/MainPlayerUi;I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final onPlaying()V
    .locals 0

    .line 1
    invoke-super {p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->onPlaying()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->checkLandscape()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onUpdateProgress(III)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->onUpdateProgress(III)V

    .line 2
    .line 3
    .line 4
    iget-boolean p2, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->areSegmentsVisible:Z

    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    iget-object p2, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->segmentAdapter:Lorg/schabi/newpipe/info_list/StreamSegmentAdapter;

    .line 9
    .line 10
    int-to-long v0, p1

    .line 11
    invoke-virtual {p0, v0, v1}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->getNearestStreamSegmentPosition(J)I

    .line 12
    .line 13
    .line 14
    move-result p3

    .line 15
    invoke-virtual {p2, p3}, Lorg/schabi/newpipe/info_list/StreamSegmentAdapter;->selectSegmentAt(I)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-boolean p2, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->isQueueVisible:Z

    .line 19
    .line 20
    if-eqz p2, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->updateQueueTime(I)V

    .line 23
    .line 24
    .line 25
    :cond_1
    return-void
.end method

.method public final onVideoSizeChanged(Lcom/google/android/exoplayer2/video/VideoSize;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->onVideoSizeChanged(Lcom/google/android/exoplayer2/video/VideoSize;)V

    .line 2
    .line 3
    .line 4
    iget v0, p1, Lcom/google/android/exoplayer2/video/VideoSize;->width:I

    .line 5
    .line 6
    iget p1, p1, Lcom/google/android/exoplayer2/video/VideoSize;->height:I

    .line 7
    .line 8
    if-ge v0, p1, :cond_0

    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    iput-boolean p1, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->isVerticalVideo:Z

    .line 14
    .line 15
    iget-object p1, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->context:Lorg/schabi/newpipe/player/PlayerService;

    .line 16
    .line 17
    invoke-static {p1}, Lorg/schabi/newpipe/player/helper/PlayerHelper;->globalScreenOrientationLocked(Landroid/content/Context;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iget-boolean v0, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->isFullscreen:Z

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->isLandscape()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    iget-boolean v1, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->isVerticalVideo:Z

    .line 32
    .line 33
    if-ne v0, v1, :cond_1

    .line 34
    .line 35
    invoke-static {p1}, Lorg/schabi/newpipe/util/DeviceUtils;->isTv(Landroid/content/Context;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_1

    .line 40
    .line 41
    invoke-static {p1}, Lorg/schabi/newpipe/util/DeviceUtils;->isTablet(Landroid/content/Context;)Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-nez p1, :cond_1

    .line 46
    .line 47
    iget-object p1, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    .line 48
    .line 49
    iget-object p1, p1, Lorg/schabi/newpipe/player/Player;->fragmentListener:Lorg/schabi/newpipe/player/helper/PlayerHolder$1;

    .line 50
    .line 51
    invoke-static {p1}, Lj$/util/Optional;->ofNullable(Ljava/lang/Object;)Lj$/util/Optional;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    new-instance v0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda3;

    .line 56
    .line 57
    const/16 v1, 0xd

    .line 58
    .line 59
    invoke-direct {v0, v1}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda3;-><init>(I)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v0}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 63
    .line 64
    .line 65
    :cond_1
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->setupScreenRotationButton()V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public final removeViewFromParent()V
    .locals 2

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    .line 2
    .line 3
    iget-object v0, p0, Lorg/schabi/newpipe/databinding/PlayerBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    instance-of v1, v0, Landroid/view/ViewGroup;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    check-cast v0, Landroid/view/ViewGroup;

    .line 14
    .line 15
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/PlayerBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 16
    .line 17
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final setupAfterIntent()V
    .locals 11

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    .line 2
    .line 3
    iget-object v1, v0, Lorg/schabi/newpipe/player/Player;->service:Lorg/schabi/newpipe/player/PlayerService;

    .line 4
    .line 5
    invoke-static {v1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const v3, 0x7f1304c2

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    const/4 v4, 0x0

    .line 17
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    invoke-static {v1}, Lorg/schabi/newpipe/util/DeviceUtils;->isTablet(Landroid/content/Context;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    invoke-static {v1}, Lorg/schabi/newpipe/player/helper/PlayerHelper;->globalScreenOrientationLocked(Landroid/content/Context;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    iget-object v1, v0, Lorg/schabi/newpipe/player/Player;->fragmentListener:Lorg/schabi/newpipe/player/helper/PlayerHolder$1;

    .line 36
    .line 37
    invoke-static {v1}, Lj$/util/Optional;->ofNullable(Ljava/lang/Object;)Lj$/util/Optional;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    new-instance v2, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda3;

    .line 42
    .line 43
    const/16 v3, 0xd

    .line 44
    .line 45
    invoke-direct {v2, v3}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda3;-><init>(I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v2}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 49
    .line 50
    .line 51
    :cond_0
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->isMuted()Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    iget-object v2, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    .line 56
    .line 57
    iget-object v3, v2, Lorg/schabi/newpipe/databinding/PlayerBinding;->switchMute:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 58
    .line 59
    if-eqz v1, :cond_1

    .line 60
    .line 61
    const v1, 0x7f080163

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    const v1, 0x7f080164

    .line 66
    .line 67
    .line 68
    :goto_0
    iget-object v5, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->context:Lorg/schabi/newpipe/player/PlayerService;

    .line 69
    .line 70
    invoke-static {v5, v1}, Lokhttp3/Cookie$Companion;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v3, v1}, Landroidx/appcompat/widget/AppCompatImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 75
    .line 76
    .line 77
    iget-object v1, v2, Lorg/schabi/newpipe/databinding/PlayerBinding;->moreOptionsButton:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 78
    .line 79
    invoke-static {v4, v1}, Lnet/newpipe/app/AppKt;->animateRotation(ILandroid/view/View;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->closeItemsList()V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->showHideKodiButton()V

    .line 86
    .line 87
    .line 88
    iget-object v1, v2, Lorg/schabi/newpipe/databinding/PlayerBinding;->fullScreenButton:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 89
    .line 90
    iget-object v3, v2, Lorg/schabi/newpipe/databinding/PlayerBinding;->moreOptionsButton:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 91
    .line 92
    iget-object v6, v2, Lorg/schabi/newpipe/databinding/PlayerBinding;->topControls:Landroid/widget/LinearLayout;

    .line 93
    .line 94
    const/16 v7, 0x8

    .line 95
    .line 96
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->setupScreenRotationButton()V

    .line 100
    .line 101
    .line 102
    iget-object v1, v2, Lorg/schabi/newpipe/databinding/PlayerBinding;->resizeTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 103
    .line 104
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 105
    .line 106
    .line 107
    iget-object v1, v2, Lorg/schabi/newpipe/databinding/PlayerBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 108
    .line 109
    const v8, 0x7f0a0256

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 120
    .line 121
    .line 122
    const/4 v1, 0x1

    .line 123
    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 124
    .line 125
    .line 126
    iget-object v8, v2, Lorg/schabi/newpipe/databinding/PlayerBinding;->primaryControls:Landroid/widget/LinearLayout;

    .line 127
    .line 128
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 129
    .line 130
    .line 131
    move-result-object v8

    .line 132
    const/4 v9, -0x1

    .line 133
    iput v9, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 134
    .line 135
    iget-object v8, v2, Lorg/schabi/newpipe/databinding/PlayerBinding;->secondaryControls:Landroid/widget/LinearLayout;

    .line 136
    .line 137
    const/4 v10, 0x4

    .line 138
    invoke-virtual {v8, v10}, Landroid/view/View;->setVisibility(I)V

    .line 139
    .line 140
    .line 141
    const v8, 0x7f080109

    .line 142
    .line 143
    .line 144
    invoke-static {v5, v8}, Lokhttp3/Cookie$Companion;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 145
    .line 146
    .line 147
    move-result-object v8

    .line 148
    invoke-virtual {v3, v8}, Landroidx/appcompat/widget/AppCompatImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 149
    .line 150
    .line 151
    iget-object v3, v2, Lorg/schabi/newpipe/databinding/PlayerBinding;->share:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 152
    .line 153
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 154
    .line 155
    .line 156
    iget-object v3, v2, Lorg/schabi/newpipe/databinding/PlayerBinding;->openInBrowser:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 157
    .line 158
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 159
    .line 160
    .line 161
    iget-object v3, v2, Lorg/schabi/newpipe/databinding/PlayerBinding;->switchMute:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 162
    .line 163
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 164
    .line 165
    .line 166
    iget-object v3, v2, Lorg/schabi/newpipe/databinding/PlayerBinding;->playerCloseButton:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 167
    .line 168
    iget-boolean v8, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->isFullscreen:Z

    .line 169
    .line 170
    if-eqz v8, :cond_2

    .line 171
    .line 172
    move v8, v7

    .line 173
    goto :goto_1

    .line 174
    :cond_2
    move v8, v4

    .line 175
    :goto_1
    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v6, v1}, Landroid/view/View;->setClickable(Z)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v6, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 182
    .line 183
    .line 184
    iget-object v1, v2, Lorg/schabi/newpipe/databinding/PlayerBinding;->metadataView:Landroid/widget/LinearLayout;

    .line 185
    .line 186
    iget-boolean v3, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->isFullscreen:Z

    .line 187
    .line 188
    if-eqz v3, :cond_3

    .line 189
    .line 190
    move v7, v4

    .line 191
    :cond_3
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 192
    .line 193
    .line 194
    iget-object v1, v2, Lorg/schabi/newpipe/databinding/PlayerBinding;->audioTrackTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 195
    .line 196
    const v3, 0x7fffffff

    .line 197
    .line 198
    .line 199
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    const v3, 0x7f07035d

    .line 207
    .line 208
    .line 209
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 210
    .line 211
    .line 212
    move-result v3

    .line 213
    const v5, 0x7f070360

    .line 214
    .line 215
    .line 216
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 217
    .line 218
    .line 219
    move-result v5

    .line 220
    const v6, 0x7f07035f

    .line 221
    .line 222
    .line 223
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 224
    .line 225
    .line 226
    move-result v6

    .line 227
    const v7, 0x7f07035e

    .line 228
    .line 229
    .line 230
    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 231
    .line 232
    .line 233
    move-result v1

    .line 234
    invoke-virtual {p0, v3, v5, v6, v1}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->setupElementsSize(IIII)V

    .line 235
    .line 236
    .line 237
    iget-object v1, v2, Lorg/schabi/newpipe/databinding/PlayerBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 238
    .line 239
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 240
    .line 241
    .line 242
    iget-object v1, v2, Lorg/schabi/newpipe/databinding/PlayerBinding;->playPauseButton:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 243
    .line 244
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 245
    .line 246
    .line 247
    iget-object v1, v0, Lorg/schabi/newpipe/player/Player;->prefs:Landroid/content/SharedPreferences;

    .line 248
    .line 249
    iget-object v3, v0, Lorg/schabi/newpipe/player/Player;->context:Lorg/schabi/newpipe/player/PlayerService;

    .line 250
    .line 251
    const v5, 0x7f13023a

    .line 252
    .line 253
    .line 254
    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v3

    .line 258
    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 259
    .line 260
    .line 261
    move-result v1

    .line 262
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->setResizeMode(I)V

    .line 263
    .line 264
    .line 265
    iget-object p0, v2, Lorg/schabi/newpipe/databinding/PlayerBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 266
    .line 267
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 268
    .line 269
    invoke-direct {v1, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 273
    .line 274
    .line 275
    iget-object p0, v2, Lorg/schabi/newpipe/databinding/PlayerBinding;->playPauseButton:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 276
    .line 277
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 278
    .line 279
    .line 280
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->getPlayWhenReady()Z

    .line 281
    .line 282
    .line 283
    move-result p0

    .line 284
    if-eqz p0, :cond_4

    .line 285
    .line 286
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->play()V

    .line 287
    .line 288
    .line 289
    return-void

    .line 290
    :cond_4
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->pause()V

    .line 291
    .line 292
    .line 293
    return-void
.end method

.method public final setupScreenRotationButton()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    .line 2
    .line 3
    iget-object v1, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->screenRotationButton:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 4
    .line 5
    iget-object v2, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->context:Lorg/schabi/newpipe/player/PlayerService;

    .line 6
    .line 7
    invoke-static {v2}, Lorg/schabi/newpipe/player/helper/PlayerHelper;->globalScreenOrientationLocked(Landroid/content/Context;)Z

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    if-nez v3, :cond_1

    .line 12
    .line 13
    iget-boolean v3, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->isVerticalVideo:Z

    .line 14
    .line 15
    if-nez v3, :cond_1

    .line 16
    .line 17
    invoke-static {v2}, Lorg/schabi/newpipe/util/DeviceUtils;->isTablet(Landroid/content/Context;)Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/16 v3, 0x8

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    :goto_0
    const/4 v3, 0x0

    .line 28
    :goto_1
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 29
    .line 30
    .line 31
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->screenRotationButton:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 32
    .line 33
    iget-boolean p0, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->isFullscreen:Z

    .line 34
    .line 35
    if-eqz p0, :cond_2

    .line 36
    .line 37
    const p0, 0x7f080111

    .line 38
    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_2
    const p0, 0x7f080110

    .line 42
    .line 43
    .line 44
    :goto_2
    invoke-static {v2, p0}, Lokhttp3/Cookie$Companion;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/AppCompatImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 49
    .line 50
    .line 51
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

.method public final showHideKodiButton()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    .line 2
    .line 3
    iget-object v0, v0, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 4
    .line 5
    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    .line 6
    .line 7
    iget-object v1, v1, Lorg/schabi/newpipe/databinding/PlayerBinding;->playWithKodi:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getItem()Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getItem()Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getServiceId()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    iget-object p0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->context:Lorg/schabi/newpipe/player/PlayerService;

    .line 26
    .line 27
    invoke-static {p0, v0}, Lkotlin/io/CloseableKt;->shouldShowPlayWithKodi(Landroid/content/Context;I)Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    if-eqz p0, :cond_0

    .line 32
    .line 33
    const/4 p0, 0x0

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/16 p0, 0x8

    .line 36
    .line 37
    :goto_0
    invoke-virtual {v1, p0}, Landroid/view/View;->setVisibility(I)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public final showOrHideButtons()V
    .locals 7

    .line 1
    invoke-super {p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->showOrHideButtons()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    .line 5
    .line 6
    iget-object v1, v0, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-virtual {v1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getStreams()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->getCurrentStreamInfo()Lj$/util/Optional;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    new-instance v2, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda0;

    .line 24
    .line 25
    const/4 v3, 0x4

    .line 26
    invoke-direct {v2, v3}, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda0;-><init>(I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v2}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    new-instance v2, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda0;

    .line 34
    .line 35
    const/4 v3, 0x6

    .line 36
    invoke-direct {v2, v3}, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda0;-><init>(I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v2}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 44
    .line 45
    invoke-virtual {v0, v2}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Ljava/lang/Boolean;

    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    iget-object p0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    .line 56
    .line 57
    iget-object v2, p0, Lorg/schabi/newpipe/databinding/PlayerBinding;->queueButton:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 58
    .line 59
    iget-object v3, p0, Lorg/schabi/newpipe/databinding/PlayerBinding;->segmentsButton:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 60
    .line 61
    const/16 v4, 0x8

    .line 62
    .line 63
    const/4 v5, 0x0

    .line 64
    if-nez v1, :cond_1

    .line 65
    .line 66
    move v6, v5

    .line 67
    goto :goto_0

    .line 68
    :cond_1
    move v6, v4

    .line 69
    :goto_0
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 70
    .line 71
    .line 72
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/PlayerBinding;->queueButton:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 73
    .line 74
    const/4 v2, 0x0

    .line 75
    const/high16 v6, 0x3f800000    # 1.0f

    .line 76
    .line 77
    if-nez v1, :cond_2

    .line 78
    .line 79
    move v1, v6

    .line 80
    goto :goto_1

    .line 81
    :cond_2
    move v1, v2

    .line 82
    :goto_1
    invoke-virtual {p0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 83
    .line 84
    .line 85
    if-nez v0, :cond_3

    .line 86
    .line 87
    move v4, v5

    .line 88
    :cond_3
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 89
    .line 90
    .line 91
    if-nez v0, :cond_4

    .line 92
    .line 93
    move v2, v6

    .line 94
    :cond_4
    invoke-virtual {v3, v2}, Landroid/view/View;->setAlpha(F)V

    .line 95
    .line 96
    .line 97
    return-void
.end method

.method public final showSystemUIPartially()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->isFullscreen:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->getParentActivity()Lj$/util/Optional;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    new-instance v0, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda0;

    .line 10
    .line 11
    const/4 v1, 0x3

    .line 12
    invoke-direct {v0, v1}, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda0;-><init>(I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    new-instance v0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda3;

    .line 20
    .line 21
    const/16 v1, 0xb

    .line 22
    .line 23
    invoke-direct {v0, v1}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda3;-><init>(I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v0}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public final smoothStopForImmediateReusing()V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    invoke-virtual {p0, v0, v1, v0, v1}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->hideControls(JJ)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->closeItemsList()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final toggleFullscreen()V
    .locals 6

    .line 1
    sget v0, Lorg/schabi/newpipe/MainActivity;->$r8$clinit:I

    .line 2
    .line 3
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    .line 4
    .line 5
    iget-object v1, v0, Lorg/schabi/newpipe/player/Player;->fragmentListener:Lorg/schabi/newpipe/player/helper/PlayerHolder$1;

    .line 6
    .line 7
    invoke-static {v1}, Lj$/util/Optional;->ofNullable(Ljava/lang/Object;)Lj$/util/Optional;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v1, v2}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lorg/schabi/newpipe/player/event/PlayerServiceEventListener;

    .line 17
    .line 18
    if-eqz v1, :cond_4

    .line 19
    .line 20
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->exoPlayerIsNull()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    goto :goto_2

    .line 27
    :cond_0
    iget-boolean v0, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->isFullscreen:Z

    .line 28
    .line 29
    xor-int/lit8 v2, v0, 0x1

    .line 30
    .line 31
    iput-boolean v2, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->isFullscreen:Z

    .line 32
    .line 33
    iget-object v2, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    .line 34
    .line 35
    const/4 v3, 0x0

    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    const-wide/16 v4, 0x0

    .line 39
    .line 40
    invoke-virtual {p0, v4, v5, v4, v5}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->hideControls(JJ)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    iget-object v0, v2, Lorg/schabi/newpipe/databinding/PlayerBinding;->playbackControlRoot:Landroid/widget/RelativeLayout;

    .line 45
    .line 46
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 47
    .line 48
    .line 49
    :goto_0
    iget-boolean v0, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->isFullscreen:Z

    .line 50
    .line 51
    invoke-interface {v1, v0}, Lorg/schabi/newpipe/player/event/PlayerServiceEventListener;->onFullscreenStateChanged(Z)V

    .line 52
    .line 53
    .line 54
    iget-object v0, v2, Lorg/schabi/newpipe/databinding/PlayerBinding;->metadataView:Landroid/widget/LinearLayout;

    .line 55
    .line 56
    iget-boolean v1, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->isFullscreen:Z

    .line 57
    .line 58
    const/16 v4, 0x8

    .line 59
    .line 60
    if-eqz v1, :cond_2

    .line 61
    .line 62
    move v1, v3

    .line 63
    goto :goto_1

    .line 64
    :cond_2
    move v1, v4

    .line 65
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 66
    .line 67
    .line 68
    iget-object v0, v2, Lorg/schabi/newpipe/databinding/PlayerBinding;->playerCloseButton:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 69
    .line 70
    iget-boolean v1, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->isFullscreen:Z

    .line 71
    .line 72
    if-eqz v1, :cond_3

    .line 73
    .line 74
    move v3, v4

    .line 75
    :cond_3
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->setupScreenRotationButton()V

    .line 79
    .line 80
    .line 81
    :cond_4
    :goto_2
    return-void
.end method

.method public final updateQueueTime(I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    .line 2
    .line 3
    iget-object v0, v0, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getIndex()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getStreams()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-interface {v0, v2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-static {v2}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    new-instance v3, Lus/shandian/giga/service/DownloadManager$$ExternalSyntheticLambda0;

    .line 26
    .line 27
    const/4 v4, 0x4

    .line 28
    invoke-direct {v3, v4}, Lus/shandian/giga/service/DownloadManager$$ExternalSyntheticLambda0;-><init>(I)V

    .line 29
    .line 30
    .line 31
    invoke-static {v3}, Lj$/util/stream/Collectors;->summingLong(Ljava/util/function/ToLongFunction;)Lj$/util/stream/Collector;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-interface {v2, v3}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Ljava/lang/Long;

    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 42
    .line 43
    .line 44
    move-result-wide v2

    .line 45
    const-wide/16 v5, 0x3e8

    .line 46
    .line 47
    mul-long/2addr v2, v5

    .line 48
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 49
    .line 50
    .line 51
    move-result v7

    .line 52
    invoke-interface {v0, v1, v7}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    new-instance v1, Lus/shandian/giga/service/DownloadManager$$ExternalSyntheticLambda0;

    .line 61
    .line 62
    invoke-direct {v1, v4}, Lus/shandian/giga/service/DownloadManager$$ExternalSyntheticLambda0;-><init>(I)V

    .line 63
    .line 64
    .line 65
    invoke-static {v1}, Lj$/util/stream/Collectors;->summingLong(Ljava/util/function/ToLongFunction;)Lj$/util/stream/Collector;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    check-cast v0, Ljava/lang/Long;

    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 76
    .line 77
    .line 78
    move-result-wide v0

    .line 79
    mul-long/2addr v0, v5

    .line 80
    iget-object p0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    .line 81
    .line 82
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/PlayerBinding;->itemsListHeaderDuration:Landroidx/appcompat/widget/AppCompatTextView;

    .line 83
    .line 84
    int-to-long v4, p1

    .line 85
    add-long/2addr v4, v2

    .line 86
    invoke-static {v4, v5}, Lorg/schabi/newpipe/player/helper/PlayerHelper;->getTimeString(J)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    add-long/2addr v2, v0

    .line 91
    invoke-static {v2, v3}, Lorg/schabi/newpipe/player/helper/PlayerHelper;->getTimeString(J)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string p1, "/"

    .line 104
    .line 105
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    .line 117
    .line 118
    return-void
.end method
