.class Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager$CallbackHolder;
.super Ljava/lang/Object;
.source "PlayServicesLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CallbackHolder"
.end annotation


# instance fields
.field error:Lcom/facebook/react/bridge/Callback;

.field success:Lcom/facebook/react/bridge/Callback;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 0

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    iput-object p1, p0, Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager$CallbackHolder;->success:Lcom/facebook/react/bridge/Callback;

    .line 188
    iput-object p2, p0, Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager$CallbackHolder;->error:Lcom/facebook/react/bridge/Callback;

    return-void
.end method


# virtual methods
.method public error(Lcom/facebook/react/bridge/WritableMap;)V
    .locals 3

    .line 192
    iget-object v0, p0, Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager$CallbackHolder;->error:Lcom/facebook/react/bridge/Callback;

    if-nez v0, :cond_0

    .line 193
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "tried to invoke null error callback -> "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lio/sentry/android/core/SentryLogcatAdapter;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 196
    :cond_0
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 197
    iput-object p1, p0, Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager$CallbackHolder;->error:Lcom/facebook/react/bridge/Callback;

    return-void
.end method

.method public success(Landroid/location/Location;)V
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager$CallbackHolder;->success:Lcom/facebook/react/bridge/Callback;

    if-nez v0, :cond_0

    .line 202
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "tried to invoke null success callback"

    invoke-static {p1, v0}, Lio/sentry/android/core/SentryLogcatAdapter;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 205
    :cond_0
    invoke-static {p1}, Lcom/reactnativecommunity/geolocation/BaseLocationManager;->locationToMap(Landroid/location/Location;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 206
    iput-object p1, p0, Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager$CallbackHolder;->success:Lcom/facebook/react/bridge/Callback;

    return-void
.end method
