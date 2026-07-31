.class public final Lorg/maplibre/android/location/LocationComponent$3;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lorg/maplibre/android/maps/MapLibreMap$OnMapClickListener;


# instance fields
.field public final synthetic this$0:Lorg/maplibre/android/location/LocationComponent;


# direct methods
.method public constructor <init>(Lorg/maplibre/android/location/LocationComponent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/maplibre/android/location/LocationComponent$3;->this$0:Lorg/maplibre/android/location/LocationComponent;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onMapClick(Lorg/maplibre/android/geometry/LatLng;)Z
    .locals 4

    .line 1
    iget-object p0, p0, Lorg/maplibre/android/location/LocationComponent$3;->this$0:Lorg/maplibre/android/location/LocationComponent;

    .line 2
    .line 3
    iget-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->onLocationClickListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    iget-object p0, p0, Lorg/maplibre/android/location/LocationComponent;->locationLayerController:Lorg/maplibre/android/location/LocationLayerController;

    .line 12
    .line 13
    iget-object p0, p0, Lorg/maplibre/android/location/LocationLayerController;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    .line 14
    .line 15
    iget-object v1, p0, Lorg/maplibre/android/maps/MapLibreMap;->projection:Lorg/maplibre/android/maps/MapView$2;

    .line 16
    .line 17
    invoke-virtual {v1, p1}, Lorg/maplibre/android/maps/MapView$2;->toScreenLocation(Lorg/maplibre/android/geometry/LatLng;)Landroid/graphics/PointF;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const-string v1, "mapbox-location-foreground-layer"

    .line 22
    .line 23
    const-string v2, "mapbox-location-bearing-layer"

    .line 24
    .line 25
    const-string v3, "mapbox-location-background-layer"

    .line 26
    .line 27
    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {p0, p1, v1}, Lorg/maplibre/android/maps/MapLibreMap;->queryRenderedFeatures(Landroid/graphics/PointF;[Ljava/lang/String;)Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    if-nez p0, :cond_1

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-nez p1, :cond_0

    .line 50
    .line 51
    const/4 p0, 0x1

    .line 52
    return p0

    .line 53
    :cond_0
    invoke-static {p0}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    throw p0

    .line 58
    :cond_1
    const/4 p0, 0x0

    .line 59
    return p0
.end method
