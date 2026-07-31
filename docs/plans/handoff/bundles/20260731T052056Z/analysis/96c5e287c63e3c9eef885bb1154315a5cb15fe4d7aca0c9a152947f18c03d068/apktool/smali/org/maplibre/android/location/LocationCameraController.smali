.class public final Lorg/maplibre/android/location/LocationCameraController;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public cameraMode:I

.field public final compassBearingValueListener:Lorg/maplibre/android/location/LocationCameraController$2;

.field public final gpsBearingValueListener:Lorg/maplibre/android/location/LocationCameraController$2;

.field public final initialGesturesManager:Lorg/wikipedia/databinding/FragmentNewsBinding;

.field public final internalCameraTrackingChangedListener:Lorg/maplibre/android/location/LocationComponent$8;

.field public final internalGesturesManager:Lorg/maplibre/android/location/LocationCameraController$LocationGesturesManager;

.field public isEnabled:Z

.field public isTransitioning:Z

.field public lastLocation:Lorg/maplibre/android/geometry/LatLng;

.field public final latLngValueListener:Lorg/maplibre/android/location/LocationCameraController$2;

.field public final maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

.field public final moveGestureDetector:Lorg/maplibre/android/gestures/MoveGestureDetector;

.field public final onCameraMoveInvalidateListener:Lorg/maplibre/android/location/LocationComponent$6;

.field public options:Lorg/maplibre/android/location/LocationComponentOptions;

.field public final paddingValueListener:Lorg/maplibre/android/location/LocationCameraController$$ExternalSyntheticLambda0;

.field public final tiltValueListener:Lorg/maplibre/android/location/LocationCameraController$$ExternalSyntheticLambda0;

.field public final transform:Lorg/maplibre/android/maps/Transform;

.field public final zoomValueListener:Lorg/maplibre/android/location/LocationCameraController$$ExternalSyntheticLambda0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/maplibre/android/maps/MapLibreMap;Lorg/maplibre/android/maps/Transform;Lorg/maplibre/android/location/LocationComponent$8;Lorg/maplibre/android/location/LocationComponentOptions;Lorg/maplibre/android/location/LocationComponent$6;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/maplibre/android/location/LocationCameraController$2;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p0, v1}, Lorg/maplibre/android/location/LocationCameraController$2;-><init>(Lorg/maplibre/android/location/LocationCameraController;I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lorg/maplibre/android/location/LocationCameraController;->latLngValueListener:Lorg/maplibre/android/location/LocationCameraController$2;

    .line 11
    .line 12
    new-instance v0, Lorg/maplibre/android/location/LocationCameraController$2;

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    invoke-direct {v0, p0, v2}, Lorg/maplibre/android/location/LocationCameraController$2;-><init>(Lorg/maplibre/android/location/LocationCameraController;I)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lorg/maplibre/android/location/LocationCameraController;->gpsBearingValueListener:Lorg/maplibre/android/location/LocationCameraController$2;

    .line 19
    .line 20
    new-instance v0, Lorg/maplibre/android/location/LocationCameraController$2;

    .line 21
    .line 22
    const/4 v3, 0x2

    .line 23
    invoke-direct {v0, p0, v3}, Lorg/maplibre/android/location/LocationCameraController$2;-><init>(Lorg/maplibre/android/location/LocationCameraController;I)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lorg/maplibre/android/location/LocationCameraController;->compassBearingValueListener:Lorg/maplibre/android/location/LocationCameraController$2;

    .line 27
    .line 28
    new-instance v0, Lorg/maplibre/android/location/LocationCameraController$$ExternalSyntheticLambda0;

    .line 29
    .line 30
    invoke-direct {v0, p0, v1}, Lorg/maplibre/android/location/LocationCameraController$$ExternalSyntheticLambda0;-><init>(Lorg/maplibre/android/location/LocationCameraController;I)V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lorg/maplibre/android/location/LocationCameraController;->zoomValueListener:Lorg/maplibre/android/location/LocationCameraController$$ExternalSyntheticLambda0;

    .line 34
    .line 35
    new-instance v0, Lorg/maplibre/android/location/LocationCameraController$$ExternalSyntheticLambda0;

    .line 36
    .line 37
    invoke-direct {v0, p0, v2}, Lorg/maplibre/android/location/LocationCameraController$$ExternalSyntheticLambda0;-><init>(Lorg/maplibre/android/location/LocationCameraController;I)V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Lorg/maplibre/android/location/LocationCameraController;->paddingValueListener:Lorg/maplibre/android/location/LocationCameraController$$ExternalSyntheticLambda0;

    .line 41
    .line 42
    new-instance v0, Lorg/maplibre/android/location/LocationCameraController$$ExternalSyntheticLambda0;

    .line 43
    .line 44
    invoke-direct {v0, p0, v3}, Lorg/maplibre/android/location/LocationCameraController$$ExternalSyntheticLambda0;-><init>(Lorg/maplibre/android/location/LocationCameraController;I)V

    .line 45
    .line 46
    .line 47
    iput-object v0, p0, Lorg/maplibre/android/location/LocationCameraController;->tiltValueListener:Lorg/maplibre/android/location/LocationCameraController$$ExternalSyntheticLambda0;

    .line 48
    .line 49
    new-instance v0, Lorg/maplibre/android/location/LocationComponent$1;

    .line 50
    .line 51
    invoke-direct {v0, v2, p0}, Lorg/maplibre/android/location/LocationComponent$1;-><init>(ILjava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    new-instance v1, Lorg/maplibre/android/location/LocationCameraController$6;

    .line 55
    .line 56
    invoke-direct {v1, p0}, Lorg/maplibre/android/location/LocationCameraController$6;-><init>(Lorg/maplibre/android/location/LocationCameraController;)V

    .line 57
    .line 58
    .line 59
    new-instance v2, Lorg/maplibre/android/location/LocationCameraController$7;

    .line 60
    .line 61
    invoke-direct {v2, p0}, Lorg/maplibre/android/location/LocationCameraController$7;-><init>(Lorg/maplibre/android/location/LocationCameraController;)V

    .line 62
    .line 63
    .line 64
    new-instance v3, Lorg/maplibre/android/location/LocationCameraController$8;

    .line 65
    .line 66
    invoke-direct {v3, p0}, Lorg/maplibre/android/location/LocationCameraController$8;-><init>(Lorg/maplibre/android/location/LocationCameraController;)V

    .line 67
    .line 68
    .line 69
    iput-object p2, p0, Lorg/maplibre/android/location/LocationCameraController;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    .line 70
    .line 71
    iput-object p3, p0, Lorg/maplibre/android/location/LocationCameraController;->transform:Lorg/maplibre/android/maps/Transform;

    .line 72
    .line 73
    iget-object p3, p2, Lorg/maplibre/android/maps/MapLibreMap;->onGesturesManagerInteractionListener:Lorg/maplibre/android/maps/IconManager;

    .line 74
    .line 75
    iget-object p3, p3, Lorg/maplibre/android/maps/IconManager;->iconMap:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast p3, Lorg/maplibre/android/maps/MapView;

    .line 78
    .line 79
    iget-object p3, p3, Lorg/maplibre/android/maps/MapView;->mapGestureDetector:Lorg/maplibre/android/maps/MapGestureDetector;

    .line 80
    .line 81
    iget-object p3, p3, Lorg/maplibre/android/maps/MapGestureDetector;->gesturesManager:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 82
    .line 83
    iput-object p3, p0, Lorg/maplibre/android/location/LocationCameraController;->initialGesturesManager:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 84
    .line 85
    new-instance p3, Lorg/maplibre/android/location/LocationCameraController$LocationGesturesManager;

    .line 86
    .line 87
    invoke-direct {p3, p0, p1}, Lorg/maplibre/android/location/LocationCameraController$LocationGesturesManager;-><init>(Lorg/maplibre/android/location/LocationCameraController;Landroid/content/Context;)V

    .line 88
    .line 89
    .line 90
    iput-object p3, p0, Lorg/maplibre/android/location/LocationCameraController;->internalGesturesManager:Lorg/maplibre/android/location/LocationCameraController$LocationGesturesManager;

    .line 91
    .line 92
    iget-object p1, p3, Lorg/wikipedia/databinding/FragmentNewsBinding;->toolbarContainer:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast p1, Lorg/maplibre/android/gestures/MoveGestureDetector;

    .line 95
    .line 96
    iput-object p1, p0, Lorg/maplibre/android/location/LocationCameraController;->moveGestureDetector:Lorg/maplibre/android/gestures/MoveGestureDetector;

    .line 97
    .line 98
    iget-object p1, p2, Lorg/maplibre/android/maps/MapLibreMap;->onGesturesManagerInteractionListener:Lorg/maplibre/android/maps/IconManager;

    .line 99
    .line 100
    iget-object p3, p1, Lorg/maplibre/android/maps/IconManager;->iconMap:Ljava/lang/Object;

    .line 101
    .line 102
    check-cast p3, Lorg/maplibre/android/maps/MapView;

    .line 103
    .line 104
    iget-object p3, p3, Lorg/maplibre/android/maps/MapView;->mapGestureDetector:Lorg/maplibre/android/maps/MapGestureDetector;

    .line 105
    .line 106
    iget-object p3, p3, Lorg/maplibre/android/maps/MapGestureDetector;->onRotateListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 107
    .line 108
    invoke-virtual {p3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    iget-object p1, p1, Lorg/maplibre/android/maps/IconManager;->iconMap:Ljava/lang/Object;

    .line 112
    .line 113
    check-cast p1, Lorg/maplibre/android/maps/MapView;

    .line 114
    .line 115
    iget-object p3, p1, Lorg/maplibre/android/maps/MapView;->mapGestureDetector:Lorg/maplibre/android/maps/MapGestureDetector;

    .line 116
    .line 117
    iget-object p3, p3, Lorg/maplibre/android/maps/MapGestureDetector;->onFlingListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 118
    .line 119
    invoke-virtual {p3, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    iget-object p1, p1, Lorg/maplibre/android/maps/MapView;->mapGestureDetector:Lorg/maplibre/android/maps/MapGestureDetector;

    .line 123
    .line 124
    iget-object p1, p1, Lorg/maplibre/android/maps/MapGestureDetector;->onMoveListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 125
    .line 126
    invoke-virtual {p1, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    iget-object p1, p2, Lorg/maplibre/android/maps/MapLibreMap;->cameraChangeDispatcher:Lorg/maplibre/android/maps/CameraChangeDispatcher;

    .line 130
    .line 131
    iget-object p1, p1, Lorg/maplibre/android/maps/CameraChangeDispatcher;->onCameraMove:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 132
    .line 133
    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    iput-object p4, p0, Lorg/maplibre/android/location/LocationCameraController;->internalCameraTrackingChangedListener:Lorg/maplibre/android/location/LocationComponent$8;

    .line 137
    .line 138
    iput-object p6, p0, Lorg/maplibre/android/location/LocationCameraController;->onCameraMoveInvalidateListener:Lorg/maplibre/android/location/LocationComponent$6;

    .line 139
    .line 140
    invoke-virtual {p0, p5}, Lorg/maplibre/android/location/LocationCameraController;->initializeOptions(Lorg/maplibre/android/location/LocationComponentOptions;)V

    .line 141
    .line 142
    .line 143
    return-void
.end method


# virtual methods
.method public final adjustGesturesThresholds()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/maplibre/android/location/LocationCameraController;->options:Lorg/maplibre/android/location/LocationComponentOptions;

    .line 2
    .line 3
    iget-boolean v0, v0, Lorg/maplibre/android/location/LocationComponentOptions;->trackingGesturesManagement:Z

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/maplibre/android/location/LocationCameraController;->isLocationTracking()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object v1, p0, Lorg/maplibre/android/location/LocationCameraController;->moveGestureDetector:Lorg/maplibre/android/gestures/MoveGestureDetector;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object p0, p0, Lorg/maplibre/android/location/LocationCameraController;->options:Lorg/maplibre/android/location/LocationComponentOptions;

    .line 16
    .line 17
    iget p0, p0, Lorg/maplibre/android/location/LocationComponentOptions;->trackingInitialMoveThreshold:F

    .line 18
    .line 19
    iput p0, v1, Lorg/maplibre/android/gestures/MoveGestureDetector;->moveThreshold:F

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    iget-object p0, p0, Lorg/maplibre/android/location/LocationCameraController;->initialGesturesManager:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 23
    .line 24
    iget-object p0, p0, Lorg/wikipedia/databinding/FragmentNewsBinding;->toolbarContainer:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p0, Lorg/maplibre/android/gestures/MoveGestureDetector;

    .line 27
    .line 28
    iget p0, p0, Lorg/maplibre/android/gestures/MoveGestureDetector;->moveThreshold:F

    .line 29
    .line 30
    iput p0, v1, Lorg/maplibre/android/gestures/MoveGestureDetector;->moveThreshold:F

    .line 31
    .line 32
    const/4 p0, 0x0

    .line 33
    iput-object p0, v1, Lorg/maplibre/android/gestures/MoveGestureDetector;->moveThresholdRect:Landroid/graphics/RectF;

    .line 34
    .line 35
    :cond_1
    return-void
.end method

.method public final initializeOptions(Lorg/maplibre/android/location/LocationComponentOptions;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lorg/maplibre/android/location/LocationCameraController;->options:Lorg/maplibre/android/location/LocationComponentOptions;

    .line 2
    .line 3
    iget-boolean p1, p1, Lorg/maplibre/android/location/LocationComponentOptions;->trackingGesturesManagement:Z

    .line 4
    .line 5
    iget-object v0, p0, Lorg/maplibre/android/location/LocationCameraController;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    .line 6
    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    iget-object p1, v0, Lorg/maplibre/android/maps/MapLibreMap;->onGesturesManagerInteractionListener:Lorg/maplibre/android/maps/IconManager;

    .line 10
    .line 11
    iget-object p1, p1, Lorg/maplibre/android/maps/IconManager;->iconMap:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p1, Lorg/maplibre/android/maps/MapView;

    .line 14
    .line 15
    iget-object v0, p1, Lorg/maplibre/android/maps/MapView;->mapGestureDetector:Lorg/maplibre/android/maps/MapGestureDetector;

    .line 16
    .line 17
    iget-object v1, v0, Lorg/maplibre/android/maps/MapGestureDetector;->gesturesManager:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 18
    .line 19
    iget-object v2, p0, Lorg/maplibre/android/location/LocationCameraController;->internalGesturesManager:Lorg/maplibre/android/location/LocationCameraController$LocationGesturesManager;

    .line 20
    .line 21
    if-eq v1, v2, :cond_0

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {v0, v2}, Lorg/maplibre/android/maps/MapGestureDetector;->initializeGesturesManager(Lorg/wikipedia/databinding/FragmentNewsBinding;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p1}, Lorg/maplibre/android/maps/MapGestureDetector;->initializeGestureListeners(Landroid/content/Context;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-virtual {p0}, Lorg/maplibre/android/location/LocationCameraController;->adjustGesturesThresholds()V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_1
    iget-object p1, v0, Lorg/maplibre/android/maps/MapLibreMap;->onGesturesManagerInteractionListener:Lorg/maplibre/android/maps/IconManager;

    .line 38
    .line 39
    iget-object p1, p1, Lorg/maplibre/android/maps/IconManager;->iconMap:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast p1, Lorg/maplibre/android/maps/MapView;

    .line 42
    .line 43
    iget-object v0, p1, Lorg/maplibre/android/maps/MapView;->mapGestureDetector:Lorg/maplibre/android/maps/MapGestureDetector;

    .line 44
    .line 45
    iget-object v1, v0, Lorg/maplibre/android/maps/MapGestureDetector;->gesturesManager:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 46
    .line 47
    iget-object p0, p0, Lorg/maplibre/android/location/LocationCameraController;->initialGesturesManager:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 48
    .line 49
    if-eq v1, p0, :cond_2

    .line 50
    .line 51
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {v0, p0}, Lorg/maplibre/android/maps/MapGestureDetector;->initializeGesturesManager(Lorg/wikipedia/databinding/FragmentNewsBinding;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, p1}, Lorg/maplibre/android/maps/MapGestureDetector;->initializeGestureListeners(Landroid/content/Context;)V

    .line 59
    .line 60
    .line 61
    :cond_2
    return-void
.end method

.method public final isBearingTracking()Z
    .locals 1

    .line 1
    iget p0, p0, Lorg/maplibre/android/location/LocationCameraController;->cameraMode:I

    .line 2
    .line 3
    const/16 v0, 0x10

    .line 4
    .line 5
    if-eq p0, v0, :cond_1

    .line 6
    .line 7
    const/16 v0, 0x20

    .line 8
    .line 9
    if-eq p0, v0, :cond_1

    .line 10
    .line 11
    const/16 v0, 0x16

    .line 12
    .line 13
    if-eq p0, v0, :cond_1

    .line 14
    .line 15
    const/16 v0, 0x22

    .line 16
    .line 17
    if-eq p0, v0, :cond_1

    .line 18
    .line 19
    const/16 v0, 0x24

    .line 20
    .line 21
    if-ne p0, v0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    return p0

    .line 26
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 27
    return p0
.end method

.method public final isLocationTracking()Z
    .locals 1

    .line 1
    iget p0, p0, Lorg/maplibre/android/location/LocationCameraController;->cameraMode:I

    .line 2
    .line 3
    const/16 v0, 0x18

    .line 4
    .line 5
    if-eq p0, v0, :cond_1

    .line 6
    .line 7
    const/16 v0, 0x20

    .line 8
    .line 9
    if-eq p0, v0, :cond_1

    .line 10
    .line 11
    const/16 v0, 0x22

    .line 12
    .line 13
    if-eq p0, v0, :cond_1

    .line 14
    .line 15
    const/16 v0, 0x24

    .line 16
    .line 17
    if-ne p0, v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    return p0

    .line 22
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 23
    return p0
.end method

.method public final setBearing(F)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-boolean v1, v0, Lorg/maplibre/android/location/LocationCameraController;->isTransitioning:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    move/from16 v1, p1

    .line 9
    .line 10
    float-to-double v3, v1

    .line 11
    new-instance v1, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;

    .line 12
    .line 13
    const-wide/high16 v13, -0x4010000000000000L    # -1.0

    .line 14
    .line 15
    const/4 v15, 0x0

    .line 16
    const/4 v2, 0x0

    .line 17
    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    .line 18
    .line 19
    const-wide/high16 v7, -0x4010000000000000L    # -1.0

    .line 20
    .line 21
    const-wide/high16 v9, -0x4010000000000000L    # -1.0

    .line 22
    .line 23
    const-wide/high16 v11, -0x4010000000000000L    # -1.0

    .line 24
    .line 25
    invoke-direct/range {v1 .. v15}, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;-><init>(Lorg/maplibre/android/geometry/LatLng;DDDDDD[D)V

    .line 26
    .line 27
    .line 28
    iget-object v3, v0, Lorg/maplibre/android/location/LocationCameraController;->transform:Lorg/maplibre/android/maps/Transform;

    .line 29
    .line 30
    iget-object v4, v0, Lorg/maplibre/android/location/LocationCameraController;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    .line 31
    .line 32
    invoke-virtual {v3, v4, v1, v2}, Lorg/maplibre/android/maps/Transform;->moveCamera(Lorg/maplibre/android/maps/MapLibreMap;Lorg/maplibre/android/camera/CameraUpdate;Lorg/maplibre/android/maps/MapLibreMap$CancelableCallback;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, v0, Lorg/maplibre/android/location/LocationCameraController;->onCameraMoveInvalidateListener:Lorg/maplibre/android/location/LocationComponent$6;

    .line 36
    .line 37
    iget-object v0, v0, Lorg/maplibre/android/location/LocationComponent$6;->this$0:Lorg/maplibre/android/location/LocationComponent;

    .line 38
    .line 39
    iget-object v0, v0, Lorg/maplibre/android/location/LocationComponent;->onCameraMoveListener:Lorg/maplibre/android/location/LocationComponent$1;

    .line 40
    .line 41
    invoke-virtual {v0}, Lorg/maplibre/android/location/LocationComponent$1;->onCameraMove()V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public final setCameraMode(ILandroid/location/Location;Lorg/maplibre/android/location/LocationComponent$6;)V
    .locals 12

    .line 1
    iget v0, p0, Lorg/maplibre/android/location/LocationCameraController;->cameraMode:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    if-eqz p3, :cond_a

    .line 6
    .line 7
    invoke-virtual {p3, p1}, Lorg/maplibre/android/location/LocationComponent$6;->onLocationCameraTransitionFinished(I)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-virtual {p0}, Lorg/maplibre/android/location/LocationCameraController;->isLocationTracking()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iput p1, p0, Lorg/maplibre/android/location/LocationCameraController;->cameraMode:I

    .line 16
    .line 17
    const/16 v1, 0x8

    .line 18
    .line 19
    iget-object v2, p0, Lorg/maplibre/android/location/LocationCameraController;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    .line 20
    .line 21
    if-eq p1, v1, :cond_1

    .line 22
    .line 23
    iget-object p1, v2, Lorg/maplibre/android/maps/MapLibreMap;->transform:Lorg/maplibre/android/maps/Transform;

    .line 24
    .line 25
    invoke-virtual {p1}, Lorg/maplibre/android/maps/Transform;->cancelTransitions()V

    .line 26
    .line 27
    .line 28
    :cond_1
    invoke-virtual {p0}, Lorg/maplibre/android/location/LocationCameraController;->adjustGesturesThresholds()V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lorg/maplibre/android/location/LocationCameraController;->internalCameraTrackingChangedListener:Lorg/maplibre/android/location/LocationComponent$8;

    .line 32
    .line 33
    invoke-virtual {p1}, Lorg/maplibre/android/location/LocationComponent$8;->onCameraTrackingChanged()V

    .line 34
    .line 35
    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    invoke-virtual {p0}, Lorg/maplibre/android/location/LocationCameraController;->isLocationTracking()Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-nez v1, :cond_2

    .line 43
    .line 44
    iget-object v1, v2, Lorg/maplibre/android/maps/MapLibreMap;->uiSettings:Lorg/maplibre/android/maps/UiSettings;

    .line 45
    .line 46
    const/4 v3, 0x0

    .line 47
    iput-object v3, v1, Lorg/maplibre/android/maps/UiSettings;->userProvidedFocalPoint:Landroid/graphics/PointF;

    .line 48
    .line 49
    iget-object v1, v1, Lorg/maplibre/android/maps/UiSettings;->focalPointChangeListener:Lorg/maplibre/android/maps/FocalPointChangeListener;

    .line 50
    .line 51
    invoke-interface {v1, v3}, Lorg/maplibre/android/maps/FocalPointChangeListener;->onFocalPointChanged(Landroid/graphics/PointF;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Lorg/maplibre/android/location/LocationComponent$8;->onCameraTrackingDismissed()V

    .line 55
    .line 56
    .line 57
    :cond_2
    if-nez v0, :cond_9

    .line 58
    .line 59
    invoke-virtual {p0}, Lorg/maplibre/android/location/LocationCameraController;->isLocationTracking()Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-eqz p1, :cond_9

    .line 64
    .line 65
    if-eqz p2, :cond_9

    .line 66
    .line 67
    iget-boolean p1, p0, Lorg/maplibre/android/location/LocationCameraController;->isEnabled:Z

    .line 68
    .line 69
    if-eqz p1, :cond_9

    .line 70
    .line 71
    const/4 p1, 0x1

    .line 72
    iput-boolean p1, p0, Lorg/maplibre/android/location/LocationCameraController;->isTransitioning:Z

    .line 73
    .line 74
    new-instance v4, Lorg/maplibre/android/geometry/LatLng;

    .line 75
    .line 76
    invoke-direct {v4, p2}, Lorg/maplibre/android/geometry/LatLng;-><init>(Landroid/location/Location;)V

    .line 77
    .line 78
    .line 79
    iget p1, p0, Lorg/maplibre/android/location/LocationCameraController;->cameraMode:I

    .line 80
    .line 81
    const/16 v0, 0x22

    .line 82
    .line 83
    const/16 v1, 0x24

    .line 84
    .line 85
    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    .line 86
    .line 87
    if-eq p1, v0, :cond_4

    .line 88
    .line 89
    if-eq p1, v1, :cond_4

    .line 90
    .line 91
    const/16 v0, 0x16

    .line 92
    .line 93
    if-ne p1, v0, :cond_3

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_3
    move-wide v9, v5

    .line 97
    goto :goto_3

    .line 98
    :cond_4
    :goto_0
    const-wide/16 v7, 0x0

    .line 99
    .line 100
    if-ne p1, v1, :cond_5

    .line 101
    .line 102
    move-wide p1, v7

    .line 103
    goto :goto_1

    .line 104
    :cond_5
    invoke-virtual {p2}, Landroid/location/Location;->getBearing()F

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    float-to-double p1, p1

    .line 109
    :goto_1
    const-wide v0, 0x4076800000000000L    # 360.0

    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    cmpl-double v3, p1, v0

    .line 115
    .line 116
    if-ltz v3, :cond_6

    .line 117
    .line 118
    sub-double/2addr p1, v0

    .line 119
    goto :goto_1

    .line 120
    :cond_6
    :goto_2
    cmpg-double v3, p1, v7

    .line 121
    .line 122
    if-gez v3, :cond_7

    .line 123
    .line 124
    add-double/2addr p1, v0

    .line 125
    goto :goto_2

    .line 126
    :cond_7
    move-wide v9, p1

    .line 127
    :goto_3
    new-instance v3, Lorg/maplibre/android/camera/CameraPosition;

    .line 128
    .line 129
    const/4 v11, 0x0

    .line 130
    move-wide v7, v5

    .line 131
    invoke-direct/range {v3 .. v11}, Lorg/maplibre/android/camera/CameraPosition;-><init>(Lorg/maplibre/android/geometry/LatLng;DDD[D)V

    .line 132
    .line 133
    .line 134
    invoke-static {v3}, Lorg/wikipedia/util/TabUtil;->newCameraPosition(Lorg/maplibre/android/camera/CameraPosition;)Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    new-instance p2, Lokhttp3/FormBody$Builder;

    .line 139
    .line 140
    const/16 v0, 0x1a

    .line 141
    .line 142
    invoke-direct {p2, v0, p0, p3}, Lokhttp3/FormBody$Builder;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    iget-object p3, v2, Lorg/maplibre/android/maps/MapLibreMap;->transform:Lorg/maplibre/android/maps/Transform;

    .line 146
    .line 147
    invoke-virtual {p3}, Lorg/maplibre/android/maps/Transform;->getCameraPosition()Lorg/maplibre/android/camera/CameraPosition;

    .line 148
    .line 149
    .line 150
    move-result-object p3

    .line 151
    iget-object v0, v2, Lorg/maplibre/android/maps/MapLibreMap;->projection:Lorg/maplibre/android/maps/MapView$2;

    .line 152
    .line 153
    iget-object p3, p3, Lorg/maplibre/android/camera/CameraPosition;->target:Lorg/maplibre/android/geometry/LatLng;

    .line 154
    .line 155
    invoke-static {v0, p3, v4}, Lorg/wikipedia/util/UriUtil;->immediateAnimation(Lorg/maplibre/android/maps/MapView$2;Lorg/maplibre/android/geometry/LatLng;Lorg/maplibre/android/geometry/LatLng;)Z

    .line 156
    .line 157
    .line 158
    move-result p3

    .line 159
    iget-object p0, p0, Lorg/maplibre/android/location/LocationCameraController;->transform:Lorg/maplibre/android/maps/Transform;

    .line 160
    .line 161
    if-eqz p3, :cond_8

    .line 162
    .line 163
    invoke-virtual {p0, v2, p1, p2}, Lorg/maplibre/android/maps/Transform;->moveCamera(Lorg/maplibre/android/maps/MapLibreMap;Lorg/maplibre/android/camera/CameraUpdate;Lorg/maplibre/android/maps/MapLibreMap$CancelableCallback;)V

    .line 164
    .line 165
    .line 166
    return-void

    .line 167
    :cond_8
    const/16 p3, 0x2ee

    .line 168
    .line 169
    invoke-virtual {p0, v2, p1, p3, p2}, Lorg/maplibre/android/maps/Transform;->animateCamera(Lorg/maplibre/android/maps/MapLibreMap;Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;ILokhttp3/FormBody$Builder;)V

    .line 170
    .line 171
    .line 172
    return-void

    .line 173
    :cond_9
    if-eqz p3, :cond_a

    .line 174
    .line 175
    iget p0, p0, Lorg/maplibre/android/location/LocationCameraController;->cameraMode:I

    .line 176
    .line 177
    invoke-virtual {p3, p0}, Lorg/maplibre/android/location/LocationComponent$6;->onLocationCameraTransitionFinished(I)V

    .line 178
    .line 179
    .line 180
    :cond_a
    return-void
.end method
