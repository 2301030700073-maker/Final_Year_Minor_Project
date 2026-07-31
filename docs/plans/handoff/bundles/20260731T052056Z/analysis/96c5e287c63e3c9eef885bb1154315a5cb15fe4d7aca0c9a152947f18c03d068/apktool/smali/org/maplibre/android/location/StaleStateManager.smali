.class public final Lorg/maplibre/android/location/StaleStateManager;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public delayTime:J

.field public final handler:Landroidx/preference/PreferenceFragmentCompat$1;

.field public final innerOnLocationStaleListeners:Lorg/maplibre/android/location/LocationComponent$5;

.field public isEnabled:Z

.field public isStale:Z


# direct methods
.method public constructor <init>(Lorg/maplibre/android/location/LocationComponent$5;Lorg/maplibre/android/location/LocationComponentOptions;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lorg/maplibre/android/location/StaleStateManager;->isStale:Z

    .line 6
    .line 7
    iput-object p1, p0, Lorg/maplibre/android/location/StaleStateManager;->innerOnLocationStaleListeners:Lorg/maplibre/android/location/LocationComponent$5;

    .line 8
    .line 9
    new-instance p1, Landroidx/preference/PreferenceFragmentCompat$1;

    .line 10
    .line 11
    invoke-direct {p1, p0}, Landroidx/preference/PreferenceFragmentCompat$1;-><init>(Lorg/maplibre/android/location/StaleStateManager;)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lorg/maplibre/android/location/StaleStateManager;->handler:Landroidx/preference/PreferenceFragmentCompat$1;

    .line 15
    .line 16
    iget-boolean p1, p2, Lorg/maplibre/android/location/LocationComponentOptions;->enableStaleState:Z

    .line 17
    .line 18
    iput-boolean p1, p0, Lorg/maplibre/android/location/StaleStateManager;->isEnabled:Z

    .line 19
    .line 20
    iget-wide p1, p2, Lorg/maplibre/android/location/LocationComponentOptions;->staleStateTimeout:J

    .line 21
    .line 22
    iput-wide p1, p0, Lorg/maplibre/android/location/StaleStateManager;->delayTime:J

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final setState(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/maplibre/android/location/StaleStateManager;->isStale:Z

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    .line 5
    iput-boolean p1, p0, Lorg/maplibre/android/location/StaleStateManager;->isStale:Z

    .line 6
    .line 7
    iget-boolean v0, p0, Lorg/maplibre/android/location/StaleStateManager;->isEnabled:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lorg/maplibre/android/location/StaleStateManager;->innerOnLocationStaleListeners:Lorg/maplibre/android/location/LocationComponent$5;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lorg/maplibre/android/location/LocationComponent$5;->onStaleStateChange(Z)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method
