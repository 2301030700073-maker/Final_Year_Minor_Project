.class public Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager;
.super Lcom/reactnativecommunity/geolocation/BaseLocationManager;
.source "PlayServicesLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager$CallbackHolder;
    }
.end annotation


# instance fields
.field private mFusedLocationClient:Lcom/google/android/gms/location/FusedLocationProviderClient;

.field private mLocationCallback:Lcom/google/android/gms/location/LocationCallback;

.field private mLocationServicesSettingsClient:Lcom/google/android/gms/location/SettingsClient;

.field private mSingleLocationCallback:Lcom/google/android/gms/location/LocationCallback;


# direct methods
.method public static synthetic $r8$lambda$7MGPPRaZ5b35PTN__BsWkEgA1yE(Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager;Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationCallback;Lcom/google/android/gms/location/LocationSettingsResponse;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager;->lambda$checkLocationSettings$1(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationCallback;Lcom/google/android/gms/location/LocationSettingsResponse;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VtdL9DSzLIusUGDaGyuCQjHi2PE(Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager;Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationCallback;Lcom/facebook/react/bridge/Callback;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager;->lambda$checkLocationSettings$2(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationCallback;Lcom/facebook/react/bridge/Callback;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zB3pbdWh82yoqGyZQIUirUcN_RQ(Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager;Lcom/reactnativecommunity/geolocation/BaseLocationManager$LocationOptions;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/ReadableMap;Landroid/location/Location;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager;->lambda$getCurrentLocationData$0(Lcom/reactnativecommunity/geolocation/BaseLocationManager$LocationOptions;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/ReadableMap;Landroid/location/Location;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmFusedLocationClient(Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager;)Lcom/google/android/gms/location/FusedLocationProviderClient;
    .locals 0

    iget-object p0, p0, Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager;->mFusedLocationClient:Lcom/google/android/gms/location/FusedLocationProviderClient;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSingleLocationCallback(Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager;)Lcom/google/android/gms/location/LocationCallback;
    .locals 0

    iget-object p0, p0, Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager;->mSingleLocationCallback:Lcom/google/android/gms/location/LocationCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmSingleLocationCallback(Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager;Lcom/google/android/gms/location/LocationCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager;->mSingleLocationCallback:Lcom/google/android/gms/location/LocationCallback;

    return-void
.end method

.method protected constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 1

    .line 37
    invoke-direct {p0, p1}, Lcom/reactnativecommunity/geolocation/BaseLocationManager;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 38
    invoke-static {p1}, Lcom/google/android/gms/location/LocationServices;->getFusedLocationProviderClient(Landroid/content/Context;)Lcom/google/android/gms/location/FusedLocationProviderClient;

    move-result-object v0

    iput-object v0, p0, Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager;->mFusedLocationClient:Lcom/google/android/gms/location/FusedLocationProviderClient;

    .line 39
    invoke-static {p1}, Lcom/google/android/gms/location/LocationServices;->getSettingsClient(Landroid/content/Context;)Lcom/google/android/gms/location/SettingsClient;

    move-result-object p1

    iput-object p1, p0, Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager;->mLocationServicesSettingsClient:Lcom/google/android/gms/location/SettingsClient;

    return-void
.end method

.method private checkLocationSettings(Lcom/facebook/react/bridge/ReadableMap;Lcom/google/android/gms/location/LocationCallback;Lcom/facebook/react/bridge/Callback;)V
    .locals 3

    .line 103
    invoke-static {p1}, Lcom/reactnativecommunity/geolocation/BaseLocationManager$LocationOptions;->fromReactMap(Lcom/facebook/react/bridge/ReadableMap;)Lcom/reactnativecommunity/geolocation/BaseLocationManager$LocationOptions;

    move-result-object p1

    .line 104
    new-instance v0, Lcom/google/android/gms/location/LocationRequest$Builder;

    iget v1, p1, Lcom/reactnativecommunity/geolocation/BaseLocationManager$LocationOptions;->interval:I

    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/location/LocationRequest$Builder;-><init>(J)V

    .line 105
    iget-boolean v1, p1, Lcom/reactnativecommunity/geolocation/BaseLocationManager$LocationOptions;->highAccuracy:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x64

    goto :goto_0

    :cond_0
    const/16 v1, 0x68

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/LocationRequest$Builder;->setPriority(I)Lcom/google/android/gms/location/LocationRequest$Builder;

    .line 106
    iget-wide v1, p1, Lcom/reactnativecommunity/geolocation/BaseLocationManager$LocationOptions;->maximumAge:D

    double-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/location/LocationRequest$Builder;->setMaxUpdateAgeMillis(J)Lcom/google/android/gms/location/LocationRequest$Builder;

    .line 108
    iget v1, p1, Lcom/reactnativecommunity/geolocation/BaseLocationManager$LocationOptions;->fastestInterval:I

    if-ltz v1, :cond_1

    .line 109
    iget v1, p1, Lcom/reactnativecommunity/geolocation/BaseLocationManager$LocationOptions;->fastestInterval:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/location/LocationRequest$Builder;->setMinUpdateIntervalMillis(J)Lcom/google/android/gms/location/LocationRequest$Builder;

    .line 112
    :cond_1
    iget v1, p1, Lcom/reactnativecommunity/geolocation/BaseLocationManager$LocationOptions;->distanceFilter:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_2

    .line 113
    iget p1, p1, Lcom/reactnativecommunity/geolocation/BaseLocationManager$LocationOptions;->distanceFilter:F

    invoke-virtual {v0, p1}, Lcom/google/android/gms/location/LocationRequest$Builder;->setMinUpdateDistanceMeters(F)Lcom/google/android/gms/location/LocationRequest$Builder;

    .line 115
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/location/LocationRequest$Builder;->build()Lcom/google/android/gms/location/LocationRequest;

    move-result-object p1

    .line 117
    new-instance v0, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;-><init>()V

    .line 118
    invoke-virtual {v0, p1}, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;->addLocationRequest(Lcom/google/android/gms/location/LocationRequest;)Lcom/google/android/gms/location/LocationSettingsRequest$Builder;

    .line 119
    invoke-virtual {v0}, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;->build()Lcom/google/android/gms/location/LocationSettingsRequest;

    move-result-object v0

    .line 120
    iget-object v1, p0, Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager;->mLocationServicesSettingsClient:Lcom/google/android/gms/location/SettingsClient;

    invoke-interface {v1, v0}, Lcom/google/android/gms/location/SettingsClient;->checkLocationSettings(Lcom/google/android/gms/location/LocationSettingsRequest;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager$$ExternalSyntheticLambda1;-><init>(Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager;Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationCallback;)V

    .line 121
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager$$ExternalSyntheticLambda2;-><init>(Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager;Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationCallback;Lcom/facebook/react/bridge/Callback;)V

    .line 122
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method private createSingleLocationCallback(Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)Lcom/google/android/gms/location/LocationCallback;
    .locals 1

    .line 156
    new-instance v0, Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager$CallbackHolder;

    invoke-direct {v0, p1, p2}, Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager$CallbackHolder;-><init>(Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V

    .line 158
    new-instance p1, Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager$2;

    invoke-direct {p1, p0, v0}, Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager$2;-><init>(Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager;Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager$CallbackHolder;)V

    return-object p1
.end method

.method private isAnyProviderAvailable()Z
    .locals 3

    .line 147
    iget-object v0, p0, Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager;->mReactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager;->mReactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    const-string v2, "location"

    .line 151
    invoke-virtual {v0, v2}, Lcom/facebook/react/bridge/ReactApplicationContext;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    if-eqz v0, :cond_2

    .line 152
    const-string v2, "gps"

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "network"

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private synthetic lambda$checkLocationSettings$1(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationCallback;Lcom/google/android/gms/location/LocationSettingsResponse;)V
    .locals 0

    .line 121
    invoke-direct {p0, p1, p2}, Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager;->requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationCallback;)V

    return-void
.end method

.method private synthetic lambda$checkLocationSettings$2(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationCallback;Lcom/facebook/react/bridge/Callback;Ljava/lang/Exception;)V
    .locals 0

    .line 123
    invoke-direct {p0}, Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager;->isAnyProviderAvailable()Z

    move-result p4

    if-eqz p4, :cond_0

    .line 124
    invoke-direct {p0, p1, p2}, Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager;->requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationCallback;)V

    return-void

    .line 128
    :cond_0
    const-string p1, "Location not available (FusedLocationProvider/settings)."

    if-eqz p3, :cond_1

    .line 129
    sget p2, Lcom/reactnativecommunity/geolocation/PositionError;->POSITION_UNAVAILABLE:I

    .line 130
    invoke-static {p2, p1}, Lcom/reactnativecommunity/geolocation/PositionError;->buildError(ILjava/lang/String;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 129
    invoke-interface {p3, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void

    .line 134
    :cond_1
    sget p2, Lcom/reactnativecommunity/geolocation/PositionError;->POSITION_UNAVAILABLE:I

    invoke-virtual {p0, p2, p1}, Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager;->emitError(ILjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$getCurrentLocationData$0(Lcom/reactnativecommunity/geolocation/BaseLocationManager$LocationOptions;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/ReadableMap;Landroid/location/Location;)V
    .locals 4

    if-eqz p5, :cond_0

    .line 57
    invoke-static {}, Lcom/facebook/react/common/SystemClock;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p5}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-double v0, v0

    iget-wide v2, p1, Lcom/reactnativecommunity/geolocation/BaseLocationManager$LocationOptions;->maximumAge:D

    cmpg-double p1, v0, v2

    if-gez p1, :cond_0

    .line 58
    invoke-static {p5}, Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager;->locationToMap(Landroid/location/Location;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_0

    .line 60
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager;->createSingleLocationCallback(Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)Lcom/google/android/gms/location/LocationCallback;

    move-result-object p1

    iput-object p1, p0, Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager;->mSingleLocationCallback:Lcom/google/android/gms/location/LocationCallback;

    .line 61
    invoke-direct {p0, p4, p1, p3}, Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager;->checkLocationSettings(Lcom/facebook/react/bridge/ReadableMap;Lcom/google/android/gms/location/LocationCallback;Lcom/facebook/react/bridge/Callback;)V

    :goto_0
    return-void
.end method

.method private requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationCallback;)V
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager;->mFusedLocationClient:Lcom/google/android/gms/location/FusedLocationProviderClient;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Lcom/google/android/gms/location/FusedLocationProviderClient;->requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationCallback;Landroid/os/Looper;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method


# virtual methods
.method public getCurrentLocationData(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 9

    .line 44
    invoke-static {p1}, Lcom/reactnativecommunity/geolocation/BaseLocationManager$LocationOptions;->fromReactMap(Lcom/facebook/react/bridge/ReadableMap;)Lcom/reactnativecommunity/geolocation/BaseLocationManager$LocationOptions;

    move-result-object v2

    .line 46
    iget-object v0, p0, Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager;->mReactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v6

    if-nez v6, :cond_0

    .line 49
    invoke-direct {p0, p2, p3}, Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager;->createSingleLocationCallback(Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)Lcom/google/android/gms/location/LocationCallback;

    move-result-object p2

    iput-object p2, p0, Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager;->mSingleLocationCallback:Lcom/google/android/gms/location/LocationCallback;

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager;->checkLocationSettings(Lcom/facebook/react/bridge/ReadableMap;Lcom/google/android/gms/location/LocationCallback;Lcom/facebook/react/bridge/Callback;)V

    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager;->mFusedLocationClient:Lcom/google/android/gms/location/FusedLocationProviderClient;

    invoke-interface {v0}, Lcom/google/android/gms/location/FusedLocationProviderClient;->getLastLocation()Lcom/google/android/gms/tasks/Task;

    move-result-object v7

    new-instance v8, Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager$$ExternalSyntheticLambda0;

    move-object v0, v8

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager$$ExternalSyntheticLambda0;-><init>(Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager;Lcom/reactnativecommunity/geolocation/BaseLocationManager$LocationOptions;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 56
    invoke-virtual {v7, v6, v8}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public startObserving(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 2

    .line 71
    new-instance v0, Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager$1;

    invoke-direct {v0, p0}, Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager$1;-><init>(Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager;)V

    iput-object v0, p0, Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager;->mLocationCallback:Lcom/google/android/gms/location/LocationCallback;

    const/4 v1, 0x0

    .line 91
    invoke-direct {p0, p1, v0, v1}, Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager;->checkLocationSettings(Lcom/facebook/react/bridge/ReadableMap;Lcom/google/android/gms/location/LocationCallback;Lcom/facebook/react/bridge/Callback;)V

    return-void
.end method

.method public stopObserving()V
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager;->mLocationCallback:Lcom/google/android/gms/location/LocationCallback;

    if-nez v0, :cond_0

    return-void

    .line 99
    :cond_0
    iget-object v1, p0, Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager;->mFusedLocationClient:Lcom/google/android/gms/location/FusedLocationProviderClient;

    invoke-interface {v1, v0}, Lcom/google/android/gms/location/FusedLocationProviderClient;->removeLocationUpdates(Lcom/google/android/gms/location/LocationCallback;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method
