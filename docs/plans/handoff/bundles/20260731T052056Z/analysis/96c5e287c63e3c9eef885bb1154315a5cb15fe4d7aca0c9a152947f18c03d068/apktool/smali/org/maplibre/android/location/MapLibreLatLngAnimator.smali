.class public final Lorg/maplibre/android/location/MapLibreLatLngAnimator;
.super Lorg/maplibre/android/location/MapLibreAnimator;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# virtual methods
.method public final provideEvaluator()Landroid/animation/TypeEvaluator;
    .locals 1

    .line 1
    new-instance p0, Lorg/maplibre/android/location/LatLngEvaluator;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, v0}, Lorg/maplibre/android/location/LatLngEvaluator;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method
