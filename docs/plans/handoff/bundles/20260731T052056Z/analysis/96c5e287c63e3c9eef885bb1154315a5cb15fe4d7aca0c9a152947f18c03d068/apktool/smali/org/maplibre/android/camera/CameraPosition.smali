.class public final Lorg/maplibre/android/camera/CameraPosition;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0006\n\u0002\u0010\u0013\n\u0002\u0008\t\u0018\u00002\u00020\u0001:\u0001\u0013BM\u0008\u0001\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u0012\u0006\u0010\u0008\u001a\u00020\u0004\u0012\u0006\u0010\t\u001a\u00020\u0004\u0012\u0006\u0010\n\u001a\u00020\u0004\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0004\u0008\r\u0010\u000eB5\u0008\u0011\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u0012\u0006\u0010\u0008\u001a\u00020\u0004\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0004\u0008\r\u0010\u000fR\u0016\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u0010R\u0014\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u0011R\u0014\u0010\u0006\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010\u0011R\u0014\u0010\u0007\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u0011R\u0014\u0010\u0008\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\u0011R\u0014\u0010\t\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\u0011R\u0014\u0010\n\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u0011R\u0016\u0010\u000c\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\u0012\u00a8\u0006\u0014"
    }
    d2 = {
        "Lorg/maplibre/android/camera/CameraPosition;",
        "Landroid/os/Parcelable;",
        "Lorg/maplibre/android/geometry/LatLng;",
        "target",
        "",
        "centerAltitude",
        "zoom",
        "tilt",
        "bearing",
        "roll",
        "fov",
        "",
        "padding",
        "<init>",
        "(Lorg/maplibre/android/geometry/LatLng;DDDDDD[D)V",
        "(Lorg/maplibre/android/geometry/LatLng;DDD[D)V",
        "Lorg/maplibre/android/geometry/LatLng;",
        "D",
        "[D",
        "Builder",
        "MapLibreAndroid_vulkanRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/maplibre/android/camera/CameraPosition;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT:Lorg/maplibre/android/camera/CameraPosition;


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
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lorg/maplibre/android/camera/CameraPosition;

    .line 2
    .line 3
    new-instance v1, Lorg/maplibre/android/geometry/LatLng;

    .line 4
    .line 5
    invoke-direct {v1}, Lorg/maplibre/android/geometry/LatLng;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x4

    .line 9
    new-array v8, v2, [D

    .line 10
    .line 11
    fill-array-data v8, :array_0

    .line 12
    .line 13
    .line 14
    const-wide/16 v2, 0x0

    .line 15
    .line 16
    const-wide/16 v4, 0x0

    .line 17
    .line 18
    const-wide/16 v6, 0x0

    .line 19
    .line 20
    invoke-direct/range {v0 .. v8}, Lorg/maplibre/android/camera/CameraPosition;-><init>(Lorg/maplibre/android/geometry/LatLng;DDD[D)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lorg/maplibre/android/camera/CameraPosition;->DEFAULT:Lorg/maplibre/android/camera/CameraPosition;

    .line 24
    .line 25
    new-instance v0, Lorg/maplibre/android/camera/CameraPosition$Companion$CREATOR$1;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 28
    .line 29
    .line 30
    sput-object v0, Lorg/maplibre/android/camera/CameraPosition;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 31
    .line 32
    return-void

    .line 33
    :array_0
    .array-data 8
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Lorg/maplibre/android/geometry/LatLng;DDDDDD[D)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lorg/maplibre/android/camera/CameraPosition;->target:Lorg/maplibre/android/geometry/LatLng;

    .line 27
    iput-wide p2, p0, Lorg/maplibre/android/camera/CameraPosition;->centerAltitude:D

    .line 28
    iput-wide p4, p0, Lorg/maplibre/android/camera/CameraPosition;->zoom:D

    .line 29
    iput-wide p6, p0, Lorg/maplibre/android/camera/CameraPosition;->tilt:D

    .line 30
    iput-wide p8, p0, Lorg/maplibre/android/camera/CameraPosition;->bearing:D

    .line 31
    iput-wide p10, p0, Lorg/maplibre/android/camera/CameraPosition;->roll:D

    .line 32
    iput-wide p12, p0, Lorg/maplibre/android/camera/CameraPosition;->fov:D

    .line 33
    iput-object p14, p0, Lorg/maplibre/android/camera/CameraPosition;->padding:[D

    return-void
.end method

.method public constructor <init>(Lorg/maplibre/android/geometry/LatLng;DDD[D)V
    .locals 15

    .line 1
    const-wide/16 v10, 0x0

    .line 2
    .line 3
    const-wide v12, 0x40426f58ce59e23cL    # 36.86989764584402

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    move-object v0, p0

    .line 11
    move-object/from16 v1, p1

    .line 12
    .line 13
    move-wide/from16 v4, p2

    .line 14
    .line 15
    move-wide/from16 v6, p4

    .line 16
    .line 17
    move-wide/from16 v8, p6

    .line 18
    .line 19
    move-object/from16 v14, p8

    .line 20
    .line 21
    invoke-direct/range {v0 .. v14}, Lorg/maplibre/android/camera/CameraPosition;-><init>(Lorg/maplibre/android/geometry/LatLng;DDDDDD[D)V

    .line 22
    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_4

    .line 7
    .line 8
    const-class v2, Lorg/maplibre/android/camera/CameraPosition;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-nez v2, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    check-cast p1, Lorg/maplibre/android/camera/CameraPosition;

    .line 22
    .line 23
    iget-object v2, p0, Lorg/maplibre/android/camera/CameraPosition;->target:Lorg/maplibre/android/geometry/LatLng;

    .line 24
    .line 25
    if-eqz v2, :cond_2

    .line 26
    .line 27
    iget-object v3, p1, Lorg/maplibre/android/camera/CameraPosition;->target:Lorg/maplibre/android/geometry/LatLng;

    .line 28
    .line 29
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-nez v2, :cond_2

    .line 34
    .line 35
    return v1

    .line 36
    :cond_2
    iget-wide v2, p0, Lorg/maplibre/android/camera/CameraPosition;->centerAltitude:D

    .line 37
    .line 38
    iget-wide v4, p1, Lorg/maplibre/android/camera/CameraPosition;->centerAltitude:D

    .line 39
    .line 40
    cmpg-double v2, v2, v4

    .line 41
    .line 42
    if-nez v2, :cond_4

    .line 43
    .line 44
    iget-wide v2, p0, Lorg/maplibre/android/camera/CameraPosition;->zoom:D

    .line 45
    .line 46
    iget-wide v4, p1, Lorg/maplibre/android/camera/CameraPosition;->zoom:D

    .line 47
    .line 48
    cmpg-double v2, v2, v4

    .line 49
    .line 50
    if-nez v2, :cond_4

    .line 51
    .line 52
    iget-wide v2, p0, Lorg/maplibre/android/camera/CameraPosition;->tilt:D

    .line 53
    .line 54
    iget-wide v4, p1, Lorg/maplibre/android/camera/CameraPosition;->tilt:D

    .line 55
    .line 56
    cmpg-double v2, v2, v4

    .line 57
    .line 58
    if-nez v2, :cond_4

    .line 59
    .line 60
    iget-wide v2, p0, Lorg/maplibre/android/camera/CameraPosition;->roll:D

    .line 61
    .line 62
    iget-wide v4, p1, Lorg/maplibre/android/camera/CameraPosition;->roll:D

    .line 63
    .line 64
    cmpg-double v2, v2, v4

    .line 65
    .line 66
    if-nez v2, :cond_4

    .line 67
    .line 68
    iget-wide v2, p0, Lorg/maplibre/android/camera/CameraPosition;->fov:D

    .line 69
    .line 70
    iget-wide v4, p1, Lorg/maplibre/android/camera/CameraPosition;->fov:D

    .line 71
    .line 72
    cmpg-double v2, v2, v4

    .line 73
    .line 74
    if-nez v2, :cond_4

    .line 75
    .line 76
    iget-wide v2, p0, Lorg/maplibre/android/camera/CameraPosition;->bearing:D

    .line 77
    .line 78
    iget-wide v4, p1, Lorg/maplibre/android/camera/CameraPosition;->bearing:D

    .line 79
    .line 80
    cmpg-double v2, v2, v4

    .line 81
    .line 82
    if-nez v2, :cond_4

    .line 83
    .line 84
    iget-object p0, p0, Lorg/maplibre/android/camera/CameraPosition;->padding:[D

    .line 85
    .line 86
    iget-object p1, p1, Lorg/maplibre/android/camera/CameraPosition;->padding:[D

    .line 87
    .line 88
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([D[D)Z

    .line 89
    .line 90
    .line 91
    move-result p0

    .line 92
    if-nez p0, :cond_3

    .line 93
    .line 94
    return v1

    .line 95
    :cond_3
    return v0

    .line 96
    :cond_4
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 7

    .line 1
    iget-wide v0, p0, Lorg/maplibre/android/camera/CameraPosition;->bearing:D

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
    iget-object v1, p0, Lorg/maplibre/android/camera/CameraPosition;->target:Lorg/maplibre/android/geometry/LatLng;

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
    iget-wide v3, p0, Lorg/maplibre/android/camera/CameraPosition;->centerAltitude:D

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
    iget-wide v3, p0, Lorg/maplibre/android/camera/CameraPosition;->tilt:D

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
    iget-wide v3, p0, Lorg/maplibre/android/camera/CameraPosition;->roll:D

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
    iget-wide v3, p0, Lorg/maplibre/android/camera/CameraPosition;->fov:D

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
    iget-wide v3, p0, Lorg/maplibre/android/camera/CameraPosition;->zoom:D

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
    iget-object p0, p0, Lorg/maplibre/android/camera/CameraPosition;->padding:[D

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
    .locals 15

    .line 1
    iget-object v0, p0, Lorg/maplibre/android/camera/CameraPosition;->target:Lorg/maplibre/android/geometry/LatLng;

    .line 2
    .line 3
    iget-wide v1, p0, Lorg/maplibre/android/camera/CameraPosition;->centerAltitude:D

    .line 4
    .line 5
    iget-wide v3, p0, Lorg/maplibre/android/camera/CameraPosition;->zoom:D

    .line 6
    .line 7
    iget-wide v5, p0, Lorg/maplibre/android/camera/CameraPosition;->bearing:D

    .line 8
    .line 9
    iget-wide v7, p0, Lorg/maplibre/android/camera/CameraPosition;->tilt:D

    .line 10
    .line 11
    iget-wide v9, p0, Lorg/maplibre/android/camera/CameraPosition;->roll:D

    .line 12
    .line 13
    iget-wide v11, p0, Lorg/maplibre/android/camera/CameraPosition;->fov:D

    .line 14
    .line 15
    iget-object p0, p0, Lorg/maplibre/android/camera/CameraPosition;->padding:[D

    .line 16
    .line 17
    invoke-static {p0}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    new-instance v13, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v14, "Target: "

    .line 24
    .line 25
    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v0, ", Center Altitude:"

    .line 32
    .line 33
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v13, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v0, ", Zoom:"

    .line 40
    .line 41
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v13, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v0, ", Bearing:"

    .line 48
    .line 49
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v13, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v0, ", Tilt:"

    .line 56
    .line 57
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v13, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v0, ", Roll:"

    .line 64
    .line 65
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v13, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v0, ", FOV:"

    .line 72
    .line 73
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v13, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string v0, ", Padding:"

    .line 80
    .line 81
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v13, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-wide v0, p0, Lorg/maplibre/android/camera/CameraPosition;->bearing:D

    .line 5
    .line 6
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lorg/maplibre/android/camera/CameraPosition;->target:Lorg/maplibre/android/geometry/LatLng;

    .line 10
    .line 11
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 12
    .line 13
    .line 14
    iget-wide v0, p0, Lorg/maplibre/android/camera/CameraPosition;->centerAltitude:D

    .line 15
    .line 16
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 17
    .line 18
    .line 19
    iget-wide v0, p0, Lorg/maplibre/android/camera/CameraPosition;->tilt:D

    .line 20
    .line 21
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 22
    .line 23
    .line 24
    iget-wide v0, p0, Lorg/maplibre/android/camera/CameraPosition;->roll:D

    .line 25
    .line 26
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 27
    .line 28
    .line 29
    iget-wide v0, p0, Lorg/maplibre/android/camera/CameraPosition;->fov:D

    .line 30
    .line 31
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 32
    .line 33
    .line 34
    iget-wide v0, p0, Lorg/maplibre/android/camera/CameraPosition;->zoom:D

    .line 35
    .line 36
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 37
    .line 38
    .line 39
    iget-object p2, p0, Lorg/maplibre/android/camera/CameraPosition;->padding:[D

    .line 40
    .line 41
    if-eqz p2, :cond_1

    .line 42
    .line 43
    array-length p2, p2

    .line 44
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    .line 46
    .line 47
    iget-object p0, p0, Lorg/maplibre/android/camera/CameraPosition;->padding:[D

    .line 48
    .line 49
    array-length p2, p0

    .line 50
    const/4 v0, 0x0

    .line 51
    :goto_0
    if-ge v0, p2, :cond_0

    .line 52
    .line 53
    aget-wide v1, p0, v0

    .line 54
    .line 55
    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 56
    .line 57
    .line 58
    add-int/lit8 v0, v0, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    return-void

    .line 62
    :cond_1
    const/4 p0, -0x1

    .line 63
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    .line 65
    .line 66
    return-void
.end method
