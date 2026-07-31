.class public final Lorg/maplibre/android/maps/MapGestureDetector;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final animationsTimeoutHandler:Landroid/os/Handler;

.field public final annotationManager:Lcom/hcaptcha/sdk/HCaptcha;

.field public final cameraChangeDispatcher:Lorg/maplibre/android/maps/CameraChangeDispatcher;

.field public final cancelAnimatorsRunnable:Lorg/maplibre/android/maps/MapView$4;

.field public constantFocalPoint:Landroid/graphics/PointF;

.field public doubleTapFocalPoint:Landroid/graphics/PointF;

.field public doubleTapRegistered:Z

.field public gesturesManager:Lorg/wikipedia/databinding/FragmentNewsBinding;

.field public final onFlingListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final onMapClickListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final onMapLongClickListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final onMoveListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final onRotateListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final onScaleListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final onShoveListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final projection:Lorg/maplibre/android/maps/MapView$2;

.field public rotateAnimator:Landroid/animation/ValueAnimator;

.field public scaleAnimator:Landroid/animation/ValueAnimator;

.field public final scheduledAnimators:Ljava/util/ArrayList;

.field public final transform:Lorg/maplibre/android/maps/Transform;

.field public final uiSettings:Lorg/maplibre/android/maps/UiSettings;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/maplibre/android/maps/Transform;Lorg/maplibre/android/maps/MapView$2;Lorg/maplibre/android/maps/UiSettings;Lcom/hcaptcha/sdk/HCaptcha;Lorg/maplibre/android/maps/CameraChangeDispatcher;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/maplibre/android/maps/MapGestureDetector;->onMapClickListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lorg/maplibre/android/maps/MapGestureDetector;->onMapLongClickListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 17
    .line 18
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lorg/maplibre/android/maps/MapGestureDetector;->onFlingListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 24
    .line 25
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lorg/maplibre/android/maps/MapGestureDetector;->onMoveListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 31
    .line 32
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lorg/maplibre/android/maps/MapGestureDetector;->onRotateListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 38
    .line 39
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 40
    .line 41
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lorg/maplibre/android/maps/MapGestureDetector;->onScaleListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 45
    .line 46
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 47
    .line 48
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lorg/maplibre/android/maps/MapGestureDetector;->onShoveListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 52
    .line 53
    new-instance v0, Landroid/graphics/PointF;

    .line 54
    .line 55
    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Lorg/maplibre/android/maps/MapGestureDetector;->doubleTapFocalPoint:Landroid/graphics/PointF;

    .line 59
    .line 60
    new-instance v0, Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .line 64
    .line 65
    iput-object v0, p0, Lorg/maplibre/android/maps/MapGestureDetector;->scheduledAnimators:Ljava/util/ArrayList;

    .line 66
    .line 67
    new-instance v0, Landroid/os/Handler;

    .line 68
    .line 69
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 74
    .line 75
    .line 76
    iput-object v0, p0, Lorg/maplibre/android/maps/MapGestureDetector;->animationsTimeoutHandler:Landroid/os/Handler;

    .line 77
    .line 78
    new-instance v0, Lorg/maplibre/android/maps/MapView$4;

    .line 79
    .line 80
    const/4 v1, 0x1

    .line 81
    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/maps/MapView$4;-><init>(ILjava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    iput-object v0, p0, Lorg/maplibre/android/maps/MapGestureDetector;->cancelAnimatorsRunnable:Lorg/maplibre/android/maps/MapView$4;

    .line 85
    .line 86
    iput-object p5, p0, Lorg/maplibre/android/maps/MapGestureDetector;->annotationManager:Lcom/hcaptcha/sdk/HCaptcha;

    .line 87
    .line 88
    iput-object p2, p0, Lorg/maplibre/android/maps/MapGestureDetector;->transform:Lorg/maplibre/android/maps/Transform;

    .line 89
    .line 90
    iput-object p3, p0, Lorg/maplibre/android/maps/MapGestureDetector;->projection:Lorg/maplibre/android/maps/MapView$2;

    .line 91
    .line 92
    iput-object p4, p0, Lorg/maplibre/android/maps/MapGestureDetector;->uiSettings:Lorg/maplibre/android/maps/UiSettings;

    .line 93
    .line 94
    iput-object p6, p0, Lorg/maplibre/android/maps/MapGestureDetector;->cameraChangeDispatcher:Lorg/maplibre/android/maps/CameraChangeDispatcher;

    .line 95
    .line 96
    if-eqz p1, :cond_0

    .line 97
    .line 98
    new-instance p2, Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 99
    .line 100
    invoke-direct {p2, p1, v1}, Lorg/wikipedia/databinding/FragmentNewsBinding;-><init>(Landroid/content/Context;Z)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0, p2}, Lorg/maplibre/android/maps/MapGestureDetector;->initializeGesturesManager(Lorg/wikipedia/databinding/FragmentNewsBinding;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/MapGestureDetector;->initializeGestureListeners(Landroid/content/Context;)V

    .line 107
    .line 108
    .line 109
    :cond_0
    return-void
.end method


# virtual methods
.method public final cancelAnimators()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/maplibre/android/maps/MapGestureDetector;->animationsTimeoutHandler:Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lorg/maplibre/android/maps/MapGestureDetector;->scheduledAnimators:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lorg/maplibre/android/maps/MapGestureDetector;->scaleAnimator:Landroid/animation/ValueAnimator;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Lorg/maplibre/android/maps/MapGestureDetector;->rotateAnimator:Landroid/animation/ValueAnimator;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 36
    .line 37
    .line 38
    :cond_1
    invoke-virtual {p0}, Lorg/maplibre/android/maps/MapGestureDetector;->dispatchCameraIdle()V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final createScaleAnimator(DDLandroid/graphics/PointF;J)Landroid/animation/ValueAnimator;
    .locals 1

    .line 1
    double-to-float v0, p1

    .line 2
    add-double/2addr p1, p3

    .line 3
    double-to-float p1, p1

    .line 4
    const/4 p2, 0x2

    .line 5
    new-array p2, p2, [F

    .line 6
    .line 7
    const/4 p3, 0x0

    .line 8
    aput v0, p2, p3

    .line 9
    .line 10
    const/4 p4, 0x1

    .line 11
    aput p1, p2, p4

    .line 12
    .line 13
    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1, p6, p7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 18
    .line 19
    .line 20
    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    .line 21
    .line 22
    invoke-direct {p2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 26
    .line 27
    .line 28
    new-instance p2, Lorg/maplibre/android/maps/MapGestureDetector$2;

    .line 29
    .line 30
    invoke-direct {p2, p0, p5, p3}, Lorg/maplibre/android/maps/MapGestureDetector$2;-><init>(Ljava/lang/Object;Landroid/graphics/PointF;I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 34
    .line 35
    .line 36
    new-instance p2, Landroidx/transition/Transition$3;

    .line 37
    .line 38
    const/16 p3, 0xf

    .line 39
    .line 40
    invoke-direct {p2, p3, p0}, Landroidx/transition/Transition$3;-><init>(ILjava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 44
    .line 45
    .line 46
    return-object p1
.end method

.method public final dispatchCameraIdle()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/maplibre/android/maps/MapGestureDetector;->noGesturesInProgress()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lorg/maplibre/android/maps/MapGestureDetector;->transform:Lorg/maplibre/android/maps/Transform;

    .line 8
    .line 9
    invoke-virtual {v0}, Lorg/maplibre/android/maps/Transform;->invalidateCameraPosition()Lorg/maplibre/android/camera/CameraPosition;

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lorg/maplibre/android/maps/MapGestureDetector;->cameraChangeDispatcher:Lorg/maplibre/android/maps/CameraChangeDispatcher;

    .line 13
    .line 14
    invoke-virtual {p0}, Lorg/maplibre/android/maps/CameraChangeDispatcher;->onCameraIdle()V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final initializeGestureListeners(Landroid/content/Context;)V
    .locals 12

    .line 1
    new-instance v8, Lorg/maplibre/android/maps/MapGestureDetector$StandardGestureListener;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const v7, 0x7f070379

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimension(I)F

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-direct {v8, p0, v0}, Lorg/maplibre/android/maps/MapGestureDetector$StandardGestureListener;-><init>(Lorg/maplibre/android/maps/MapGestureDetector;F)V

    .line 15
    .line 16
    .line 17
    new-instance v9, Lorg/maplibre/android/maps/MapGestureDetector$MoveGestureListener;

    .line 18
    .line 19
    invoke-direct {v9, p0}, Lorg/maplibre/android/maps/MapGestureDetector$MoveGestureListener;-><init>(Lorg/maplibre/android/maps/MapGestureDetector;)V

    .line 20
    .line 21
    .line 22
    new-instance v0, Lorg/maplibre/android/maps/MapGestureDetector$ScaleGestureListener;

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    const v10, 0x7f07037e

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getDimension(I)F

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    float-to-double v2, v2

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    const v5, 0x7f070389

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    const v6, 0x7f070385

    .line 52
    .line 53
    .line 54
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    const v11, 0x7f07038a

    .line 63
    .line 64
    .line 65
    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getDimension(I)F

    .line 66
    .line 67
    .line 68
    move-result v6

    .line 69
    move-object v1, p0

    .line 70
    invoke-direct/range {v0 .. v6}, Lorg/maplibre/android/maps/MapGestureDetector$ScaleGestureListener;-><init>(Lorg/maplibre/android/maps/MapGestureDetector;DFFF)V

    .line 71
    .line 72
    .line 73
    move-object v11, v0

    .line 74
    new-instance v0, Lorg/maplibre/android/maps/MapGestureDetector$RotateGestureListener;

    .line 75
    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    const v2, 0x7f070388

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getDimension(I)F

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    float-to-double v3, v1

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    const v5, 0x7f07037d

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimension(I)F

    .line 104
    .line 105
    .line 106
    move-result v5

    .line 107
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    const v6, 0x7f070386

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimension(I)F

    .line 115
    .line 116
    .line 117
    move-result v6

    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimension(I)F

    .line 123
    .line 124
    .line 125
    move-result v7

    .line 126
    move-object v1, p0

    .line 127
    invoke-direct/range {v0 .. v7}, Lorg/maplibre/android/maps/MapGestureDetector$RotateGestureListener;-><init>(Lorg/maplibre/android/maps/MapGestureDetector;FDFFF)V

    .line 128
    .line 129
    .line 130
    new-instance v2, Lorg/maplibre/android/maps/MapGestureDetector$ShoveGestureListener;

    .line 131
    .line 132
    invoke-direct {v2, p0}, Lorg/maplibre/android/maps/MapGestureDetector$ShoveGestureListener;-><init>(Lorg/maplibre/android/maps/MapGestureDetector;)V

    .line 133
    .line 134
    .line 135
    new-instance v3, Lorg/maplibre/android/maps/MapGestureDetector$TapGestureListener;

    .line 136
    .line 137
    invoke-direct {v3, p0}, Lorg/maplibre/android/maps/MapGestureDetector$TapGestureListener;-><init>(Lorg/maplibre/android/maps/MapGestureDetector;)V

    .line 138
    .line 139
    .line 140
    iget-object v1, p0, Lorg/maplibre/android/maps/MapGestureDetector;->gesturesManager:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 141
    .line 142
    iget-object v4, v1, Lorg/wikipedia/databinding/FragmentNewsBinding;->gradientView:Ljava/lang/Object;

    .line 143
    .line 144
    check-cast v4, Lorg/maplibre/android/gestures/StandardGestureDetector;

    .line 145
    .line 146
    iput-object v8, v4, Lorg/maplibre/android/gestures/BaseGesture;->listener:Ljava/lang/Object;

    .line 147
    .line 148
    iget-object v4, v1, Lorg/wikipedia/databinding/FragmentNewsBinding;->toolbarContainer:Ljava/lang/Object;

    .line 149
    .line 150
    check-cast v4, Lorg/maplibre/android/gestures/MoveGestureDetector;

    .line 151
    .line 152
    iput-object v9, v4, Lorg/maplibre/android/gestures/BaseGesture;->listener:Ljava/lang/Object;

    .line 153
    .line 154
    iget-object v4, v1, Lorg/wikipedia/databinding/FragmentNewsBinding;->headerImageView:Ljava/lang/Object;

    .line 155
    .line 156
    check-cast v4, Lorg/maplibre/android/gestures/StandardScaleGestureDetector;

    .line 157
    .line 158
    iput-object v11, v4, Lorg/maplibre/android/gestures/BaseGesture;->listener:Ljava/lang/Object;

    .line 159
    .line 160
    iget-object v4, v1, Lorg/wikipedia/databinding/FragmentNewsBinding;->newsStoryItemsRecyclerview:Ljava/lang/Object;

    .line 161
    .line 162
    check-cast v4, Lorg/maplibre/android/gestures/RotateGestureDetector;

    .line 163
    .line 164
    iput-object v0, v4, Lorg/maplibre/android/gestures/BaseGesture;->listener:Ljava/lang/Object;

    .line 165
    .line 166
    iget-object v0, v1, Lorg/wikipedia/databinding/FragmentNewsBinding;->storyTextView:Ljava/lang/Object;

    .line 167
    .line 168
    check-cast v0, Lorg/maplibre/android/gestures/ShoveGestureDetector;

    .line 169
    .line 170
    iput-object v2, v0, Lorg/maplibre/android/gestures/BaseGesture;->listener:Ljava/lang/Object;

    .line 171
    .line 172
    iget-object v0, v1, Lorg/wikipedia/databinding/FragmentNewsBinding;->toolbar:Ljava/lang/Object;

    .line 173
    .line 174
    check-cast v0, Lorg/maplibre/android/gestures/MultiFingerTapGestureDetector;

    .line 175
    .line 176
    iput-object v3, v0, Lorg/maplibre/android/gestures/BaseGesture;->listener:Ljava/lang/Object;

    .line 177
    .line 178
    return-void
.end method

.method public final initializeGesturesManager(Lorg/wikipedia/databinding/FragmentNewsBinding;)V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    const/4 v2, 0x3

    .line 7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    new-instance v4, Ljava/util/HashSet;

    .line 12
    .line 13
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    invoke-virtual {v4, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    new-instance v5, Ljava/util/HashSet;

    .line 23
    .line 24
    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v5, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    const/4 v3, 0x2

    .line 31
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    new-instance v6, Ljava/util/HashSet;

    .line 39
    .line 40
    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v6, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    const/4 v1, 0x6

    .line 47
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v6, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    new-array v1, v2, [Ljava/util/Set;

    .line 55
    .line 56
    const/4 v2, 0x0

    .line 57
    aput-object v4, v1, v2

    .line 58
    .line 59
    aput-object v5, v1, v0

    .line 60
    .line 61
    aput-object v6, v1, v3

    .line 62
    .line 63
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    iget-object v1, p1, Lorg/wikipedia/databinding/FragmentNewsBinding;->rootView:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast v1, Ljava/util/ArrayList;

    .line 73
    .line 74
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 78
    .line 79
    .line 80
    iget-object v0, p1, Lorg/wikipedia/databinding/FragmentNewsBinding;->newsStoryItemsRecyclerview:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast v0, Lorg/maplibre/android/gestures/RotateGestureDetector;

    .line 83
    .line 84
    const/high16 v1, 0x40400000    # 3.0f

    .line 85
    .line 86
    iput v1, v0, Lorg/maplibre/android/gestures/RotateGestureDetector;->angleThreshold:F

    .line 87
    .line 88
    iget-object v0, p1, Lorg/wikipedia/databinding/FragmentNewsBinding;->toolbarContainer:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast v0, Lorg/maplibre/android/gestures/MoveGestureDetector;

    .line 91
    .line 92
    iget-object v1, v0, Lorg/maplibre/android/gestures/BaseGesture;->context:Landroid/content/Context;

    .line 93
    .line 94
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    const v2, 0x7f070387

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    iput v1, v0, Lorg/maplibre/android/gestures/MoveGestureDetector;->moveThreshold:F

    .line 106
    .line 107
    iput-object p1, p0, Lorg/maplibre/android/maps/MapGestureDetector;->gesturesManager:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 108
    .line 109
    return-void
.end method

.method public final noGesturesInProgress()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/maplibre/android/maps/MapGestureDetector;->uiSettings:Lorg/maplibre/android/maps/UiSettings;

    .line 2
    .line 3
    iget-boolean v1, v0, Lorg/maplibre/android/maps/UiSettings;->scrollGesturesEnabled:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Lorg/maplibre/android/maps/MapGestureDetector;->gesturesManager:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 8
    .line 9
    iget-object v1, v1, Lorg/wikipedia/databinding/FragmentNewsBinding;->toolbarContainer:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v1, Lorg/maplibre/android/gestures/MoveGestureDetector;

    .line 12
    .line 13
    iget-boolean v1, v1, Lorg/maplibre/android/gestures/ProgressiveGesture;->isInProgress:Z

    .line 14
    .line 15
    if-nez v1, :cond_3

    .line 16
    .line 17
    :cond_0
    iget-boolean v1, v0, Lorg/maplibre/android/maps/UiSettings;->zoomGesturesEnabled:Z

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    iget-object v1, p0, Lorg/maplibre/android/maps/MapGestureDetector;->gesturesManager:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 22
    .line 23
    iget-object v1, v1, Lorg/wikipedia/databinding/FragmentNewsBinding;->headerImageView:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v1, Lorg/maplibre/android/gestures/StandardScaleGestureDetector;

    .line 26
    .line 27
    iget-boolean v1, v1, Lorg/maplibre/android/gestures/ProgressiveGesture;->isInProgress:Z

    .line 28
    .line 29
    if-nez v1, :cond_3

    .line 30
    .line 31
    :cond_1
    iget-boolean v1, v0, Lorg/maplibre/android/maps/UiSettings;->rotateGesturesEnabled:Z

    .line 32
    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    iget-object v1, p0, Lorg/maplibre/android/maps/MapGestureDetector;->gesturesManager:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 36
    .line 37
    iget-object v1, v1, Lorg/wikipedia/databinding/FragmentNewsBinding;->newsStoryItemsRecyclerview:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v1, Lorg/maplibre/android/gestures/RotateGestureDetector;

    .line 40
    .line 41
    iget-boolean v1, v1, Lorg/maplibre/android/gestures/ProgressiveGesture;->isInProgress:Z

    .line 42
    .line 43
    if-nez v1, :cond_3

    .line 44
    .line 45
    :cond_2
    iget-boolean v0, v0, Lorg/maplibre/android/maps/UiSettings;->tiltGesturesEnabled:Z

    .line 46
    .line 47
    if-eqz v0, :cond_4

    .line 48
    .line 49
    iget-object p0, p0, Lorg/maplibre/android/maps/MapGestureDetector;->gesturesManager:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 50
    .line 51
    iget-object p0, p0, Lorg/wikipedia/databinding/FragmentNewsBinding;->storyTextView:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast p0, Lorg/maplibre/android/gestures/ShoveGestureDetector;

    .line 54
    .line 55
    iget-boolean p0, p0, Lorg/maplibre/android/gestures/ProgressiveGesture;->isInProgress:Z

    .line 56
    .line 57
    if-nez p0, :cond_3

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_3
    const/4 p0, 0x0

    .line 61
    return p0

    .line 62
    :cond_4
    :goto_0
    const/4 p0, 0x1

    .line 63
    return p0
.end method

.method public final scheduleAnimator(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/maplibre/android/maps/MapGestureDetector;->scheduledAnimators:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iget-object v0, p0, Lorg/maplibre/android/maps/MapGestureDetector;->animationsTimeoutHandler:Landroid/os/Handler;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lorg/maplibre/android/maps/MapGestureDetector;->cancelAnimatorsRunnable:Lorg/maplibre/android/maps/MapView$4;

    .line 13
    .line 14
    const-wide/16 v1, 0x96

    .line 15
    .line 16
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final zoomAnimated(ZLandroid/graphics/PointF;Z)V
    .locals 9

    .line 1
    iget-object v0, p0, Lorg/maplibre/android/maps/MapGestureDetector;->scaleAnimator:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lorg/maplibre/android/maps/MapGestureDetector;->transform:Lorg/maplibre/android/maps/Transform;

    .line 15
    .line 16
    invoke-virtual {v0}, Lorg/maplibre/android/maps/Transform;->getRawZoom()D

    .line 17
    .line 18
    .line 19
    move-result-wide v2

    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 23
    .line 24
    :goto_0
    move-wide v4, v0

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :goto_1
    const-wide/16 v7, 0x12c

    .line 30
    .line 31
    move-object v1, p0

    .line 32
    move-object v6, p2

    .line 33
    invoke-virtual/range {v1 .. v8}, Lorg/maplibre/android/maps/MapGestureDetector;->createScaleAnimator(DDLandroid/graphics/PointF;J)Landroid/animation/ValueAnimator;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    iput-object p0, v1, Lorg/maplibre/android/maps/MapGestureDetector;->scaleAnimator:Landroid/animation/ValueAnimator;

    .line 38
    .line 39
    if-eqz p3, :cond_2

    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_2
    invoke-virtual {v1, p0}, Lorg/maplibre/android/maps/MapGestureDetector;->scheduleAnimator(Landroid/animation/ValueAnimator;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method
