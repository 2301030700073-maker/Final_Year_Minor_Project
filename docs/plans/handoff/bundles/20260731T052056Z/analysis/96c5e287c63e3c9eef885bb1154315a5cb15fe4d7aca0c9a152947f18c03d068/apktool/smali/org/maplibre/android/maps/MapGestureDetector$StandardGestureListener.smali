.class public final Lorg/maplibre/android/maps/MapGestureDetector$StandardGestureListener;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lorg/maplibre/android/gestures/StandardGestureDetector$StandardOnGestureListener;


# instance fields
.field public final doubleTapMovementThreshold:F

.field public final synthetic this$0:Lorg/maplibre/android/maps/MapGestureDetector;


# direct methods
.method public constructor <init>(Lorg/maplibre/android/maps/MapGestureDetector;F)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/maplibre/android/maps/MapGestureDetector$StandardGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    .line 5
    .line 6
    iput p2, p0, Lorg/maplibre/android/maps/MapGestureDetector$StandardGestureListener;->doubleTapMovementThreshold:F

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    iget-object v3, p0, Lorg/maplibre/android/maps/MapGestureDetector$StandardGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    new-instance v0, Landroid/graphics/PointF;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 18
    .line 19
    .line 20
    move-result v5

    .line 21
    invoke-direct {v0, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 22
    .line 23
    .line 24
    iput-object v0, v3, Lorg/maplibre/android/maps/MapGestureDetector;->doubleTapFocalPoint:Landroid/graphics/PointF;

    .line 25
    .line 26
    iget-object v0, v3, Lorg/maplibre/android/maps/MapGestureDetector;->gesturesManager:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 27
    .line 28
    iget-object v0, v0, Lorg/wikipedia/databinding/FragmentNewsBinding;->toolbarContainer:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v0, Lorg/maplibre/android/gestures/MoveGestureDetector;

    .line 31
    .line 32
    iput-boolean v2, v0, Lorg/maplibre/android/gestures/BaseGesture;->isEnabled:Z

    .line 33
    .line 34
    iget-boolean v4, v0, Lorg/maplibre/android/gestures/ProgressiveGesture;->isInProgress:Z

    .line 35
    .line 36
    if-eqz v4, :cond_0

    .line 37
    .line 38
    iput-boolean v1, v0, Lorg/maplibre/android/gestures/ProgressiveGesture;->interrupted:Z

    .line 39
    .line 40
    :cond_0
    iput-boolean v1, v3, Lorg/maplibre/android/maps/MapGestureDetector;->doubleTapRegistered:Z

    .line 41
    .line 42
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-ne v0, v1, :cond_5

    .line 47
    .line 48
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    iget-object v4, v3, Lorg/maplibre/android/maps/MapGestureDetector;->doubleTapFocalPoint:Landroid/graphics/PointF;

    .line 53
    .line 54
    iget v4, v4, Landroid/graphics/PointF;->x:F

    .line 55
    .line 56
    sub-float/2addr v0, v4

    .line 57
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    iget-object v4, v3, Lorg/maplibre/android/maps/MapGestureDetector;->doubleTapFocalPoint:Landroid/graphics/PointF;

    .line 66
    .line 67
    iget v4, v4, Landroid/graphics/PointF;->y:F

    .line 68
    .line 69
    sub-float/2addr p1, v4

    .line 70
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    iget p0, p0, Lorg/maplibre/android/maps/MapGestureDetector$StandardGestureListener;->doubleTapMovementThreshold:F

    .line 75
    .line 76
    cmpl-float v0, v0, p0

    .line 77
    .line 78
    if-gtz v0, :cond_5

    .line 79
    .line 80
    cmpl-float p0, p1, p0

    .line 81
    .line 82
    if-lez p0, :cond_2

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_2
    iget-object p0, v3, Lorg/maplibre/android/maps/MapGestureDetector;->uiSettings:Lorg/maplibre/android/maps/UiSettings;

    .line 86
    .line 87
    iget-boolean p1, p0, Lorg/maplibre/android/maps/UiSettings;->zoomGesturesEnabled:Z

    .line 88
    .line 89
    if-eqz p1, :cond_5

    .line 90
    .line 91
    iget-boolean p0, p0, Lorg/maplibre/android/maps/UiSettings;->doubleTapGesturesEnabled:Z

    .line 92
    .line 93
    if-nez p0, :cond_3

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_3
    iget-object p0, v3, Lorg/maplibre/android/maps/MapGestureDetector;->constantFocalPoint:Landroid/graphics/PointF;

    .line 97
    .line 98
    if-eqz p0, :cond_4

    .line 99
    .line 100
    iput-object p0, v3, Lorg/maplibre/android/maps/MapGestureDetector;->doubleTapFocalPoint:Landroid/graphics/PointF;

    .line 101
    .line 102
    :cond_4
    iget-object p0, v3, Lorg/maplibre/android/maps/MapGestureDetector;->doubleTapFocalPoint:Landroid/graphics/PointF;

    .line 103
    .line 104
    invoke-virtual {v3, v1, p0, v2}, Lorg/maplibre/android/maps/MapGestureDetector;->zoomAnimated(ZLandroid/graphics/PointF;Z)V

    .line 105
    .line 106
    .line 107
    return v1

    .line 108
    :cond_5
    :goto_0
    return v2
.end method

.method public final onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v0, v0, Lorg/maplibre/android/maps/MapGestureDetector$StandardGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    .line 4
    .line 5
    iget-object v1, v0, Lorg/maplibre/android/maps/MapGestureDetector;->transform:Lorg/maplibre/android/maps/Transform;

    .line 6
    .line 7
    iget-object v2, v0, Lorg/maplibre/android/maps/MapGestureDetector;->uiSettings:Lorg/maplibre/android/maps/UiSettings;

    .line 8
    .line 9
    iget-boolean v3, v2, Lorg/maplibre/android/maps/UiSettings;->scrollGesturesEnabled:Z

    .line 10
    .line 11
    if-nez v3, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    iget-boolean v3, v2, Lorg/maplibre/android/maps/UiSettings;->flingVelocityAnimationEnabled:Z

    .line 15
    .line 16
    if-nez v3, :cond_1

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    iget v3, v2, Lorg/maplibre/android/maps/UiSettings;->pixelRatio:F

    .line 20
    .line 21
    div-float v4, p3, v3

    .line 22
    .line 23
    float-to-double v4, v4

    .line 24
    div-float v3, p4, v3

    .line 25
    .line 26
    float-to-double v6, v3

    .line 27
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    .line 28
    .line 29
    .line 30
    move-result-wide v3

    .line 31
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    const-wide v5, 0x408f400000000000L    # 1000.0

    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    cmpg-double v7, v3, v5

    .line 40
    .line 41
    if-gez v7, :cond_2

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_2
    invoke-virtual {v1}, Lorg/maplibre/android/maps/Transform;->getTilt()D

    .line 45
    .line 46
    .line 47
    move-result-wide v7

    .line 48
    const-wide/16 v9, 0x0

    .line 49
    .line 50
    cmpl-double v11, v7, v9

    .line 51
    .line 52
    if-eqz v11, :cond_3

    .line 53
    .line 54
    const-wide/high16 v11, 0x4024000000000000L    # 10.0

    .line 55
    .line 56
    div-double/2addr v7, v11

    .line 57
    goto :goto_0

    .line 58
    :cond_3
    move-wide v7, v9

    .line 59
    :goto_0
    const-wide/high16 v11, 0x3ff8000000000000L    # 1.5

    .line 60
    .line 61
    add-double/2addr v7, v11

    .line 62
    const-wide/high16 v11, 0x401c000000000000L    # 7.0

    .line 63
    .line 64
    div-double/2addr v3, v11

    .line 65
    div-double/2addr v3, v7

    .line 66
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    const-wide v7, 0x4062c00000000000L    # 150.0

    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    add-double/2addr v3, v7

    .line 75
    double-to-long v3, v3

    .line 76
    long-to-float v7, v3

    .line 77
    mul-float v8, p3, v7

    .line 78
    .line 79
    float-to-double v11, v8

    .line 80
    const-wide v13, 0x3fd1eb851eb851ecL    # 0.28

    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    mul-double/2addr v11, v13

    .line 86
    div-double/2addr v11, v5

    .line 87
    mul-float v7, v7, p4

    .line 88
    .line 89
    float-to-double v7, v7

    .line 90
    mul-double/2addr v7, v13

    .line 91
    div-double v14, v7, v5

    .line 92
    .line 93
    iget-boolean v2, v2, Lorg/maplibre/android/maps/UiSettings;->horizontalScrollGesturesEnabled:Z

    .line 94
    .line 95
    if-nez v2, :cond_5

    .line 96
    .line 97
    div-double/2addr v11, v14

    .line 98
    invoke-static {v11, v12}, Ljava/lang/Math;->atan(D)D

    .line 99
    .line 100
    .line 101
    move-result-wide v5

    .line 102
    invoke-static {v5, v6}, Ljava/lang/Math;->toDegrees(D)D

    .line 103
    .line 104
    .line 105
    move-result-wide v5

    .line 106
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    .line 107
    .line 108
    .line 109
    move-result-wide v5

    .line 110
    const-wide v7, 0x4052c00000000000L    # 75.0

    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    cmpl-double v2, v5, v7

    .line 116
    .line 117
    if-lez v2, :cond_4

    .line 118
    .line 119
    :goto_1
    const/4 v0, 0x0

    .line 120
    return v0

    .line 121
    :cond_4
    move-wide v12, v9

    .line 122
    goto :goto_2

    .line 123
    :cond_5
    move-wide v12, v11

    .line 124
    :goto_2
    invoke-virtual {v1}, Lorg/maplibre/android/maps/Transform;->cancelTransitions()V

    .line 125
    .line 126
    .line 127
    iget-object v1, v0, Lorg/maplibre/android/maps/MapGestureDetector;->onFlingListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 128
    .line 129
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 134
    .line 135
    .line 136
    move-result v2

    .line 137
    if-eqz v2, :cond_6

    .line 138
    .line 139
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    check-cast v2, Lorg/maplibre/android/location/LocationCameraController$8;

    .line 144
    .line 145
    iget-object v2, v2, Lorg/maplibre/android/location/LocationCameraController$8;->this$0:Lorg/maplibre/android/location/LocationCameraController;

    .line 146
    .line 147
    const/16 v5, 0x8

    .line 148
    .line 149
    const/4 v6, 0x0

    .line 150
    invoke-virtual {v2, v5, v6, v6}, Lorg/maplibre/android/location/LocationCameraController;->setCameraMode(ILandroid/location/Location;Lorg/maplibre/android/location/LocationComponent$6;)V

    .line 151
    .line 152
    .line 153
    goto :goto_3

    .line 154
    :cond_6
    iget-object v1, v0, Lorg/maplibre/android/maps/MapGestureDetector;->cameraChangeDispatcher:Lorg/maplibre/android/maps/CameraChangeDispatcher;

    .line 155
    .line 156
    const/4 v2, 0x1

    .line 157
    invoke-virtual {v1, v2}, Lorg/maplibre/android/maps/CameraChangeDispatcher;->onCameraMoveStarted(I)V

    .line 158
    .line 159
    .line 160
    iget-object v11, v0, Lorg/maplibre/android/maps/MapGestureDetector;->transform:Lorg/maplibre/android/maps/Transform;

    .line 161
    .line 162
    move-wide/from16 v16, v3

    .line 163
    .line 164
    invoke-virtual/range {v11 .. v17}, Lorg/maplibre/android/maps/Transform;->moveBy(DDJ)V

    .line 165
    .line 166
    .line 167
    return v2
.end method

.method public final onLongPress(Landroid/view/MotionEvent;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/PointF;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    invoke-direct {v0, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Lorg/maplibre/android/maps/MapGestureDetector$StandardGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    .line 15
    .line 16
    iget-object p1, p0, Lorg/maplibre/android/maps/MapGestureDetector;->onMapLongClickListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Lorg/maplibre/android/maps/MapLibreMap$OnMapLongClickListener;

    .line 33
    .line 34
    iget-object v2, p0, Lorg/maplibre/android/maps/MapGestureDetector;->projection:Lorg/maplibre/android/maps/MapView$2;

    .line 35
    .line 36
    invoke-virtual {v2, v0}, Lorg/maplibre/android/maps/MapView$2;->fromScreenLocation(Landroid/graphics/PointF;)Lorg/maplibre/android/geometry/LatLng;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-interface {v1, v2}, Lorg/maplibre/android/maps/MapLibreMap$OnMapLongClickListener;->onMapLongClick(Lorg/maplibre/android/geometry/LatLng;)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_0

    .line 45
    .line 46
    :cond_1
    return-void
.end method

.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 11

    .line 1
    new-instance v0, Landroid/graphics/PointF;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    invoke-direct {v0, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Lorg/maplibre/android/maps/MapGestureDetector$StandardGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    .line 15
    .line 16
    iget-object p1, p0, Lorg/maplibre/android/maps/MapGestureDetector;->annotationManager:Lcom/hcaptcha/sdk/HCaptcha;

    .line 17
    .line 18
    iget-object v1, p1, Lcom/hcaptcha/sdk/HCaptcha;->hCaptchaException:Ljava/lang/Object;

    .line 19
    .line 20
    iget-object v1, p1, Lcom/hcaptcha/sdk/HCaptcha;->onOpenListeners:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v1, Ljava/util/ArrayList;

    .line 23
    .line 24
    new-instance v2, Landroid/graphics/RectF;

    .line 25
    .line 26
    iget v3, v0, Landroid/graphics/PointF;->x:F

    .line 27
    .line 28
    const/4 v4, 0x0

    .line 29
    sub-float v5, v3, v4

    .line 30
    .line 31
    iget v6, v0, Landroid/graphics/PointF;->y:F

    .line 32
    .line 33
    sub-float v7, v6, v4

    .line 34
    .line 35
    add-float/2addr v3, v4

    .line 36
    add-float/2addr v6, v4

    .line 37
    invoke-direct {v2, v5, v7, v3, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 38
    .line 39
    .line 40
    iget-object v3, p1, Lcom/hcaptcha/sdk/HCaptcha;->internalConfig:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v3, Lokhttp3/MultipartBody$Builder;

    .line 43
    .line 44
    iget-object v4, v3, Lokhttp3/MultipartBody$Builder;->boundary:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v4, Lorg/maplibre/android/maps/NativeMap;

    .line 47
    .line 48
    check-cast v4, Lorg/maplibre/android/maps/NativeMapView;

    .line 49
    .line 50
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    new-instance v5, Landroid/graphics/RectF;

    .line 54
    .line 55
    iget v6, v2, Landroid/graphics/RectF;->left:F

    .line 56
    .line 57
    iget v7, v4, Lorg/maplibre/android/maps/NativeMapView;->pixelRatio:F

    .line 58
    .line 59
    div-float/2addr v6, v7

    .line 60
    iget v8, v2, Landroid/graphics/RectF;->top:F

    .line 61
    .line 62
    div-float/2addr v8, v7

    .line 63
    iget v9, v2, Landroid/graphics/RectF;->right:F

    .line 64
    .line 65
    div-float/2addr v9, v7

    .line 66
    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    .line 67
    .line 68
    div-float/2addr v2, v7

    .line 69
    invoke-direct {v5, v6, v8, v9, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v4, v5}, Lorg/maplibre/android/maps/NativeMapView;->queryPointAnnotations(Landroid/graphics/RectF;)[J

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    new-instance v4, Ljava/util/ArrayList;

    .line 77
    .line 78
    array-length v5, v2

    .line 79
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 80
    .line 81
    .line 82
    array-length v5, v2

    .line 83
    const/4 v6, 0x0

    .line 84
    move v7, v6

    .line 85
    :goto_0
    if-ge v7, v5, :cond_0

    .line 86
    .line 87
    aget-wide v8, v2, v7

    .line 88
    .line 89
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 90
    .line 91
    .line 92
    move-result-object v8

    .line 93
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    add-int/lit8 v7, v7, 0x1

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    .line 100
    .line 101
    array-length v2, v2

    .line 102
    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 103
    .line 104
    .line 105
    iget-object v2, v3, Lokhttp3/MultipartBody$Builder;->type:Ljava/lang/Object;

    .line 106
    .line 107
    check-cast v2, Landroidx/collection/LongSparseArray;

    .line 108
    .line 109
    new-instance v3, Ljava/util/ArrayList;

    .line 110
    .line 111
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .line 113
    .line 114
    move v7, v6

    .line 115
    :goto_1
    invoke-virtual {v2}, Landroidx/collection/LongSparseArray;->size()I

    .line 116
    .line 117
    .line 118
    move-result v8

    .line 119
    if-ge v7, v8, :cond_1

    .line 120
    .line 121
    invoke-virtual {v2, v7}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    .line 122
    .line 123
    .line 124
    move-result-wide v8

    .line 125
    invoke-virtual {v2, v8, v9}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v8

    .line 129
    check-cast v8, Lorg/maplibre/android/annotations/Annotation;

    .line 130
    .line 131
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    add-int/lit8 v7, v7, 0x1

    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 138
    .line 139
    .line 140
    move-result v2

    .line 141
    move v7, v6

    .line 142
    :goto_2
    if-ge v7, v2, :cond_3

    .line 143
    .line 144
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v8

    .line 148
    check-cast v8, Lorg/maplibre/android/annotations/Annotation;

    .line 149
    .line 150
    instance-of v9, v8, Lorg/maplibre/android/annotations/Marker;

    .line 151
    .line 152
    if-eqz v9, :cond_2

    .line 153
    .line 154
    iget-wide v9, v8, Lorg/maplibre/android/annotations/Annotation;->id:J

    .line 155
    .line 156
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 157
    .line 158
    .line 159
    move-result-object v9

    .line 160
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v9

    .line 164
    if-eqz v9, :cond_2

    .line 165
    .line 166
    check-cast v8, Lorg/maplibre/android/annotations/Marker;

    .line 167
    .line 168
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    :cond_2
    add-int/lit8 v7, v7, 0x1

    .line 172
    .line 173
    goto :goto_2

    .line 174
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    .line 175
    .line 176
    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 177
    .line 178
    .line 179
    iget-object v3, p1, Lcom/hcaptcha/sdk/HCaptcha;->handler:Ljava/lang/Object;

    .line 180
    .line 181
    check-cast v3, Lorg/maplibre/android/maps/MapLibreMap;

    .line 182
    .line 183
    new-instance v4, Landroid/graphics/Rect;

    .line 184
    .line 185
    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 186
    .line 187
    .line 188
    new-instance v4, Landroid/graphics/RectF;

    .line 189
    .line 190
    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    .line 191
    .line 192
    .line 193
    new-instance v4, Landroid/graphics/RectF;

    .line 194
    .line 195
    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    .line 196
    .line 197
    .line 198
    iget-object v3, v3, Lorg/maplibre/android/maps/MapLibreMap;->projection:Lorg/maplibre/android/maps/MapView$2;

    .line 199
    .line 200
    invoke-static {}, Lorg/maplibre/android/MapLibre;->getApplicationContext()Landroid/content/Context;

    .line 201
    .line 202
    .line 203
    move-result-object v4

    .line 204
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 205
    .line 206
    .line 207
    move-result-object v4

    .line 208
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 209
    .line 210
    .line 211
    move-result-object v4

    .line 212
    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    .line 213
    .line 214
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 215
    .line 216
    .line 217
    move-result-object v2

    .line 218
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 219
    .line 220
    .line 221
    move-result v4

    .line 222
    const/4 v5, 0x0

    .line 223
    if-nez v4, :cond_11

    .line 224
    .line 225
    const-wide/16 v2, -0x1

    .line 226
    .line 227
    cmp-long v4, v2, v2

    .line 228
    .line 229
    const/4 v7, 0x1

    .line 230
    if-eqz v4, :cond_a

    .line 231
    .line 232
    iget-object p0, p1, Lcom/hcaptcha/sdk/HCaptcha;->activity:Ljava/lang/Object;

    .line 233
    .line 234
    check-cast p0, Lorg/maplibre/android/maps/IconManager;

    .line 235
    .line 236
    iget-object p0, p0, Lorg/maplibre/android/maps/IconManager;->iconMap:Ljava/lang/Object;

    .line 237
    .line 238
    check-cast p0, Landroidx/collection/LongSparseArray;

    .line 239
    .line 240
    invoke-virtual {p0, v2, v3}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object p0

    .line 244
    check-cast p0, Lorg/maplibre/android/annotations/Annotation;

    .line 245
    .line 246
    check-cast p0, Lorg/maplibre/android/annotations/Marker;

    .line 247
    .line 248
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 249
    .line 250
    .line 251
    move-result v0

    .line 252
    if-nez v0, :cond_7

    .line 253
    .line 254
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 255
    .line 256
    .line 257
    move-result v0

    .line 258
    if-eqz v0, :cond_4

    .line 259
    .line 260
    goto/16 :goto_5

    .line 261
    .line 262
    :cond_4
    invoke-virtual {p1}, Lcom/hcaptcha/sdk/HCaptcha;->deselectMarkers()V

    .line 263
    .line 264
    .line 265
    if-eqz p0, :cond_6

    .line 266
    .line 267
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 268
    .line 269
    .line 270
    move-result v0

    .line 271
    if-eqz v0, :cond_5

    .line 272
    .line 273
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 274
    .line 275
    .line 276
    move-result v0

    .line 277
    if-eqz v0, :cond_5

    .line 278
    .line 279
    goto :goto_3

    .line 280
    :cond_5
    iget-object p0, p1, Lcom/hcaptcha/sdk/HCaptcha;->handler:Ljava/lang/Object;

    .line 281
    .line 282
    check-cast p0, Lorg/maplibre/android/maps/MapLibreMap;

    .line 283
    .line 284
    iget-object p1, p1, Lcom/hcaptcha/sdk/HCaptcha;->result:Ljava/lang/Object;

    .line 285
    .line 286
    check-cast p1, Lorg/maplibre/android/maps/MapView;

    .line 287
    .line 288
    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->annotationManager:Lcom/hcaptcha/sdk/HCaptcha;

    .line 289
    .line 290
    iget-object p0, p0, Lcom/hcaptcha/sdk/HCaptcha;->onSuccessListeners:Ljava/lang/Object;

    .line 291
    .line 292
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 293
    .line 294
    .line 295
    move-result-object p0

    .line 296
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 297
    .line 298
    .line 299
    throw v5

    .line 300
    :cond_6
    :goto_3
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    .line 302
    .line 303
    return v7

    .line 304
    :cond_7
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 305
    .line 306
    .line 307
    move-result p1

    .line 308
    if-nez p1, :cond_8

    .line 309
    .line 310
    goto/16 :goto_5

    .line 311
    .line 312
    :cond_8
    iget-boolean p1, p0, Lorg/maplibre/android/annotations/Marker;->infoWindowShown:Z

    .line 313
    .line 314
    if-nez p1, :cond_9

    .line 315
    .line 316
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 317
    .line 318
    .line 319
    return v7

    .line 320
    :cond_9
    throw v5

    .line 321
    :cond_a
    invoke-static {}, Lorg/maplibre/android/MapLibre;->getApplicationContext()Landroid/content/Context;

    .line 322
    .line 323
    .line 324
    move-result-object v1

    .line 325
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 326
    .line 327
    .line 328
    move-result-object v1

    .line 329
    const v2, 0x7f07037f

    .line 330
    .line 331
    .line 332
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 333
    .line 334
    .line 335
    move-result v1

    .line 336
    new-instance v2, Landroid/graphics/RectF;

    .line 337
    .line 338
    iget v3, v0, Landroid/graphics/PointF;->x:F

    .line 339
    .line 340
    sub-float v4, v3, v1

    .line 341
    .line 342
    iget v5, v0, Landroid/graphics/PointF;->y:F

    .line 343
    .line 344
    sub-float v8, v5, v1

    .line 345
    .line 346
    add-float/2addr v3, v1

    .line 347
    add-float/2addr v5, v1

    .line 348
    invoke-direct {v2, v4, v8, v3, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 349
    .line 350
    .line 351
    iget-object v1, p1, Lcom/hcaptcha/sdk/HCaptcha;->captchaVerifier:Ljava/lang/Object;

    .line 352
    .line 353
    check-cast v1, Lorg/maplibre/android/maps/MapView$2;

    .line 354
    .line 355
    iget-object v3, v1, Lorg/maplibre/android/maps/MapView$2;->val$cameraChangeDispatcher:Ljava/lang/Object;

    .line 356
    .line 357
    check-cast v3, Lorg/maplibre/android/maps/NativeMap;

    .line 358
    .line 359
    check-cast v3, Lorg/maplibre/android/maps/NativeMapView;

    .line 360
    .line 361
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 362
    .line 363
    .line 364
    new-instance v4, Landroid/graphics/RectF;

    .line 365
    .line 366
    iget v5, v2, Landroid/graphics/RectF;->left:F

    .line 367
    .line 368
    iget v8, v3, Lorg/maplibre/android/maps/NativeMapView;->pixelRatio:F

    .line 369
    .line 370
    div-float/2addr v5, v8

    .line 371
    iget v9, v2, Landroid/graphics/RectF;->top:F

    .line 372
    .line 373
    div-float/2addr v9, v8

    .line 374
    iget v10, v2, Landroid/graphics/RectF;->right:F

    .line 375
    .line 376
    div-float/2addr v10, v8

    .line 377
    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    .line 378
    .line 379
    div-float/2addr v2, v8

    .line 380
    invoke-direct {v4, v5, v9, v10, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 381
    .line 382
    .line 383
    invoke-virtual {v3, v4}, Lorg/maplibre/android/maps/NativeMapView;->queryShapeAnnotations(Landroid/graphics/RectF;)[J

    .line 384
    .line 385
    .line 386
    move-result-object v2

    .line 387
    new-instance v3, Ljava/util/ArrayList;

    .line 388
    .line 389
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 390
    .line 391
    .line 392
    array-length v4, v2

    .line 393
    move v5, v6

    .line 394
    :goto_4
    if-ge v5, v4, :cond_c

    .line 395
    .line 396
    aget-wide v8, v2, v5

    .line 397
    .line 398
    iget-object v10, v1, Lorg/maplibre/android/maps/MapView$2;->this$0:Ljava/lang/Object;

    .line 399
    .line 400
    check-cast v10, Landroidx/collection/LongSparseArray;

    .line 401
    .line 402
    invoke-virtual {v10, v8, v9}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    .line 403
    .line 404
    .line 405
    move-result-object v8

    .line 406
    check-cast v8, Lorg/maplibre/android/annotations/Annotation;

    .line 407
    .line 408
    if-eqz v8, :cond_b

    .line 409
    .line 410
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 411
    .line 412
    .line 413
    :cond_b
    add-int/lit8 v5, v5, 0x1

    .line 414
    .line 415
    goto :goto_4

    .line 416
    :cond_c
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 417
    .line 418
    .line 419
    move-result v1

    .line 420
    if-lez v1, :cond_d

    .line 421
    .line 422
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 423
    .line 424
    .line 425
    move-result-object v1

    .line 426
    check-cast v1, Lorg/maplibre/android/annotations/Annotation;

    .line 427
    .line 428
    :cond_d
    iget-object v1, p0, Lorg/maplibre/android/maps/MapGestureDetector;->uiSettings:Lorg/maplibre/android/maps/UiSettings;

    .line 429
    .line 430
    iget-boolean v1, v1, Lorg/maplibre/android/maps/UiSettings;->deselectMarkersOnTap:Z

    .line 431
    .line 432
    if-eqz v1, :cond_e

    .line 433
    .line 434
    invoke-virtual {p1}, Lcom/hcaptcha/sdk/HCaptcha;->deselectMarkers()V

    .line 435
    .line 436
    .line 437
    :cond_e
    iget-object p1, p0, Lorg/maplibre/android/maps/MapGestureDetector;->onMapClickListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 438
    .line 439
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 440
    .line 441
    .line 442
    move-result-object p1

    .line 443
    :cond_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 444
    .line 445
    .line 446
    move-result v1

    .line 447
    if-eqz v1, :cond_10

    .line 448
    .line 449
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 450
    .line 451
    .line 452
    move-result-object v1

    .line 453
    check-cast v1, Lorg/maplibre/android/maps/MapLibreMap$OnMapClickListener;

    .line 454
    .line 455
    iget-object v2, p0, Lorg/maplibre/android/maps/MapGestureDetector;->projection:Lorg/maplibre/android/maps/MapView$2;

    .line 456
    .line 457
    invoke-virtual {v2, v0}, Lorg/maplibre/android/maps/MapView$2;->fromScreenLocation(Landroid/graphics/PointF;)Lorg/maplibre/android/geometry/LatLng;

    .line 458
    .line 459
    .line 460
    move-result-object v2

    .line 461
    invoke-interface {v1, v2}, Lorg/maplibre/android/maps/MapLibreMap$OnMapClickListener;->onMapClick(Lorg/maplibre/android/geometry/LatLng;)Z

    .line 462
    .line 463
    .line 464
    move-result v1

    .line 465
    if-eqz v1, :cond_f

    .line 466
    .line 467
    :cond_10
    :goto_5
    return v7

    .line 468
    :cond_11
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 469
    .line 470
    .line 471
    move-result-object p0

    .line 472
    check-cast p0, Lorg/maplibre/android/annotations/Marker;

    .line 473
    .line 474
    invoke-virtual {p0}, Lorg/maplibre/android/annotations/Marker;->getPosition()Lorg/maplibre/android/geometry/LatLng;

    .line 475
    .line 476
    .line 477
    move-result-object p0

    .line 478
    invoke-virtual {v3, p0}, Lorg/maplibre/android/maps/MapView$2;->toScreenLocation(Lorg/maplibre/android/geometry/LatLng;)Landroid/graphics/PointF;

    .line 479
    .line 480
    .line 481
    throw v5
.end method

.method public final onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/maplibre/android/maps/MapGestureDetector$StandardGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/maplibre/android/maps/MapGestureDetector;->transform:Lorg/maplibre/android/maps/Transform;

    .line 4
    .line 5
    invoke-virtual {p0}, Lorg/maplibre/android/maps/Transform;->cancelTransitions()V

    .line 6
    .line 7
    .line 8
    const/4 p0, 0x1

    .line 9
    return p0
.end method
