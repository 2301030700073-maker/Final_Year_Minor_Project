.class public final Lorg/maplibre/android/location/LocationComponent$5;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


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
    iput-object p1, p0, Lorg/maplibre/android/location/LocationComponent$5;->this$0:Lorg/maplibre/android/location/LocationComponent;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onStaleStateChange(Z)V
    .locals 5

    .line 1
    iget-object p0, p0, Lorg/maplibre/android/location/LocationComponent$5;->this$0:Lorg/maplibre/android/location/LocationComponent;

    .line 2
    .line 3
    iget-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->locationLayerController:Lorg/maplibre/android/location/LocationLayerController;

    .line 4
    .line 5
    iput-boolean p1, v0, Lorg/maplibre/android/location/LocationLayerController;->isStale:Z

    .line 6
    .line 7
    iget-object v1, v0, Lorg/maplibre/android/location/LocationLayerController;->locationLayerRenderer:Lokio/internal/DefaultSocket;

    .line 8
    .line 9
    iget v0, v0, Lorg/maplibre/android/location/LocationLayerController;->renderMode:I

    .line 10
    .line 11
    iget-object v2, v1, Lokio/internal/DefaultSocket;->source:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v2, Lorg/maplibre/geojson/Feature;

    .line 14
    .line 15
    const-string v3, "mapbox-property-location-stale"

    .line 16
    .line 17
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    invoke-virtual {v2, v3, v4}, Lorg/maplibre/geojson/Feature;->addBooleanProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Lokio/internal/DefaultSocket;->refreshSource()V

    .line 25
    .line 26
    .line 27
    const/16 v2, 0x8

    .line 28
    .line 29
    if-eq v0, v2, :cond_0

    .line 30
    .line 31
    xor-int/lit8 v0, p1, 0x1

    .line 32
    .line 33
    const-string v2, "mapbox-location-accuracy-layer"

    .line 34
    .line 35
    invoke-virtual {v1, v2, v0}, Lokio/internal/DefaultSocket;->setLayerVisibility(Ljava/lang/String;Z)V

    .line 36
    .line 37
    .line 38
    :cond_0
    iget-object p0, p0, Lorg/maplibre/android/location/LocationComponent;->onLocationStaleListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 39
    .line 40
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Lorg/maplibre/android/location/LocationComponent$5;

    .line 55
    .line 56
    invoke-virtual {v0, p1}, Lorg/maplibre/android/location/LocationComponent$5;->onStaleStateChange(Z)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    return-void
.end method
