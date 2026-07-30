.class public Lcom/reactnativecommunity/geolocation/AndroidLocationManager;
.super Lcom/reactnativecommunity/geolocation/BaseLocationManager;
.source "AndroidLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/reactnativecommunity/geolocation/AndroidLocationManager$SingleUpdateRequest;
    }
.end annotation


# instance fields
.field private final mLocationListener:Landroid/location/LocationListener;

.field private mWatchedProvider:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/reactnativecommunity/geolocation/BaseLocationManager;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 31
    new-instance p1, Lcom/reactnativecommunity/geolocation/AndroidLocationManager$1;

    invoke-direct {p1, p0}, Lcom/reactnativecommunity/geolocation/AndroidLocationManager$1;-><init>(Lcom/reactnativecommunity/geolocation/AndroidLocationManager;)V

    iput-object p1, p0, Lcom/reactnativecommunity/geolocation/AndroidLocationManager;->mLocationListener:Landroid/location/LocationListener;

    return-void
.end method

.method private getValidProvider(Landroid/location/LocationManager;Z)Ljava/lang/String;
    .locals 5
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 127
    const-string v0, "network"

    const-string v1, "gps"

    if-eqz p2, :cond_0

    move-object p2, v1

    goto :goto_0

    :cond_0
    move-object p2, v0

    .line 128
    :goto_0
    invoke-virtual {p1, p2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    .line 129
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    move-object p2, v0

    goto :goto_1

    :cond_1
    move-object p2, v1

    .line 132
    :goto_1
    invoke-virtual {p1, p2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    return-object v3

    .line 137
    :cond_2
    iget-object p1, p0, Lcom/reactnativecommunity/geolocation/AndroidLocationManager;->mReactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    .line 138
    iget-object v2, p0, Lcom/reactnativecommunity/geolocation/AndroidLocationManager;->mReactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    const-string v4, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v2, v4}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 139
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-nez p1, :cond_4

    .line 140
    :cond_3
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    if-eqz v2, :cond_5

    :cond_4
    return-object v3

    :cond_5
    return-object p2
.end method


# virtual methods
.method public getCurrentLocationData(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 10

    .line 64
    invoke-static {p1}, Lcom/reactnativecommunity/geolocation/BaseLocationManager$LocationOptions;->fromReactMap(Lcom/facebook/react/bridge/ReadableMap;)Lcom/reactnativecommunity/geolocation/BaseLocationManager$LocationOptions;

    move-result-object p1

    .line 67
    iget-object v0, p0, Lcom/reactnativecommunity/geolocation/AndroidLocationManager;->mReactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    const-string v1, "location"

    .line 68
    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/location/LocationManager;

    .line 69
    iget-boolean v0, p1, Lcom/reactnativecommunity/geolocation/BaseLocationManager$LocationOptions;->highAccuracy:Z

    invoke-direct {p0, v2, v0}, Lcom/reactnativecommunity/geolocation/AndroidLocationManager;->getValidProvider(Landroid/location/LocationManager;Z)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 71
    sget p1, Lcom/reactnativecommunity/geolocation/PositionError;->POSITION_UNAVAILABLE:I

    const-string p2, "No location provider available."

    .line 72
    invoke-static {p1, p2}, Lcom/reactnativecommunity/geolocation/PositionError;->buildError(ILjava/lang/String;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 71
    invoke-interface {p3, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void

    .line 76
    :cond_0
    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 77
    invoke-static {}, Lcom/facebook/react/common/SystemClock;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    long-to-double v4, v4

    iget-wide v6, p1, Lcom/reactnativecommunity/geolocation/BaseLocationManager$LocationOptions;->maximumAge:D

    cmpg-double v1, v4, v6

    if-gez v1, :cond_1

    .line 78
    invoke-static {v0}, Lcom/reactnativecommunity/geolocation/AndroidLocationManager;->locationToMap(Landroid/location/Location;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void

    .line 82
    :cond_1
    new-instance v9, Lcom/reactnativecommunity/geolocation/AndroidLocationManager$SingleUpdateRequest;

    iget-wide v4, p1, Lcom/reactnativecommunity/geolocation/BaseLocationManager$LocationOptions;->timeout:J

    const/4 v8, 0x0

    move-object v1, v9

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v1 .. v8}, Lcom/reactnativecommunity/geolocation/AndroidLocationManager$SingleUpdateRequest;-><init>(Landroid/location/LocationManager;Ljava/lang/String;JLcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;Lcom/reactnativecommunity/geolocation/AndroidLocationManager-IA;)V

    .line 83
    invoke-virtual {v9, v0}, Lcom/reactnativecommunity/geolocation/AndroidLocationManager$SingleUpdateRequest;->invoke(Landroid/location/Location;)V

    return-void
.end method

.method public startObserving(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 7

    .line 90
    const-string v0, "gps"

    iget-object v1, p0, Lcom/reactnativecommunity/geolocation/AndroidLocationManager;->mWatchedProvider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 93
    :cond_0
    invoke-static {p1}, Lcom/reactnativecommunity/geolocation/BaseLocationManager$LocationOptions;->fromReactMap(Lcom/facebook/react/bridge/ReadableMap;)Lcom/reactnativecommunity/geolocation/BaseLocationManager$LocationOptions;

    move-result-object p1

    .line 96
    iget-object v0, p0, Lcom/reactnativecommunity/geolocation/AndroidLocationManager;->mReactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    const-string v1, "location"

    .line 97
    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/location/LocationManager;

    .line 98
    iget-boolean v0, p1, Lcom/reactnativecommunity/geolocation/BaseLocationManager$LocationOptions;->highAccuracy:Z

    invoke-direct {p0, v1, v0}, Lcom/reactnativecommunity/geolocation/AndroidLocationManager;->getValidProvider(Landroid/location/LocationManager;Z)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 100
    sget p1, Lcom/reactnativecommunity/geolocation/PositionError;->POSITION_UNAVAILABLE:I

    const-string v0, "No location provider available."

    invoke-virtual {p0, p1, v0}, Lcom/reactnativecommunity/geolocation/AndroidLocationManager;->emitError(ILjava/lang/String;)V

    return-void

    .line 103
    :cond_1
    iget-object v2, p0, Lcom/reactnativecommunity/geolocation/AndroidLocationManager;->mWatchedProvider:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 104
    iget-object v2, p0, Lcom/reactnativecommunity/geolocation/AndroidLocationManager;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 105
    iget v5, p1, Lcom/reactnativecommunity/geolocation/BaseLocationManager$LocationOptions;->distanceFilter:F

    iget-object v6, p0, Lcom/reactnativecommunity/geolocation/AndroidLocationManager;->mLocationListener:Landroid/location/LocationListener;

    const-wide/16 v3, 0x3e8

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 111
    :cond_2
    iput-object v0, p0, Lcom/reactnativecommunity/geolocation/AndroidLocationManager;->mWatchedProvider:Ljava/lang/String;

    return-void
.end method

.method public stopObserving()V
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/reactnativecommunity/geolocation/AndroidLocationManager;->mReactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    const-string v1, "location"

    .line 119
    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 120
    iget-object v1, p0, Lcom/reactnativecommunity/geolocation/AndroidLocationManager;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    const/4 v0, 0x0

    .line 121
    iput-object v0, p0, Lcom/reactnativecommunity/geolocation/AndroidLocationManager;->mWatchedProvider:Ljava/lang/String;

    return-void
.end method
