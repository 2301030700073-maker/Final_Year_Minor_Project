.class public final Lorg/maplibre/android/gestures/MultiFingerTapGestureDetector;
.super Lorg/maplibre/android/gestures/MultiFingerGesture;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public invalidMovement:Z

.field public lastPointersDownCount:I

.field public multiFingerTapMovementThreshold:F

.field public multiFingerTapTimeThreshold:J

.field public pointerLifted:Z


# virtual methods
.method public final analyzeEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    invoke-super {p0, p1}, Lorg/maplibre/android/gestures/MultiFingerGesture;->analyzeEvent(Landroid/view/MotionEvent;)Z

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    const/4 v0, 0x2

    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x1

    .line 11
    if-eq p1, v2, :cond_9

    .line 12
    .line 13
    if-eq p1, v0, :cond_3

    .line 14
    .line 15
    const/4 v0, 0x5

    .line 16
    if-eq p1, v0, :cond_1

    .line 17
    .line 18
    const/4 v0, 0x6

    .line 19
    if-eq p1, v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iput-boolean v2, p0, Lorg/maplibre/android/gestures/MultiFingerTapGestureDetector;->pointerLifted:Z

    .line 23
    .line 24
    return v1

    .line 25
    :cond_1
    iget-boolean p1, p0, Lorg/maplibre/android/gestures/MultiFingerTapGestureDetector;->pointerLifted:Z

    .line 26
    .line 27
    if-eqz p1, :cond_2

    .line 28
    .line 29
    iput-boolean v2, p0, Lorg/maplibre/android/gestures/MultiFingerTapGestureDetector;->invalidMovement:Z

    .line 30
    .line 31
    :cond_2
    iget-object p1, p0, Lorg/maplibre/android/gestures/MultiFingerGesture;->pointerIdList:Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    iput p1, p0, Lorg/maplibre/android/gestures/MultiFingerTapGestureDetector;->lastPointersDownCount:I

    .line 38
    .line 39
    return v1

    .line 40
    :cond_3
    iget-boolean p1, p0, Lorg/maplibre/android/gestures/MultiFingerTapGestureDetector;->invalidMovement:Z

    .line 41
    .line 42
    if-eqz p1, :cond_4

    .line 43
    .line 44
    :goto_0
    return v1

    .line 45
    :cond_4
    iget-object p1, p0, Lorg/maplibre/android/gestures/MultiFingerGesture;->pointersDistanceMap:Ljava/util/HashMap;

    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_8

    .line 60
    .line 61
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    check-cast v0, Lorg/maplibre/android/gestures/MultiFingerDistancesObject;

    .line 66
    .line 67
    iget v3, v0, Lorg/maplibre/android/gestures/MultiFingerDistancesObject;->currFingersDiffX:F

    .line 68
    .line 69
    iget v4, v0, Lorg/maplibre/android/gestures/MultiFingerDistancesObject;->prevFingersDiffX:F

    .line 70
    .line 71
    sub-float/2addr v3, v4

    .line 72
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    iget v4, v0, Lorg/maplibre/android/gestures/MultiFingerDistancesObject;->currFingersDiffY:F

    .line 77
    .line 78
    iget v0, v0, Lorg/maplibre/android/gestures/MultiFingerDistancesObject;->prevFingersDiffY:F

    .line 79
    .line 80
    sub-float/2addr v4, v0

    .line 81
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    iget v4, p0, Lorg/maplibre/android/gestures/MultiFingerTapGestureDetector;->multiFingerTapMovementThreshold:F

    .line 86
    .line 87
    cmpl-float v3, v3, v4

    .line 88
    .line 89
    if-gtz v3, :cond_7

    .line 90
    .line 91
    cmpl-float v0, v0, v4

    .line 92
    .line 93
    if-lez v0, :cond_6

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_6
    move v0, v1

    .line 97
    goto :goto_2

    .line 98
    :cond_7
    :goto_1
    move v0, v2

    .line 99
    :goto_2
    iput-boolean v0, p0, Lorg/maplibre/android/gestures/MultiFingerTapGestureDetector;->invalidMovement:Z

    .line 100
    .line 101
    if-eqz v0, :cond_5

    .line 102
    .line 103
    goto :goto_3

    .line 104
    :cond_8
    move v2, v1

    .line 105
    :goto_3
    iput-boolean v2, p0, Lorg/maplibre/android/gestures/MultiFingerTapGestureDetector;->invalidMovement:Z

    .line 106
    .line 107
    return v1

    .line 108
    :cond_9
    const/4 p1, 0x4

    .line 109
    invoke-virtual {p0, p1}, Lorg/maplibre/android/gestures/MultiFingerTapGestureDetector;->canExecute(I)Z

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    if-eqz p1, :cond_c

    .line 114
    .line 115
    iget-object p1, p0, Lorg/maplibre/android/gestures/BaseGesture;->listener:Ljava/lang/Object;

    .line 116
    .line 117
    check-cast p1, Lorg/maplibre/android/maps/MapGestureDetector$TapGestureListener;

    .line 118
    .line 119
    iget v3, p0, Lorg/maplibre/android/gestures/MultiFingerTapGestureDetector;->lastPointersDownCount:I

    .line 120
    .line 121
    iget-object p1, p1, Lorg/maplibre/android/maps/MapGestureDetector$TapGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    .line 122
    .line 123
    iget-object v4, p1, Lorg/maplibre/android/maps/MapGestureDetector;->uiSettings:Lorg/maplibre/android/maps/UiSettings;

    .line 124
    .line 125
    iget-boolean v4, v4, Lorg/maplibre/android/maps/UiSettings;->zoomGesturesEnabled:Z

    .line 126
    .line 127
    if-eqz v4, :cond_c

    .line 128
    .line 129
    if-eq v3, v0, :cond_a

    .line 130
    .line 131
    goto :goto_5

    .line 132
    :cond_a
    iget-object v0, p1, Lorg/maplibre/android/maps/MapGestureDetector;->transform:Lorg/maplibre/android/maps/Transform;

    .line 133
    .line 134
    invoke-virtual {v0}, Lorg/maplibre/android/maps/Transform;->cancelTransitions()V

    .line 135
    .line 136
    .line 137
    iget-object v0, p1, Lorg/maplibre/android/maps/MapGestureDetector;->cameraChangeDispatcher:Lorg/maplibre/android/maps/CameraChangeDispatcher;

    .line 138
    .line 139
    invoke-virtual {v0, v2}, Lorg/maplibre/android/maps/CameraChangeDispatcher;->onCameraMoveStarted(I)V

    .line 140
    .line 141
    .line 142
    iget-object v0, p1, Lorg/maplibre/android/maps/MapGestureDetector;->constantFocalPoint:Landroid/graphics/PointF;

    .line 143
    .line 144
    if-eqz v0, :cond_b

    .line 145
    .line 146
    goto :goto_4

    .line 147
    :cond_b
    iget-object v0, p0, Lorg/maplibre/android/gestures/MultiFingerGesture;->focalPoint:Landroid/graphics/PointF;

    .line 148
    .line 149
    :goto_4
    invoke-virtual {p1, v1, v0, v1}, Lorg/maplibre/android/maps/MapGestureDetector;->zoomAnimated(ZLandroid/graphics/PointF;Z)V

    .line 150
    .line 151
    .line 152
    move v1, v2

    .line 153
    :cond_c
    :goto_5
    invoke-virtual {p0}, Lorg/maplibre/android/gestures/MultiFingerTapGestureDetector;->reset()V

    .line 154
    .line 155
    .line 156
    return v1
.end method

.method public final canExecute(I)Z
    .locals 5

    .line 1
    iget p1, p0, Lorg/maplibre/android/gestures/MultiFingerTapGestureDetector;->lastPointersDownCount:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-le p1, v0, :cond_0

    .line 5
    .line 6
    iget-boolean p1, p0, Lorg/maplibre/android/gestures/MultiFingerTapGestureDetector;->invalidMovement:Z

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    iget-wide v1, p0, Lorg/maplibre/android/gestures/BaseGesture;->gestureDuration:J

    .line 11
    .line 12
    iget-wide v3, p0, Lorg/maplibre/android/gestures/MultiFingerTapGestureDetector;->multiFingerTapTimeThreshold:J

    .line 13
    .line 14
    cmp-long p1, v1, v3

    .line 15
    .line 16
    if-gez p1, :cond_0

    .line 17
    .line 18
    const/4 p1, 0x4

    .line 19
    invoke-super {p0, p1}, Lorg/maplibre/android/gestures/MultiFingerGesture;->canExecute(I)Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    if-eqz p0, :cond_0

    .line 24
    .line 25
    return v0

    .line 26
    :cond_0
    const/4 p0, 0x0

    .line 27
    return p0
.end method

.method public final reset()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/maplibre/android/gestures/MultiFingerTapGestureDetector;->lastPointersDownCount:I

    .line 3
    .line 4
    iput-boolean v0, p0, Lorg/maplibre/android/gestures/MultiFingerTapGestureDetector;->invalidMovement:Z

    .line 5
    .line 6
    iput-boolean v0, p0, Lorg/maplibre/android/gestures/MultiFingerTapGestureDetector;->pointerLifted:Z

    .line 7
    .line 8
    return-void
.end method
