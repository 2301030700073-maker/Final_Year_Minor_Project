.class public final Lorg/maplibre/android/location/LocationComponent$1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lorg/maplibre/android/maps/MapLibreMap$OnCameraMoveListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/maplibre/android/location/LocationComponent$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lorg/maplibre/android/location/LocationComponent$1;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onCameraMove()V
    .locals 2

    .line 1
    iget v0, p0, Lorg/maplibre/android/location/LocationComponent$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/maplibre/android/location/LocationComponent$1;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Lorg/maplibre/android/location/LocationCameraController;

    .line 9
    .line 10
    iget-object v0, p0, Lorg/maplibre/android/location/LocationCameraController;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    .line 11
    .line 12
    invoke-virtual {p0}, Lorg/maplibre/android/location/LocationCameraController;->isLocationTracking()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    iget-object v1, p0, Lorg/maplibre/android/location/LocationCameraController;->lastLocation:Lorg/maplibre/android/geometry/LatLng;

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    iget-object p0, p0, Lorg/maplibre/android/location/LocationCameraController;->options:Lorg/maplibre/android/location/LocationComponentOptions;

    .line 23
    .line 24
    iget-boolean p0, p0, Lorg/maplibre/android/location/LocationComponentOptions;->trackingGesturesManagement:Z

    .line 25
    .line 26
    if-eqz p0, :cond_0

    .line 27
    .line 28
    iget-object p0, v0, Lorg/maplibre/android/maps/MapLibreMap;->projection:Lorg/maplibre/android/maps/MapView$2;

    .line 29
    .line 30
    invoke-virtual {p0, v1}, Lorg/maplibre/android/maps/MapView$2;->toScreenLocation(Lorg/maplibre/android/geometry/LatLng;)Landroid/graphics/PointF;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    iget-object v0, v0, Lorg/maplibre/android/maps/MapLibreMap;->uiSettings:Lorg/maplibre/android/maps/UiSettings;

    .line 35
    .line 36
    iput-object p0, v0, Lorg/maplibre/android/maps/UiSettings;->userProvidedFocalPoint:Landroid/graphics/PointF;

    .line 37
    .line 38
    iget-object v0, v0, Lorg/maplibre/android/maps/UiSettings;->focalPointChangeListener:Lorg/maplibre/android/maps/FocalPointChangeListener;

    .line 39
    .line 40
    invoke-interface {v0, p0}, Lorg/maplibre/android/maps/FocalPointChangeListener;->onFocalPointChanged(Landroid/graphics/PointF;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    return-void

    .line 44
    :pswitch_0
    check-cast p0, Lorg/maplibre/android/location/LocationComponent;

    .line 45
    .line 46
    const/4 v0, 0x0

    .line 47
    invoke-virtual {p0, v0}, Lorg/maplibre/android/location/LocationComponent;->updateLayerOffsets(Z)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
