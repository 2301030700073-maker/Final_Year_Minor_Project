.class public final Lorg/maplibre/android/location/engine/MapLibreFusedLocationEngineImpl$MapLibreLocationEngineCallbackTransport;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field public final callback:Landroidx/lifecycle/WeakReference;

.field public currentBestLocation:Landroid/location/Location;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/WeakReference;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/maplibre/android/location/engine/MapLibreFusedLocationEngineImpl$MapLibreLocationEngineCallbackTransport;->callback:Landroidx/lifecycle/WeakReference;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/maplibre/android/location/engine/MapLibreFusedLocationEngineImpl$MapLibreLocationEngineCallbackTransport;->currentBestLocation:Landroid/location/Location;

    .line 2
    .line 3
    invoke-static {p1, v0}, Lokhttp3/Headers$Companion;->isBetterLocation(Landroid/location/Location;Landroid/location/Location;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iput-object p1, p0, Lorg/maplibre/android/location/engine/MapLibreFusedLocationEngineImpl$MapLibreLocationEngineCallbackTransport;->currentBestLocation:Landroid/location/Location;

    .line 10
    .line 11
    :cond_0
    iget-object p1, p0, Lorg/maplibre/android/location/engine/MapLibreFusedLocationEngineImpl$MapLibreLocationEngineCallbackTransport;->currentBestLocation:Landroid/location/Location;

    .line 12
    .line 13
    new-instance v0, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    :cond_1
    new-instance p1, Lokhttp3/Dispatcher$promoteAndExecute$Effects;

    .line 24
    .line 25
    invoke-direct {p1, v0}, Lokhttp3/Dispatcher$promoteAndExecute$Effects;-><init>(Ljava/util/ArrayList;)V

    .line 26
    .line 27
    .line 28
    iget-object p0, p0, Lorg/maplibre/android/location/engine/MapLibreFusedLocationEngineImpl$MapLibreLocationEngineCallbackTransport;->callback:Landroidx/lifecycle/WeakReference;

    .line 29
    .line 30
    iget v0, p0, Landroidx/lifecycle/WeakReference;->$r8$classId:I

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    const/4 v2, 0x0

    .line 34
    iget-object p1, p1, Lokhttp3/Dispatcher$promoteAndExecute$Effects;->callsToExecute:Ljava/util/List;

    .line 35
    .line 36
    packed-switch v0, :pswitch_data_0

    .line 37
    .line 38
    .line 39
    iget-object p0, p0, Landroidx/lifecycle/WeakReference;->delegate:Ljava/lang/ref/WeakReference;

    .line 40
    .line 41
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    check-cast p0, Lorg/maplibre/android/location/LocationComponent;

    .line 46
    .line 47
    if-eqz p0, :cond_4

    .line 48
    .line 49
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_2

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    move-object v2, p1

    .line 61
    check-cast v2, Landroid/location/Location;

    .line 62
    .line 63
    :goto_0
    const/4 p1, 0x1

    .line 64
    invoke-virtual {p0, v2, p1}, Lorg/maplibre/android/location/LocationComponent;->updateLocation(Landroid/location/Location;Z)V

    .line 65
    .line 66
    .line 67
    goto :goto_2

    .line 68
    :pswitch_0
    iget-object p0, p0, Landroidx/lifecycle/WeakReference;->delegate:Ljava/lang/ref/WeakReference;

    .line 69
    .line 70
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    check-cast p0, Lorg/maplibre/android/location/LocationComponent;

    .line 75
    .line 76
    if-eqz p0, :cond_4

    .line 77
    .line 78
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-eqz v0, :cond_3

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_3
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    move-object v2, p1

    .line 90
    check-cast v2, Landroid/location/Location;

    .line 91
    .line 92
    :goto_1
    invoke-virtual {p0, v2, v1}, Lorg/maplibre/android/location/LocationComponent;->updateLocation(Landroid/location/Location;Z)V

    .line 93
    .line 94
    .line 95
    :cond_4
    :goto_2
    return-void

    .line 96
    nop

    .line 97
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    new-array p0, p0, [Ljava/lang/Object;

    .line 3
    .line 4
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    invoke-static {p0}, Ltimber/log/Timber$Forest;->d([Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    new-array p0, p0, [Ljava/lang/Object;

    .line 3
    .line 4
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    invoke-static {p0}, Ltimber/log/Timber$Forest;->d([Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    new-array p0, p0, [Ljava/lang/Object;

    .line 3
    .line 4
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    invoke-static {p0}, Ltimber/log/Timber$Forest;->d([Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
