.class public final Lorg/maplibre/android/offline/OfflineGeometryRegionDefinition;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lorg/maplibre/android/offline/OfflineRegionDefinition;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0014\u0018\u00002\u00020\u0001B5\u0008\u0017\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\u0008\u001a\u00020\u0006\u0012\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000cB=\u0008\u0017\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\u0008\u001a\u00020\u0006\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000e\u001a\u00020\r\u00a2\u0006\u0004\u0008\u000b\u0010\u000fR(\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u00028\u0016@RX\u0097\u000e\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013R(\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u00048\u0006@BX\u0087\u000e\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016R$\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u00068\u0016@RX\u0097\u000e\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019R$\u0010\u0008\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u00068\u0016@RX\u0097\u000e\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\u0017\u001a\u0004\u0008\u001a\u0010\u0019R$\u0010\n\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\t8\u0016@RX\u0097\u000e\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001dR$\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\r8\u0016@RX\u0097\u000e\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u001e\u001a\u0004\u0008\u001f\u0010 \u00a8\u0006!"
    }
    d2 = {
        "Lorg/maplibre/android/offline/OfflineGeometryRegionDefinition;",
        "Lorg/maplibre/android/offline/OfflineRegionDefinition;",
        "",
        "styleURL",
        "Lorg/maplibre/geojson/Geometry;",
        "geometry",
        "",
        "minZoom",
        "maxZoom",
        "",
        "pixelRatio",
        "<init>",
        "(Ljava/lang/String;Lorg/maplibre/geojson/Geometry;DDF)V",
        "",
        "includeIdeographs",
        "(Ljava/lang/String;Lorg/maplibre/geojson/Geometry;DDFZ)V",
        "value",
        "Ljava/lang/String;",
        "getStyleURL",
        "()Ljava/lang/String;",
        "Lorg/maplibre/geojson/Geometry;",
        "getGeometry",
        "()Lorg/maplibre/geojson/Geometry;",
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
.field private geometry:Lorg/maplibre/geojson/Geometry;

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
    const/16 v1, 0xd

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lorg/maplibre/android/util/DefaultStyle$1;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lorg/maplibre/android/offline/OfflineGeometryRegionDefinition;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

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
    iput-object v0, p0, Lorg/maplibre/android/offline/OfflineGeometryRegionDefinition;->styleURL:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Lorg/maplibre/geojson/Feature;->fromJson(Ljava/lang/String;)Lorg/maplibre/geojson/Feature;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lorg/maplibre/geojson/Feature;->geometry()Lorg/maplibre/geojson/Geometry;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p0, Lorg/maplibre/android/offline/OfflineGeometryRegionDefinition;->geometry:Lorg/maplibre/geojson/Geometry;

    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    .line 28
    .line 29
    .line 30
    move-result-wide v0

    .line 31
    iput-wide v0, p0, Lorg/maplibre/android/offline/OfflineGeometryRegionDefinition;->minZoom:D

    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    .line 34
    .line 35
    .line 36
    move-result-wide v0

    .line 37
    iput-wide v0, p0, Lorg/maplibre/android/offline/OfflineGeometryRegionDefinition;->maxZoom:D

    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    iput v0, p0, Lorg/maplibre/android/offline/OfflineGeometryRegionDefinition;->pixelRatio:F

    .line 44
    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-eqz p1, :cond_0

    .line 50
    .line 51
    const/4 p1, 0x1

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    const/4 p1, 0x0

    .line 54
    :goto_0
    iput-boolean p1, p0, Lorg/maplibre/android/offline/OfflineGeometryRegionDefinition;->includeIdeographs:Z

    .line 55
    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/maplibre/geojson/Geometry;DDF)V
    .locals 9

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    move/from16 v7, p7

    .line 64
    invoke-direct/range {v0 .. v8}, Lorg/maplibre/android/offline/OfflineGeometryRegionDefinition;-><init>(Ljava/lang/String;Lorg/maplibre/geojson/Geometry;DDFZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/maplibre/geojson/Geometry;DDFZ)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lorg/maplibre/android/offline/OfflineGeometryRegionDefinition;->styleURL:Ljava/lang/String;

    .line 59
    iput-object p2, p0, Lorg/maplibre/android/offline/OfflineGeometryRegionDefinition;->geometry:Lorg/maplibre/geojson/Geometry;

    .line 60
    iput-wide p3, p0, Lorg/maplibre/android/offline/OfflineGeometryRegionDefinition;->minZoom:D

    .line 61
    iput-wide p5, p0, Lorg/maplibre/android/offline/OfflineGeometryRegionDefinition;->maxZoom:D

    .line 62
    iput p7, p0, Lorg/maplibre/android/offline/OfflineGeometryRegionDefinition;->pixelRatio:F

    .line 63
    iput-boolean p8, p0, Lorg/maplibre/android/offline/OfflineGeometryRegionDefinition;->includeIdeographs:Z

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
    .locals 11

    .line 1
    iget-object p0, p0, Lorg/maplibre/android/offline/OfflineGeometryRegionDefinition;->geometry:Lorg/maplibre/geojson/Geometry;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return-object p0

    .line 7
    :cond_0
    invoke-static {p0}, Lokio/Okio__OkioKt;->bbox(Lorg/maplibre/geojson/Geometry;)[D

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    sget-object v0, Lorg/maplibre/android/geometry/LatLngBounds;->Companion:Lorg/maplibre/android/geometry/LatLngBounds$Companion;

    .line 12
    .line 13
    const/4 v1, 0x3

    .line 14
    aget-wide v2, p0, v1

    .line 15
    .line 16
    const/4 v1, 0x2

    .line 17
    aget-wide v4, p0, v1

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    aget-wide v6, p0, v1

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    aget-wide v8, p0, v1

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    invoke-static/range {v2 .. v9}, Lorg/maplibre/android/geometry/LatLngBounds$Companion;->checkParams(DDDD)V

    .line 29
    .line 30
    .line 31
    new-instance p0, Lorg/maplibre/android/geometry/LatLngBounds;

    .line 32
    .line 33
    move-wide v9, v8

    .line 34
    move-wide v7, v6

    .line 35
    move-wide v5, v4

    .line 36
    move-wide v3, v2

    .line 37
    move-object v2, p0

    .line 38
    invoke-direct/range {v2 .. v10}, Lorg/maplibre/android/geometry/LatLngBounds;-><init>(DDDD)V

    .line 39
    .line 40
    .line 41
    return-object v2
.end method

.method public final getIncludeIdeographs()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/maplibre/android/offline/OfflineGeometryRegionDefinition;->includeIdeographs:Z

    .line 2
    .line 3
    return p0
.end method

.method public final getMaxZoom()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/maplibre/android/offline/OfflineGeometryRegionDefinition;->maxZoom:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getMinZoom()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/maplibre/android/offline/OfflineGeometryRegionDefinition;->minZoom:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getPixelRatio()F
    .locals 0

    .line 1
    iget p0, p0, Lorg/maplibre/android/offline/OfflineGeometryRegionDefinition;->pixelRatio:F

    .line 2
    .line 3
    return p0
.end method

.method public final getStyleURL()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/maplibre/android/offline/OfflineGeometryRegionDefinition;->styleURL:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getType()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "shaperegion"

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
    iget-object p2, p0, Lorg/maplibre/android/offline/OfflineGeometryRegionDefinition;->styleURL:Ljava/lang/String;

    .line 5
    .line 6
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object p2, p0, Lorg/maplibre/android/offline/OfflineGeometryRegionDefinition;->geometry:Lorg/maplibre/geojson/Geometry;

    .line 10
    .line 11
    invoke-static {p2}, Lorg/maplibre/geojson/Feature;->fromGeometry(Lorg/maplibre/geojson/Geometry;)Lorg/maplibre/geojson/Feature;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-virtual {p2}, Lorg/maplibre/geojson/Feature;->toJson()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-wide v0, p0, Lorg/maplibre/android/offline/OfflineGeometryRegionDefinition;->minZoom:D

    .line 23
    .line 24
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 25
    .line 26
    .line 27
    iget-wide v0, p0, Lorg/maplibre/android/offline/OfflineGeometryRegionDefinition;->maxZoom:D

    .line 28
    .line 29
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 30
    .line 31
    .line 32
    iget p2, p0, Lorg/maplibre/android/offline/OfflineGeometryRegionDefinition;->pixelRatio:F

    .line 33
    .line 34
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 35
    .line 36
    .line 37
    iget-boolean p0, p0, Lorg/maplibre/android/offline/OfflineGeometryRegionDefinition;->includeIdeographs:Z

    .line 38
    .line 39
    int-to-byte p0, p0

    .line 40
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByte(B)V

    .line 41
    .line 42
    .line 43
    return-void
.end method
