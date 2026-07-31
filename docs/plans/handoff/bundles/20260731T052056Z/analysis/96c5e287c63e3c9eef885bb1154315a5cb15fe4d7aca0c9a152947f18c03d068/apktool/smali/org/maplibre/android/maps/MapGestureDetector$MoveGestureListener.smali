.class public final Lorg/maplibre/android/maps/MapGestureDetector$MoveGestureListener;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lorg/maplibre/android/gestures/MoveGestureDetector$OnMoveGestureListener;


# instance fields
.field public final synthetic this$0:Lorg/maplibre/android/maps/MapGestureDetector;


# direct methods
.method public constructor <init>(Lorg/maplibre/android/maps/MapGestureDetector;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/maplibre/android/maps/MapGestureDetector$MoveGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onMove(Lorg/maplibre/android/gestures/MoveGestureDetector;FF)Z
    .locals 9

    .line 1
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_7

    .line 7
    .line 8
    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    cmpl-float v2, p2, v0

    .line 17
    .line 18
    if-nez v2, :cond_1

    .line 19
    .line 20
    cmpl-float v2, p3, v0

    .line 21
    .line 22
    if-eqz v2, :cond_6

    .line 23
    .line 24
    :cond_1
    iget-object p0, p0, Lorg/maplibre/android/maps/MapGestureDetector$MoveGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    .line 25
    .line 26
    iget-object v2, p0, Lorg/maplibre/android/maps/MapGestureDetector;->cameraChangeDispatcher:Lorg/maplibre/android/maps/CameraChangeDispatcher;

    .line 27
    .line 28
    invoke-virtual {v2, v1}, Lorg/maplibre/android/maps/CameraChangeDispatcher;->onCameraMoveStarted(I)V

    .line 29
    .line 30
    .line 31
    iget-object v2, p0, Lorg/maplibre/android/maps/MapGestureDetector;->uiSettings:Lorg/maplibre/android/maps/UiSettings;

    .line 32
    .line 33
    iget-boolean v2, v2, Lorg/maplibre/android/maps/UiSettings;->horizontalScrollGesturesEnabled:Z

    .line 34
    .line 35
    if-nez v2, :cond_2

    .line 36
    .line 37
    move p2, v0

    .line 38
    :cond_2
    iget-object v2, p0, Lorg/maplibre/android/maps/MapGestureDetector;->transform:Lorg/maplibre/android/maps/Transform;

    .line 39
    .line 40
    neg-float p2, p2

    .line 41
    float-to-double v3, p2

    .line 42
    neg-float p2, p3

    .line 43
    float-to-double v5, p2

    .line 44
    const-wide/16 v7, 0x0

    .line 45
    .line 46
    invoke-virtual/range {v2 .. v8}, Lorg/maplibre/android/maps/Transform;->moveBy(DDJ)V

    .line 47
    .line 48
    .line 49
    iget-object p0, p0, Lorg/maplibre/android/maps/MapGestureDetector;->onMoveListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 50
    .line 51
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    :cond_3
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result p2

    .line 59
    if-eqz p2, :cond_6

    .line 60
    .line 61
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    check-cast p2, Lorg/maplibre/android/location/LocationCameraController$6;

    .line 66
    .line 67
    iget-object p3, p2, Lorg/maplibre/android/location/LocationCameraController$6;->this$0:Lorg/maplibre/android/location/LocationCameraController;

    .line 68
    .line 69
    iget-boolean p2, p2, Lorg/maplibre/android/location/LocationCameraController$6;->interrupt:Z

    .line 70
    .line 71
    if-eqz p2, :cond_4

    .line 72
    .line 73
    iget-boolean p2, p1, Lorg/maplibre/android/gestures/ProgressiveGesture;->isInProgress:Z

    .line 74
    .line 75
    if-eqz p2, :cond_3

    .line 76
    .line 77
    iput-boolean v1, p1, Lorg/maplibre/android/gestures/ProgressiveGesture;->interrupted:Z

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_4
    invoke-virtual {p3}, Lorg/maplibre/android/location/LocationCameraController;->isLocationTracking()Z

    .line 81
    .line 82
    .line 83
    move-result p2

    .line 84
    if-nez p2, :cond_5

    .line 85
    .line 86
    invoke-virtual {p3}, Lorg/maplibre/android/location/LocationCameraController;->isBearingTracking()Z

    .line 87
    .line 88
    .line 89
    move-result p2

    .line 90
    if-eqz p2, :cond_3

    .line 91
    .line 92
    :cond_5
    const/16 p2, 0x8

    .line 93
    .line 94
    const/4 v0, 0x0

    .line 95
    invoke-virtual {p3, p2, v0, v0}, Lorg/maplibre/android/location/LocationCameraController;->setCameraMode(ILandroid/location/Location;Lorg/maplibre/android/location/LocationComponent$6;)V

    .line 96
    .line 97
    .line 98
    iget-boolean p2, p1, Lorg/maplibre/android/gestures/ProgressiveGesture;->isInProgress:Z

    .line 99
    .line 100
    if-eqz p2, :cond_3

    .line 101
    .line 102
    iput-boolean v1, p1, Lorg/maplibre/android/gestures/ProgressiveGesture;->interrupted:Z

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_6
    return v1

    .line 106
    :cond_7
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    const-string p1, "Could not call onMove with parameters "

    .line 109
    .line 110
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string p1, ","

    .line 117
    .line 118
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    const-string p1, "MapGestureDetector"

    .line 129
    .line 130
    invoke-static {p1, p0}, Lorg/maplibre/android/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    return v1
.end method

.method public final onMoveBegin(Lorg/maplibre/android/gestures/MoveGestureDetector;)Z
    .locals 5

    .line 1
    iget-object p0, p0, Lorg/maplibre/android/maps/MapGestureDetector$MoveGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    .line 2
    .line 3
    iget-object v0, p0, Lorg/maplibre/android/maps/MapGestureDetector;->uiSettings:Lorg/maplibre/android/maps/UiSettings;

    .line 4
    .line 5
    iget-boolean v0, v0, Lorg/maplibre/android/maps/UiSettings;->scrollGesturesEnabled:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return p0

    .line 11
    :cond_0
    invoke-virtual {p0}, Lorg/maplibre/android/maps/MapGestureDetector;->noGesturesInProgress()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lorg/maplibre/android/maps/MapGestureDetector;->transform:Lorg/maplibre/android/maps/Transform;

    .line 18
    .line 19
    invoke-virtual {v0}, Lorg/maplibre/android/maps/Transform;->cancelTransitions()V

    .line 20
    .line 21
    .line 22
    :cond_1
    iget-object p0, p0, Lorg/maplibre/android/maps/MapGestureDetector;->onMoveListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    const/4 v1, 0x1

    .line 33
    if-eqz v0, :cond_7

    .line 34
    .line 35
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Lorg/maplibre/android/location/LocationCameraController$6;

    .line 40
    .line 41
    iget-object v2, v0, Lorg/maplibre/android/location/LocationCameraController$6;->this$0:Lorg/maplibre/android/location/LocationCameraController;

    .line 42
    .line 43
    iget-object v3, v2, Lorg/maplibre/android/location/LocationCameraController;->options:Lorg/maplibre/android/location/LocationComponentOptions;

    .line 44
    .line 45
    iget-boolean v3, v3, Lorg/maplibre/android/location/LocationComponentOptions;->trackingGesturesManagement:Z

    .line 46
    .line 47
    if-eqz v3, :cond_6

    .line 48
    .line 49
    invoke-virtual {v2}, Lorg/maplibre/android/location/LocationCameraController;->isLocationTracking()Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-eqz v3, :cond_6

    .line 54
    .line 55
    iget-object v3, p1, Lorg/maplibre/android/gestures/MultiFingerGesture;->pointerIdList:Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-le v3, v1, :cond_5

    .line 62
    .line 63
    iget-object v3, p1, Lorg/maplibre/android/gestures/MoveGestureDetector;->moveThresholdRect:Landroid/graphics/RectF;

    .line 64
    .line 65
    if-eqz v3, :cond_3

    .line 66
    .line 67
    iget-object v4, v2, Lorg/maplibre/android/location/LocationCameraController;->options:Lorg/maplibre/android/location/LocationComponentOptions;

    .line 68
    .line 69
    iget-object v4, v4, Lorg/maplibre/android/location/LocationComponentOptions;->trackingMultiFingerProtectedMoveArea:Landroid/graphics/RectF;

    .line 70
    .line 71
    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    if-nez v4, :cond_3

    .line 76
    .line 77
    iget-object v3, v2, Lorg/maplibre/android/location/LocationCameraController;->options:Lorg/maplibre/android/location/LocationComponentOptions;

    .line 78
    .line 79
    iget-object v3, v3, Lorg/maplibre/android/location/LocationComponentOptions;->trackingMultiFingerProtectedMoveArea:Landroid/graphics/RectF;

    .line 80
    .line 81
    iput-object v3, p1, Lorg/maplibre/android/gestures/MoveGestureDetector;->moveThresholdRect:Landroid/graphics/RectF;

    .line 82
    .line 83
    iput-boolean v1, v0, Lorg/maplibre/android/location/LocationCameraController$6;->interrupt:Z

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_3
    if-nez v3, :cond_4

    .line 87
    .line 88
    iget-object v3, v2, Lorg/maplibre/android/location/LocationCameraController;->options:Lorg/maplibre/android/location/LocationComponentOptions;

    .line 89
    .line 90
    iget-object v3, v3, Lorg/maplibre/android/location/LocationComponentOptions;->trackingMultiFingerProtectedMoveArea:Landroid/graphics/RectF;

    .line 91
    .line 92
    if-eqz v3, :cond_4

    .line 93
    .line 94
    iput-object v3, p1, Lorg/maplibre/android/gestures/MoveGestureDetector;->moveThresholdRect:Landroid/graphics/RectF;

    .line 95
    .line 96
    iput-boolean v1, v0, Lorg/maplibre/android/location/LocationCameraController$6;->interrupt:Z

    .line 97
    .line 98
    :cond_4
    :goto_1
    iget v3, p1, Lorg/maplibre/android/gestures/MoveGestureDetector;->moveThreshold:F

    .line 99
    .line 100
    iget-object v2, v2, Lorg/maplibre/android/location/LocationCameraController;->options:Lorg/maplibre/android/location/LocationComponentOptions;

    .line 101
    .line 102
    iget v2, v2, Lorg/maplibre/android/location/LocationComponentOptions;->trackingMultiFingerMoveThreshold:F

    .line 103
    .line 104
    cmpl-float v3, v3, v2

    .line 105
    .line 106
    if-eqz v3, :cond_2

    .line 107
    .line 108
    iput v2, p1, Lorg/maplibre/android/gestures/MoveGestureDetector;->moveThreshold:F

    .line 109
    .line 110
    iput-boolean v1, v0, Lorg/maplibre/android/location/LocationCameraController$6;->interrupt:Z

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_5
    iget v3, p1, Lorg/maplibre/android/gestures/MoveGestureDetector;->moveThreshold:F

    .line 114
    .line 115
    iget-object v2, v2, Lorg/maplibre/android/location/LocationCameraController;->options:Lorg/maplibre/android/location/LocationComponentOptions;

    .line 116
    .line 117
    iget v2, v2, Lorg/maplibre/android/location/LocationComponentOptions;->trackingInitialMoveThreshold:F

    .line 118
    .line 119
    cmpl-float v3, v3, v2

    .line 120
    .line 121
    if-eqz v3, :cond_2

    .line 122
    .line 123
    iput v2, p1, Lorg/maplibre/android/gestures/MoveGestureDetector;->moveThreshold:F

    .line 124
    .line 125
    iput-boolean v1, v0, Lorg/maplibre/android/location/LocationCameraController$6;->interrupt:Z

    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_6
    const/16 v0, 0x8

    .line 129
    .line 130
    const/4 v1, 0x0

    .line 131
    invoke-virtual {v2, v0, v1, v1}, Lorg/maplibre/android/location/LocationCameraController;->setCameraMode(ILandroid/location/Location;Lorg/maplibre/android/location/LocationComponent$6;)V

    .line 132
    .line 133
    .line 134
    goto :goto_0

    .line 135
    :cond_7
    return v1
.end method

.method public final onMoveEnd(Lorg/maplibre/android/gestures/MoveGestureDetector;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lorg/maplibre/android/maps/MapGestureDetector$MoveGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/maplibre/android/maps/MapGestureDetector;->dispatchCameraIdle()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lorg/maplibre/android/maps/MapGestureDetector;->onMoveListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lorg/maplibre/android/location/LocationCameraController$6;

    .line 23
    .line 24
    iget-object v1, v0, Lorg/maplibre/android/location/LocationCameraController$6;->this$0:Lorg/maplibre/android/location/LocationCameraController;

    .line 25
    .line 26
    iget-object v2, v1, Lorg/maplibre/android/location/LocationCameraController;->options:Lorg/maplibre/android/location/LocationComponentOptions;

    .line 27
    .line 28
    iget-boolean v2, v2, Lorg/maplibre/android/location/LocationComponentOptions;->trackingGesturesManagement:Z

    .line 29
    .line 30
    if-eqz v2, :cond_0

    .line 31
    .line 32
    iget-boolean v2, v0, Lorg/maplibre/android/location/LocationCameraController$6;->interrupt:Z

    .line 33
    .line 34
    if-nez v2, :cond_0

    .line 35
    .line 36
    invoke-virtual {v1}, Lorg/maplibre/android/location/LocationCameraController;->isLocationTracking()Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_0

    .line 41
    .line 42
    iget-object v1, v1, Lorg/maplibre/android/location/LocationCameraController;->options:Lorg/maplibre/android/location/LocationComponentOptions;

    .line 43
    .line 44
    iget v1, v1, Lorg/maplibre/android/location/LocationComponentOptions;->trackingInitialMoveThreshold:F

    .line 45
    .line 46
    iput v1, p1, Lorg/maplibre/android/gestures/MoveGestureDetector;->moveThreshold:F

    .line 47
    .line 48
    const/4 v1, 0x0

    .line 49
    iput-object v1, p1, Lorg/maplibre/android/gestures/MoveGestureDetector;->moveThresholdRect:Landroid/graphics/RectF;

    .line 50
    .line 51
    :cond_0
    const/4 v1, 0x0

    .line 52
    iput-boolean v1, v0, Lorg/maplibre/android/location/LocationCameraController$6;->interrupt:Z

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    return-void
.end method
