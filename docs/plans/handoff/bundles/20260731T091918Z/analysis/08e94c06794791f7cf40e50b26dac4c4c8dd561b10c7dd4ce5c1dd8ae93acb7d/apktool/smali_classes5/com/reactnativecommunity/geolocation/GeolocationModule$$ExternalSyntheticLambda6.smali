.class public final synthetic Lcom/reactnativecommunity/geolocation/GeolocationModule$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/facebook/react/bridge/Callback;


# instance fields
.field public final synthetic f$0:Lcom/facebook/react/modules/permissions/PermissionsModule;

.field public final synthetic f$1:Lcom/facebook/react/bridge/ReadableArray;

.field public final synthetic f$2:Lcom/facebook/react/bridge/Callback;

.field public final synthetic f$3:Lcom/facebook/react/bridge/Callback;

.field public final synthetic f$4:Lcom/facebook/react/bridge/Callback;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/react/modules/permissions/PermissionsModule;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/reactnativecommunity/geolocation/GeolocationModule$$ExternalSyntheticLambda6;->f$0:Lcom/facebook/react/modules/permissions/PermissionsModule;

    iput-object p2, p0, Lcom/reactnativecommunity/geolocation/GeolocationModule$$ExternalSyntheticLambda6;->f$1:Lcom/facebook/react/bridge/ReadableArray;

    iput-object p3, p0, Lcom/reactnativecommunity/geolocation/GeolocationModule$$ExternalSyntheticLambda6;->f$2:Lcom/facebook/react/bridge/Callback;

    iput-object p4, p0, Lcom/reactnativecommunity/geolocation/GeolocationModule$$ExternalSyntheticLambda6;->f$3:Lcom/facebook/react/bridge/Callback;

    iput-object p5, p0, Lcom/reactnativecommunity/geolocation/GeolocationModule$$ExternalSyntheticLambda6;->f$4:Lcom/facebook/react/bridge/Callback;

    return-void
.end method


# virtual methods
.method public final invoke([Ljava/lang/Object;)V
    .locals 6

    .line 0
    iget-object v0, p0, Lcom/reactnativecommunity/geolocation/GeolocationModule$$ExternalSyntheticLambda6;->f$0:Lcom/facebook/react/modules/permissions/PermissionsModule;

    iget-object v1, p0, Lcom/reactnativecommunity/geolocation/GeolocationModule$$ExternalSyntheticLambda6;->f$1:Lcom/facebook/react/bridge/ReadableArray;

    iget-object v2, p0, Lcom/reactnativecommunity/geolocation/GeolocationModule$$ExternalSyntheticLambda6;->f$2:Lcom/facebook/react/bridge/Callback;

    iget-object v3, p0, Lcom/reactnativecommunity/geolocation/GeolocationModule$$ExternalSyntheticLambda6;->f$3:Lcom/facebook/react/bridge/Callback;

    iget-object v4, p0, Lcom/reactnativecommunity/geolocation/GeolocationModule$$ExternalSyntheticLambda6;->f$4:Lcom/facebook/react/bridge/Callback;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/reactnativecommunity/geolocation/GeolocationModule;->lambda$requestAuthorization$3(Lcom/facebook/react/modules/permissions/PermissionsModule;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;[Ljava/lang/Object;)V

    return-void
.end method
