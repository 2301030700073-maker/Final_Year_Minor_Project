.class public final Lorg/maplibre/android/location/LocationComponent$6;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final synthetic this$0:Lorg/maplibre/android/location/LocationComponent;


# direct methods
.method public synthetic constructor <init>(Lorg/maplibre/android/location/LocationComponent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/maplibre/android/location/LocationComponent$6;->this$0:Lorg/maplibre/android/location/LocationComponent;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onLocationCameraTransitionFinished(I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lorg/maplibre/android/location/LocationComponent$6;->this$0:Lorg/maplibre/android/location/LocationComponent;

    .line 2
    .line 3
    iget-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->locationAnimatorCoordinator:Lorg/maplibre/android/location/LocationAnimatorCoordinator;

    .line 4
    .line 5
    iget-object p0, p0, Lorg/maplibre/android/location/LocationComponent;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    .line 6
    .line 7
    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->transform:Lorg/maplibre/android/maps/Transform;

    .line 8
    .line 9
    invoke-virtual {p0}, Lorg/maplibre/android/maps/Transform;->getCameraPosition()Lorg/maplibre/android/camera/CameraPosition;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const/16 v1, 0x24

    .line 14
    .line 15
    if-ne p1, v1, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    :goto_0
    invoke-virtual {v0, p0, p1}, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->resetAllCameraAnimations(Lorg/maplibre/android/camera/CameraPosition;Z)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
