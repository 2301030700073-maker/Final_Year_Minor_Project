.class public final Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lorg/maplibre/android/camera/CameraUpdate;


# instance fields
.field public final bearing:D

.field public final centerAltitude:D

.field public final fov:D

.field public final padding:[D

.field public final roll:D

.field public final target:Lorg/maplibre/android/geometry/LatLng;

.field public final tilt:D

.field public final zoom:D


# direct methods
.method public constructor <init>(Lorg/maplibre/android/geometry/LatLng;DDDDDD[D)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p2, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;->bearing:D

    .line 5
    .line 6
    iput-object p1, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;->target:Lorg/maplibre/android/geometry/LatLng;

    .line 7
    .line 8
    iput-wide p4, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;->centerAltitude:D

    .line 9
    .line 10
    iput-wide p6, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;->tilt:D

    .line 11
    .line 12
    iput-wide p8, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;->roll:D

    .line 13
    .line 14
    iput-wide p10, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;->fov:D

    .line 15
    .line 16
    iput-wide p12, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;->zoom:D

    .line 17
    .line 18
    iput-object p14, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;->padding:[D

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    return p0

    .line 5
    :cond_0
    const/4 v0, 0x0

    .line 6
    if-eqz p1, :cond_a

    .line 7
    .line 8
    const-class v1, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    check-cast p1, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;

    .line 22
    .line 23
    iget-wide v1, p1, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;->bearing:D

    .line 24
    .line 25
    iget-wide v3, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;->bearing:D

    .line 26
    .line 27
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Double;->compare(DD)I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    return v0

    .line 34
    :cond_2
    iget-wide v1, p1, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;->tilt:D

    .line 35
    .line 36
    iget-wide v3, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;->tilt:D

    .line 37
    .line 38
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Double;->compare(DD)I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_3

    .line 43
    .line 44
    return v0

    .line 45
    :cond_3
    iget-wide v1, p1, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;->roll:D

    .line 46
    .line 47
    iget-wide v3, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;->roll:D

    .line 48
    .line 49
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Double;->compare(DD)I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_4

    .line 54
    .line 55
    return v0

    .line 56
    :cond_4
    iget-wide v1, p1, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;->fov:D

    .line 57
    .line 58
    iget-wide v3, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;->fov:D

    .line 59
    .line 60
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Double;->compare(DD)I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_5

    .line 65
    .line 66
    return v0

    .line 67
    :cond_5
    iget-wide v1, p1, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;->zoom:D

    .line 68
    .line 69
    iget-wide v3, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;->zoom:D

    .line 70
    .line 71
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Double;->compare(DD)I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-eqz v1, :cond_6

    .line 76
    .line 77
    return v0

    .line 78
    :cond_6
    iget-wide v1, p1, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;->centerAltitude:D

    .line 79
    .line 80
    iget-wide v3, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;->centerAltitude:D

    .line 81
    .line 82
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Double;->compare(DD)I

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    if-eqz v1, :cond_7

    .line 87
    .line 88
    return v0

    .line 89
    :cond_7
    iget-object v1, p1, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;->target:Lorg/maplibre/android/geometry/LatLng;

    .line 90
    .line 91
    iget-object v2, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;->target:Lorg/maplibre/android/geometry/LatLng;

    .line 92
    .line 93
    if-eqz v2, :cond_8

    .line 94
    .line 95
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    if-nez v1, :cond_9

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_8
    if-eqz v1, :cond_9

    .line 103
    .line 104
    :goto_0
    return v0

    .line 105
    :cond_9
    iget-object p0, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;->padding:[D

    .line 106
    .line 107
    iget-object p1, p1, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;->padding:[D

    .line 108
    .line 109
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([D[D)Z

    .line 110
    .line 111
    .line 112
    move-result p0

    .line 113
    return p0

    .line 114
    :cond_a
    :goto_1
    return v0
.end method

.method public final getCameraPosition(Lorg/maplibre/android/maps/MapLibreMap;)Lorg/maplibre/android/camera/CameraPosition;
    .locals 9

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;->target:Lorg/maplibre/android/geometry/LatLng;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    iget-object p1, p1, Lorg/maplibre/android/maps/MapLibreMap;->transform:Lorg/maplibre/android/maps/Transform;

    .line 9
    .line 10
    invoke-virtual {p1}, Lorg/maplibre/android/maps/Transform;->getCameraPosition()Lorg/maplibre/android/camera/CameraPosition;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    iget-object v1, p1, Lorg/maplibre/android/camera/CameraPosition;->target:Lorg/maplibre/android/geometry/LatLng;

    .line 18
    .line 19
    new-instance v0, Lorg/maplibre/android/camera/CameraPosition;

    .line 20
    .line 21
    iget-wide v2, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;->zoom:D

    .line 22
    .line 23
    iget-wide v4, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;->tilt:D

    .line 24
    .line 25
    iget-wide v6, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;->bearing:D

    .line 26
    .line 27
    iget-object v8, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;->padding:[D

    .line 28
    .line 29
    invoke-direct/range {v0 .. v8}, Lorg/maplibre/android/camera/CameraPosition;-><init>(Lorg/maplibre/android/geometry/LatLng;DDD[D)V

    .line 30
    .line 31
    .line 32
    return-object v0

    .line 33
    :cond_0
    new-instance v0, Lorg/maplibre/android/camera/CameraPosition;

    .line 34
    .line 35
    iget-wide v2, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;->zoom:D

    .line 36
    .line 37
    iget-wide v4, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;->tilt:D

    .line 38
    .line 39
    iget-wide v6, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;->bearing:D

    .line 40
    .line 41
    iget-object v8, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;->padding:[D

    .line 42
    .line 43
    invoke-direct/range {v0 .. v8}, Lorg/maplibre/android/camera/CameraPosition;-><init>(Lorg/maplibre/android/geometry/LatLng;DDD[D)V

    .line 44
    .line 45
    .line 46
    return-object v0
.end method

.method public final hashCode()I
    .locals 7

    .line 1
    iget-wide v0, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;->bearing:D

    .line 2
    .line 3
    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const/16 v2, 0x20

    .line 8
    .line 9
    ushr-long v3, v0, v2

    .line 10
    .line 11
    xor-long/2addr v0, v3

    .line 12
    long-to-int v0, v0

    .line 13
    mul-int/lit8 v0, v0, 0x1f

    .line 14
    .line 15
    iget-object v1, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;->target:Lorg/maplibre/android/geometry/LatLng;

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {v1}, Lorg/maplibre/android/geometry/LatLng;->hashCode()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v1, 0x0

    .line 25
    :goto_0
    add-int/2addr v0, v1

    .line 26
    iget-wide v3, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;->centerAltitude:D

    .line 27
    .line 28
    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 29
    .line 30
    .line 31
    move-result-wide v3

    .line 32
    mul-int/lit8 v0, v0, 0x1f

    .line 33
    .line 34
    ushr-long v5, v3, v2

    .line 35
    .line 36
    xor-long/2addr v3, v5

    .line 37
    long-to-int v1, v3

    .line 38
    add-int/2addr v0, v1

    .line 39
    iget-wide v3, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;->tilt:D

    .line 40
    .line 41
    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 42
    .line 43
    .line 44
    move-result-wide v3

    .line 45
    mul-int/lit8 v0, v0, 0x1f

    .line 46
    .line 47
    ushr-long v5, v3, v2

    .line 48
    .line 49
    xor-long/2addr v3, v5

    .line 50
    long-to-int v1, v3

    .line 51
    add-int/2addr v0, v1

    .line 52
    iget-wide v3, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;->roll:D

    .line 53
    .line 54
    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 55
    .line 56
    .line 57
    move-result-wide v3

    .line 58
    mul-int/lit8 v0, v0, 0x1f

    .line 59
    .line 60
    ushr-long v5, v3, v2

    .line 61
    .line 62
    xor-long/2addr v3, v5

    .line 63
    long-to-int v1, v3

    .line 64
    add-int/2addr v0, v1

    .line 65
    iget-wide v3, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;->fov:D

    .line 66
    .line 67
    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 68
    .line 69
    .line 70
    move-result-wide v3

    .line 71
    mul-int/lit8 v0, v0, 0x1f

    .line 72
    .line 73
    ushr-long v5, v3, v2

    .line 74
    .line 75
    xor-long/2addr v3, v5

    .line 76
    long-to-int v1, v3

    .line 77
    add-int/2addr v0, v1

    .line 78
    iget-wide v3, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;->zoom:D

    .line 79
    .line 80
    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 81
    .line 82
    .line 83
    move-result-wide v3

    .line 84
    mul-int/lit8 v0, v0, 0x1f

    .line 85
    .line 86
    ushr-long v1, v3, v2

    .line 87
    .line 88
    xor-long/2addr v1, v3

    .line 89
    long-to-int v1, v1

    .line 90
    add-int/2addr v0, v1

    .line 91
    mul-int/lit8 v0, v0, 0x1f

    .line 92
    .line 93
    iget-object p0, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;->padding:[D

    .line 94
    .line 95
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([D)I

    .line 96
    .line 97
    .line 98
    move-result p0

    .line 99
    add-int/2addr p0, v0

    .line 100
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;->padding:[D

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v2, "CameraPositionUpdate{bearing="

    .line 10
    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-wide v2, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;->bearing:D

    .line 15
    .line 16
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v2, ", target="

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget-object v2, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;->target:Lorg/maplibre/android/geometry/LatLng;

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v2, ", centerAltitude="

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget-wide v2, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;->centerAltitude:D

    .line 35
    .line 36
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v2, ", tilt="

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    iget-wide v2, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;->tilt:D

    .line 45
    .line 46
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v2, ", roll="

    .line 50
    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    iget-wide v2, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;->roll:D

    .line 55
    .line 56
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v2, ", fov="

    .line 60
    .line 61
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    iget-wide v2, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;->fov:D

    .line 65
    .line 66
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v2, ", zoom="

    .line 70
    .line 71
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    iget-wide v2, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;->zoom:D

    .line 75
    .line 76
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string p0, ", padding="

    .line 80
    .line 81
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string/jumbo p0, "}"

    .line 85
    .line 86
    .line 87
    invoke-static {v1, v0, p0}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    return-object p0
.end method
