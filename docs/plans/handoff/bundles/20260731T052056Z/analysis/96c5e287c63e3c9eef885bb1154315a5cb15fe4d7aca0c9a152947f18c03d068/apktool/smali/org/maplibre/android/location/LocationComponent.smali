.class public final Lorg/maplibre/android/location/LocationComponent;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final cameraTrackingChangedListener:Lorg/maplibre/android/location/LocationComponent$8;

.field public compassEngine:Lorg/maplibre/android/location/LocationComponentCompassEngine;

.field public final compassListener:Lorg/maplibre/android/location/LocationComponent$7;

.field public final currentLocationEngineListener:Landroidx/lifecycle/WeakReference;

.field public fastestInterval:J

.field public isComponentInitialized:Z

.field public isComponentStarted:Z

.field public isEnabled:Z

.field public isLayerReady:Z

.field public isListeningToCompass:Z

.field public lastCameraPosition:Lorg/maplibre/android/camera/CameraPosition;

.field public lastLocation:Landroid/location/Location;

.field public final lastLocationEngineListener:Landroidx/lifecycle/WeakReference;

.field public lastUpdateTime:J

.field public locationAnimatorCoordinator:Lorg/maplibre/android/location/LocationAnimatorCoordinator;

.field public locationCameraController:Lorg/maplibre/android/location/LocationCameraController;

.field public locationEngine:Lokhttp3/FormBody$Builder;

.field public final locationEngineRequest:Lorg/maplibre/android/location/engine/LocationEngineRequest;

.field public locationLayerController:Lorg/maplibre/android/location/LocationLayerController;

.field public final maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

.field public final onCameraIdleListener:Lorg/maplibre/android/location/LocationComponent$2;

.field public final onCameraMoveInvalidateListener:Lorg/maplibre/android/location/LocationComponent$6;

.field public final onCameraMoveListener:Lorg/maplibre/android/location/LocationComponent$1;

.field public final onCameraTrackingChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final onLocationClickListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final onLocationLongClickListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final onLocationStaleListener:Lorg/maplibre/android/location/LocationComponent$5;

.field public final onLocationStaleListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final onMapClickListener:Lorg/maplibre/android/location/LocationComponent$3;

.field public final onMapLongClickListener:Lorg/maplibre/android/location/LocationComponent$4;

.field public final onRenderModeChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public options:Lorg/maplibre/android/location/LocationComponentOptions;

.field public final renderModeChangedListener:Lorg/maplibre/android/location/LocationComponent$9;

.field public staleStateManager:Lorg/maplibre/android/location/StaleStateManager;

.field public final transform:Lorg/maplibre/android/maps/Transform;


# direct methods
.method public constructor <init>(Lorg/maplibre/android/maps/MapLibreMap;Lorg/maplibre/android/maps/Transform;Ljava/util/ArrayList;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/maplibre/android/location/engine/LocationEngineRequest$Builder;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    const-wide/16 v1, 0x3e8

    .line 10
    .line 11
    iput-wide v1, v0, Lorg/maplibre/android/location/engine/LocationEngineRequest$Builder;->fastestInterval:J

    .line 12
    .line 13
    new-instance v1, Lorg/maplibre/android/location/engine/LocationEngineRequest;

    .line 14
    .line 15
    invoke-direct {v1, v0}, Lorg/maplibre/android/location/engine/LocationEngineRequest;-><init>(Lorg/maplibre/android/location/engine/LocationEngineRequest$Builder;)V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lorg/maplibre/android/location/LocationComponent;->locationEngineRequest:Lorg/maplibre/android/location/engine/LocationEngineRequest;

    .line 19
    .line 20
    new-instance v0, Landroidx/lifecycle/WeakReference;

    .line 21
    .line 22
    const/4 v1, 0x2

    .line 23
    invoke-direct {v0, p0, v1}, Landroidx/lifecycle/WeakReference;-><init>(Lorg/maplibre/android/location/LocationComponent;I)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->currentLocationEngineListener:Landroidx/lifecycle/WeakReference;

    .line 27
    .line 28
    new-instance v0, Landroidx/lifecycle/WeakReference;

    .line 29
    .line 30
    const/4 v1, 0x3

    .line 31
    invoke-direct {v0, p0, v1}, Landroidx/lifecycle/WeakReference;-><init>(Lorg/maplibre/android/location/LocationComponent;I)V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->lastLocationEngineListener:Landroidx/lifecycle/WeakReference;

    .line 35
    .line 36
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 37
    .line 38
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->onLocationStaleListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 42
    .line 43
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 44
    .line 45
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->onLocationClickListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 49
    .line 50
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 51
    .line 52
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 53
    .line 54
    .line 55
    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->onLocationLongClickListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 56
    .line 57
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 58
    .line 59
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 60
    .line 61
    .line 62
    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->onCameraTrackingChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 63
    .line 64
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 65
    .line 66
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 67
    .line 68
    .line 69
    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->onRenderModeChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 70
    .line 71
    new-instance v0, Lorg/maplibre/android/location/LocationComponent$1;

    .line 72
    .line 73
    const/4 v1, 0x0

    .line 74
    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/location/LocationComponent$1;-><init>(ILjava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->onCameraMoveListener:Lorg/maplibre/android/location/LocationComponent$1;

    .line 78
    .line 79
    new-instance v0, Lorg/maplibre/android/location/LocationComponent$2;

    .line 80
    .line 81
    invoke-direct {v0, p0}, Lorg/maplibre/android/location/LocationComponent$2;-><init>(Lorg/maplibre/android/location/LocationComponent;)V

    .line 82
    .line 83
    .line 84
    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->onCameraIdleListener:Lorg/maplibre/android/location/LocationComponent$2;

    .line 85
    .line 86
    new-instance v0, Lorg/maplibre/android/location/LocationComponent$3;

    .line 87
    .line 88
    invoke-direct {v0, p0}, Lorg/maplibre/android/location/LocationComponent$3;-><init>(Lorg/maplibre/android/location/LocationComponent;)V

    .line 89
    .line 90
    .line 91
    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->onMapClickListener:Lorg/maplibre/android/location/LocationComponent$3;

    .line 92
    .line 93
    new-instance v0, Lorg/maplibre/android/location/LocationComponent$4;

    .line 94
    .line 95
    invoke-direct {v0, p0}, Lorg/maplibre/android/location/LocationComponent$4;-><init>(Lorg/maplibre/android/location/LocationComponent;)V

    .line 96
    .line 97
    .line 98
    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->onMapLongClickListener:Lorg/maplibre/android/location/LocationComponent$4;

    .line 99
    .line 100
    new-instance v0, Lorg/maplibre/android/location/LocationComponent$5;

    .line 101
    .line 102
    invoke-direct {v0, p0}, Lorg/maplibre/android/location/LocationComponent$5;-><init>(Lorg/maplibre/android/location/LocationComponent;)V

    .line 103
    .line 104
    .line 105
    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->onLocationStaleListener:Lorg/maplibre/android/location/LocationComponent$5;

    .line 106
    .line 107
    new-instance v0, Lorg/maplibre/android/location/LocationComponent$6;

    .line 108
    .line 109
    invoke-direct {v0, p0}, Lorg/maplibre/android/location/LocationComponent$6;-><init>(Lorg/maplibre/android/location/LocationComponent;)V

    .line 110
    .line 111
    .line 112
    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->onCameraMoveInvalidateListener:Lorg/maplibre/android/location/LocationComponent$6;

    .line 113
    .line 114
    new-instance v0, Lorg/maplibre/android/location/LocationComponent$7;

    .line 115
    .line 116
    invoke-direct {v0, p0}, Lorg/maplibre/android/location/LocationComponent$7;-><init>(Lorg/maplibre/android/location/LocationComponent;)V

    .line 117
    .line 118
    .line 119
    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->compassListener:Lorg/maplibre/android/location/LocationComponent$7;

    .line 120
    .line 121
    new-instance v0, Lorg/maplibre/android/location/LocationComponent$8;

    .line 122
    .line 123
    invoke-direct {v0, p0}, Lorg/maplibre/android/location/LocationComponent$8;-><init>(Lorg/maplibre/android/location/LocationComponent;)V

    .line 124
    .line 125
    .line 126
    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->cameraTrackingChangedListener:Lorg/maplibre/android/location/LocationComponent$8;

    .line 127
    .line 128
    new-instance v0, Lorg/maplibre/android/location/LocationComponent$9;

    .line 129
    .line 130
    invoke-direct {v0, p0}, Lorg/maplibre/android/location/LocationComponent$9;-><init>(Lorg/maplibre/android/location/LocationComponent;)V

    .line 131
    .line 132
    .line 133
    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->renderModeChangedListener:Lorg/maplibre/android/location/LocationComponent$9;

    .line 134
    .line 135
    new-instance v0, Lorg/maplibre/android/location/LocationComponent$10;

    .line 136
    .line 137
    invoke-direct {v0, p0}, Lorg/maplibre/android/location/LocationComponent$10;-><init>(Lorg/maplibre/android/location/LocationComponent;)V

    .line 138
    .line 139
    .line 140
    iput-object p1, p0, Lorg/maplibre/android/location/LocationComponent;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    .line 141
    .line 142
    iput-object p2, p0, Lorg/maplibre/android/location/LocationComponent;->transform:Lorg/maplibre/android/maps/Transform;

    .line 143
    .line 144
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    return-void
.end method


# virtual methods
.method public final checkActivationState()V
    .locals 1

    .line 1
    iget-boolean p0, p0, Lorg/maplibre/android/location/LocationComponent;->isComponentInitialized:Z

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance p0, Lcoil3/network/HttpException;

    .line 7
    .line 8
    const-string v0, "The LocationComponent has to be activated with one of the LocationComponent#activateLocationComponent overloads before any other methods are invoked."

    .line 9
    .line 10
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p0
.end method

.method public final onLocationLayerStart()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lorg/maplibre/android/location/LocationComponent;->isComponentInitialized:Z

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    iget-boolean v0, p0, Lorg/maplibre/android/location/LocationComponent;->isComponentStarted:Z

    .line 6
    .line 7
    if-eqz v0, :cond_5

    .line 8
    .line 9
    iget-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    .line 10
    .line 11
    invoke-virtual {v0}, Lorg/maplibre/android/maps/MapLibreMap;->getStyle()Lorg/maplibre/android/maps/Style;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-object v0, v0, Lorg/maplibre/android/maps/MapLibreMap;->cameraChangeDispatcher:Lorg/maplibre/android/maps/CameraChangeDispatcher;

    .line 16
    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    goto/16 :goto_3

    .line 20
    .line 21
    :cond_0
    iget-boolean v1, p0, Lorg/maplibre/android/location/LocationComponent;->isLayerReady:Z

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    iput-boolean v2, p0, Lorg/maplibre/android/location/LocationComponent;->isLayerReady:Z

    .line 27
    .line 28
    iget-object v1, p0, Lorg/maplibre/android/location/LocationComponent;->onCameraMoveListener:Lorg/maplibre/android/location/LocationComponent$1;

    .line 29
    .line 30
    iget-object v3, v0, Lorg/maplibre/android/maps/CameraChangeDispatcher;->onCameraMove:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 31
    .line 32
    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lorg/maplibre/android/location/LocationComponent;->onCameraIdleListener:Lorg/maplibre/android/location/LocationComponent$2;

    .line 36
    .line 37
    iget-object v0, v0, Lorg/maplibre/android/maps/CameraChangeDispatcher;->onCameraIdle:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->options:Lorg/maplibre/android/location/LocationComponentOptions;

    .line 43
    .line 44
    iget-boolean v0, v0, Lorg/maplibre/android/location/LocationComponentOptions;->enableStaleState:Z

    .line 45
    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    iget-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->staleStateManager:Lorg/maplibre/android/location/StaleStateManager;

    .line 49
    .line 50
    iget-boolean v1, v0, Lorg/maplibre/android/location/StaleStateManager;->isStale:Z

    .line 51
    .line 52
    if-nez v1, :cond_1

    .line 53
    .line 54
    iget-object v1, v0, Lorg/maplibre/android/location/StaleStateManager;->handler:Landroidx/preference/PreferenceFragmentCompat$1;

    .line 55
    .line 56
    const/4 v3, 0x0

    .line 57
    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    iget-wide v3, v0, Lorg/maplibre/android/location/StaleStateManager;->delayTime:J

    .line 61
    .line 62
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 63
    .line 64
    .line 65
    :cond_1
    iget-boolean v0, p0, Lorg/maplibre/android/location/LocationComponent;->isEnabled:Z

    .line 66
    .line 67
    if-eqz v0, :cond_5

    .line 68
    .line 69
    iget-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->locationEngine:Lokhttp3/FormBody$Builder;

    .line 70
    .line 71
    if-eqz v0, :cond_2

    .line 72
    .line 73
    :try_start_0
    iget-object v1, p0, Lorg/maplibre/android/location/LocationComponent;->locationEngineRequest:Lorg/maplibre/android/location/engine/LocationEngineRequest;

    .line 74
    .line 75
    iget-object v3, p0, Lorg/maplibre/android/location/LocationComponent;->currentLocationEngineListener:Landroidx/lifecycle/WeakReference;

    .line 76
    .line 77
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    invoke-virtual {v0, v1, v3, v4}, Lokhttp3/FormBody$Builder;->requestLocationUpdates(Lorg/maplibre/android/location/engine/LocationEngineRequest;Landroidx/lifecycle/WeakReference;Landroid/os/Looper;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :catch_0
    move-exception v0

    .line 86
    const-string v1, "Mbgl-LocationComponent"

    .line 87
    .line 88
    const-string v3, "Unable to request location updates"

    .line 89
    .line 90
    invoke-static {v1, v3, v0}, Lorg/maplibre/android/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 91
    .line 92
    .line 93
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->locationCameraController:Lorg/maplibre/android/location/LocationCameraController;

    .line 94
    .line 95
    iget v0, v0, Lorg/maplibre/android/location/LocationCameraController;->cameraMode:I

    .line 96
    .line 97
    invoke-virtual {p0, v0}, Lorg/maplibre/android/location/LocationComponent;->setCameraMode(I)V

    .line 98
    .line 99
    .line 100
    iget-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->options:Lorg/maplibre/android/location/LocationComponentOptions;

    .line 101
    .line 102
    iget-object v0, v0, Lorg/maplibre/android/location/LocationComponentOptions;->pulseEnabled:Ljava/lang/Boolean;

    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    if-eqz v0, :cond_3

    .line 109
    .line 110
    invoke-virtual {p0}, Lorg/maplibre/android/location/LocationComponent;->startPulsingLocationCircle()V

    .line 111
    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_3
    iget-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->locationAnimatorCoordinator:Lorg/maplibre/android/location/LocationAnimatorCoordinator;

    .line 115
    .line 116
    const/16 v1, 0x9

    .line 117
    .line 118
    invoke-virtual {v0, v1}, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->cancelAnimator(I)V

    .line 119
    .line 120
    .line 121
    iget-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->locationLayerController:Lorg/maplibre/android/location/LocationLayerController;

    .line 122
    .line 123
    const/4 v1, 0x0

    .line 124
    iget-object v0, v0, Lorg/maplibre/android/location/LocationLayerController;->locationLayerRenderer:Lokio/internal/DefaultSocket;

    .line 125
    .line 126
    invoke-virtual {v0, v1}, Lokio/internal/DefaultSocket;->adjustPulsingCircleLayerVisibility(Z)V

    .line 127
    .line 128
    .line 129
    :goto_1
    invoke-virtual {p0}, Lorg/maplibre/android/location/LocationComponent;->setLastLocation()V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0, v2}, Lorg/maplibre/android/location/LocationComponent;->updateCompassListenerState(Z)V

    .line 133
    .line 134
    .line 135
    iget-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->compassEngine:Lorg/maplibre/android/location/LocationComponentCompassEngine;

    .line 136
    .line 137
    if-eqz v0, :cond_4

    .line 138
    .line 139
    iget v0, v0, Lorg/maplibre/android/location/LocationComponentCompassEngine;->lastHeading:F

    .line 140
    .line 141
    goto :goto_2

    .line 142
    :cond_4
    const/4 v0, 0x0

    .line 143
    :goto_2
    invoke-virtual {p0, v0}, Lorg/maplibre/android/location/LocationComponent;->updateCompassHeading(F)V

    .line 144
    .line 145
    .line 146
    :cond_5
    :goto_3
    return-void
.end method

.method public final onLocationLayerStop()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lorg/maplibre/android/location/LocationComponent;->isComponentInitialized:Z

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    iget-boolean v0, p0, Lorg/maplibre/android/location/LocationComponent;->isLayerReady:Z

    .line 6
    .line 7
    if-eqz v0, :cond_5

    .line 8
    .line 9
    iget-boolean v0, p0, Lorg/maplibre/android/location/LocationComponent;->isComponentStarted:Z

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lorg/maplibre/android/location/LocationComponent;->isLayerReady:Z

    .line 16
    .line 17
    iget-object v1, p0, Lorg/maplibre/android/location/LocationComponent;->staleStateManager:Lorg/maplibre/android/location/StaleStateManager;

    .line 18
    .line 19
    iget-object v1, v1, Lorg/maplibre/android/location/StaleStateManager;->handler:Landroidx/preference/PreferenceFragmentCompat$1;

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lorg/maplibre/android/location/LocationComponent;->compassEngine:Lorg/maplibre/android/location/LocationComponentCompassEngine;

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    invoke-virtual {p0, v0}, Lorg/maplibre/android/location/LocationComponent;->updateCompassListenerState(Z)V

    .line 30
    .line 31
    .line 32
    :cond_1
    iget-object v1, p0, Lorg/maplibre/android/location/LocationComponent;->locationAnimatorCoordinator:Lorg/maplibre/android/location/LocationAnimatorCoordinator;

    .line 33
    .line 34
    const/16 v2, 0x9

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->cancelAnimator(I)V

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lorg/maplibre/android/location/LocationComponent;->locationLayerController:Lorg/maplibre/android/location/LocationLayerController;

    .line 40
    .line 41
    iget-object v1, v1, Lorg/maplibre/android/location/LocationLayerController;->locationLayerRenderer:Lokio/internal/DefaultSocket;

    .line 42
    .line 43
    invoke-virtual {v1, v0}, Lokio/internal/DefaultSocket;->adjustPulsingCircleLayerVisibility(Z)V

    .line 44
    .line 45
    .line 46
    iget-object v1, p0, Lorg/maplibre/android/location/LocationComponent;->locationAnimatorCoordinator:Lorg/maplibre/android/location/LocationAnimatorCoordinator;

    .line 47
    .line 48
    iget-object v2, v1, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->animatorArray:Landroid/util/SparseArray;

    .line 49
    .line 50
    :goto_0
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-ge v0, v3, :cond_2

    .line 55
    .line 56
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    invoke-virtual {v1, v3}, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->cancelAnimator(I)V

    .line 61
    .line 62
    .line 63
    add-int/lit8 v0, v0, 0x1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    iget-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->locationEngine:Lokhttp3/FormBody$Builder;

    .line 67
    .line 68
    if-eqz v0, :cond_3

    .line 69
    .line 70
    iget-object v1, p0, Lorg/maplibre/android/location/LocationComponent;->currentLocationEngineListener:Landroidx/lifecycle/WeakReference;

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Lokhttp3/FormBody$Builder;->removeLocationUpdates(Landroidx/lifecycle/WeakReference;)V

    .line 73
    .line 74
    .line 75
    :cond_3
    iget-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    .line 76
    .line 77
    iget-object v1, v0, Lorg/maplibre/android/maps/MapLibreMap;->cameraChangeDispatcher:Lorg/maplibre/android/maps/CameraChangeDispatcher;

    .line 78
    .line 79
    iget-object v1, v1, Lorg/maplibre/android/maps/CameraChangeDispatcher;->onCameraMove:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 80
    .line 81
    iget-object v2, p0, Lorg/maplibre/android/location/LocationComponent;->onCameraMoveListener:Lorg/maplibre/android/location/LocationComponent$1;

    .line 82
    .line 83
    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    if-eqz v3, :cond_4

    .line 88
    .line 89
    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    :cond_4
    iget-object v0, v0, Lorg/maplibre/android/maps/MapLibreMap;->cameraChangeDispatcher:Lorg/maplibre/android/maps/CameraChangeDispatcher;

    .line 93
    .line 94
    iget-object v0, v0, Lorg/maplibre/android/maps/CameraChangeDispatcher;->onCameraIdle:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 95
    .line 96
    iget-object p0, p0, Lorg/maplibre/android/location/LocationComponent;->onCameraIdleListener:Lorg/maplibre/android/location/LocationComponent$2;

    .line 97
    .line 98
    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    if-eqz v1, :cond_5

    .line 103
    .line 104
    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    :cond_5
    :goto_1
    return-void
.end method

.method public final removeCompassListener(Lorg/maplibre/android/location/LocationComponentCompassEngine;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lorg/maplibre/android/location/LocationComponent;->isListeningToCompass:Z

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lorg/maplibre/android/location/LocationComponent;->isListeningToCompass:Z

    .line 7
    .line 8
    iget-object v1, p1, Lorg/maplibre/android/location/LocationComponentCompassEngine;->compassListeners:Ljava/util/ArrayList;

    .line 9
    .line 10
    iget-object p0, p0, Lorg/maplibre/android/location/LocationComponent;->compassListener:Lorg/maplibre/android/location/LocationComponent$7;

    .line 11
    .line 12
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-eqz p0, :cond_2

    .line 20
    .line 21
    iget-object p0, p1, Lorg/maplibre/android/location/LocationComponentCompassEngine;->compassSensor:Landroid/hardware/Sensor;

    .line 22
    .line 23
    if-eqz p0, :cond_0

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    :cond_0
    iget-object v1, p1, Lorg/maplibre/android/location/LocationComponentCompassEngine;->sensorManager:Landroid/hardware/SensorManager;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    invoke-virtual {v1, p1, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    iget-object p0, p1, Lorg/maplibre/android/location/LocationComponentCompassEngine;->gravitySensor:Landroid/hardware/Sensor;

    .line 35
    .line 36
    invoke-virtual {v1, p1, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 37
    .line 38
    .line 39
    iget-object p0, p1, Lorg/maplibre/android/location/LocationComponentCompassEngine;->magneticFieldSensor:Landroid/hardware/Sensor;

    .line 40
    .line 41
    invoke-virtual {v1, p1, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 42
    .line 43
    .line 44
    :cond_2
    return-void
.end method

.method public final setCameraMode(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/maplibre/android/location/LocationComponent;->checkActivationState()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->locationCameraController:Lorg/maplibre/android/location/LocationCameraController;

    .line 5
    .line 6
    iget-object v1, p0, Lorg/maplibre/android/location/LocationComponent;->lastLocation:Landroid/location/Location;

    .line 7
    .line 8
    new-instance v2, Lorg/maplibre/android/location/LocationComponent$6;

    .line 9
    .line 10
    invoke-direct {v2, p0}, Lorg/maplibre/android/location/LocationComponent$6;-><init>(Lorg/maplibre/android/location/LocationComponent;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1, v1, v2}, Lorg/maplibre/android/location/LocationCameraController;->setCameraMode(ILandroid/location/Location;Lorg/maplibre/android/location/LocationComponent$6;)V

    .line 14
    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    invoke-virtual {p0, p1}, Lorg/maplibre/android/location/LocationComponent;->updateCompassListenerState(Z)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final setLastLocation()V
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->locationEngine:Lokhttp3/FormBody$Builder;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_7

    .line 5
    .line 6
    iget-object p0, p0, Lorg/maplibre/android/location/LocationComponent;->lastLocationEngineListener:Landroidx/lifecycle/WeakReference;

    .line 7
    .line 8
    if-eqz p0, :cond_6

    .line 9
    .line 10
    iget-object v0, v0, Lokhttp3/FormBody$Builder;->names:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Lokhttp3/FormBody$Builder;

    .line 13
    .line 14
    iget-object v0, v0, Lokhttp3/FormBody$Builder;->names:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Landroid/location/LocationManager;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    const/4 v3, 0x0

    .line 27
    move-object v4, v3

    .line 28
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    if-eqz v5, :cond_2

    .line 33
    .line 34
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    check-cast v5, Ljava/lang/String;

    .line 39
    .line 40
    :try_start_0
    invoke-virtual {v0, v5}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    .line 41
    .line 42
    .line 43
    move-result-object v5
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    goto :goto_1

    .line 45
    :catch_0
    move-exception v5

    .line 46
    const-string v6, "AndroidLocationEngine"

    .line 47
    .line 48
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    move-object v5, v3

    .line 56
    :goto_1
    if-nez v5, :cond_1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    invoke-static {v5, v4}, Lokhttp3/Headers$Companion;->isBetterLocation(Landroid/location/Location;Landroid/location/Location;)Z

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    if-eqz v6, :cond_0

    .line 64
    .line 65
    move-object v4, v5

    .line 66
    goto :goto_0

    .line 67
    :cond_2
    if-eqz v4, :cond_4

    .line 68
    .line 69
    new-instance v0, Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    iget-object p0, p0, Landroidx/lifecycle/WeakReference;->delegate:Ljava/lang/ref/WeakReference;

    .line 82
    .line 83
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    check-cast p0, Lorg/maplibre/android/location/LocationComponent;

    .line 88
    .line 89
    if-eqz p0, :cond_5

    .line 90
    .line 91
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    if-eqz v2, :cond_3

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_3
    const/4 v2, 0x0

    .line 99
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    move-object v3, v0

    .line 104
    check-cast v3, Landroid/location/Location;

    .line 105
    .line 106
    :goto_2
    invoke-virtual {p0, v3, v1}, Lorg/maplibre/android/location/LocationComponent;->updateLocation(Landroid/location/Location;Z)V

    .line 107
    .line 108
    .line 109
    goto :goto_3

    .line 110
    :cond_4
    new-instance p0, Ljava/lang/Exception;

    .line 111
    .line 112
    const-string v0, "Last location unavailable"

    .line 113
    .line 114
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    const-string v0, "Mbgl-LocationComponent"

    .line 118
    .line 119
    const-string v1, "Failed to obtain last location update"

    .line 120
    .line 121
    invoke-static {v0, v1, p0}, Lorg/maplibre/android/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 122
    .line 123
    .line 124
    :cond_5
    :goto_3
    return-void

    .line 125
    :cond_6
    const-string p0, "callback == null"

    .line 126
    .line 127
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    return-void

    .line 131
    :cond_7
    invoke-virtual {p0}, Lorg/maplibre/android/location/LocationComponent;->checkActivationState()V

    .line 132
    .line 133
    .line 134
    iget-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->lastLocation:Landroid/location/Location;

    .line 135
    .line 136
    invoke-virtual {p0, v0, v1}, Lorg/maplibre/android/location/LocationComponent;->updateLocation(Landroid/location/Location;Z)V

    .line 137
    .line 138
    .line 139
    return-void
.end method

.method public final setRenderMode(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/maplibre/android/location/LocationComponent;->checkActivationState()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->lastLocation:Landroid/location/Location;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/16 v0, 0x8

    .line 9
    .line 10
    if-ne p1, v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->locationAnimatorCoordinator:Lorg/maplibre/android/location/LocationAnimatorCoordinator;

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    invoke-virtual {v0, v1}, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->cancelAnimator(I)V

    .line 16
    .line 17
    .line 18
    iget-object v0, v0, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->animatorArray:Landroid/util/SparseArray;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->locationLayerController:Lorg/maplibre/android/location/LocationLayerController;

    .line 24
    .line 25
    iget-object v1, p0, Lorg/maplibre/android/location/LocationComponent;->lastLocation:Landroid/location/Location;

    .line 26
    .line 27
    invoke-virtual {v1}, Landroid/location/Location;->getBearing()F

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    iget-object v0, v0, Lorg/maplibre/android/location/LocationLayerController;->locationLayerRenderer:Lokio/internal/DefaultSocket;

    .line 32
    .line 33
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Lokio/internal/DefaultSocket;->setGpsBearing(Ljava/lang/Float;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    iget-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->locationLayerController:Lorg/maplibre/android/location/LocationLayerController;

    .line 41
    .line 42
    iget v1, v0, Lorg/maplibre/android/location/LocationLayerController;->renderMode:I

    .line 43
    .line 44
    if-ne v1, p1, :cond_1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    iput p1, v0, Lorg/maplibre/android/location/LocationLayerController;->renderMode:I

    .line 48
    .line 49
    iget-object p1, v0, Lorg/maplibre/android/location/LocationLayerController;->options:Lorg/maplibre/android/location/LocationComponentOptions;

    .line 50
    .line 51
    invoke-virtual {v0, p1}, Lorg/maplibre/android/location/LocationLayerController;->styleBitmaps(Lorg/maplibre/android/location/LocationComponentOptions;)V

    .line 52
    .line 53
    .line 54
    iget-object p1, v0, Lorg/maplibre/android/location/LocationLayerController;->options:Lorg/maplibre/android/location/LocationComponentOptions;

    .line 55
    .line 56
    invoke-virtual {v0, p1}, Lorg/maplibre/android/location/LocationLayerController;->determineIconsSource(Lorg/maplibre/android/location/LocationComponentOptions;)V

    .line 57
    .line 58
    .line 59
    iget-boolean p1, v0, Lorg/maplibre/android/location/LocationLayerController;->isHidden:Z

    .line 60
    .line 61
    if-nez p1, :cond_2

    .line 62
    .line 63
    invoke-virtual {v0}, Lorg/maplibre/android/location/LocationLayerController;->show()V

    .line 64
    .line 65
    .line 66
    :cond_2
    iget-object p1, v0, Lorg/maplibre/android/location/LocationLayerController;->internalRenderModeChangedListener:Lorg/maplibre/android/location/LocationComponent$9;

    .line 67
    .line 68
    invoke-virtual {p1}, Lorg/maplibre/android/location/LocationComponent$9;->onRenderModeChanged()V

    .line 69
    .line 70
    .line 71
    :goto_0
    const/4 p1, 0x1

    .line 72
    invoke-virtual {p0, p1}, Lorg/maplibre/android/location/LocationComponent;->updateLayerOffsets(Z)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, p1}, Lorg/maplibre/android/location/LocationComponent;->updateCompassListenerState(Z)V

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method public final startPulsingLocationCircle()V
    .locals 11

    .line 1
    iget-boolean v0, p0, Lorg/maplibre/android/location/LocationComponent;->isEnabled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lorg/maplibre/android/location/LocationComponent;->isLayerReady:Z

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->locationAnimatorCoordinator:Lorg/maplibre/android/location/LocationAnimatorCoordinator;

    .line 10
    .line 11
    iget-object v1, p0, Lorg/maplibre/android/location/LocationComponent;->options:Lorg/maplibre/android/location/LocationComponentOptions;

    .line 12
    .line 13
    iget-object v2, v0, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->animatorArray:Landroid/util/SparseArray;

    .line 14
    .line 15
    const/16 v3, 0x9

    .line 16
    .line 17
    invoke-virtual {v0, v3}, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->cancelAnimator(I)V

    .line 18
    .line 19
    .line 20
    iget-object v0, v0, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->listeners:Landroid/util/SparseArray;

    .line 21
    .line 22
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;

    .line 27
    .line 28
    const/4 v4, 0x1

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    iget v5, v1, Lorg/maplibre/android/location/LocationComponentOptions;->pulseSingleDuration:F

    .line 32
    .line 33
    iget v1, v1, Lorg/maplibre/android/location/LocationComponentOptions;->pulseMaxRadius:F

    .line 34
    .line 35
    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    .line 36
    .line 37
    invoke-direct {v6}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 38
    .line 39
    .line 40
    new-instance v7, Lorg/maplibre/android/location/PulsingLocationCircleAnimator;

    .line 41
    .line 42
    const/4 v8, 0x0

    .line 43
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 44
    .line 45
    .line 46
    move-result-object v8

    .line 47
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    const/4 v9, 0x2

    .line 52
    new-array v9, v9, [Ljava/lang/Float;

    .line 53
    .line 54
    const/4 v10, 0x0

    .line 55
    aput-object v8, v9, v10

    .line 56
    .line 57
    aput-object v1, v9, v4

    .line 58
    .line 59
    invoke-direct {v7, v9, v0}, Lorg/maplibre/android/location/MapLibreAnimator;-><init>([Ljava/lang/Object;Lorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;)V

    .line 60
    .line 61
    .line 62
    float-to-long v0, v5

    .line 63
    invoke-virtual {v7, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v7, v4}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 67
    .line 68
    .line 69
    const/4 v0, -0x1

    .line 70
    invoke-virtual {v7, v0}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v7, v6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2, v3, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    check-cast v0, Landroid/animation/Animator;

    .line 84
    .line 85
    if-eqz v0, :cond_0

    .line 86
    .line 87
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 88
    .line 89
    .line 90
    :cond_0
    iget-object p0, p0, Lorg/maplibre/android/location/LocationComponent;->locationLayerController:Lorg/maplibre/android/location/LocationLayerController;

    .line 91
    .line 92
    iget-object p0, p0, Lorg/maplibre/android/location/LocationLayerController;->locationLayerRenderer:Lokio/internal/DefaultSocket;

    .line 93
    .line 94
    invoke-virtual {p0, v4}, Lokio/internal/DefaultSocket;->adjustPulsingCircleLayerVisibility(Z)V

    .line 95
    .line 96
    .line 97
    :cond_1
    return-void
.end method

.method public final updateAccuracyRadius(Landroid/location/Location;Z)V
    .locals 6

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    .line 6
    .line 7
    iget-object v0, v0, Lorg/maplibre/android/maps/MapLibreMap;->projection:Lorg/maplibre/android/maps/MapView$2;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    .line 10
    .line 11
    .line 12
    move-result-wide v1

    .line 13
    invoke-virtual {v0, v1, v2}, Lorg/maplibre/android/maps/MapView$2;->getMetersPerPixelAtLatitude(D)D

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    float-to-double v2, p1

    .line 22
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 23
    .line 24
    div-double/2addr v4, v0

    .line 25
    mul-double/2addr v4, v2

    .line 26
    double-to-float p1, v4

    .line 27
    :goto_0
    iget-object p0, p0, Lorg/maplibre/android/location/LocationComponent;->locationAnimatorCoordinator:Lorg/maplibre/android/location/LocationAnimatorCoordinator;

    .line 28
    .line 29
    invoke-virtual {p0, p1, p2}, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->feedNewAccuracyRadius(FZ)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final updateAnimatorListenerHolders()V
    .locals 13

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lorg/maplibre/android/location/LocationComponent;->locationLayerController:Lorg/maplibre/android/location/LocationLayerController;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    new-instance v2, Ljava/util/HashSet;

    .line 12
    .line 13
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 14
    .line 15
    .line 16
    new-instance v3, Lorg/maplibre/android/location/AnimatorListenerHolder;

    .line 17
    .line 18
    iget-object v4, v1, Lorg/maplibre/android/location/LocationLayerController;->latLngValueListener:Lorg/maplibre/android/location/LocationLayerController$1;

    .line 19
    .line 20
    const/4 v5, 0x0

    .line 21
    invoke-direct {v3, v5, v4}, Lorg/maplibre/android/location/AnimatorListenerHolder;-><init>(ILorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    iget v3, v1, Lorg/maplibre/android/location/LocationLayerController;->renderMode:I

    .line 28
    .line 29
    const/4 v4, 0x3

    .line 30
    const/4 v6, 0x2

    .line 31
    const/4 v7, 0x4

    .line 32
    const/16 v8, 0x8

    .line 33
    .line 34
    if-ne v3, v8, :cond_0

    .line 35
    .line 36
    new-instance v3, Lorg/maplibre/android/location/AnimatorListenerHolder;

    .line 37
    .line 38
    iget-object v9, v1, Lorg/maplibre/android/location/LocationLayerController;->gpsBearingValueListener:Lorg/maplibre/android/location/LocationLayerController$1;

    .line 39
    .line 40
    invoke-direct {v3, v6, v9}, Lorg/maplibre/android/location/AnimatorListenerHolder;-><init>(ILorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    if-ne v3, v7, :cond_1

    .line 48
    .line 49
    new-instance v3, Lorg/maplibre/android/location/AnimatorListenerHolder;

    .line 50
    .line 51
    iget-object v9, v1, Lorg/maplibre/android/location/LocationLayerController;->compassBearingValueListener:Lorg/maplibre/android/location/LocationLayerController$1;

    .line 52
    .line 53
    invoke-direct {v3, v4, v9}, Lorg/maplibre/android/location/AnimatorListenerHolder;-><init>(ILorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    :cond_1
    :goto_0
    iget v3, v1, Lorg/maplibre/android/location/LocationLayerController;->renderMode:I

    .line 60
    .line 61
    const/4 v9, 0x6

    .line 62
    if-eq v3, v7, :cond_2

    .line 63
    .line 64
    const/16 v10, 0x12

    .line 65
    .line 66
    if-ne v3, v10, :cond_3

    .line 67
    .line 68
    :cond_2
    new-instance v3, Lorg/maplibre/android/location/AnimatorListenerHolder;

    .line 69
    .line 70
    iget-object v10, v1, Lorg/maplibre/android/location/LocationLayerController;->accuracyValueListener:Lorg/maplibre/android/location/LocationLayerController$1;

    .line 71
    .line 72
    invoke-direct {v3, v9, v10}, Lorg/maplibre/android/location/AnimatorListenerHolder;-><init>(ILorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    :cond_3
    iget-object v3, v1, Lorg/maplibre/android/location/LocationLayerController;->options:Lorg/maplibre/android/location/LocationComponentOptions;

    .line 79
    .line 80
    iget-object v3, v3, Lorg/maplibre/android/location/LocationComponentOptions;->pulseEnabled:Ljava/lang/Boolean;

    .line 81
    .line 82
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    if-eqz v3, :cond_4

    .line 87
    .line 88
    new-instance v3, Lorg/maplibre/android/location/AnimatorListenerHolder;

    .line 89
    .line 90
    const/16 v10, 0x9

    .line 91
    .line 92
    iget-object v1, v1, Lorg/maplibre/android/location/LocationLayerController;->pulsingCircleRadiusListener:Lorg/maplibre/android/location/LocationLayerController$1;

    .line 93
    .line 94
    invoke-direct {v3, v10, v1}, Lorg/maplibre/android/location/AnimatorListenerHolder;-><init>(ILorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    :cond_4
    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 101
    .line 102
    .line 103
    iget-object v1, p0, Lorg/maplibre/android/location/LocationComponent;->locationCameraController:Lorg/maplibre/android/location/LocationCameraController;

    .line 104
    .line 105
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    new-instance v2, Ljava/util/HashSet;

    .line 109
    .line 110
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1}, Lorg/maplibre/android/location/LocationCameraController;->isLocationTracking()Z

    .line 114
    .line 115
    .line 116
    move-result v3

    .line 117
    const/4 v10, 0x1

    .line 118
    if-eqz v3, :cond_5

    .line 119
    .line 120
    new-instance v3, Lorg/maplibre/android/location/AnimatorListenerHolder;

    .line 121
    .line 122
    iget-object v11, v1, Lorg/maplibre/android/location/LocationCameraController;->latLngValueListener:Lorg/maplibre/android/location/LocationCameraController$2;

    .line 123
    .line 124
    invoke-direct {v3, v10, v11}, Lorg/maplibre/android/location/AnimatorListenerHolder;-><init>(ILorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    :cond_5
    iget v3, v1, Lorg/maplibre/android/location/LocationCameraController;->cameraMode:I

    .line 131
    .line 132
    const/16 v11, 0x22

    .line 133
    .line 134
    const/16 v12, 0x24

    .line 135
    .line 136
    if-eq v3, v11, :cond_6

    .line 137
    .line 138
    if-eq v3, v12, :cond_6

    .line 139
    .line 140
    const/16 v11, 0x16

    .line 141
    .line 142
    if-ne v3, v11, :cond_7

    .line 143
    .line 144
    :cond_6
    new-instance v3, Lorg/maplibre/android/location/AnimatorListenerHolder;

    .line 145
    .line 146
    iget-object v11, v1, Lorg/maplibre/android/location/LocationCameraController;->gpsBearingValueListener:Lorg/maplibre/android/location/LocationCameraController$2;

    .line 147
    .line 148
    invoke-direct {v3, v7, v11}, Lorg/maplibre/android/location/AnimatorListenerHolder;-><init>(ILorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    :cond_7
    iget v3, v1, Lorg/maplibre/android/location/LocationCameraController;->cameraMode:I

    .line 155
    .line 156
    const/16 v7, 0x20

    .line 157
    .line 158
    if-eq v3, v7, :cond_8

    .line 159
    .line 160
    const/16 v7, 0x10

    .line 161
    .line 162
    if-ne v3, v7, :cond_9

    .line 163
    .line 164
    :cond_8
    new-instance v3, Lorg/maplibre/android/location/AnimatorListenerHolder;

    .line 165
    .line 166
    const/4 v7, 0x5

    .line 167
    iget-object v11, v1, Lorg/maplibre/android/location/LocationCameraController;->compassBearingValueListener:Lorg/maplibre/android/location/LocationCameraController$2;

    .line 168
    .line 169
    invoke-direct {v3, v7, v11}, Lorg/maplibre/android/location/AnimatorListenerHolder;-><init>(ILorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    :cond_9
    new-instance v3, Lorg/maplibre/android/location/AnimatorListenerHolder;

    .line 176
    .line 177
    const/4 v7, 0x7

    .line 178
    iget-object v11, v1, Lorg/maplibre/android/location/LocationCameraController;->zoomValueListener:Lorg/maplibre/android/location/LocationCameraController$$ExternalSyntheticLambda0;

    .line 179
    .line 180
    invoke-direct {v3, v7, v11}, Lorg/maplibre/android/location/AnimatorListenerHolder;-><init>(ILorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    new-instance v3, Lorg/maplibre/android/location/AnimatorListenerHolder;

    .line 187
    .line 188
    iget-object v7, v1, Lorg/maplibre/android/location/LocationCameraController;->tiltValueListener:Lorg/maplibre/android/location/LocationCameraController$$ExternalSyntheticLambda0;

    .line 189
    .line 190
    invoke-direct {v3, v8, v7}, Lorg/maplibre/android/location/AnimatorListenerHolder;-><init>(ILorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    new-instance v3, Lorg/maplibre/android/location/AnimatorListenerHolder;

    .line 197
    .line 198
    const/16 v7, 0xa

    .line 199
    .line 200
    iget-object v1, v1, Lorg/maplibre/android/location/LocationCameraController;->paddingValueListener:Lorg/maplibre/android/location/LocationCameraController$$ExternalSyntheticLambda0;

    .line 201
    .line 202
    invoke-direct {v3, v7, v1}, Lorg/maplibre/android/location/AnimatorListenerHolder;-><init>(ILorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 209
    .line 210
    .line 211
    iget-object v1, p0, Lorg/maplibre/android/location/LocationComponent;->locationAnimatorCoordinator:Lorg/maplibre/android/location/LocationAnimatorCoordinator;

    .line 212
    .line 213
    iget-object v2, v1, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->animatorArray:Landroid/util/SparseArray;

    .line 214
    .line 215
    iget-object v1, v1, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->listeners:Landroid/util/SparseArray;

    .line 216
    .line 217
    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 225
    .line 226
    .line 227
    move-result v3

    .line 228
    if-eqz v3, :cond_a

    .line 229
    .line 230
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v3

    .line 234
    check-cast v3, Lorg/maplibre/android/location/AnimatorListenerHolder;

    .line 235
    .line 236
    iget v7, v3, Lorg/maplibre/android/location/AnimatorListenerHolder;->animatorType:I

    .line 237
    .line 238
    iget-object v3, v3, Lorg/maplibre/android/location/AnimatorListenerHolder;->listener:Lorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;

    .line 239
    .line 240
    invoke-virtual {v1, v7, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 241
    .line 242
    .line 243
    goto :goto_1

    .line 244
    :cond_a
    move v0, v5

    .line 245
    :goto_2
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 246
    .line 247
    .line 248
    move-result v3

    .line 249
    if-ge v0, v3, :cond_c

    .line 250
    .line 251
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    .line 252
    .line 253
    .line 254
    move-result v3

    .line 255
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v7

    .line 259
    if-nez v7, :cond_b

    .line 260
    .line 261
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object v3

    .line 265
    check-cast v3, Lorg/maplibre/android/location/MapLibreAnimator;

    .line 266
    .line 267
    if-eqz v3, :cond_b

    .line 268
    .line 269
    iput-boolean v10, v3, Lorg/maplibre/android/location/MapLibreAnimator;->invalid:Z

    .line 270
    .line 271
    :cond_b
    add-int/lit8 v0, v0, 0x1

    .line 272
    .line 273
    goto :goto_2

    .line 274
    :cond_c
    iget-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->locationAnimatorCoordinator:Lorg/maplibre/android/location/LocationAnimatorCoordinator;

    .line 275
    .line 276
    iget-object v1, p0, Lorg/maplibre/android/location/LocationComponent;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    .line 277
    .line 278
    iget-object v1, v1, Lorg/maplibre/android/maps/MapLibreMap;->transform:Lorg/maplibre/android/maps/Transform;

    .line 279
    .line 280
    invoke-virtual {v1}, Lorg/maplibre/android/maps/Transform;->getCameraPosition()Lorg/maplibre/android/camera/CameraPosition;

    .line 281
    .line 282
    .line 283
    move-result-object v1

    .line 284
    iget-object v2, p0, Lorg/maplibre/android/location/LocationComponent;->locationCameraController:Lorg/maplibre/android/location/LocationCameraController;

    .line 285
    .line 286
    iget v2, v2, Lorg/maplibre/android/location/LocationCameraController;->cameraMode:I

    .line 287
    .line 288
    if-ne v2, v12, :cond_d

    .line 289
    .line 290
    move v2, v10

    .line 291
    goto :goto_3

    .line 292
    :cond_d
    move v2, v5

    .line 293
    :goto_3
    invoke-virtual {v0, v1, v2}, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->resetAllCameraAnimations(Lorg/maplibre/android/camera/CameraPosition;Z)V

    .line 294
    .line 295
    .line 296
    iget-object p0, p0, Lorg/maplibre/android/location/LocationComponent;->locationAnimatorCoordinator:Lorg/maplibre/android/location/LocationAnimatorCoordinator;

    .line 297
    .line 298
    iget-object v0, p0, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->animatorArray:Landroid/util/SparseArray;

    .line 299
    .line 300
    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    move-result-object v1

    .line 304
    check-cast v1, Lorg/maplibre/android/location/MapLibreLatLngAnimator;

    .line 305
    .line 306
    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    move-result-object v2

    .line 310
    check-cast v2, Lorg/maplibre/android/location/MapLibreFloatAnimator;

    .line 311
    .line 312
    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 313
    .line 314
    .line 315
    move-result-object v3

    .line 316
    check-cast v3, Lorg/maplibre/android/location/MapLibreFloatAnimator;

    .line 317
    .line 318
    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    move-result-object v0

    .line 322
    check-cast v0, Lorg/maplibre/android/location/MapLibreFloatAnimator;

    .line 323
    .line 324
    if-eqz v1, :cond_e

    .line 325
    .line 326
    if-eqz v2, :cond_e

    .line 327
    .line 328
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    move-result-object v7

    .line 332
    check-cast v7, Lorg/maplibre/android/geometry/LatLng;

    .line 333
    .line 334
    iget-object v8, v1, Lorg/maplibre/android/location/MapLibreAnimator;->target:Ljava/lang/Object;

    .line 335
    .line 336
    check-cast v8, Lorg/maplibre/android/geometry/LatLng;

    .line 337
    .line 338
    new-array v9, v6, [Lorg/maplibre/android/geometry/LatLng;

    .line 339
    .line 340
    aput-object v7, v9, v5

    .line 341
    .line 342
    aput-object v8, v9, v10

    .line 343
    .line 344
    invoke-virtual {p0, v5, v9}, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->createNewLatLngAnimator(I[Lorg/maplibre/android/geometry/LatLng;)V

    .line 345
    .line 346
    .line 347
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 348
    .line 349
    .line 350
    move-result-object v7

    .line 351
    check-cast v7, Ljava/lang/Float;

    .line 352
    .line 353
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 354
    .line 355
    .line 356
    iget-object v2, v2, Lorg/maplibre/android/location/MapLibreAnimator;->target:Ljava/lang/Object;

    .line 357
    .line 358
    check-cast v2, Ljava/lang/Float;

    .line 359
    .line 360
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 361
    .line 362
    .line 363
    new-array v8, v6, [Ljava/lang/Float;

    .line 364
    .line 365
    aput-object v7, v8, v5

    .line 366
    .line 367
    aput-object v2, v8, v10

    .line 368
    .line 369
    invoke-virtual {p0, v6, v8}, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->createNewFloatAnimator(I[Ljava/lang/Float;)V

    .line 370
    .line 371
    .line 372
    invoke-virtual {v1}, Landroid/animation/Animator;->getDuration()J

    .line 373
    .line 374
    .line 375
    move-result-wide v7

    .line 376
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    .line 377
    .line 378
    .line 379
    move-result-wide v1

    .line 380
    sub-long/2addr v7, v1

    .line 381
    filled-new-array {v5, v6}, [I

    .line 382
    .line 383
    .line 384
    move-result-object v1

    .line 385
    invoke-virtual {p0, v7, v8, v1}, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->playAnimators(J[I)V

    .line 386
    .line 387
    .line 388
    :cond_e
    if-eqz v3, :cond_11

    .line 389
    .line 390
    iget-object v1, p0, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->animatorArray:Landroid/util/SparseArray;

    .line 391
    .line 392
    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 393
    .line 394
    .line 395
    move-result-object v1

    .line 396
    check-cast v1, Lorg/maplibre/android/location/MapLibreFloatAnimator;

    .line 397
    .line 398
    if-eqz v1, :cond_f

    .line 399
    .line 400
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 401
    .line 402
    .line 403
    move-result-object v1

    .line 404
    check-cast v1, Ljava/lang/Float;

    .line 405
    .line 406
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 407
    .line 408
    .line 409
    move-result v1

    .line 410
    goto :goto_4

    .line 411
    :cond_f
    iget v1, p0, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->previousCompassBearing:F

    .line 412
    .line 413
    :goto_4
    iget-object v2, v3, Lorg/maplibre/android/location/MapLibreAnimator;->target:Ljava/lang/Object;

    .line 414
    .line 415
    check-cast v2, Ljava/lang/Float;

    .line 416
    .line 417
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 418
    .line 419
    .line 420
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 421
    .line 422
    .line 423
    move-result-object v1

    .line 424
    new-array v3, v6, [Ljava/lang/Float;

    .line 425
    .line 426
    aput-object v1, v3, v5

    .line 427
    .line 428
    aput-object v2, v3, v10

    .line 429
    .line 430
    invoke-virtual {p0, v4, v3}, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->createNewFloatAnimator(I[Ljava/lang/Float;)V

    .line 431
    .line 432
    .line 433
    iget-boolean v1, p0, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->compassAnimationEnabled:Z

    .line 434
    .line 435
    if-eqz v1, :cond_10

    .line 436
    .line 437
    const-wide/16 v1, 0x1f4

    .line 438
    .line 439
    goto :goto_5

    .line 440
    :cond_10
    const-wide/16 v1, 0x0

    .line 441
    .line 442
    :goto_5
    filled-new-array {v4}, [I

    .line 443
    .line 444
    .line 445
    move-result-object v3

    .line 446
    invoke-virtual {p0, v1, v2, v3}, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->playAnimators(J[I)V

    .line 447
    .line 448
    .line 449
    :cond_11
    if-eqz v0, :cond_12

    .line 450
    .line 451
    iget v0, p0, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->previousAccuracyRadius:F

    .line 452
    .line 453
    invoke-virtual {p0, v0, v5}, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->feedNewAccuracyRadius(FZ)V

    .line 454
    .line 455
    .line 456
    :cond_12
    return-void
.end method

.method public final updateCompassHeading(F)V
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->locationAnimatorCoordinator:Lorg/maplibre/android/location/LocationAnimatorCoordinator;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/maplibre/android/location/LocationComponent;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    .line 4
    .line 5
    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->transform:Lorg/maplibre/android/maps/Transform;

    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/maplibre/android/maps/Transform;->getCameraPosition()Lorg/maplibre/android/camera/CameraPosition;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    iget v1, v0, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->previousCompassBearing:F

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    cmpg-float v1, v1, v2

    .line 15
    .line 16
    if-gez v1, :cond_0

    .line 17
    .line 18
    iput p1, v0, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->previousCompassBearing:F

    .line 19
    .line 20
    :cond_0
    iget-object v1, v0, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->animatorArray:Landroid/util/SparseArray;

    .line 21
    .line 22
    const/4 v2, 0x3

    .line 23
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lorg/maplibre/android/location/MapLibreFloatAnimator;

    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Ljava/lang/Float;

    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    iget v1, v0, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->previousCompassBearing:F

    .line 43
    .line 44
    :goto_0
    iget-wide v3, p0, Lorg/maplibre/android/camera/CameraPosition;->bearing:D

    .line 45
    .line 46
    double-to-float p0, v3

    .line 47
    invoke-static {p1, v1}, Lorg/wikipedia/util/UriUtil;->shortestRotation(FF)F

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    invoke-virtual {v0, v1, v3, v2}, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->createNewFloatAnimator(FFI)V

    .line 52
    .line 53
    .line 54
    invoke-static {p1, p0}, Lorg/wikipedia/util/UriUtil;->shortestRotation(FF)F

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    const/4 v3, 0x5

    .line 59
    invoke-virtual {v0, p0, v1, v3}, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->createNewFloatAnimator(FFI)V

    .line 60
    .line 61
    .line 62
    iget-boolean p0, v0, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->compassAnimationEnabled:Z

    .line 63
    .line 64
    if-eqz p0, :cond_2

    .line 65
    .line 66
    const-wide/16 v4, 0x1f4

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_2
    const-wide/16 v4, 0x0

    .line 70
    .line 71
    :goto_1
    filled-new-array {v2, v3}, [I

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-virtual {v0, v4, v5, p0}, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->playAnimators(J[I)V

    .line 76
    .line 77
    .line 78
    iput p1, v0, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->previousCompassBearing:F

    .line 79
    .line 80
    return-void
.end method

.method public final updateCompassListenerState(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->compassEngine:Lorg/maplibre/android/location/LocationComponentCompassEngine;

    .line 2
    .line 3
    if-eqz v0, :cond_8

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lorg/maplibre/android/location/LocationComponent;->removeCompassListener(Lorg/maplibre/android/location/LocationComponentCompassEngine;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-boolean p1, p0, Lorg/maplibre/android/location/LocationComponent;->isComponentInitialized:Z

    .line 12
    .line 13
    if-eqz p1, :cond_8

    .line 14
    .line 15
    iget-boolean p1, p0, Lorg/maplibre/android/location/LocationComponent;->isComponentStarted:Z

    .line 16
    .line 17
    if-eqz p1, :cond_8

    .line 18
    .line 19
    iget-boolean p1, p0, Lorg/maplibre/android/location/LocationComponent;->isEnabled:Z

    .line 20
    .line 21
    if-eqz p1, :cond_8

    .line 22
    .line 23
    iget-boolean p1, p0, Lorg/maplibre/android/location/LocationComponent;->isLayerReady:Z

    .line 24
    .line 25
    if-nez p1, :cond_1

    .line 26
    .line 27
    goto :goto_3

    .line 28
    :cond_1
    iget-object p1, p0, Lorg/maplibre/android/location/LocationComponent;->locationCameraController:Lorg/maplibre/android/location/LocationCameraController;

    .line 29
    .line 30
    iget p1, p1, Lorg/maplibre/android/location/LocationCameraController;->cameraMode:I

    .line 31
    .line 32
    const/16 v1, 0x20

    .line 33
    .line 34
    if-eq p1, v1, :cond_4

    .line 35
    .line 36
    const/16 v1, 0x10

    .line 37
    .line 38
    if-ne p1, v1, :cond_2

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    iget-object p1, p0, Lorg/maplibre/android/location/LocationComponent;->locationLayerController:Lorg/maplibre/android/location/LocationLayerController;

    .line 42
    .line 43
    iget p1, p1, Lorg/maplibre/android/location/LocationLayerController;->renderMode:I

    .line 44
    .line 45
    const/4 v1, 0x4

    .line 46
    if-ne p1, v1, :cond_3

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_3
    invoke-virtual {p0, v0}, Lorg/maplibre/android/location/LocationComponent;->removeCompassListener(Lorg/maplibre/android/location/LocationComponentCompassEngine;)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_4
    :goto_0
    iget-boolean p1, p0, Lorg/maplibre/android/location/LocationComponent;->isListeningToCompass:Z

    .line 54
    .line 55
    if-nez p1, :cond_8

    .line 56
    .line 57
    const/4 p1, 0x1

    .line 58
    iput-boolean p1, p0, Lorg/maplibre/android/location/LocationComponent;->isListeningToCompass:Z

    .line 59
    .line 60
    iget-object v1, v0, Lorg/maplibre/android/location/LocationComponentCompassEngine;->compassListeners:Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-eqz v2, :cond_7

    .line 67
    .line 68
    iget-object v2, v0, Lorg/maplibre/android/location/LocationComponentCompassEngine;->compassSensor:Landroid/hardware/Sensor;

    .line 69
    .line 70
    if-eqz v2, :cond_5

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_5
    const/4 p1, 0x0

    .line 74
    :goto_1
    iget-object v3, v0, Lorg/maplibre/android/location/LocationComponentCompassEngine;->sensorManager:Landroid/hardware/SensorManager;

    .line 75
    .line 76
    const v4, 0x186a0

    .line 77
    .line 78
    .line 79
    if-eqz p1, :cond_6

    .line 80
    .line 81
    invoke-virtual {v3, v0, v2, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 82
    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_6
    iget-object p1, v0, Lorg/maplibre/android/location/LocationComponentCompassEngine;->gravitySensor:Landroid/hardware/Sensor;

    .line 86
    .line 87
    invoke-virtual {v3, v0, p1, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 88
    .line 89
    .line 90
    iget-object p1, v0, Lorg/maplibre/android/location/LocationComponentCompassEngine;->magneticFieldSensor:Landroid/hardware/Sensor;

    .line 91
    .line 92
    invoke-virtual {v3, v0, p1, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 93
    .line 94
    .line 95
    :cond_7
    :goto_2
    iget-object p0, p0, Lorg/maplibre/android/location/LocationComponent;->compassListener:Lorg/maplibre/android/location/LocationComponent$7;

    .line 96
    .line 97
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    :cond_8
    :goto_3
    return-void
.end method

.method public final updateLayerOffsets(Z)V
    .locals 8

    .line 1
    iget-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    .line 2
    .line 3
    iget-object v0, v0, Lorg/maplibre/android/maps/MapLibreMap;->transform:Lorg/maplibre/android/maps/Transform;

    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/maplibre/android/maps/Transform;->getCameraPosition()Lorg/maplibre/android/camera/CameraPosition;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lorg/maplibre/android/location/LocationComponent;->lastCameraPosition:Lorg/maplibre/android/camera/CameraPosition;

    .line 10
    .line 11
    const/16 v2, 0x8

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    if-eqz v1, :cond_4

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-wide v4, v0, Lorg/maplibre/android/camera/CameraPosition;->bearing:D

    .line 20
    .line 21
    iget-wide v6, v1, Lorg/maplibre/android/camera/CameraPosition;->bearing:D

    .line 22
    .line 23
    cmpl-double p1, v4, v6

    .line 24
    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    iget-object p1, p0, Lorg/maplibre/android/location/LocationComponent;->locationLayerController:Lorg/maplibre/android/location/LocationLayerController;

    .line 28
    .line 29
    iget v1, p1, Lorg/maplibre/android/location/LocationLayerController;->renderMode:I

    .line 30
    .line 31
    if-eq v1, v2, :cond_1

    .line 32
    .line 33
    iget-object p1, p1, Lorg/maplibre/android/location/LocationLayerController;->locationLayerRenderer:Lokio/internal/DefaultSocket;

    .line 34
    .line 35
    invoke-virtual {p1, v4, v5}, Lokio/internal/DefaultSocket;->cameraBearingUpdated(D)V

    .line 36
    .line 37
    .line 38
    :cond_1
    iget-wide v1, v0, Lorg/maplibre/android/camera/CameraPosition;->tilt:D

    .line 39
    .line 40
    iget-object p1, p0, Lorg/maplibre/android/location/LocationComponent;->lastCameraPosition:Lorg/maplibre/android/camera/CameraPosition;

    .line 41
    .line 42
    iget-wide v4, p1, Lorg/maplibre/android/camera/CameraPosition;->tilt:D

    .line 43
    .line 44
    cmpl-double p1, v1, v4

    .line 45
    .line 46
    if-eqz p1, :cond_2

    .line 47
    .line 48
    iget-object p1, p0, Lorg/maplibre/android/location/LocationComponent;->locationLayerController:Lorg/maplibre/android/location/LocationLayerController;

    .line 49
    .line 50
    iget-object p1, p1, Lorg/maplibre/android/location/LocationLayerController;->locationLayerRenderer:Lokio/internal/DefaultSocket;

    .line 51
    .line 52
    invoke-virtual {p1, v1, v2}, Lokio/internal/DefaultSocket;->cameraTiltUpdated(D)V

    .line 53
    .line 54
    .line 55
    :cond_2
    iget-wide v1, v0, Lorg/maplibre/android/camera/CameraPosition;->zoom:D

    .line 56
    .line 57
    iget-object p1, p0, Lorg/maplibre/android/location/LocationComponent;->lastCameraPosition:Lorg/maplibre/android/camera/CameraPosition;

    .line 58
    .line 59
    iget-wide v4, p1, Lorg/maplibre/android/camera/CameraPosition;->zoom:D

    .line 60
    .line 61
    cmpl-double p1, v1, v4

    .line 62
    .line 63
    if-eqz p1, :cond_3

    .line 64
    .line 65
    invoke-virtual {p0}, Lorg/maplibre/android/location/LocationComponent;->checkActivationState()V

    .line 66
    .line 67
    .line 68
    iget-object p1, p0, Lorg/maplibre/android/location/LocationComponent;->lastLocation:Landroid/location/Location;

    .line 69
    .line 70
    invoke-virtual {p0, p1, v3}, Lorg/maplibre/android/location/LocationComponent;->updateAccuracyRadius(Landroid/location/Location;Z)V

    .line 71
    .line 72
    .line 73
    :cond_3
    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->lastCameraPosition:Lorg/maplibre/android/camera/CameraPosition;

    .line 74
    .line 75
    return-void

    .line 76
    :cond_4
    :goto_0
    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->lastCameraPosition:Lorg/maplibre/android/camera/CameraPosition;

    .line 77
    .line 78
    iget-object p1, p0, Lorg/maplibre/android/location/LocationComponent;->locationLayerController:Lorg/maplibre/android/location/LocationLayerController;

    .line 79
    .line 80
    iget-wide v4, v0, Lorg/maplibre/android/camera/CameraPosition;->bearing:D

    .line 81
    .line 82
    iget v1, p1, Lorg/maplibre/android/location/LocationLayerController;->renderMode:I

    .line 83
    .line 84
    if-eq v1, v2, :cond_5

    .line 85
    .line 86
    iget-object p1, p1, Lorg/maplibre/android/location/LocationLayerController;->locationLayerRenderer:Lokio/internal/DefaultSocket;

    .line 87
    .line 88
    invoke-virtual {p1, v4, v5}, Lokio/internal/DefaultSocket;->cameraBearingUpdated(D)V

    .line 89
    .line 90
    .line 91
    :cond_5
    iget-object p1, p0, Lorg/maplibre/android/location/LocationComponent;->locationLayerController:Lorg/maplibre/android/location/LocationLayerController;

    .line 92
    .line 93
    iget-wide v0, v0, Lorg/maplibre/android/camera/CameraPosition;->tilt:D

    .line 94
    .line 95
    iget-object p1, p1, Lorg/maplibre/android/location/LocationLayerController;->locationLayerRenderer:Lokio/internal/DefaultSocket;

    .line 96
    .line 97
    invoke-virtual {p1, v0, v1}, Lokio/internal/DefaultSocket;->cameraTiltUpdated(D)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0}, Lorg/maplibre/android/location/LocationComponent;->checkActivationState()V

    .line 101
    .line 102
    .line 103
    iget-object p1, p0, Lorg/maplibre/android/location/LocationComponent;->lastLocation:Landroid/location/Location;

    .line 104
    .line 105
    invoke-virtual {p0, p1, v3}, Lorg/maplibre/android/location/LocationComponent;->updateAccuracyRadius(Landroid/location/Location;Z)V

    .line 106
    .line 107
    .line 108
    return-void
.end method

.method public final updateLocation(Landroid/location/Location;Z)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-boolean v2, v0, Lorg/maplibre/android/location/LocationComponent;->isLayerReady:Z

    .line 9
    .line 10
    if-nez v2, :cond_1

    .line 11
    .line 12
    iput-object v1, v0, Lorg/maplibre/android/location/LocationComponent;->lastLocation:Landroid/location/Location;

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 16
    .line 17
    .line 18
    move-result-wide v2

    .line 19
    iget-wide v4, v0, Lorg/maplibre/android/location/LocationComponent;->lastUpdateTime:J

    .line 20
    .line 21
    sub-long v4, v2, v4

    .line 22
    .line 23
    iget-wide v6, v0, Lorg/maplibre/android/location/LocationComponent;->fastestInterval:J

    .line 24
    .line 25
    cmp-long v4, v4, v6

    .line 26
    .line 27
    if-gez v4, :cond_2

    .line 28
    .line 29
    :goto_0
    return-void

    .line 30
    :cond_2
    iput-wide v2, v0, Lorg/maplibre/android/location/LocationComponent;->lastUpdateTime:J

    .line 31
    .line 32
    iget-object v2, v0, Lorg/maplibre/android/location/LocationComponent;->locationLayerController:Lorg/maplibre/android/location/LocationLayerController;

    .line 33
    .line 34
    iget-boolean v3, v2, Lorg/maplibre/android/location/LocationLayerController;->isHidden:Z

    .line 35
    .line 36
    iget-boolean v4, v0, Lorg/maplibre/android/location/LocationComponent;->isEnabled:Z

    .line 37
    .line 38
    const/4 v5, 0x1

    .line 39
    if-eqz v4, :cond_3

    .line 40
    .line 41
    iget-boolean v4, v0, Lorg/maplibre/android/location/LocationComponent;->isComponentStarted:Z

    .line 42
    .line 43
    if-eqz v4, :cond_3

    .line 44
    .line 45
    if-eqz v3, :cond_3

    .line 46
    .line 47
    invoke-virtual {v2}, Lorg/maplibre/android/location/LocationLayerController;->show()V

    .line 48
    .line 49
    .line 50
    iget-object v2, v0, Lorg/maplibre/android/location/LocationComponent;->options:Lorg/maplibre/android/location/LocationComponentOptions;

    .line 51
    .line 52
    iget-object v2, v2, Lorg/maplibre/android/location/LocationComponentOptions;->pulseEnabled:Ljava/lang/Boolean;

    .line 53
    .line 54
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-eqz v2, :cond_3

    .line 59
    .line 60
    iget-object v2, v0, Lorg/maplibre/android/location/LocationComponent;->locationLayerController:Lorg/maplibre/android/location/LocationLayerController;

    .line 61
    .line 62
    iget-object v2, v2, Lorg/maplibre/android/location/LocationLayerController;->locationLayerRenderer:Lokio/internal/DefaultSocket;

    .line 63
    .line 64
    invoke-virtual {v2, v5}, Lokio/internal/DefaultSocket;->adjustPulsingCircleLayerVisibility(Z)V

    .line 65
    .line 66
    .line 67
    :cond_3
    const/4 v2, 0x0

    .line 68
    if-nez p2, :cond_4

    .line 69
    .line 70
    iget-object v3, v0, Lorg/maplibre/android/location/LocationComponent;->staleStateManager:Lorg/maplibre/android/location/StaleStateManager;

    .line 71
    .line 72
    invoke-virtual {v3, v2}, Lorg/maplibre/android/location/StaleStateManager;->setState(Z)V

    .line 73
    .line 74
    .line 75
    iget-object v4, v3, Lorg/maplibre/android/location/StaleStateManager;->handler:Landroidx/preference/PreferenceFragmentCompat$1;

    .line 76
    .line 77
    const/4 v6, 0x0

    .line 78
    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    iget-wide v6, v3, Lorg/maplibre/android/location/StaleStateManager;->delayTime:J

    .line 82
    .line 83
    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 84
    .line 85
    .line 86
    :cond_4
    iget-object v3, v0, Lorg/maplibre/android/location/LocationComponent;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    .line 87
    .line 88
    iget-object v3, v3, Lorg/maplibre/android/maps/MapLibreMap;->transform:Lorg/maplibre/android/maps/Transform;

    .line 89
    .line 90
    invoke-virtual {v3}, Lorg/maplibre/android/maps/Transform;->getCameraPosition()Lorg/maplibre/android/camera/CameraPosition;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    invoke-virtual {v0}, Lorg/maplibre/android/location/LocationComponent;->checkActivationState()V

    .line 95
    .line 96
    .line 97
    iget-object v4, v0, Lorg/maplibre/android/location/LocationComponent;->locationCameraController:Lorg/maplibre/android/location/LocationCameraController;

    .line 98
    .line 99
    iget v4, v4, Lorg/maplibre/android/location/LocationCameraController;->cameraMode:I

    .line 100
    .line 101
    const/16 v6, 0x24

    .line 102
    .line 103
    if-ne v4, v6, :cond_5

    .line 104
    .line 105
    move v4, v5

    .line 106
    goto :goto_1

    .line 107
    :cond_5
    move v4, v2

    .line 108
    :goto_1
    iget-object v6, v0, Lorg/maplibre/android/location/LocationComponent;->locationAnimatorCoordinator:Lorg/maplibre/android/location/LocationAnimatorCoordinator;

    .line 109
    .line 110
    new-array v7, v5, [Landroid/location/Location;

    .line 111
    .line 112
    aput-object v1, v7, v2

    .line 113
    .line 114
    iget-object v8, v6, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->projection:Lorg/maplibre/android/maps/MapView$2;

    .line 115
    .line 116
    iget-object v9, v6, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->animatorArray:Landroid/util/SparseArray;

    .line 117
    .line 118
    aget-object v10, v7, v2

    .line 119
    .line 120
    iget-object v11, v6, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->previousLocation:Landroid/location/Location;

    .line 121
    .line 122
    if-nez v11, :cond_6

    .line 123
    .line 124
    iput-object v10, v6, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->previousLocation:Landroid/location/Location;

    .line 125
    .line 126
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 127
    .line 128
    .line 129
    move-result-wide v11

    .line 130
    const-wide/16 v13, 0x2ee

    .line 131
    .line 132
    sub-long/2addr v11, v13

    .line 133
    iput-wide v11, v6, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->locationUpdateTimestamp:J

    .line 134
    .line 135
    :cond_6
    invoke-virtual {v9, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v11

    .line 139
    check-cast v11, Lorg/maplibre/android/location/MapLibreAnimator;

    .line 140
    .line 141
    if-eqz v11, :cond_7

    .line 142
    .line 143
    invoke-virtual {v11}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v11

    .line 147
    check-cast v11, Lorg/maplibre/android/geometry/LatLng;

    .line 148
    .line 149
    goto :goto_2

    .line 150
    :cond_7
    new-instance v11, Lorg/maplibre/android/geometry/LatLng;

    .line 151
    .line 152
    iget-object v12, v6, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->previousLocation:Landroid/location/Location;

    .line 153
    .line 154
    invoke-direct {v11, v12}, Lorg/maplibre/android/geometry/LatLng;-><init>(Landroid/location/Location;)V

    .line 155
    .line 156
    .line 157
    :goto_2
    const/4 v12, 0x2

    .line 158
    invoke-virtual {v9, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v9

    .line 162
    check-cast v9, Lorg/maplibre/android/location/MapLibreFloatAnimator;

    .line 163
    .line 164
    if-eqz v9, :cond_8

    .line 165
    .line 166
    invoke-virtual {v9}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v9

    .line 170
    check-cast v9, Ljava/lang/Float;

    .line 171
    .line 172
    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    .line 173
    .line 174
    .line 175
    move-result v9

    .line 176
    goto :goto_3

    .line 177
    :cond_8
    iget-object v9, v6, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->previousLocation:Landroid/location/Location;

    .line 178
    .line 179
    invoke-virtual {v9}, Landroid/location/Location;->getBearing()F

    .line 180
    .line 181
    .line 182
    move-result v9

    .line 183
    :goto_3
    iget-object v13, v3, Lorg/maplibre/android/camera/CameraPosition;->target:Lorg/maplibre/android/geometry/LatLng;

    .line 184
    .line 185
    iget-wide v14, v3, Lorg/maplibre/android/camera/CameraPosition;->bearing:D

    .line 186
    .line 187
    double-to-float v3, v14

    .line 188
    const/high16 v14, 0x43b40000    # 360.0f

    .line 189
    .line 190
    rem-float/2addr v3, v14

    .line 191
    add-float/2addr v3, v14

    .line 192
    rem-float/2addr v3, v14

    .line 193
    if-nez v13, :cond_9

    .line 194
    .line 195
    move-object v13, v11

    .line 196
    :cond_9
    new-array v14, v12, [Lorg/maplibre/android/geometry/LatLng;

    .line 197
    .line 198
    aput-object v11, v14, v2

    .line 199
    .line 200
    move v15, v5

    .line 201
    :goto_4
    if-ge v15, v12, :cond_a

    .line 202
    .line 203
    move/from16 v16, v5

    .line 204
    .line 205
    new-instance v5, Lorg/maplibre/android/geometry/LatLng;

    .line 206
    .line 207
    add-int/lit8 v17, v15, -0x1

    .line 208
    .line 209
    aget-object v12, v7, v17

    .line 210
    .line 211
    invoke-direct {v5, v12}, Lorg/maplibre/android/geometry/LatLng;-><init>(Landroid/location/Location;)V

    .line 212
    .line 213
    .line 214
    aput-object v5, v14, v15

    .line 215
    .line 216
    add-int/lit8 v15, v15, 0x1

    .line 217
    .line 218
    move/from16 v5, v16

    .line 219
    .line 220
    const/4 v12, 0x2

    .line 221
    goto :goto_4

    .line 222
    :cond_a
    move/from16 v16, v5

    .line 223
    .line 224
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 225
    .line 226
    .line 227
    move-result-object v5

    .line 228
    invoke-static {v5, v7}, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->getBearingValues(Ljava/lang/Float;[Landroid/location/Location;)[Ljava/lang/Float;

    .line 229
    .line 230
    .line 231
    move-result-object v5

    .line 232
    invoke-virtual {v6, v2, v14}, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->createNewLatLngAnimator(I[Lorg/maplibre/android/geometry/LatLng;)V

    .line 233
    .line 234
    .line 235
    const/4 v9, 0x2

    .line 236
    invoke-virtual {v6, v9, v5}, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->createNewFloatAnimator(I[Ljava/lang/Float;)V

    .line 237
    .line 238
    .line 239
    aput-object v13, v14, v2

    .line 240
    .line 241
    if-eqz v4, :cond_b

    .line 242
    .line 243
    new-array v4, v9, [Ljava/lang/Float;

    .line 244
    .line 245
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 246
    .line 247
    .line 248
    move-result-object v5

    .line 249
    aput-object v5, v4, v2

    .line 250
    .line 251
    const/4 v5, 0x0

    .line 252
    invoke-static {v5, v3}, Lorg/wikipedia/util/UriUtil;->shortestRotation(FF)F

    .line 253
    .line 254
    .line 255
    move-result v3

    .line 256
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 257
    .line 258
    .line 259
    move-result-object v3

    .line 260
    aput-object v3, v4, v16

    .line 261
    .line 262
    :goto_5
    move/from16 v3, v16

    .line 263
    .line 264
    goto :goto_6

    .line 265
    :cond_b
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 266
    .line 267
    .line 268
    move-result-object v3

    .line 269
    invoke-static {v3, v7}, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->getBearingValues(Ljava/lang/Float;[Landroid/location/Location;)[Ljava/lang/Float;

    .line 270
    .line 271
    .line 272
    move-result-object v4

    .line 273
    goto :goto_5

    .line 274
    :goto_6
    invoke-virtual {v6, v3, v14}, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->createNewLatLngAnimator(I[Lorg/maplibre/android/geometry/LatLng;)V

    .line 275
    .line 276
    .line 277
    const/4 v3, 0x4

    .line 278
    invoke-virtual {v6, v3, v4}, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->createNewFloatAnimator(I[Ljava/lang/Float;)V

    .line 279
    .line 280
    .line 281
    new-instance v4, Lorg/maplibre/android/geometry/LatLng;

    .line 282
    .line 283
    invoke-direct {v4, v10}, Lorg/maplibre/android/geometry/LatLng;-><init>(Landroid/location/Location;)V

    .line 284
    .line 285
    .line 286
    invoke-static {v8, v13, v4}, Lorg/wikipedia/util/UriUtil;->immediateAnimation(Lorg/maplibre/android/maps/MapView$2;Lorg/maplibre/android/geometry/LatLng;Lorg/maplibre/android/geometry/LatLng;)Z

    .line 287
    .line 288
    .line 289
    move-result v5

    .line 290
    const-wide/16 v12, 0x0

    .line 291
    .line 292
    if-nez v5, :cond_e

    .line 293
    .line 294
    invoke-static {v8, v11, v4}, Lorg/wikipedia/util/UriUtil;->immediateAnimation(Lorg/maplibre/android/maps/MapView$2;Lorg/maplibre/android/geometry/LatLng;Lorg/maplibre/android/geometry/LatLng;)Z

    .line 295
    .line 296
    .line 297
    move-result v4

    .line 298
    if-eqz v4, :cond_c

    .line 299
    .line 300
    goto :goto_8

    .line 301
    :cond_c
    iget-wide v4, v6, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->locationUpdateTimestamp:J

    .line 302
    .line 303
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 304
    .line 305
    .line 306
    move-result-wide v7

    .line 307
    iput-wide v7, v6, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->locationUpdateTimestamp:J

    .line 308
    .line 309
    cmp-long v9, v4, v12

    .line 310
    .line 311
    if-nez v9, :cond_d

    .line 312
    .line 313
    goto :goto_7

    .line 314
    :cond_d
    sub-long/2addr v7, v4

    .line 315
    long-to-float v4, v7

    .line 316
    iget v5, v6, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->durationMultiplier:F

    .line 317
    .line 318
    mul-float/2addr v4, v5

    .line 319
    float-to-long v12, v4

    .line 320
    :goto_7
    const-wide/16 v4, 0x7d0

    .line 321
    .line 322
    invoke-static {v12, v13, v4, v5}, Ljava/lang/Math;->min(JJ)J

    .line 323
    .line 324
    .line 325
    move-result-wide v12

    .line 326
    :cond_e
    :goto_8
    const/4 v4, 0x1

    .line 327
    const/4 v9, 0x2

    .line 328
    filled-new-array {v2, v9, v4, v3}, [I

    .line 329
    .line 330
    .line 331
    move-result-object v3

    .line 332
    invoke-virtual {v6, v12, v13, v3}, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->playAnimators(J[I)V

    .line 333
    .line 334
    .line 335
    iput-object v10, v6, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->previousLocation:Landroid/location/Location;

    .line 336
    .line 337
    invoke-virtual {v0, v1, v2}, Lorg/maplibre/android/location/LocationComponent;->updateAccuracyRadius(Landroid/location/Location;Z)V

    .line 338
    .line 339
    .line 340
    iput-object v1, v0, Lorg/maplibre/android/location/LocationComponent;->lastLocation:Landroid/location/Location;

    .line 341
    .line 342
    return-void
.end method
