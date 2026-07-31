.class Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager$2;
.super Lcom/google/android/gms/location/LocationCallback;
.source "PlayServicesLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager;->createSingleLocationCallback(Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)Lcom/google/android/gms/location/LocationCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager;

.field final synthetic val$callbackHolder:Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager$CallbackHolder;


# direct methods
.method constructor <init>(Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager;Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager$CallbackHolder;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager$2;->this$0:Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager;

    iput-object p2, p0, Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager$2;->val$callbackHolder:Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager$CallbackHolder;

    invoke-direct {p0}, Lcom/google/android/gms/location/LocationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationAvailability(Lcom/google/android/gms/location/LocationAvailability;)V
    .locals 2

    .line 176
    invoke-virtual {p1}, Lcom/google/android/gms/location/LocationAvailability;->isLocationAvailable()Z

    move-result p1

    if-nez p1, :cond_0

    .line 177
    iget-object p1, p0, Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager$2;->val$callbackHolder:Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager$CallbackHolder;

    sget v0, Lcom/reactnativecommunity/geolocation/PositionError;->POSITION_UNAVAILABLE:I

    const-string v1, "Location not available (FusedLocationProvider/lastLocation)."

    invoke-static {v0, v1}, Lcom/reactnativecommunity/geolocation/PositionError;->buildError(ILjava/lang/String;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager$CallbackHolder;->error(Lcom/facebook/react/bridge/WritableMap;)V

    :cond_0
    return-void
.end method

.method public onLocationResult(Lcom/google/android/gms/location/LocationResult;)V
    .locals 2

    .line 161
    invoke-virtual {p1}, Lcom/google/android/gms/location/LocationResult;->getLastLocation()Landroid/location/Location;

    move-result-object p1

    if-nez p1, :cond_0

    .line 164
    iget-object p1, p0, Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager$2;->val$callbackHolder:Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager$CallbackHolder;

    sget v0, Lcom/reactnativecommunity/geolocation/PositionError;->POSITION_UNAVAILABLE:I

    const-string v1, "No location provided (FusedLocationProvider/lastLocation)."

    invoke-static {v0, v1}, Lcom/reactnativecommunity/geolocation/PositionError;->buildError(ILjava/lang/String;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager$CallbackHolder;->error(Lcom/facebook/react/bridge/WritableMap;)V

    return-void

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager$2;->val$callbackHolder:Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager$CallbackHolder;

    invoke-virtual {v0, p1}, Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager$CallbackHolder;->success(Landroid/location/Location;)V

    .line 170
    iget-object p1, p0, Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager$2;->this$0:Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager;

    invoke-static {p1}, Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager;->-$$Nest$fgetmFusedLocationClient(Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager;)Lcom/google/android/gms/location/FusedLocationProviderClient;

    move-result-object p1

    iget-object v0, p0, Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager$2;->this$0:Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager;

    invoke-static {v0}, Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager;->-$$Nest$fgetmSingleLocationCallback(Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager;)Lcom/google/android/gms/location/LocationCallback;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/gms/location/FusedLocationProviderClient;->removeLocationUpdates(Lcom/google/android/gms/location/LocationCallback;)Lcom/google/android/gms/tasks/Task;

    .line 171
    iget-object p1, p0, Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager$2;->this$0:Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager;->-$$Nest$fputmSingleLocationCallback(Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager;Lcom/google/android/gms/location/LocationCallback;)V

    return-void
.end method
