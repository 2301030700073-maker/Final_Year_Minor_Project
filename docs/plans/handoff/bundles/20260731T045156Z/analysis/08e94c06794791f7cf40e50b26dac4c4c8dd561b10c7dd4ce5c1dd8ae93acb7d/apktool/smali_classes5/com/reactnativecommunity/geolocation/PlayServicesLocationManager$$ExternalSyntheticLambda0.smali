.class public final synthetic Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field public final synthetic f$0:Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager;

.field public final synthetic f$1:Lcom/reactnativecommunity/geolocation/BaseLocationManager$LocationOptions;

.field public final synthetic f$2:Lcom/facebook/react/bridge/Callback;

.field public final synthetic f$3:Lcom/facebook/react/bridge/Callback;

.field public final synthetic f$4:Lcom/facebook/react/bridge/ReadableMap;


# direct methods
.method public synthetic constructor <init>(Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager;Lcom/reactnativecommunity/geolocation/BaseLocationManager$LocationOptions;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager$$ExternalSyntheticLambda0;->f$0:Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager;

    iput-object p2, p0, Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager$$ExternalSyntheticLambda0;->f$1:Lcom/reactnativecommunity/geolocation/BaseLocationManager$LocationOptions;

    iput-object p3, p0, Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager$$ExternalSyntheticLambda0;->f$2:Lcom/facebook/react/bridge/Callback;

    iput-object p4, p0, Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager$$ExternalSyntheticLambda0;->f$3:Lcom/facebook/react/bridge/Callback;

    iput-object p5, p0, Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager$$ExternalSyntheticLambda0;->f$4:Lcom/facebook/react/bridge/ReadableMap;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 6

    .line 0
    iget-object v0, p0, Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager$$ExternalSyntheticLambda0;->f$0:Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager;

    iget-object v1, p0, Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager$$ExternalSyntheticLambda0;->f$1:Lcom/reactnativecommunity/geolocation/BaseLocationManager$LocationOptions;

    iget-object v2, p0, Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager$$ExternalSyntheticLambda0;->f$2:Lcom/facebook/react/bridge/Callback;

    iget-object v3, p0, Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager$$ExternalSyntheticLambda0;->f$3:Lcom/facebook/react/bridge/Callback;

    iget-object v4, p0, Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager$$ExternalSyntheticLambda0;->f$4:Lcom/facebook/react/bridge/ReadableMap;

    move-object v5, p1

    check-cast v5, Landroid/location/Location;

    invoke-static/range {v0 .. v5}, Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager;->$r8$lambda$zB3pbdWh82yoqGyZQIUirUcN_RQ(Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager;Lcom/reactnativecommunity/geolocation/BaseLocationManager$LocationOptions;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/ReadableMap;Landroid/location/Location;)V

    return-void
.end method
