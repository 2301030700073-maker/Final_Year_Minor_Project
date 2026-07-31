.class Lcom/reactnativecommunity/geolocation/AndroidLocationManager$1;
.super Ljava/lang/Object;
.source "AndroidLocationManager.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/reactnativecommunity/geolocation/AndroidLocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/reactnativecommunity/geolocation/AndroidLocationManager;


# direct methods
.method constructor <init>(Lcom/reactnativecommunity/geolocation/AndroidLocationManager;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/reactnativecommunity/geolocation/AndroidLocationManager$1;->this$0:Lcom/reactnativecommunity/geolocation/AndroidLocationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/reactnativecommunity/geolocation/AndroidLocationManager$1;->this$0:Lcom/reactnativecommunity/geolocation/AndroidLocationManager;

    iget-object v0, v0, Lcom/reactnativecommunity/geolocation/AndroidLocationManager;->mReactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    const-class v1, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    const-string v1, "geolocationDidChange"

    .line 35
    invoke-static {p1}, Lcom/reactnativecommunity/geolocation/BaseLocationManager;->locationToMap(Landroid/location/Location;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
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
    .locals 2

    .line 40
    const-string p3, "Provider "

    if-nez p2, :cond_0

    .line 41
    iget-object p2, p0, Lcom/reactnativecommunity/geolocation/AndroidLocationManager$1;->this$0:Lcom/reactnativecommunity/geolocation/AndroidLocationManager;

    sget v0, Lcom/reactnativecommunity/geolocation/PositionError;->POSITION_UNAVAILABLE:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " is out of service."

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/reactnativecommunity/geolocation/AndroidLocationManager;->emitError(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 43
    iget-object p2, p0, Lcom/reactnativecommunity/geolocation/AndroidLocationManager$1;->this$0:Lcom/reactnativecommunity/geolocation/AndroidLocationManager;

    sget v0, Lcom/reactnativecommunity/geolocation/PositionError;->TIMEOUT:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " is temporarily unavailable."

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/reactnativecommunity/geolocation/AndroidLocationManager;->emitError(ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
