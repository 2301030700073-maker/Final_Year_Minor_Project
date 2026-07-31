.class public final Lorg/maplibre/android/camera/CameraPosition$Companion$CREATOR$1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/os/Parcel;->readDouble()D

    .line 7
    .line 8
    .line 9
    move-result-wide v8

    .line 10
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 11
    .line 12
    const/16 v2, 0x21

    .line 13
    .line 14
    const-class v3, Lorg/maplibre/android/geometry/LatLng;

    .line 15
    .line 16
    if-le v1, v2, :cond_0

    .line 17
    .line 18
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lorg/maplibre/android/geometry/LatLng;

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Lorg/maplibre/android/geometry/LatLng;

    .line 38
    .line 39
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->readDouble()D

    .line 40
    .line 41
    .line 42
    move-result-wide v2

    .line 43
    invoke-virtual {v0}, Landroid/os/Parcel;->readDouble()D

    .line 44
    .line 45
    .line 46
    move-result-wide v6

    .line 47
    invoke-virtual {v0}, Landroid/os/Parcel;->readDouble()D

    .line 48
    .line 49
    .line 50
    move-result-wide v10

    .line 51
    invoke-virtual {v0}, Landroid/os/Parcel;->readDouble()D

    .line 52
    .line 53
    .line 54
    move-result-wide v12

    .line 55
    invoke-virtual {v0}, Landroid/os/Parcel;->readDouble()D

    .line 56
    .line 57
    .line 58
    move-result-wide v4

    .line 59
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 60
    .line 61
    .line 62
    move-result v14

    .line 63
    if-lez v14, :cond_2

    .line 64
    .line 65
    new-array v15, v14, [D

    .line 66
    .line 67
    const/16 v16, 0x0

    .line 68
    .line 69
    move/from16 v0, v16

    .line 70
    .line 71
    :goto_1
    if-ge v0, v14, :cond_1

    .line 72
    .line 73
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readDouble()D

    .line 74
    .line 75
    .line 76
    move-result-wide v16

    .line 77
    aput-wide v16, v15, v0

    .line 78
    .line 79
    add-int/lit8 v0, v0, 0x1

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_1
    :goto_2
    move-object v14, v15

    .line 83
    goto :goto_3

    .line 84
    :cond_2
    const/4 v15, 0x0

    .line 85
    goto :goto_2

    .line 86
    :goto_3
    new-instance v0, Lorg/maplibre/android/camera/CameraPosition;

    .line 87
    .line 88
    invoke-direct/range {v0 .. v14}, Lorg/maplibre/android/camera/CameraPosition;-><init>(Lorg/maplibre/android/geometry/LatLng;DDDDDD[D)V

    .line 89
    .line 90
    .line 91
    return-object v0
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    new-array p0, p1, [Lorg/maplibre/android/camera/CameraPosition;

    .line 2
    .line 3
    return-object p0
.end method
