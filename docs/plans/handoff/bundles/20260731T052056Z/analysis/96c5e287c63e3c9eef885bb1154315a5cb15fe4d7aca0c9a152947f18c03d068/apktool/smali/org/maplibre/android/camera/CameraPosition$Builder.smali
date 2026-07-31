.class public final Lorg/maplibre/android/camera/CameraPosition$Builder;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final bearing:D

.field public final target:Lorg/maplibre/android/geometry/LatLng;

.field public final tilt:D

.field public final zoom:D


# direct methods
.method public constructor <init>(Landroid/content/res/TypedArray;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 5
    .line 6
    iput-wide v0, p0, Lorg/maplibre/android/camera/CameraPosition$Builder;->bearing:D

    .line 7
    .line 8
    iput-wide v0, p0, Lorg/maplibre/android/camera/CameraPosition$Builder;->tilt:D

    .line 9
    .line 10
    iput-wide v0, p0, Lorg/maplibre/android/camera/CameraPosition$Builder;->zoom:D

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x6

    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    float-to-double v2, v0

    .line 21
    iput-wide v2, p0, Lorg/maplibre/android/camera/CameraPosition$Builder;->bearing:D

    .line 22
    .line 23
    const/16 v0, 0xc

    .line 24
    .line 25
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    float-to-double v2, v0

    .line 30
    const/16 v0, 0xd

    .line 31
    .line 32
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    float-to-double v4, v0

    .line 37
    new-instance v0, Lorg/maplibre/android/geometry/LatLng;

    .line 38
    .line 39
    invoke-direct {v0, v2, v3, v4, v5}, Lorg/maplibre/android/geometry/LatLng;-><init>(DD)V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Lorg/maplibre/android/camera/CameraPosition$Builder;->target:Lorg/maplibre/android/geometry/LatLng;

    .line 43
    .line 44
    const/4 v0, 0x7

    .line 45
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 46
    .line 47
    .line 48
    const/16 v0, 0xe

    .line 49
    .line 50
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    float-to-double v2, v0

    .line 55
    iput-wide v2, p0, Lorg/maplibre/android/camera/CameraPosition$Builder;->tilt:D

    .line 56
    .line 57
    const/16 v0, 0xb

    .line 58
    .line 59
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 60
    .line 61
    .line 62
    const/16 v0, 0x8

    .line 63
    .line 64
    const v2, 0x42137ac6

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 68
    .line 69
    .line 70
    const/16 v0, 0xf

    .line 71
    .line 72
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    float-to-double v0, p1

    .line 77
    iput-wide v0, p0, Lorg/maplibre/android/camera/CameraPosition$Builder;->zoom:D

    .line 78
    .line 79
    :cond_0
    return-void
.end method
