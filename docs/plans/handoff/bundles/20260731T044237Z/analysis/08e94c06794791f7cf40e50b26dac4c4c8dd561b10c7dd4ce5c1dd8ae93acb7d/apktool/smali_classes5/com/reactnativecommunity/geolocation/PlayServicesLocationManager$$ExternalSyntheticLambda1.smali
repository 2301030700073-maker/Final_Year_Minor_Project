.class public final synthetic Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field public final synthetic f$0:Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager;

.field public final synthetic f$1:Lcom/google/android/gms/location/LocationRequest;

.field public final synthetic f$2:Lcom/google/android/gms/location/LocationCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager;Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager$$ExternalSyntheticLambda1;->f$0:Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager;

    iput-object p2, p0, Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager$$ExternalSyntheticLambda1;->f$1:Lcom/google/android/gms/location/LocationRequest;

    iput-object p3, p0, Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager$$ExternalSyntheticLambda1;->f$2:Lcom/google/android/gms/location/LocationCallback;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager$$ExternalSyntheticLambda1;->f$0:Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager;

    iget-object v1, p0, Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager$$ExternalSyntheticLambda1;->f$1:Lcom/google/android/gms/location/LocationRequest;

    iget-object v2, p0, Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager$$ExternalSyntheticLambda1;->f$2:Lcom/google/android/gms/location/LocationCallback;

    check-cast p1, Lcom/google/android/gms/location/LocationSettingsResponse;

    invoke-static {v0, v1, v2, p1}, Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager;->$r8$lambda$7MGPPRaZ5b35PTN__BsWkEgA1yE(Lcom/reactnativecommunity/geolocation/PlayServicesLocationManager;Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationCallback;Lcom/google/android/gms/location/LocationSettingsResponse;)V

    return-void
.end method
