.class public final Lorg/maplibre/android/geometry/VisibleRegion;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/maplibre/android/geometry/VisibleRegion;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final farLeft:Lorg/maplibre/android/geometry/LatLng;

.field public final farRight:Lorg/maplibre/android/geometry/LatLng;

.field public final latLngBounds:Lorg/maplibre/android/geometry/LatLngBounds;

.field public final nearLeft:Lorg/maplibre/android/geometry/LatLng;

.field public final nearRight:Lorg/maplibre/android/geometry/LatLng;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/maplibre/android/util/DefaultStyle$1;

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lorg/maplibre/android/util/DefaultStyle$1;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lorg/maplibre/android/geometry/VisibleRegion;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 5
    .line 6
    const/16 v1, 0x21

    .line 7
    .line 8
    const-class v2, Lorg/maplibre/android/geometry/LatLngBounds;

    .line 9
    .line 10
    const-class v3, Lorg/maplibre/android/geometry/LatLng;

    .line 11
    .line 12
    if-le v0, v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lorg/maplibre/android/geometry/LatLng;

    .line 23
    .line 24
    iput-object v0, p0, Lorg/maplibre/android/geometry/VisibleRegion;->farLeft:Lorg/maplibre/android/geometry/LatLng;

    .line 25
    .line 26
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Lorg/maplibre/android/geometry/LatLng;

    .line 35
    .line 36
    iput-object v0, p0, Lorg/maplibre/android/geometry/VisibleRegion;->farRight:Lorg/maplibre/android/geometry/LatLng;

    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Lorg/maplibre/android/geometry/LatLng;

    .line 47
    .line 48
    iput-object v0, p0, Lorg/maplibre/android/geometry/VisibleRegion;->nearLeft:Lorg/maplibre/android/geometry/LatLng;

    .line 49
    .line 50
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Lorg/maplibre/android/geometry/LatLng;

    .line 59
    .line 60
    iput-object v0, p0, Lorg/maplibre/android/geometry/VisibleRegion;->nearRight:Lorg/maplibre/android/geometry/LatLng;

    .line 61
    .line 62
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    check-cast p1, Lorg/maplibre/android/geometry/LatLngBounds;

    .line 74
    .line 75
    iput-object p1, p0, Lorg/maplibre/android/geometry/VisibleRegion;->latLngBounds:Lorg/maplibre/android/geometry/LatLngBounds;

    .line 76
    .line 77
    return-void

    .line 78
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    check-cast v0, Lorg/maplibre/android/geometry/LatLng;

    .line 87
    .line 88
    iput-object v0, p0, Lorg/maplibre/android/geometry/VisibleRegion;->farLeft:Lorg/maplibre/android/geometry/LatLng;

    .line 89
    .line 90
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    check-cast v0, Lorg/maplibre/android/geometry/LatLng;

    .line 99
    .line 100
    iput-object v0, p0, Lorg/maplibre/android/geometry/VisibleRegion;->farRight:Lorg/maplibre/android/geometry/LatLng;

    .line 101
    .line 102
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    check-cast v0, Lorg/maplibre/android/geometry/LatLng;

    .line 111
    .line 112
    iput-object v0, p0, Lorg/maplibre/android/geometry/VisibleRegion;->nearLeft:Lorg/maplibre/android/geometry/LatLng;

    .line 113
    .line 114
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    check-cast v0, Lorg/maplibre/android/geometry/LatLng;

    .line 123
    .line 124
    iput-object v0, p0, Lorg/maplibre/android/geometry/VisibleRegion;->nearRight:Lorg/maplibre/android/geometry/LatLng;

    .line 125
    .line 126
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 135
    .line 136
    .line 137
    check-cast p1, Lorg/maplibre/android/geometry/LatLngBounds;

    .line 138
    .line 139
    iput-object p1, p0, Lorg/maplibre/android/geometry/VisibleRegion;->latLngBounds:Lorg/maplibre/android/geometry/LatLngBounds;

    .line 140
    .line 141
    return-void
.end method

.method public constructor <init>(Lorg/maplibre/android/geometry/LatLng;Lorg/maplibre/android/geometry/LatLng;Lorg/maplibre/android/geometry/LatLng;Lorg/maplibre/android/geometry/LatLng;Lorg/maplibre/android/geometry/LatLngBounds;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput-object p1, p0, Lorg/maplibre/android/geometry/VisibleRegion;->farLeft:Lorg/maplibre/android/geometry/LatLng;

    .line 144
    iput-object p2, p0, Lorg/maplibre/android/geometry/VisibleRegion;->farRight:Lorg/maplibre/android/geometry/LatLng;

    .line 145
    iput-object p3, p0, Lorg/maplibre/android/geometry/VisibleRegion;->nearLeft:Lorg/maplibre/android/geometry/LatLng;

    .line 146
    iput-object p4, p0, Lorg/maplibre/android/geometry/VisibleRegion;->nearRight:Lorg/maplibre/android/geometry/LatLng;

    .line 147
    iput-object p5, p0, Lorg/maplibre/android/geometry/VisibleRegion;->latLngBounds:Lorg/maplibre/android/geometry/LatLngBounds;

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
    .locals 4

    .line 1
    instance-of v0, p1, Lorg/maplibre/android/geometry/VisibleRegion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    const/4 v0, 0x1

    .line 8
    if-ne p1, p0, :cond_1

    .line 9
    .line 10
    return v0

    .line 11
    :cond_1
    check-cast p1, Lorg/maplibre/android/geometry/VisibleRegion;

    .line 12
    .line 13
    iget-object v2, p1, Lorg/maplibre/android/geometry/VisibleRegion;->farLeft:Lorg/maplibre/android/geometry/LatLng;

    .line 14
    .line 15
    iget-object v3, p0, Lorg/maplibre/android/geometry/VisibleRegion;->farLeft:Lorg/maplibre/android/geometry/LatLng;

    .line 16
    .line 17
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_2

    .line 22
    .line 23
    iget-object v2, p0, Lorg/maplibre/android/geometry/VisibleRegion;->farRight:Lorg/maplibre/android/geometry/LatLng;

    .line 24
    .line 25
    iget-object v3, p1, Lorg/maplibre/android/geometry/VisibleRegion;->farRight:Lorg/maplibre/android/geometry/LatLng;

    .line 26
    .line 27
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_2

    .line 32
    .line 33
    iget-object v2, p0, Lorg/maplibre/android/geometry/VisibleRegion;->nearLeft:Lorg/maplibre/android/geometry/LatLng;

    .line 34
    .line 35
    iget-object v3, p1, Lorg/maplibre/android/geometry/VisibleRegion;->nearLeft:Lorg/maplibre/android/geometry/LatLng;

    .line 36
    .line 37
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_2

    .line 42
    .line 43
    iget-object v2, p0, Lorg/maplibre/android/geometry/VisibleRegion;->nearRight:Lorg/maplibre/android/geometry/LatLng;

    .line 44
    .line 45
    iget-object v3, p1, Lorg/maplibre/android/geometry/VisibleRegion;->nearRight:Lorg/maplibre/android/geometry/LatLng;

    .line 46
    .line 47
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_2

    .line 52
    .line 53
    iget-object p0, p0, Lorg/maplibre/android/geometry/VisibleRegion;->latLngBounds:Lorg/maplibre/android/geometry/LatLngBounds;

    .line 54
    .line 55
    iget-object p1, p1, Lorg/maplibre/android/geometry/VisibleRegion;->latLngBounds:Lorg/maplibre/android/geometry/LatLngBounds;

    .line 56
    .line 57
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    if-eqz p0, :cond_2

    .line 62
    .line 63
    return v0

    .line 64
    :cond_2
    return v1
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lorg/maplibre/android/geometry/VisibleRegion;->farLeft:Lorg/maplibre/android/geometry/LatLng;

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    invoke-virtual {v1}, Lorg/maplibre/android/geometry/LatLng;->hashCode()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v1, v0

    .line 12
    :goto_0
    add-int/lit8 v1, v1, 0x5a

    .line 13
    .line 14
    iget-object v2, p0, Lorg/maplibre/android/geometry/VisibleRegion;->farRight:Lorg/maplibre/android/geometry/LatLng;

    .line 15
    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    invoke-virtual {v2}, Lorg/maplibre/android/geometry/LatLng;->hashCode()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    move v2, v0

    .line 24
    :goto_1
    add-int/lit8 v2, v2, 0x5a

    .line 25
    .line 26
    mul-int/lit16 v2, v2, 0x3e8

    .line 27
    .line 28
    add-int/2addr v2, v1

    .line 29
    iget-object v1, p0, Lorg/maplibre/android/geometry/VisibleRegion;->nearLeft:Lorg/maplibre/android/geometry/LatLng;

    .line 30
    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    invoke-virtual {v1}, Lorg/maplibre/android/geometry/LatLng;->hashCode()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    goto :goto_2

    .line 38
    :cond_2
    move v1, v0

    .line 39
    :goto_2
    add-int/lit16 v1, v1, 0xb4

    .line 40
    .line 41
    const v3, 0xf4240

    .line 42
    .line 43
    .line 44
    mul-int/2addr v1, v3

    .line 45
    add-int/2addr v1, v2

    .line 46
    iget-object p0, p0, Lorg/maplibre/android/geometry/VisibleRegion;->nearRight:Lorg/maplibre/android/geometry/LatLng;

    .line 47
    .line 48
    if-eqz p0, :cond_3

    .line 49
    .line 50
    invoke-virtual {p0}, Lorg/maplibre/android/geometry/LatLng;->hashCode()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    :cond_3
    add-int/lit16 v0, v0, 0xb4

    .line 55
    .line 56
    const p0, 0x3b9aca00

    .line 57
    .line 58
    .line 59
    mul-int/2addr v0, p0

    .line 60
    add-int/2addr v0, v1

    .line 61
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "[farLeft ["

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lorg/maplibre/android/geometry/VisibleRegion;->farLeft:Lorg/maplibre/android/geometry/LatLng;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, "], farRight ["

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lorg/maplibre/android/geometry/VisibleRegion;->farRight:Lorg/maplibre/android/geometry/LatLng;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, "], nearLeft ["

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lorg/maplibre/android/geometry/VisibleRegion;->nearLeft:Lorg/maplibre/android/geometry/LatLng;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, "], nearRight ["

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lorg/maplibre/android/geometry/VisibleRegion;->nearRight:Lorg/maplibre/android/geometry/LatLng;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, "], latLngBounds ["

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object p0, p0, Lorg/maplibre/android/geometry/VisibleRegion;->latLngBounds:Lorg/maplibre/android/geometry/LatLngBounds;

    .line 49
    .line 50
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string p0, "]]"

    .line 54
    .line 55
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/maplibre/android/geometry/VisibleRegion;->farLeft:Lorg/maplibre/android/geometry/LatLng;

    .line 5
    .line 6
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lorg/maplibre/android/geometry/VisibleRegion;->farRight:Lorg/maplibre/android/geometry/LatLng;

    .line 10
    .line 11
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lorg/maplibre/android/geometry/VisibleRegion;->nearLeft:Lorg/maplibre/android/geometry/LatLng;

    .line 15
    .line 16
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lorg/maplibre/android/geometry/VisibleRegion;->nearRight:Lorg/maplibre/android/geometry/LatLng;

    .line 20
    .line 21
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lorg/maplibre/android/geometry/VisibleRegion;->latLngBounds:Lorg/maplibre/android/geometry/LatLngBounds;

    .line 25
    .line 26
    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 27
    .line 28
    .line 29
    return-void
.end method
