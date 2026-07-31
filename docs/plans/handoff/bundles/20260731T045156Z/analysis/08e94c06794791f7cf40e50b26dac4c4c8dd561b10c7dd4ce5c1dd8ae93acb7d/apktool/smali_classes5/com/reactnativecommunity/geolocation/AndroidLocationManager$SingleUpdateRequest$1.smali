.class Lcom/reactnativecommunity/geolocation/AndroidLocationManager$SingleUpdateRequest$1;
.super Ljava/lang/Object;
.source "AndroidLocationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 155
    iput-object p1, p0, Lcom/reactnativecommunity/geolocation/AndroidLocationManager$SingleUpdateRequest$1;->this$0:Lcom/reactnativecommunity/geolocation/AndroidLocationManager$SingleUpdateRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 158
    iget-object v0, p0, Lcom/reactnativecommunity/geolocation/AndroidLocationManager$SingleUpdateRequest$1;->this$0:Lcom/reactnativecommunity/geolocation/AndroidLocationManager$SingleUpdateRequest;

    monitor-enter v0

    .line 159
    :try_start_0
    iget-object v1, p0, Lcom/reactnativecommunity/geolocation/AndroidLocationManager$SingleUpdateRequest$1;->this$0:Lcom/reactnativecommunity/geolocation/AndroidLocationManager$SingleUpdateRequest;

    invoke-static {v1}, Lcom/reactnativecommunity/geolocation/AndroidLocationManager$SingleUpdateRequest;->-$$Nest$fgetmTriggered(Lcom/reactnativecommunity/geolocation/AndroidLocationManager$SingleUpdateRequest;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 160
    iget-object v1, p0, Lcom/reactnativecommunity/geolocation/AndroidLocationManager$SingleUpdateRequest$1;->this$0:Lcom/reactnativecommunity/geolocation/AndroidLocationManager$SingleUpdateRequest;

    invoke-static {v1}, Lcom/reactnativecommunity/geolocation/AndroidLocationManager$SingleUpdateRequest;->-$$Nest$fgetmError(Lcom/reactnativecommunity/geolocation/AndroidLocationManager$SingleUpdateRequest;)Lcom/facebook/react/bridge/Callback;

    move-result-object v1

    sget v2, Lcom/reactnativecommunity/geolocation/PositionError;->TIMEOUT:I

    const-string v3, "Location request timed out"

    invoke-static {v2, v3}, Lcom/reactnativecommunity/geolocation/PositionError;->buildError(ILjava/lang/String;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 161
    iget-object v1, p0, Lcom/reactnativecommunity/geolocation/AndroidLocationManager$SingleUpdateRequest$1;->this$0:Lcom/reactnativecommunity/geolocation/AndroidLocationManager$SingleUpdateRequest;

    invoke-static {v1}, Lcom/reactnativecommunity/geolocation/AndroidLocationManager$SingleUpdateRequest;->-$$Nest$fgetmLocationManager(Lcom/reactnativecommunity/geolocation/AndroidLocationManager$SingleUpdateRequest;)Landroid/location/LocationManager;

    move-result-object v1

    iget-object v2, p0, Lcom/reactnativecommunity/geolocation/AndroidLocationManager$SingleUpdateRequest$1;->this$0:Lcom/reactnativecommunity/geolocation/AndroidLocationManager$SingleUpdateRequest;

    invoke-static {v2}, Lcom/reactnativecommunity/geolocation/AndroidLocationManager$SingleUpdateRequest;->-$$Nest$fgetmLocationListener(Lcom/reactnativecommunity/geolocation/AndroidLocationManager$SingleUpdateRequest;)Landroid/location/LocationListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 162
    const-string v1, "ReactNative"

    const-string v2, "LocationModule: Location request timed out"

    invoke-static {v1, v2}, Lcom/facebook/common/logging/FLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object v1, p0, Lcom/reactnativecommunity/geolocation/AndroidLocationManager$SingleUpdateRequest$1;->this$0:Lcom/reactnativecommunity/geolocation/AndroidLocationManager$SingleUpdateRequest;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/reactnativecommunity/geolocation/AndroidLocationManager$SingleUpdateRequest;->-$$Nest$fputmTriggered(Lcom/reactnativecommunity/geolocation/AndroidLocationManager$SingleUpdateRequest;Z)V

    .line 165
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
