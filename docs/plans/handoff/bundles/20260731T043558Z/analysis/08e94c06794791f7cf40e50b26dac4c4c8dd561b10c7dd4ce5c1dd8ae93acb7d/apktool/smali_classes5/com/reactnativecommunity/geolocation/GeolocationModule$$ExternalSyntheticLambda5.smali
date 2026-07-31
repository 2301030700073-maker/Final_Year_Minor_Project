.class public final synthetic Lcom/reactnativecommunity/geolocation/GeolocationModule$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/facebook/react/bridge/Callback;


# instance fields
.field public final synthetic f$0:Lcom/facebook/react/bridge/Callback;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/react/bridge/Callback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/reactnativecommunity/geolocation/GeolocationModule$$ExternalSyntheticLambda5;->f$0:Lcom/facebook/react/bridge/Callback;

    return-void
.end method


# virtual methods
.method public final invoke([Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/reactnativecommunity/geolocation/GeolocationModule$$ExternalSyntheticLambda5;->f$0:Lcom/facebook/react/bridge/Callback;

    invoke-static {v0, p1}, Lcom/reactnativecommunity/geolocation/GeolocationModule;->lambda$requestAuthorization$2(Lcom/facebook/react/bridge/Callback;[Ljava/lang/Object;)V

    return-void
.end method
