.class Lcom/reactnativecommunity/geolocation/AndroidLocationManager$SingleUpdateRequest$2;
.super Ljava/lang/Object;
.source "AndroidLocationManager.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/reactnativecommunity/geolocation/AndroidLocationManager$SingleUpdateRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/reactnativecommunity/geolocation/AndroidLocationManager$SingleUpdateRequest;


# direct methods
.method constructor <init>(Lcom/reactnativecommunity/geolocation/AndroidLocationManager$SingleUpdateRequest;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/reactnativecommunity/geolocation/AndroidLocationManager$SingleUpdateRequest$2;->this$0:Lcom/reactnativecommunity/geolocation/AndroidLocationManager$SingleUpdateRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 3

    .line 171
    iget-object v0, p0, Lcom/reactnativecommunity/geolocation/AndroidLocationManager$SingleUpdateRequest$2;->this$0:Lcom/reactnativecommunity/geolocation/AndroidLocationManager$SingleUpdateRequest;

    monitor-enter v0

    .line 172
    :try_start_0
    iget-object v1, p0, Lcom/reactnativecommunity/geolocation/AndroidLocationManager$SingleUpdateRequest$2;->this$0:Lcom/reactnativecommunity/geolocation/AndroidLocationManager$SingleUpdateRequest;

    invoke-static {v1}, Lcom/reactnativecommunity/geolocation/AndroidLocationManager$SingleUpdateRequest;->-$$Nest$fgetmTriggered(Lcom/reactnativecommunity/geolocation/AndroidLocationManager$SingleUpdateRequest;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/reactnativecommunity/geolocation/AndroidLocationManager$SingleUpdateRequest$2;->this$0:Lcom/reactnativecommunity/geolocation/AndroidLocationManager$SingleUpdateRequest;

    invoke-static {v1}, Lcom/reactnativecommunity/geolocation/AndroidLocationManager$SingleUpdateRequest;->-$$Nest$fgetmOldLocation(Lcom/reactnativecommunity/geolocation/AndroidLocationManager$SingleUpdateRequest;)Landroid/location/Location;

    move-result-object v2

    invoke-static {v1, p1, v2}, Lcom/reactnativecommunity/geolocation/AndroidLocationManager$SingleUpdateRequest;->-$$Nest$misBetterLocation(Lcom/reactnativecommunity/geolocation/AndroidLocationManager$SingleUpdateRequest;Landroid/location/Location;Landroid/location/Location;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 173
    iget-object v1, p0, Lcom/reactnativecommunity/geolocation/AndroidLocationManager$SingleUpdateRequest$2;->this$0:Lcom/reactnativecommunity/geolocation/AndroidLocationManager$SingleUpdateRequest;

    invoke-static {v1}, Lcom/reactnativecommunity/geolocation/AndroidLocationManager$SingleUpdateRequest;->-$$Nest$fgetmSuccess(Lcom/reactnativecommunity/geolocation/AndroidLocationManager$SingleUpdateRequest;)Lcom/facebook/react/bridge/Callback;

    move-result-object v1

    invoke-static {p1}, Lcom/reactnativecommunity/geolocation/BaseLocationManager;->locationToMap(Landroid/location/Location;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 174
    iget-object v1, p0, Lcom/reactnativecommunity/geolocation/AndroidLocationManager$SingleUpdateRequest$2;->this$0:Lcom/reactnativecommunity/geolocation/AndroidLocationManager$SingleUpdateRequest;

    invoke-static {v1}, Lcom/reactnativecommunity/geolocation/AndroidLocationManager$SingleUpdateRequest;->-$$Nest$fgetmHandler(Lcom/reactnativecommunity/geolocation/AndroidLocationManager$SingleUpdateRequest;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/reactnativecommunity/geolocation/AndroidLocationManager$SingleUpdateRequest$2;->this$0:Lcom/reactnativecommunity/geolocation/AndroidLocationManager$SingleUpdateRequest;

    invoke-static {v2}, Lcom/reactnativecommunity/geolocation/AndroidLocationManager$SingleUpdateRequest;->-$$Nest$fgetmTimeoutRunnable(Lcom/reactnativecommunity/geolocation/AndroidLocationManager$SingleUpdateRequest;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 175
    iget-object v1, p0, Lcom/reactnativecommunity/geolocation/AndroidLocationManager$SingleUpdateRequest$2;->this$0:Lcom/reactnativecommunity/geolocation/AndroidLocationManager$SingleUpdateRequest;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/reactnativecommunity/geolocation/AndroidLocationManager$SingleUpdateRequest;->-$$Nest$fputmTriggered(Lcom/reactnativecommunity/geolocation/AndroidLocationManager$SingleUpdateRequest;Z)V

    .line 176
    iget-object v1, p0, Lcom/reactnativecommunity/geolocation/AndroidLocationManager$SingleUpdateRequest$2;->this$0:Lcom/reactnativecommunity/geolocation/AndroidLocationManager$SingleUpdateRequest;

    invoke-static {v1}, Lcom/reactnativecommunity/geolocation/AndroidLocationManager$SingleUpdateRequest;->-$$Nest$fgetmLocationManager(Lcom/reactnativecommunity/geolocation/AndroidLocationManager$SingleUpdateRequest;)Landroid/location/LocationManager;

    move-result-object v1

    iget-object v2, p0, Lcom/reactnativecommunity/geolocation/AndroidLocationManager$SingleUpdateRequest$2;->this$0:Lcom/reactnativecommunity/geolocation/AndroidLocationManager$SingleUpdateRequest;

    invoke-static {v2}, Lcom/reactnativecommunity/geolocation/AndroidLocationManager$SingleUpdateRequest;->-$$Nest$fgetmLocationListener(Lcom/reactnativecommunity/geolocation/AndroidLocationManager$SingleUpdateRequest;)Landroid/location/LocationListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 179
    :cond_0
    iget-object v1, p0, Lcom/reactnativecommunity/geolocation/AndroidLocationManager$SingleUpdateRequest$2;->this$0:Lcom/reactnativecommunity/geolocation/AndroidLocationManager$SingleUpdateRequest;

    invoke-static {v1, p1}, Lcom/reactnativecommunity/geolocation/AndroidLocationManager$SingleUpdateRequest;->-$$Nest$fputmOldLocation(Lcom/reactnativecommunity/geolocation/AndroidLocationManager$SingleUpdateRequest;Landroid/location/Location;)V

    .line 180
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
