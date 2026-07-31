.class public final Lorg/maplibre/android/maps/Transform;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lorg/maplibre/android/maps/MapView$OnCameraDidChangeListener;


# instance fields
.field public cameraCancelableCallback:Lokhttp3/FormBody$Builder;

.field public final cameraChangeDispatcher:Lorg/maplibre/android/maps/CameraChangeDispatcher;

.field public cameraPosition:Lorg/maplibre/android/camera/CameraPosition;

.field public final handler:Landroid/os/Handler;

.field public final mapView:Lorg/maplibre/android/maps/MapView;

.field public final moveByChangeListener:Lorg/maplibre/android/maps/Transform$1;

.field public final nativeMap:Lorg/maplibre/android/maps/NativeMap;


# direct methods
.method public constructor <init>(Lorg/maplibre/android/maps/MapView;Lorg/maplibre/android/maps/NativeMap;Lorg/maplibre/android/maps/CameraChangeDispatcher;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lorg/maplibre/android/maps/Transform;->handler:Landroid/os/Handler;

    .line 14
    .line 15
    new-instance v0, Lorg/maplibre/android/maps/Transform$1;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Lorg/maplibre/android/maps/Transform$1;-><init>(Lorg/maplibre/android/maps/Transform;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lorg/maplibre/android/maps/Transform;->moveByChangeListener:Lorg/maplibre/android/maps/Transform$1;

    .line 21
    .line 22
    iput-object p1, p0, Lorg/maplibre/android/maps/Transform;->mapView:Lorg/maplibre/android/maps/MapView;

    .line 23
    .line 24
    iput-object p2, p0, Lorg/maplibre/android/maps/Transform;->nativeMap:Lorg/maplibre/android/maps/NativeMap;

    .line 25
    .line 26
    iput-object p3, p0, Lorg/maplibre/android/maps/Transform;->cameraChangeDispatcher:Lorg/maplibre/android/maps/CameraChangeDispatcher;

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final animateCamera(Lorg/maplibre/android/maps/MapLibreMap;Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;ILokhttp3/FormBody$Builder;)V
    .locals 11

    .line 1
    invoke-virtual {p2, p1}, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;->getCameraPosition(Lorg/maplibre/android/maps/MapLibreMap;)Lorg/maplibre/android/camera/CameraPosition;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object p2, p0, Lorg/maplibre/android/maps/Transform;->cameraPosition:Lorg/maplibre/android/camera/CameraPosition;

    .line 6
    .line 7
    invoke-virtual {p1, p2}, Lorg/maplibre/android/camera/CameraPosition;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    if-nez p2, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lorg/maplibre/android/maps/Transform;->cancelTransitions()V

    .line 14
    .line 15
    .line 16
    iget-object p2, p0, Lorg/maplibre/android/maps/Transform;->cameraChangeDispatcher:Lorg/maplibre/android/maps/CameraChangeDispatcher;

    .line 17
    .line 18
    const/4 v0, 0x3

    .line 19
    invoke-virtual {p2, v0}, Lorg/maplibre/android/maps/CameraChangeDispatcher;->onCameraMoveStarted(I)V

    .line 20
    .line 21
    .line 22
    iput-object p4, p0, Lorg/maplibre/android/maps/Transform;->cameraCancelableCallback:Lokhttp3/FormBody$Builder;

    .line 23
    .line 24
    iget-object p2, p0, Lorg/maplibre/android/maps/Transform;->mapView:Lorg/maplibre/android/maps/MapView;

    .line 25
    .line 26
    iget-object p2, p2, Lorg/maplibre/android/maps/MapView;->mapChangeReceiver:Lorg/maplibre/android/maps/MapChangeReceiver;

    .line 27
    .line 28
    iget-object p2, p2, Lorg/maplibre/android/maps/MapChangeReceiver;->onCameraDidChangeListenerList:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 31
    .line 32
    invoke-virtual {p2, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    iget-object v1, p1, Lorg/maplibre/android/camera/CameraPosition;->target:Lorg/maplibre/android/geometry/LatLng;

    .line 36
    .line 37
    iget-wide v2, p1, Lorg/maplibre/android/camera/CameraPosition;->zoom:D

    .line 38
    .line 39
    iget-wide v4, p1, Lorg/maplibre/android/camera/CameraPosition;->bearing:D

    .line 40
    .line 41
    iget-wide v6, p1, Lorg/maplibre/android/camera/CameraPosition;->tilt:D

    .line 42
    .line 43
    iget-object v8, p1, Lorg/maplibre/android/camera/CameraPosition;->padding:[D

    .line 44
    .line 45
    int-to-long v9, p3

    .line 46
    iget-object p0, p0, Lorg/maplibre/android/maps/Transform;->nativeMap:Lorg/maplibre/android/maps/NativeMap;

    .line 47
    .line 48
    move-object v0, p0

    .line 49
    check-cast v0, Lorg/maplibre/android/maps/NativeMapView;

    .line 50
    .line 51
    invoke-virtual/range {v0 .. v10}, Lorg/maplibre/android/maps/NativeMapView;->flyTo(Lorg/maplibre/android/geometry/LatLng;DDD[DJ)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_0
    invoke-virtual {p4}, Lokhttp3/FormBody$Builder;->onFinish()V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public final cancelTransitions()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/maplibre/android/maps/Transform;->cameraChangeDispatcher:Lorg/maplibre/android/maps/CameraChangeDispatcher;

    .line 2
    .line 3
    iget-object v1, v0, Lorg/maplibre/android/maps/CameraChangeDispatcher;->handler:Landroidx/preference/PreferenceFragmentCompat$1;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceFragmentCompat$1;->scheduleMessage(I)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lorg/maplibre/android/maps/Transform;->cameraCancelableCallback:Lokhttp3/FormBody$Builder;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Lorg/maplibre/android/maps/CameraChangeDispatcher;->onCameraIdle()V

    .line 14
    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    iput-object v3, p0, Lorg/maplibre/android/maps/Transform;->cameraCancelableCallback:Lokhttp3/FormBody$Builder;

    .line 18
    .line 19
    new-instance v3, Lorg/maplibre/android/maps/Transform$2;

    .line 20
    .line 21
    invoke-direct {v3, v1, v2}, Lorg/maplibre/android/maps/Transform$2;-><init>(Lorg/maplibre/android/maps/MapLibreMap$CancelableCallback;I)V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lorg/maplibre/android/maps/Transform;->handler:Landroid/os/Handler;

    .line 25
    .line 26
    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object p0, p0, Lorg/maplibre/android/maps/Transform;->nativeMap:Lorg/maplibre/android/maps/NativeMap;

    .line 30
    .line 31
    check-cast p0, Lorg/maplibre/android/maps/NativeMapView;

    .line 32
    .line 33
    invoke-virtual {p0}, Lorg/maplibre/android/maps/NativeMapView;->cancelTransitions()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Lorg/maplibre/android/maps/CameraChangeDispatcher;->onCameraIdle()V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final getCameraPosition()Lorg/maplibre/android/camera/CameraPosition;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/maplibre/android/maps/Transform;->cameraPosition:Lorg/maplibre/android/camera/CameraPosition;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lorg/maplibre/android/maps/Transform;->invalidateCameraPosition()Lorg/maplibre/android/camera/CameraPosition;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lorg/maplibre/android/maps/Transform;->cameraPosition:Lorg/maplibre/android/camera/CameraPosition;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public final getRawBearing()D
    .locals 2

    .line 1
    iget-object p0, p0, Lorg/maplibre/android/maps/Transform;->nativeMap:Lorg/maplibre/android/maps/NativeMap;

    .line 2
    .line 3
    check-cast p0, Lorg/maplibre/android/maps/NativeMapView;

    .line 4
    .line 5
    invoke-virtual {p0}, Lorg/maplibre/android/maps/NativeMapView;->getBearing()D

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public final getRawZoom()D
    .locals 2

    .line 1
    iget-object p0, p0, Lorg/maplibre/android/maps/Transform;->nativeMap:Lorg/maplibre/android/maps/NativeMap;

    .line 2
    .line 3
    check-cast p0, Lorg/maplibre/android/maps/NativeMapView;

    .line 4
    .line 5
    invoke-virtual {p0}, Lorg/maplibre/android/maps/NativeMapView;->getZoom()D

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public final getTilt()D
    .locals 2

    .line 1
    iget-object p0, p0, Lorg/maplibre/android/maps/Transform;->nativeMap:Lorg/maplibre/android/maps/NativeMap;

    .line 2
    .line 3
    check-cast p0, Lorg/maplibre/android/maps/NativeMapView;

    .line 4
    .line 5
    invoke-virtual {p0}, Lorg/maplibre/android/maps/NativeMapView;->getPitch()D

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public final invalidateCameraPosition()Lorg/maplibre/android/camera/CameraPosition;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/maplibre/android/maps/Transform;->nativeMap:Lorg/maplibre/android/maps/NativeMap;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    check-cast v0, Lorg/maplibre/android/maps/NativeMapView;

    .line 6
    .line 7
    invoke-virtual {v0}, Lorg/maplibre/android/maps/NativeMapView;->getCameraPosition()Lorg/maplibre/android/camera/CameraPosition;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lorg/maplibre/android/maps/Transform;->cameraPosition:Lorg/maplibre/android/camera/CameraPosition;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Lorg/maplibre/android/camera/CameraPosition;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    iget-object v1, p0, Lorg/maplibre/android/maps/Transform;->cameraChangeDispatcher:Lorg/maplibre/android/maps/CameraChangeDispatcher;

    .line 22
    .line 23
    invoke-virtual {v1}, Lorg/maplibre/android/maps/CameraChangeDispatcher;->onCameraMove()V

    .line 24
    .line 25
    .line 26
    :cond_0
    iput-object v0, p0, Lorg/maplibre/android/maps/Transform;->cameraPosition:Lorg/maplibre/android/camera/CameraPosition;

    .line 27
    .line 28
    :cond_1
    iget-object p0, p0, Lorg/maplibre/android/maps/Transform;->cameraPosition:Lorg/maplibre/android/camera/CameraPosition;

    .line 29
    .line 30
    return-object p0
.end method

.method public final moveBy(DDJ)V
    .locals 7

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p5, v0

    .line 4
    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lorg/maplibre/android/maps/Transform;->mapView:Lorg/maplibre/android/maps/MapView;

    .line 8
    .line 9
    iget-object v0, v0, Lorg/maplibre/android/maps/MapView;->mapChangeReceiver:Lorg/maplibre/android/maps/MapChangeReceiver;

    .line 10
    .line 11
    iget-object v0, v0, Lorg/maplibre/android/maps/MapChangeReceiver;->onCameraDidChangeListenerList:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 14
    .line 15
    iget-object v1, p0, Lorg/maplibre/android/maps/Transform;->moveByChangeListener:Lorg/maplibre/android/maps/Transform$1;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object p0, p0, Lorg/maplibre/android/maps/Transform;->nativeMap:Lorg/maplibre/android/maps/NativeMap;

    .line 21
    .line 22
    move-object v0, p0

    .line 23
    check-cast v0, Lorg/maplibre/android/maps/NativeMapView;

    .line 24
    .line 25
    move-wide v1, p1

    .line 26
    move-wide v3, p3

    .line 27
    move-wide v5, p5

    .line 28
    invoke-virtual/range {v0 .. v6}, Lorg/maplibre/android/maps/NativeMapView;->moveBy(DDJ)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final moveCamera(Lorg/maplibre/android/maps/MapLibreMap;Lorg/maplibre/android/camera/CameraUpdate;Lorg/maplibre/android/maps/MapLibreMap$CancelableCallback;)V
    .locals 10

    .line 1
    invoke-interface {p2, p1}, Lorg/maplibre/android/camera/CameraUpdate;->getCameraPosition(Lorg/maplibre/android/maps/MapLibreMap;)Lorg/maplibre/android/camera/CameraPosition;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p2, p0, Lorg/maplibre/android/maps/Transform;->cameraPosition:Lorg/maplibre/android/camera/CameraPosition;

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lorg/maplibre/android/camera/CameraPosition;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    if-nez p2, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lorg/maplibre/android/maps/Transform;->cancelTransitions()V

    .line 16
    .line 17
    .line 18
    const/4 p2, 0x3

    .line 19
    iget-object v0, p0, Lorg/maplibre/android/maps/Transform;->cameraChangeDispatcher:Lorg/maplibre/android/maps/CameraChangeDispatcher;

    .line 20
    .line 21
    invoke-virtual {v0, p2}, Lorg/maplibre/android/maps/CameraChangeDispatcher;->onCameraMoveStarted(I)V

    .line 22
    .line 23
    .line 24
    iget-object v2, p1, Lorg/maplibre/android/camera/CameraPosition;->target:Lorg/maplibre/android/geometry/LatLng;

    .line 25
    .line 26
    iget-wide v3, p1, Lorg/maplibre/android/camera/CameraPosition;->zoom:D

    .line 27
    .line 28
    iget-wide v5, p1, Lorg/maplibre/android/camera/CameraPosition;->tilt:D

    .line 29
    .line 30
    iget-wide v7, p1, Lorg/maplibre/android/camera/CameraPosition;->bearing:D

    .line 31
    .line 32
    iget-object v9, p1, Lorg/maplibre/android/camera/CameraPosition;->padding:[D

    .line 33
    .line 34
    iget-object p1, p0, Lorg/maplibre/android/maps/Transform;->nativeMap:Lorg/maplibre/android/maps/NativeMap;

    .line 35
    .line 36
    move-object v1, p1

    .line 37
    check-cast v1, Lorg/maplibre/android/maps/NativeMapView;

    .line 38
    .line 39
    invoke-virtual/range {v1 .. v9}, Lorg/maplibre/android/maps/NativeMapView;->jumpTo(Lorg/maplibre/android/geometry/LatLng;DDD[D)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lorg/maplibre/android/maps/Transform;->invalidateCameraPosition()Lorg/maplibre/android/camera/CameraPosition;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Lorg/maplibre/android/maps/CameraChangeDispatcher;->onCameraIdle()V

    .line 46
    .line 47
    .line 48
    new-instance p1, Lorg/maplibre/android/maps/Transform$2;

    .line 49
    .line 50
    const/4 p2, 0x1

    .line 51
    invoke-direct {p1, p3, p2}, Lorg/maplibre/android/maps/Transform$2;-><init>(Lorg/maplibre/android/maps/MapLibreMap$CancelableCallback;I)V

    .line 52
    .line 53
    .line 54
    iget-object p0, p0, Lorg/maplibre/android/maps/Transform;->handler:Landroid/os/Handler;

    .line 55
    .line 56
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :cond_0
    if-eqz p3, :cond_1

    .line 61
    .line 62
    invoke-interface {p3}, Lorg/maplibre/android/maps/MapLibreMap$CancelableCallback;->onFinish()V

    .line 63
    .line 64
    .line 65
    :cond_1
    return-void
.end method

.method public final onCameraDidChange(Z)V
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/maplibre/android/maps/Transform;->invalidateCameraPosition()Lorg/maplibre/android/camera/CameraPosition;

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lorg/maplibre/android/maps/Transform;->cameraCancelableCallback:Lokhttp3/FormBody$Builder;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lorg/maplibre/android/maps/Transform;->cameraCancelableCallback:Lokhttp3/FormBody$Builder;

    .line 12
    .line 13
    new-instance v0, Lorg/maplibre/android/maps/Transform$2;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-direct {v0, p1, v1}, Lorg/maplibre/android/maps/Transform$2;-><init>(Lorg/maplibre/android/maps/MapLibreMap$CancelableCallback;I)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lorg/maplibre/android/maps/Transform;->handler:Landroid/os/Handler;

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object p1, p0, Lorg/maplibre/android/maps/Transform;->cameraChangeDispatcher:Lorg/maplibre/android/maps/CameraChangeDispatcher;

    .line 25
    .line 26
    invoke-virtual {p1}, Lorg/maplibre/android/maps/CameraChangeDispatcher;->onCameraIdle()V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lorg/maplibre/android/maps/Transform;->mapView:Lorg/maplibre/android/maps/MapView;

    .line 30
    .line 31
    iget-object p1, p1, Lorg/maplibre/android/maps/MapView;->mapChangeReceiver:Lorg/maplibre/android/maps/MapChangeReceiver;

    .line 32
    .line 33
    iget-object p1, p1, Lorg/maplibre/android/maps/MapChangeReceiver;->onCameraDidChangeListenerList:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 36
    .line 37
    invoke-virtual {p1, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    :cond_1
    return-void
.end method

.method public final setMaxZoom(D)V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmpg-double v0, p1, v0

    .line 4
    .line 5
    if-ltz v0, :cond_1

    .line 6
    .line 7
    const-wide v0, 0x4039800000000000L    # 25.5

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    cmpl-double v0, p1, v0

    .line 13
    .line 14
    if-lez v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object p0, p0, Lorg/maplibre/android/maps/Transform;->nativeMap:Lorg/maplibre/android/maps/NativeMap;

    .line 18
    .line 19
    check-cast p0, Lorg/maplibre/android/maps/NativeMapView;

    .line 20
    .line 21
    invoke-virtual {p0, p1, p2}, Lorg/maplibre/android/maps/NativeMapView;->setMaxZoom(D)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v0, "Not setting maxZoomPreference, value is in unsupported range: "

    .line 28
    .line 29
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    const-string p1, "Mbgl-Transform"

    .line 40
    .line 41
    invoke-static {p1, p0}, Lorg/maplibre/android/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public final setZoom(DLandroid/graphics/PointF;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/maplibre/android/maps/Transform;->nativeMap:Lorg/maplibre/android/maps/NativeMap;

    .line 2
    .line 3
    check-cast p0, Lorg/maplibre/android/maps/NativeMapView;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lorg/maplibre/android/maps/NativeMapView;->setZoom(DLandroid/graphics/PointF;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final zoomBy(DLandroid/graphics/PointF;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/maplibre/android/maps/Transform;->nativeMap:Lorg/maplibre/android/maps/NativeMap;

    .line 2
    .line 3
    check-cast v0, Lorg/maplibre/android/maps/NativeMapView;

    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/maplibre/android/maps/NativeMapView;->getZoom()D

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    add-double/2addr v0, p1

    .line 10
    invoke-virtual {p0, v0, v1, p3}, Lorg/maplibre/android/maps/Transform;->setZoom(DLandroid/graphics/PointF;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
