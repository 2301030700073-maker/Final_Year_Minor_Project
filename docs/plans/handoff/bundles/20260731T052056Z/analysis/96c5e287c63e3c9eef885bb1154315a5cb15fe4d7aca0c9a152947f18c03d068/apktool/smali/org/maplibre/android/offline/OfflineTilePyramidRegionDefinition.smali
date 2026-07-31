.class public final Lorg/maplibre/android/offline/OfflineTilePyramidRegionDefinition;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lorg/maplibre/android/offline/OfflineRegionDefinition;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0014\u0018\u00002\u00020\u0001B3\u0008\u0017\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\u0008\u001a\u00020\u0006\u0012\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000cB;\u0008\u0017\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\u0008\u001a\u00020\u0006\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000e\u001a\u00020\r\u00a2\u0006\u0004\u0008\u000b\u0010\u000fR(\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u00028\u0016@RX\u0097\u000e\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0016X\u0097\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016R$\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u00068\u0016@RX\u0097\u000e\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019R$\u0010\u0008\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u00068\u0016@RX\u0097\u000e\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\u0017\u001a\u0004\u0008\u001a\u0010\u0019R$\u0010\n\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\t8\u0016@RX\u0097\u000e\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001dR$\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\r8\u0016@RX\u0097\u000e\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u001e\u001a\u0004\u0008\u001f\u0010 \u00a8\u0006!"
    }
    d2 = {
        "Lorg/maplibre/android/offline/OfflineTilePyramidRegionDefinition;",
        "Lorg/maplibre/android/offline/OfflineRegionDefinition;",
        "",
        "styleURL",
        "Lorg/maplibre/android/geometry/LatLngBounds;",
        "bounds",
        "",
        "minZoom",
        "maxZoom",
        "",
        "pixelRatio",
        "<init>",
        "(Ljava/lang/String;Lorg/maplibre/android/geometry/LatLngBounds;DDF)V",
        "",
        "includeIdeographs",
        "(Ljava/lang/String;Lorg/maplibre/android/geometry/LatLngBounds;DDFZ)V",
        "value",
        "Ljava/lang/String;",
        "getStyleURL",
        "()Ljava/lang/String;",
        "Lorg/maplibre/android/geometry/LatLngBounds;",
        "getBounds",
        "()Lorg/maplibre/android/geometry/LatLngBounds;",
        "D",
        "getMinZoom",
        "()D",
        "getMaxZoom",
        "F",
        "getPixelRatio",
        "()F",
        "Z",
        "getIncludeIdeographs",
        "()Z",
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
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final bounds:Lorg/maplibre/android/geometry/LatLngBounds;

.field private includeIdeographs:Z

.field private maxZoom:D

.field private minZoom:D

.field private pixelRatio:F

.field private styleURL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/maplibre/android/util/DefaultStyle$1;

    .line 2
    .line 3
    const/16 v1, 0xe

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lorg/maplibre/android/util/DefaultStyle$1;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lorg/maplibre/android/offline/OfflineTilePyramidRegionDefinition;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lorg/maplibre/android/offline/OfflineTilePyramidRegionDefinition;->styleURL:Ljava/lang/String;

    .line 9
    .line 10
    new-instance v0, Lokhttp3/Headers$Builder;

    .line 11
    .line 12
    const/4 v1, 0x6

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-direct {v0, v1, v2}, Lokhttp3/Headers$Builder;-><init>(IB)V

    .line 15
    .line 16
    .line 17
    new-instance v1, Lorg/maplibre/android/geometry/LatLng;

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    .line 20
    .line 21
    .line 22
    move-result-wide v3

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    .line 24
    .line 25
    .line 26
    move-result-wide v5

    .line 27
    invoke-direct {v1, v3, v4, v5, v6}, Lorg/maplibre/android/geometry/LatLng;-><init>(DD)V

    .line 28
    .line 29
    .line 30
    iget-object v3, v0, Lokhttp3/Headers$Builder;->namesAndValues:Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    new-instance v1, Lorg/maplibre/android/geometry/LatLng;

    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    .line 38
    .line 39
    .line 40
    move-result-wide v4

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    .line 42
    .line 43
    .line 44
    move-result-wide v6

    .line 45
    invoke-direct {v1, v4, v5, v6, v7}, Lorg/maplibre/android/geometry/LatLng;-><init>(DD)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Lokhttp3/Headers$Builder;->build()Lorg/maplibre/android/geometry/LatLngBounds;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iput-object v0, p0, Lorg/maplibre/android/offline/OfflineTilePyramidRegionDefinition;->bounds:Lorg/maplibre/android/geometry/LatLngBounds;

    .line 56
    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    .line 58
    .line 59
    .line 60
    move-result-wide v0

    .line 61
    iput-wide v0, p0, Lorg/maplibre/android/offline/OfflineTilePyramidRegionDefinition;->minZoom:D

    .line 62
    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    .line 64
    .line 65
    .line 66
    move-result-wide v0

    .line 67
    iput-wide v0, p0, Lorg/maplibre/android/offline/OfflineTilePyramidRegionDefinition;->maxZoom:D

    .line 68
    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    iput v0, p0, Lorg/maplibre/android/offline/OfflineTilePyramidRegionDefinition;->pixelRatio:F

    .line 74
    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    if-eqz p1, :cond_0

    .line 80
    .line 81
    const/4 v2, 0x1

    .line 82
    :cond_0
    iput-boolean v2, p0, Lorg/maplibre/android/offline/OfflineTilePyramidRegionDefinition;->includeIdeographs:Z

    .line 83
    .line 84
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/maplibre/android/geometry/LatLngBounds;DDF)V
    .locals 9

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    move/from16 v7, p7

    .line 92
    invoke-direct/range {v0 .. v8}, Lorg/maplibre/android/offline/OfflineTilePyramidRegionDefinition;-><init>(Ljava/lang/String;Lorg/maplibre/android/geometry/LatLngBounds;DDFZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/maplibre/android/geometry/LatLngBounds;DDFZ)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lorg/maplibre/android/offline/OfflineTilePyramidRegionDefinition;->styleURL:Ljava/lang/String;

    .line 87
    iput-object p2, p0, Lorg/maplibre/android/offline/OfflineTilePyramidRegionDefinition;->bounds:Lorg/maplibre/android/geometry/LatLngBounds;

    .line 88
    iput-wide p3, p0, Lorg/maplibre/android/offline/OfflineTilePyramidRegionDefinition;->minZoom:D

    .line 89
    iput-wide p5, p0, Lorg/maplibre/android/offline/OfflineTilePyramidRegionDefinition;->maxZoom:D

    .line 90
    iput p7, p0, Lorg/maplibre/android/offline/OfflineTilePyramidRegionDefinition;->pixelRatio:F

    .line 91
    iput-boolean p8, p0, Lorg/maplibre/android/offline/OfflineTilePyramidRegionDefinition;->includeIdeographs:Z

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

.method public final getBounds()Lorg/maplibre/android/geometry/LatLngBounds;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/maplibre/android/offline/OfflineTilePyramidRegionDefinition;->bounds:Lorg/maplibre/android/geometry/LatLngBounds;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getIncludeIdeographs()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/maplibre/android/offline/OfflineTilePyramidRegionDefinition;->includeIdeographs:Z

    .line 2
    .line 3
    return p0
.end method

.method public final getMaxZoom()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/maplibre/android/offline/OfflineTilePyramidRegionDefinition;->maxZoom:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getMinZoom()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/maplibre/android/offline/OfflineTilePyramidRegionDefinition;->minZoom:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getPixelRatio()F
    .locals 0

    .line 1
    iget p0, p0, Lorg/maplibre/android/offline/OfflineTilePyramidRegionDefinition;->pixelRatio:F

    .line 2
    .line 3
    return p0
.end method

.method public final getStyleURL()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/maplibre/android/offline/OfflineTilePyramidRegionDefinition;->styleURL:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getType()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "tileregion"

    .line 2
    .line 3
    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p2, p0, Lorg/maplibre/android/offline/OfflineTilePyramidRegionDefinition;->styleURL:Ljava/lang/String;

    .line 5
    .line 6
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object p2, p0, Lorg/maplibre/android/offline/OfflineTilePyramidRegionDefinition;->bounds:Lorg/maplibre/android/geometry/LatLngBounds;

    .line 10
    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    iget-wide v0, p2, Lorg/maplibre/android/geometry/LatLngBounds;->latitudeNorth:D

    .line 14
    .line 15
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 16
    .line 17
    .line 18
    iget-object p2, p0, Lorg/maplibre/android/offline/OfflineTilePyramidRegionDefinition;->bounds:Lorg/maplibre/android/geometry/LatLngBounds;

    .line 19
    .line 20
    iget-wide v0, p2, Lorg/maplibre/android/geometry/LatLngBounds;->longitudeEast:D

    .line 21
    .line 22
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 23
    .line 24
    .line 25
    iget-object p2, p0, Lorg/maplibre/android/offline/OfflineTilePyramidRegionDefinition;->bounds:Lorg/maplibre/android/geometry/LatLngBounds;

    .line 26
    .line 27
    iget-wide v0, p2, Lorg/maplibre/android/geometry/LatLngBounds;->latitudeSouth:D

    .line 28
    .line 29
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 30
    .line 31
    .line 32
    iget-object p2, p0, Lorg/maplibre/android/offline/OfflineTilePyramidRegionDefinition;->bounds:Lorg/maplibre/android/geometry/LatLngBounds;

    .line 33
    .line 34
    iget-wide v0, p2, Lorg/maplibre/android/geometry/LatLngBounds;->longitudeWest:D

    .line 35
    .line 36
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 37
    .line 38
    .line 39
    :cond_0
    iget-wide v0, p0, Lorg/maplibre/android/offline/OfflineTilePyramidRegionDefinition;->minZoom:D

    .line 40
    .line 41
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 42
    .line 43
    .line 44
    iget-wide v0, p0, Lorg/maplibre/android/offline/OfflineTilePyramidRegionDefinition;->maxZoom:D

    .line 45
    .line 46
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 47
    .line 48
    .line 49
    iget p2, p0, Lorg/maplibre/android/offline/OfflineTilePyramidRegionDefinition;->pixelRatio:F

    .line 50
    .line 51
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 52
    .line 53
    .line 54
    iget-boolean p0, p0, Lorg/maplibre/android/offline/OfflineTilePyramidRegionDefinition;->includeIdeographs:Z

    .line 55
    .line 56
    int-to-byte p0, p0

    .line 57
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByte(B)V

    .line 58
    .line 59
    .line 60
    return-void
.end method
