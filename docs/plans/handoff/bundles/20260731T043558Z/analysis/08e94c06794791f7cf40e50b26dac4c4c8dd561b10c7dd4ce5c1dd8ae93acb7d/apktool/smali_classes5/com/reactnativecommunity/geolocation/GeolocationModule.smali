.class public Lcom/reactnativecommunity/geolocation/GeolocationModule;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "GeolocationModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/reactnativecommunity/geolocation/GeolocationModule$Configuration;
    }
.end annotation


# static fields
.field public static final NAME:Ljava/lang/String; = "RNCGeolocation"


# instance fields
.field private mConfiguration:Lcom/reactnativecommunity/geolocation/GeolocationModule$Configuration;

.field private mLocationManager:Lcom/reactnativecommunity/geolocation/BaseLocationManager;


# direct methods
.method public static synthetic $r8$lambda$APMoyT_i75R5AQ57GzzJm9_S1ZU(Lcom/reactnativecommunity/geolocation/GeolocationModule;Lcom/facebook/react/bridge/ReadableMap;[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/reactnativecommunity/geolocation/GeolocationModule;->lambda$startObserving$6(Lcom/facebook/react/bridge/ReadableMap;[Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qw5ImmO1cZeibSqpRGAilc3Ofqg(Lcom/reactnativecommunity/geolocation/GeolocationModule;[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/reactnativecommunity/geolocation/GeolocationModule;->lambda$startObserving$7([Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zOF75bv_X7-sHefhTmBza39DlBs(Lcom/reactnativecommunity/geolocation/GeolocationModule;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/reactnativecommunity/geolocation/GeolocationModule;->lambda$getCurrentPosition$5(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 1

    .line 36
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 37
    invoke-static {}, Lcom/reactnativecommunity/geolocation/GeolocationModule$Configuration;->getDefault()Lcom/reactnativecommunity/geolocation/GeolocationModule$Configuration;

    move-result-object v0

    iput-object v0, p0, Lcom/reactnativecommunity/geolocation/GeolocationModule;->mConfiguration:Lcom/reactnativecommunity/geolocation/GeolocationModule$Configuration;

    .line 38
    new-instance v0, Lcom/reactnativecommunity/geolocation/AndroidLocationManager;

    invoke-direct {v0, p1}, Lcom/reactnativecommunity/geolocation/AndroidLocationManager;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    iput-object v0, p0, Lcom/reactnativecommunity/geolocation/GeolocationModule;->mLocationManager:Lcom/reactnativecommunity/geolocation/BaseLocationManager;

    return-void
.end method

.method private emitLocationPermissionMissing(Ljava/lang/SecurityException;)V
    .locals 2

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Looks like the app doesn\'t have the permission to access location.\nAdd the following line to your app\'s AndroidManifest.xml:\n<uses-permission android:name=\"android.permission.ACCESS_FINE_LOCATION\" />\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 169
    iget-object v0, p0, Lcom/reactnativecommunity/geolocation/GeolocationModule;->mLocationManager:Lcom/reactnativecommunity/geolocation/BaseLocationManager;

    sget v1, Lcom/reactnativecommunity/geolocation/PositionError;->PERMISSION_DENIED:I

    invoke-virtual {v0, v1, p1}, Lcom/reactnativecommunity/geolocation/BaseLocationManager;->emitError(ILjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$getCurrentPosition$5(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;[Ljava/lang/Object;)V
    .locals 0

    .line 122
    iget-object p4, p0, Lcom/reactnativecommunity/geolocation/GeolocationModule;->mLocationManager:Lcom/reactnativecommunity/geolocation/BaseLocationManager;

    invoke-virtual {p4, p1, p2, p3}, Lcom/reactnativecommunity/geolocation/BaseLocationManager;->getCurrentLocationData(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V

    return-void
.end method

.method static synthetic lambda$requestAuthorization$0(Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;[Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x0

    .line 75
    aget-object p2, p2, v0

    check-cast p2, Lcom/facebook/react/bridge/WritableNativeMap;

    .line 76
    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p2, v1}, Lcom/facebook/react/bridge/WritableNativeMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "granted"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 77
    new-array p1, v0, [Ljava/lang/Object;

    invoke-interface {p0, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_0

    .line 79
    :cond_0
    sget p0, Lcom/reactnativecommunity/geolocation/PositionError;->PERMISSION_DENIED:I

    const-string p2, "Location permission was not granted."

    invoke-static {p0, p2}, Lcom/reactnativecommunity/geolocation/PositionError;->buildError(ILjava/lang/String;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$requestAuthorization$1(Lcom/facebook/react/bridge/Callback;[Ljava/lang/Object;)V
    .locals 1

    .line 83
    sget p1, Lcom/reactnativecommunity/geolocation/PositionError;->PERMISSION_DENIED:I

    const-string v0, "Failed to request location permission."

    invoke-static {p1, v0}, Lcom/reactnativecommunity/geolocation/PositionError;->buildError(ILjava/lang/String;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$requestAuthorization$2(Lcom/facebook/react/bridge/Callback;[Ljava/lang/Object;)V
    .locals 1

    .line 85
    sget p1, Lcom/reactnativecommunity/geolocation/PositionError;->PERMISSION_DENIED:I

    const-string v0, "Failed to check location permission."

    invoke-static {p1, v0}, Lcom/reactnativecommunity/geolocation/PositionError;->buildError(ILjava/lang/String;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$requestAuthorization$3(Lcom/facebook/react/modules/permissions/PermissionsModule;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 88
    aget-object p5, p5, v0

    check-cast p5, Ljava/lang/Boolean;

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p5

    if-nez p5, :cond_0

    .line 91
    new-instance p4, Lcom/facebook/react/bridge/PromiseImpl;

    invoke-direct {p4, p2, p3}, Lcom/facebook/react/bridge/PromiseImpl;-><init>(Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V

    invoke-virtual {p0, p1, p4}, Lcom/facebook/react/modules/permissions/PermissionsModule;->requestMultiplePermissions(Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Promise;)V

    goto :goto_0

    .line 93
    :cond_0
    new-array p0, v0, [Ljava/lang/Object;

    invoke-interface {p4, p0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$requestAuthorization$4(Lcom/facebook/react/modules/permissions/PermissionsModule;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;[Ljava/lang/Object;)V
    .locals 0

    .line 97
    new-instance p3, Lcom/facebook/react/bridge/PromiseImpl;

    invoke-direct {p3, p1, p2}, Lcom/facebook/react/bridge/PromiseImpl;-><init>(Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V

    const-string p1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p0, p1, p3}, Lcom/facebook/react/modules/permissions/PermissionsModule;->checkPermission(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method private synthetic lambda$startObserving$6(Lcom/facebook/react/bridge/ReadableMap;[Ljava/lang/Object;)V
    .locals 0

    .line 142
    iget-object p2, p0, Lcom/reactnativecommunity/geolocation/GeolocationModule;->mLocationManager:Lcom/reactnativecommunity/geolocation/BaseLocationManager;

    invoke-virtual {p2, p1}, Lcom/reactnativecommunity/geolocation/BaseLocationManager;->startObserving(Lcom/facebook/react/bridge/ReadableMap;)V

    return-void
.end method

.method private synthetic lambda$startObserving$7([Ljava/lang/Object;)V
    .locals 1

    .line 143
    new-instance v0, Ljava/lang/SecurityException;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/reactnativecommunity/geolocation/GeolocationModule;->emitLocationPermissionMissing(Ljava/lang/SecurityException;)V

    return-void
.end method

.method private onConfigurationChange(Lcom/reactnativecommunity/geolocation/GeolocationModule$Configuration;)V
    .locals 3

    .line 52
    iget-object v0, p0, Lcom/reactnativecommunity/geolocation/GeolocationModule;->mLocationManager:Lcom/reactnativecommunity/geolocation/BaseLocationManager;

    iget-object v0, v0, Lcom/reactnativecommunity/geolocation/BaseLocationManager;->mReactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 53
    iget-object v1, p1, Lcom/reactnativecommunity/geolocation/GeolocationModule$Configuration;->locationProvider:Ljava/lang/String;

    const-string v2, "android"

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/reactnativecommunity/geolocation/GeolocationModule;->mLocationManager:Lcom/reactnativecommunity/geolocation/BaseLocationManager;

    instance-of v1, v1, Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager;

    if-eqz v1, :cond_0

    .line 54
    new-instance p1, Lcom/reactnativecommunity/geolocation/AndroidLocationManager;

    invoke-direct {p1, v0}, Lcom/reactnativecommunity/geolocation/AndroidLocationManager;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    iput-object p1, p0, Lcom/reactnativecommunity/geolocation/GeolocationModule;->mLocationManager:Lcom/reactnativecommunity/geolocation/BaseLocationManager;

    goto :goto_0

    .line 55
    :cond_0
    iget-object p1, p1, Lcom/reactnativecommunity/geolocation/GeolocationModule$Configuration;->locationProvider:Ljava/lang/String;

    const-string v1, "playServices"

    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/reactnativecommunity/geolocation/GeolocationModule;->mLocationManager:Lcom/reactnativecommunity/geolocation/BaseLocationManager;

    instance-of p1, p1, Lcom/reactnativecommunity/geolocation/AndroidLocationManager;

    if-eqz p1, :cond_1

    .line 56
    new-instance p1, Lcom/google/android/gms/common/GoogleApiAvailability;

    invoke-direct {p1}, Lcom/google/android/gms/common/GoogleApiAvailability;-><init>()V

    .line 57
    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result p1

    if-nez p1, :cond_1

    .line 58
    new-instance p1, Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager;

    invoke-direct {p1, v0}, Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    iput-object p1, p0, Lcom/reactnativecommunity/geolocation/GeolocationModule;->mLocationManager:Lcom/reactnativecommunity/geolocation/BaseLocationManager;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getCurrentPosition(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 1

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/reactnativecommunity/geolocation/GeolocationModule;->mConfiguration:Lcom/reactnativecommunity/geolocation/GeolocationModule$Configuration;

    iget-object v0, v0, Lcom/reactnativecommunity/geolocation/GeolocationModule$Configuration;->skipPermissionRequests:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/reactnativecommunity/geolocation/GeolocationModule;->mLocationManager:Lcom/reactnativecommunity/geolocation/BaseLocationManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/reactnativecommunity/geolocation/BaseLocationManager;->getCurrentLocationData(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V

    return-void

    .line 122
    :cond_0
    new-instance v0, Lcom/reactnativecommunity/geolocation/GeolocationModule$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/reactnativecommunity/geolocation/GeolocationModule$$ExternalSyntheticLambda2;-><init>(Lcom/reactnativecommunity/geolocation/GeolocationModule;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V

    invoke-virtual {p0, v0, p3}, Lcom/reactnativecommunity/geolocation/GeolocationModule;->requestAuthorization(Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 124
    invoke-direct {p0, p1}, Lcom/reactnativecommunity/geolocation/GeolocationModule;->emitLocationPermissionMissing(Ljava/lang/SecurityException;)V

    :goto_0
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 43
    const-string v0, "RNCGeolocation"

    return-object v0
.end method

.method public requestAuthorization(Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 9

    .line 68
    invoke-virtual {p0}, Lcom/reactnativecommunity/geolocation/GeolocationModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    const-class v1, Lcom/facebook/react/modules/permissions/PermissionsModule;

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getNativeModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/modules/permissions/PermissionsModule;

    .line 69
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 70
    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    const-string v7, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    invoke-static {v1}, Lcom/facebook/react/bridge/JavaOnlyArray;->from(Ljava/util/List;)Lcom/facebook/react/bridge/JavaOnlyArray;

    move-result-object v3

    .line 74
    new-instance v4, Lcom/reactnativecommunity/geolocation/GeolocationModule$$ExternalSyntheticLambda3;

    invoke-direct {v4, p1, p2}, Lcom/reactnativecommunity/geolocation/GeolocationModule$$ExternalSyntheticLambda3;-><init>(Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V

    .line 83
    new-instance v5, Lcom/reactnativecommunity/geolocation/GeolocationModule$$ExternalSyntheticLambda4;

    invoke-direct {v5, p2}, Lcom/reactnativecommunity/geolocation/GeolocationModule$$ExternalSyntheticLambda4;-><init>(Lcom/facebook/react/bridge/Callback;)V

    .line 85
    new-instance v8, Lcom/reactnativecommunity/geolocation/GeolocationModule$$ExternalSyntheticLambda5;

    invoke-direct {v8, p2}, Lcom/reactnativecommunity/geolocation/GeolocationModule$$ExternalSyntheticLambda5;-><init>(Lcom/facebook/react/bridge/Callback;)V

    .line 87
    new-instance p2, Lcom/reactnativecommunity/geolocation/GeolocationModule$$ExternalSyntheticLambda6;

    move-object v1, p2

    move-object v2, v0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/reactnativecommunity/geolocation/GeolocationModule$$ExternalSyntheticLambda6;-><init>(Lcom/facebook/react/modules/permissions/PermissionsModule;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V

    .line 97
    new-instance p1, Lcom/facebook/react/bridge/PromiseImpl;

    new-instance v1, Lcom/reactnativecommunity/geolocation/GeolocationModule$$ExternalSyntheticLambda7;

    invoke-direct {v1, v0, p2, v8}, Lcom/reactnativecommunity/geolocation/GeolocationModule$$ExternalSyntheticLambda7;-><init>(Lcom/facebook/react/modules/permissions/PermissionsModule;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V

    invoke-direct {p1, p2, v1}, Lcom/facebook/react/bridge/PromiseImpl;-><init>(Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V

    invoke-virtual {v0, v7, p1}, Lcom/facebook/react/modules/permissions/PermissionsModule;->checkPermission(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public setConfiguration(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 0

    .line 47
    invoke-static {p1}, Lcom/reactnativecommunity/geolocation/GeolocationModule$Configuration;->fromReactMap(Lcom/facebook/react/bridge/ReadableMap;)Lcom/reactnativecommunity/geolocation/GeolocationModule$Configuration;

    move-result-object p1

    iput-object p1, p0, Lcom/reactnativecommunity/geolocation/GeolocationModule;->mConfiguration:Lcom/reactnativecommunity/geolocation/GeolocationModule$Configuration;

    .line 48
    invoke-direct {p0, p1}, Lcom/reactnativecommunity/geolocation/GeolocationModule;->onConfigurationChange(Lcom/reactnativecommunity/geolocation/GeolocationModule$Configuration;)V

    return-void
.end method

.method public startObserving(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 1

    .line 137
    :try_start_0
    iget-object v0, p0, Lcom/reactnativecommunity/geolocation/GeolocationModule;->mConfiguration:Lcom/reactnativecommunity/geolocation/GeolocationModule$Configuration;

    iget-object v0, v0, Lcom/reactnativecommunity/geolocation/GeolocationModule$Configuration;->skipPermissionRequests:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/reactnativecommunity/geolocation/GeolocationModule;->mLocationManager:Lcom/reactnativecommunity/geolocation/BaseLocationManager;

    invoke-virtual {v0, p1}, Lcom/reactnativecommunity/geolocation/BaseLocationManager;->startObserving(Lcom/facebook/react/bridge/ReadableMap;)V

    return-void

    .line 142
    :cond_0
    new-instance v0, Lcom/reactnativecommunity/geolocation/GeolocationModule$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/reactnativecommunity/geolocation/GeolocationModule$$ExternalSyntheticLambda0;-><init>(Lcom/reactnativecommunity/geolocation/GeolocationModule;Lcom/facebook/react/bridge/ReadableMap;)V

    new-instance p1, Lcom/reactnativecommunity/geolocation/GeolocationModule$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/reactnativecommunity/geolocation/GeolocationModule$$ExternalSyntheticLambda1;-><init>(Lcom/reactnativecommunity/geolocation/GeolocationModule;)V

    invoke-virtual {p0, v0, p1}, Lcom/reactnativecommunity/geolocation/GeolocationModule;->requestAuthorization(Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 146
    invoke-direct {p0, p1}, Lcom/reactnativecommunity/geolocation/GeolocationModule;->emitLocationPermissionMissing(Ljava/lang/SecurityException;)V

    :goto_0
    return-void
.end method

.method public stopObserving()V
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/reactnativecommunity/geolocation/GeolocationModule;->mLocationManager:Lcom/reactnativecommunity/geolocation/BaseLocationManager;

    invoke-virtual {v0}, Lcom/reactnativecommunity/geolocation/BaseLocationManager;->stopObserving()V

    return-void
.end method
