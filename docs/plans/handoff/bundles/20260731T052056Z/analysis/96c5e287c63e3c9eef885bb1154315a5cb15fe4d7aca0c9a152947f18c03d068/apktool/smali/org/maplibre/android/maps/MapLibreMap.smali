.class public final Lorg/maplibre/android/maps/MapLibreMap;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public annotationManager:Lcom/hcaptcha/sdk/HCaptcha;

.field public final awaitingStyleGetters:Ljava/util/ArrayList;

.field public final cameraChangeDispatcher:Lorg/maplibre/android/maps/CameraChangeDispatcher;

.field public debugActive:Z

.field public final developerAnimationStartedListeners:Ljava/util/ArrayList;

.field public locationComponent:Lorg/maplibre/android/location/LocationComponent;

.field public final nativeMapView:Lorg/maplibre/android/maps/NativeMap;

.field public final onGesturesManagerInteractionListener:Lorg/maplibre/android/maps/IconManager;

.field public final projection:Lorg/maplibre/android/maps/MapView$2;

.field public started:Z

.field public style:Lorg/maplibre/android/maps/Style;

.field public styleLoadedCallback:Lorg/maplibre/android/maps/Style$OnStyleLoaded;

.field public final transform:Lorg/maplibre/android/maps/Transform;

.field public final uiSettings:Lorg/maplibre/android/maps/UiSettings;


# direct methods
.method public constructor <init>(Lorg/maplibre/android/maps/NativeMap;Lorg/maplibre/android/maps/Transform;Lorg/maplibre/android/maps/UiSettings;Lorg/maplibre/android/maps/MapView$2;Lorg/maplibre/android/maps/IconManager;Lorg/maplibre/android/maps/CameraChangeDispatcher;Ljava/util/ArrayList;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/maplibre/android/maps/MapLibreMap;->awaitingStyleGetters:Ljava/util/ArrayList;

    .line 10
    .line 11
    iput-object p1, p0, Lorg/maplibre/android/maps/MapLibreMap;->nativeMapView:Lorg/maplibre/android/maps/NativeMap;

    .line 12
    .line 13
    iput-object p3, p0, Lorg/maplibre/android/maps/MapLibreMap;->uiSettings:Lorg/maplibre/android/maps/UiSettings;

    .line 14
    .line 15
    iput-object p4, p0, Lorg/maplibre/android/maps/MapLibreMap;->projection:Lorg/maplibre/android/maps/MapView$2;

    .line 16
    .line 17
    iput-object p2, p0, Lorg/maplibre/android/maps/MapLibreMap;->transform:Lorg/maplibre/android/maps/Transform;

    .line 18
    .line 19
    iput-object p5, p0, Lorg/maplibre/android/maps/MapLibreMap;->onGesturesManagerInteractionListener:Lorg/maplibre/android/maps/IconManager;

    .line 20
    .line 21
    iput-object p6, p0, Lorg/maplibre/android/maps/MapLibreMap;->cameraChangeDispatcher:Lorg/maplibre/android/maps/CameraChangeDispatcher;

    .line 22
    .line 23
    iput-object p7, p0, Lorg/maplibre/android/maps/MapLibreMap;->developerAnimationStartedListeners:Ljava/util/ArrayList;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final easeCamera(Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lorg/maplibre/android/maps/MapLibreMap;->notifyDeveloperAnimationListeners()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, p0}, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;->getCameraPosition(Lorg/maplibre/android/maps/MapLibreMap;)Lorg/maplibre/android/camera/CameraPosition;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->transform:Lorg/maplibre/android/maps/Transform;

    .line 9
    .line 10
    iget-object v0, p0, Lorg/maplibre/android/maps/Transform;->cameraPosition:Lorg/maplibre/android/camera/CameraPosition;

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Lorg/maplibre/android/camera/CameraPosition;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Lorg/maplibre/android/maps/Transform;->cancelTransitions()V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lorg/maplibre/android/maps/Transform;->cameraChangeDispatcher:Lorg/maplibre/android/maps/CameraChangeDispatcher;

    .line 22
    .line 23
    const/4 v1, 0x3

    .line 24
    invoke-virtual {v0, v1}, Lorg/maplibre/android/maps/CameraChangeDispatcher;->onCameraMoveStarted(I)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lorg/maplibre/android/maps/Transform;->mapView:Lorg/maplibre/android/maps/MapView;

    .line 28
    .line 29
    iget-object v0, v0, Lorg/maplibre/android/maps/MapView;->mapChangeReceiver:Lorg/maplibre/android/maps/MapChangeReceiver;

    .line 30
    .line 31
    iget-object v0, v0, Lorg/maplibre/android/maps/MapChangeReceiver;->onCameraDidChangeListenerList:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 34
    .line 35
    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    iget-object p0, p0, Lorg/maplibre/android/maps/Transform;->nativeMap:Lorg/maplibre/android/maps/NativeMap;

    .line 39
    .line 40
    iget-object v1, p1, Lorg/maplibre/android/camera/CameraPosition;->target:Lorg/maplibre/android/geometry/LatLng;

    .line 41
    .line 42
    iget-wide v2, p1, Lorg/maplibre/android/camera/CameraPosition;->zoom:D

    .line 43
    .line 44
    iget-wide v4, p1, Lorg/maplibre/android/camera/CameraPosition;->bearing:D

    .line 45
    .line 46
    iget-wide v6, p1, Lorg/maplibre/android/camera/CameraPosition;->tilt:D

    .line 47
    .line 48
    iget-object v8, p1, Lorg/maplibre/android/camera/CameraPosition;->padding:[D

    .line 49
    .line 50
    const-wide/16 v9, 0x3e8

    .line 51
    .line 52
    move-object v0, p0

    .line 53
    check-cast v0, Lorg/maplibre/android/maps/NativeMapView;

    .line 54
    .line 55
    invoke-virtual/range {v0 .. v10}, Lorg/maplibre/android/maps/NativeMapView;->easeTo(Lorg/maplibre/android/geometry/LatLng;DDD[DJ)V

    .line 56
    .line 57
    .line 58
    :cond_0
    return-void
.end method

.method public final getCameraForLatLngBounds(Lorg/maplibre/android/geometry/LatLngBounds;[IDD)Lorg/maplibre/android/camera/CameraPosition;
    .locals 7

    .line 1
    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->nativeMapView:Lorg/maplibre/android/maps/NativeMap;

    .line 2
    .line 3
    move-object v0, p0

    .line 4
    check-cast v0, Lorg/maplibre/android/maps/NativeMapView;

    .line 5
    .line 6
    move-object v1, p1

    .line 7
    move-object v2, p2

    .line 8
    move-wide v3, p3

    .line 9
    move-wide v5, p5

    .line 10
    invoke-virtual/range {v0 .. v6}, Lorg/maplibre/android/maps/NativeMapView;->getCameraForLatLngBounds(Lorg/maplibre/android/geometry/LatLngBounds;[IDD)Lorg/maplibre/android/camera/CameraPosition;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public final getMaxZoomLevel()D
    .locals 2

    .line 1
    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->transform:Lorg/maplibre/android/maps/Transform;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/maplibre/android/maps/Transform;->nativeMap:Lorg/maplibre/android/maps/NativeMap;

    .line 4
    .line 5
    check-cast p0, Lorg/maplibre/android/maps/NativeMapView;

    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/maplibre/android/maps/NativeMapView;->getMaxZoom()D

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    return-wide v0
.end method

.method public final getMinZoomLevel()D
    .locals 2

    .line 1
    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->transform:Lorg/maplibre/android/maps/Transform;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/maplibre/android/maps/Transform;->nativeMap:Lorg/maplibre/android/maps/NativeMap;

    .line 4
    .line 5
    check-cast p0, Lorg/maplibre/android/maps/NativeMapView;

    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/maplibre/android/maps/NativeMapView;->getMinZoom()D

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    return-wide v0
.end method

.method public final getStyle()Lorg/maplibre/android/maps/Style;
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->style:Lorg/maplibre/android/maps/Style;

    .line 2
    .line 3
    if-eqz p0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lorg/maplibre/android/maps/Style;->fullyLoaded:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    return-object p0

    .line 11
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 12
    return-object p0
.end method

.method public final notifyDeveloperAnimationListeners()V
    .locals 2

    .line 1
    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->developerAnimationStartedListeners:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lorg/maplibre/android/location/LocationComponent$10;

    .line 18
    .line 19
    iget-object v0, v0, Lorg/maplibre/android/location/LocationComponent$10;->this$0:Lorg/maplibre/android/location/LocationComponent;

    .line 20
    .line 21
    iget-boolean v1, v0, Lorg/maplibre/android/location/LocationComponent;->isComponentInitialized:Z

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    iget-boolean v1, v0, Lorg/maplibre/android/location/LocationComponent;->isEnabled:Z

    .line 26
    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    const/16 v1, 0x8

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lorg/maplibre/android/location/LocationComponent;->setCameraMode(I)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    return-void
.end method

.method public final onUpdateRegionChange()V
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->annotationManager:Lcom/hcaptcha/sdk/HCaptcha;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/hcaptcha/sdk/HCaptcha;->onSuccessListeners:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Lorg/maplibre/android/maps/IconManager;

    .line 6
    .line 7
    iget-object p0, p0, Lorg/maplibre/android/maps/IconManager;->iconMap:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p0, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    check-cast p0, Lorg/maplibre/android/annotations/InfoWindow;

    .line 33
    .line 34
    iget-object p0, p0, Lorg/maplibre/android/annotations/InfoWindow;->maplibreMap:Ljava/lang/ref/WeakReference;

    .line 35
    .line 36
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    check-cast p0, Lorg/maplibre/android/maps/MapLibreMap;

    .line 41
    .line 42
    const/4 p0, 0x0

    .line 43
    throw p0

    .line 44
    :cond_1
    :goto_0
    return-void
.end method

.method public final varargs queryRenderedFeatures(Landroid/graphics/PointF;[Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->nativeMapView:Lorg/maplibre/android/maps/NativeMap;

    .line 2
    .line 3
    check-cast p0, Lorg/maplibre/android/maps/NativeMapView;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lorg/maplibre/android/maps/NativeMapView;->queryRenderedFeatures(Landroid/graphics/PointF;[Ljava/lang/String;)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final varargs queryRenderedFeatures(Landroid/graphics/RectF;[Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 10
    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->nativeMapView:Lorg/maplibre/android/maps/NativeMap;

    check-cast p0, Lorg/maplibre/android/maps/NativeMapView;

    invoke-virtual {p0, p1, p2}, Lorg/maplibre/android/maps/NativeMapView;->queryRenderedFeatures(Landroid/graphics/RectF;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final setPadding(IIII)V
    .locals 7

    .line 1
    filled-new-array {p1, p2, p3, p4}, [I

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 p2, 0x4

    .line 6
    new-array p3, p2, [D

    .line 7
    .line 8
    const/4 p4, 0x0

    .line 9
    move v0, p4

    .line 10
    :goto_0
    if-ge v0, p2, :cond_0

    .line 11
    .line 12
    aget v1, p1, v0

    .line 13
    .line 14
    int-to-double v1, v1

    .line 15
    aput-wide v1, p3, v0

    .line 16
    .line 17
    add-int/lit8 v0, v0, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object p1, p0, Lorg/maplibre/android/maps/MapLibreMap;->projection:Lorg/maplibre/android/maps/MapView$2;

    .line 21
    .line 22
    iget-object p1, p1, Lorg/maplibre/android/maps/MapView$2;->val$cameraChangeDispatcher:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast p1, Lorg/maplibre/android/maps/NativeMap;

    .line 25
    .line 26
    check-cast p1, Lorg/maplibre/android/maps/NativeMapView;

    .line 27
    .line 28
    const-string p2, "setContentPadding"

    .line 29
    .line 30
    invoke-virtual {p1, p2}, Lorg/maplibre/android/maps/NativeMapView;->checkState(Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    if-eqz p2, :cond_1

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    iput-object p3, p1, Lorg/maplibre/android/maps/NativeMapView;->edgeInsets:[D

    .line 38
    .line 39
    :goto_1
    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->uiSettings:Lorg/maplibre/android/maps/UiSettings;

    .line 40
    .line 41
    iget-object v5, p0, Lorg/maplibre/android/maps/UiSettings;->logoMargins:[I

    .line 42
    .line 43
    aget v0, v5, p4

    .line 44
    .line 45
    const/4 p1, 0x1

    .line 46
    aget v1, v5, p1

    .line 47
    .line 48
    const/4 p2, 0x2

    .line 49
    aget v2, v5, p2

    .line 50
    .line 51
    const/4 p3, 0x3

    .line 52
    aget v3, v5, p3

    .line 53
    .line 54
    iget-object v4, p0, Lorg/maplibre/android/maps/UiSettings;->logoView:Landroid/widget/ImageView;

    .line 55
    .line 56
    if-eqz v4, :cond_2

    .line 57
    .line 58
    invoke-static/range {v0 .. v5}, Lorg/maplibre/android/maps/UiSettings;->setWidgetMargins(IIIILandroid/view/View;[I)V

    .line 59
    .line 60
    .line 61
    :cond_2
    iget-object v0, p0, Lorg/maplibre/android/maps/UiSettings;->compassView:Lorg/maplibre/android/maps/widgets/CompassView;

    .line 62
    .line 63
    if-eqz v0, :cond_3

    .line 64
    .line 65
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    goto :goto_2

    .line 70
    :cond_3
    move v0, p4

    .line 71
    :goto_2
    invoke-virtual {p0, v0}, Lorg/maplibre/android/maps/UiSettings;->setCompassEnabled(Z)V

    .line 72
    .line 73
    .line 74
    iget-object v6, p0, Lorg/maplibre/android/maps/UiSettings;->compassMargins:[I

    .line 75
    .line 76
    aget v1, v6, p4

    .line 77
    .line 78
    aget v2, v6, p1

    .line 79
    .line 80
    aget v3, v6, p2

    .line 81
    .line 82
    aget v4, v6, p3

    .line 83
    .line 84
    iget-object v5, p0, Lorg/maplibre/android/maps/UiSettings;->compassView:Lorg/maplibre/android/maps/widgets/CompassView;

    .line 85
    .line 86
    if-eqz v5, :cond_4

    .line 87
    .line 88
    invoke-static/range {v1 .. v6}, Lorg/maplibre/android/maps/UiSettings;->setWidgetMargins(IIIILandroid/view/View;[I)V

    .line 89
    .line 90
    .line 91
    :cond_4
    iget-object v0, p0, Lorg/maplibre/android/maps/UiSettings;->attributionsMargins:[I

    .line 92
    .line 93
    aget p4, v0, p4

    .line 94
    .line 95
    aget p1, v0, p1

    .line 96
    .line 97
    aget p2, v0, p2

    .line 98
    .line 99
    aget p3, v0, p3

    .line 100
    .line 101
    invoke-virtual {p0, p4, p1, p2, p3}, Lorg/maplibre/android/maps/UiSettings;->setAttributionMargins(IIII)V

    .line 102
    .line 103
    .line 104
    return-void
.end method

.method public final setStyle(Lorg/maplibre/android/maps/Style$Builder;Lorg/maplibre/android/maps/Style$OnStyleLoaded;)V
    .locals 1

    .line 1
    iput-object p2, p0, Lorg/maplibre/android/maps/MapLibreMap;->styleLoadedCallback:Lorg/maplibre/android/maps/Style$OnStyleLoaded;

    .line 2
    .line 3
    iget-object p2, p0, Lorg/maplibre/android/maps/MapLibreMap;->locationComponent:Lorg/maplibre/android/location/LocationComponent;

    .line 4
    .line 5
    invoke-virtual {p2}, Lorg/maplibre/android/location/LocationComponent;->onLocationLayerStop()V

    .line 6
    .line 7
    .line 8
    iget-object p2, p0, Lorg/maplibre/android/maps/MapLibreMap;->style:Lorg/maplibre/android/maps/Style;

    .line 9
    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    invoke-virtual {p2}, Lorg/maplibre/android/maps/Style;->clear()V

    .line 13
    .line 14
    .line 15
    :cond_0
    new-instance p2, Lorg/maplibre/android/maps/Style;

    .line 16
    .line 17
    iget-object v0, p0, Lorg/maplibre/android/maps/MapLibreMap;->nativeMapView:Lorg/maplibre/android/maps/NativeMap;

    .line 18
    .line 19
    invoke-direct {p2, p1, v0}, Lorg/maplibre/android/maps/Style;-><init>(Lorg/maplibre/android/maps/Style$Builder;Lorg/maplibre/android/maps/NativeMap;)V

    .line 20
    .line 21
    .line 22
    iput-object p2, p0, Lorg/maplibre/android/maps/MapLibreMap;->style:Lorg/maplibre/android/maps/Style;

    .line 23
    .line 24
    iget-object p0, p1, Lorg/maplibre/android/maps/Style$Builder;->styleUri:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p0, Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    if-nez p0, :cond_1

    .line 33
    .line 34
    iget-object p0, p1, Lorg/maplibre/android/maps/Style$Builder;->styleUri:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast p0, Ljava/lang/String;

    .line 37
    .line 38
    check-cast v0, Lorg/maplibre/android/maps/NativeMapView;

    .line 39
    .line 40
    invoke-virtual {v0, p0}, Lorg/maplibre/android/maps/NativeMapView;->setStyleUri(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_1
    const/4 p0, 0x0

    .line 45
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-nez p1, :cond_2

    .line 50
    .line 51
    check-cast v0, Lorg/maplibre/android/maps/NativeMapView;

    .line 52
    .line 53
    invoke-virtual {v0, p0}, Lorg/maplibre/android/maps/NativeMapView;->setStyleJson(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_2
    const-string/jumbo p0, "{\"version\": 8,\"sources\": {},\"layers\": []}"

    .line 58
    .line 59
    .line 60
    check-cast v0, Lorg/maplibre/android/maps/NativeMapView;

    .line 61
    .line 62
    invoke-virtual {v0, p0}, Lorg/maplibre/android/maps/NativeMapView;->setStyleJson(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method
