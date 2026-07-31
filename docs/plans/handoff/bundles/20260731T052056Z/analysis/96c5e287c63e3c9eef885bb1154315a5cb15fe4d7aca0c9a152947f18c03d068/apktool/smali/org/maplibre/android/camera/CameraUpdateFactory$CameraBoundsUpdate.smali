.class public final Lorg/maplibre/android/camera/CameraUpdateFactory$CameraBoundsUpdate;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lorg/maplibre/android/camera/CameraUpdate;


# instance fields
.field public final bounds:Lorg/maplibre/android/geometry/LatLngBounds;

.field public final padding:[I


# direct methods
.method public constructor <init>(Lorg/maplibre/android/geometry/LatLngBounds;IIII)V
    .locals 0

    .line 1
    filled-new-array {p2, p3, p4, p5}, [I

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraBoundsUpdate;->bounds:Lorg/maplibre/android/geometry/LatLngBounds;

    .line 9
    .line 10
    iput-object p2, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraBoundsUpdate;->padding:[I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    return p0

    .line 5
    :cond_0
    if-eqz p1, :cond_3

    .line 6
    .line 7
    const-class v0, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraBoundsUpdate;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    check-cast p1, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraBoundsUpdate;

    .line 21
    .line 22
    iget-object v0, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraBoundsUpdate;->bounds:Lorg/maplibre/android/geometry/LatLngBounds;

    .line 23
    .line 24
    iget-object v1, p1, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraBoundsUpdate;->bounds:Lorg/maplibre/android/geometry/LatLngBounds;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lorg/maplibre/android/geometry/LatLngBounds;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_2

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    iget-object p0, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraBoundsUpdate;->padding:[I

    .line 34
    .line 35
    iget-object p1, p1, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraBoundsUpdate;->padding:[I

    .line 36
    .line 37
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    return p0

    .line 42
    :cond_3
    :goto_0
    const/4 p0, 0x0

    .line 43
    return p0
.end method

.method public final getCameraPosition(Lorg/maplibre/android/maps/MapLibreMap;)Lorg/maplibre/android/camera/CameraPosition;
    .locals 8

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lorg/maplibre/android/maps/MapLibreMap;->transform:Lorg/maplibre/android/maps/Transform;

    .line 5
    .line 6
    invoke-virtual {v0}, Lorg/maplibre/android/maps/Transform;->getRawBearing()D

    .line 7
    .line 8
    .line 9
    move-result-wide v4

    .line 10
    invoke-virtual {v0}, Lorg/maplibre/android/maps/Transform;->getTilt()D

    .line 11
    .line 12
    .line 13
    move-result-wide v6

    .line 14
    iget-object v2, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraBoundsUpdate;->bounds:Lorg/maplibre/android/geometry/LatLngBounds;

    .line 15
    .line 16
    iget-object v3, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraBoundsUpdate;->padding:[I

    .line 17
    .line 18
    move-object v1, p1

    .line 19
    invoke-virtual/range {v1 .. v7}, Lorg/maplibre/android/maps/MapLibreMap;->getCameraForLatLngBounds(Lorg/maplibre/android/geometry/LatLngBounds;[IDD)Lorg/maplibre/android/camera/CameraPosition;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraBoundsUpdate;->bounds:Lorg/maplibre/android/geometry/LatLngBounds;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/maplibre/android/geometry/LatLngBounds;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object p0, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraBoundsUpdate;->padding:[I

    .line 10
    .line 11
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([I)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    add-int/2addr p0, v0

    .line 16
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraBoundsUpdate;->padding:[I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v2, "CameraBoundsUpdate{bounds="

    .line 13
    .line 14
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object p0, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraBoundsUpdate;->bounds:Lorg/maplibre/android/geometry/LatLngBounds;

    .line 18
    .line 19
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string p0, ", padding="

    .line 23
    .line 24
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string/jumbo p0, "}"

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0
.end method
