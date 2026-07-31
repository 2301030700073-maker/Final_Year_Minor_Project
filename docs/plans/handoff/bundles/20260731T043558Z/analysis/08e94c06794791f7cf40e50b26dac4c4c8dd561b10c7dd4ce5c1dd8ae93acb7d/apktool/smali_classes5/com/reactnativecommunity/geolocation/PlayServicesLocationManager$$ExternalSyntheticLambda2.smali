.class public final synthetic Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# instance fields
.field public final synthetic f$0:Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager;

.field public final synthetic f$1:Lcom/google/android/gms/location/LocationRequest;

.field public final synthetic f$2:Lcom/google/android/gms/location/LocationCallback;

.field public final synthetic f$3:Lcom/facebook/react/bridge/Callback;


# direct methods
.method public synthetic constructor <init>(Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager;Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationCallback;Lcom/facebook/react/bridge/Callback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager$$ExternalSyntheticLambda2;->f$0:Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager;

    iput-object p2, p0, Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager$$ExternalSyntheticLambda2;->f$1:Lcom/google/android/gms/location/LocationRequest;

    iput-object p3, p0, Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager$$ExternalSyntheticLambda2;->f$2:Lcom/google/android/gms/location/LocationCallback;

    iput-object p4, p0, Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager$$ExternalSyntheticLambda2;->f$3:Lcom/facebook/react/bridge/Callback;

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager$$ExternalSyntheticLambda2;->f$0:Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager;

    iget-object v1, p0, Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager$$ExternalSyntheticLambda2;->f$1:Lcom/google/android/gms/location/LocationRequest;

    iget-object v2, p0, Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager$$ExternalSyntheticLambda2;->f$2:Lcom/google/android/gms/location/LocationCallback;

    iget-object v3, p0, Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager$$ExternalSyntheticLambda2;->f$3:Lcom/facebook/react/bridge/Callback;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager;->$r8$lambda$VtdL9DSzLIusUGDaGyuCQjHi2PE(Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager;Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationCallback;Lcom/facebook/react/bridge/Callback;Ljava/lang/Exception;)V

    return-void
.end method
