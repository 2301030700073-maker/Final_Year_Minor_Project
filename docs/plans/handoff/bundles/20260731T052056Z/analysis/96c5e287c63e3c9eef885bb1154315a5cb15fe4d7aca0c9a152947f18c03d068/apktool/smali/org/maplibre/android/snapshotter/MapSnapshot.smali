.class public final Lorg/maplibre/android/snapshotter/MapSnapshot;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001B7\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0013\u0010\u0018\u001a\u00020\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0087 J\u0013\u0010\u001c\u001a\u00020\u001b2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u0019H\u0087 J\t\u0010\u001e\u001a\u00020\u001fH\u0083 J\t\u0010 \u001a\u00020\u001fH\u0085 R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0019\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u00a2\u0006\n\n\u0002\u0010\u0014\u001a\u0004\u0008\u0012\u0010\u0013R\u0011\u0010\u0015\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u0011\u0010\u0017\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0016\u00a8\u0006!"
    }
    d2 = {
        "Lorg/maplibre/android/snapshotter/MapSnapshot;",
        "",
        "nativePtr",
        "",
        "bitmap",
        "Landroid/graphics/Bitmap;",
        "attributions",
        "",
        "",
        "showLogo",
        "",
        "showAttribution",
        "<init>",
        "(JLandroid/graphics/Bitmap;[Ljava/lang/String;ZZ)V",
        "getNativePtr",
        "()J",
        "getBitmap",
        "()Landroid/graphics/Bitmap;",
        "getAttributions",
        "()[Ljava/lang/String;",
        "[Ljava/lang/String;",
        "isShowLogo",
        "()Z",
        "isShowAttribution",
        "pixelForLatLng",
        "Landroid/graphics/PointF;",
        "latLng",
        "Lorg/maplibre/android/geometry/LatLng;",
        "latLngForPixel",
        "pointF",
        "initialize",
        "",
        "finalize",
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


# instance fields
.field private final attributions:[Ljava/lang/String;

.field private final bitmap:Landroid/graphics/Bitmap;

.field private final isShowAttribution:Z

.field private final isShowLogo:Z

.field private final nativePtr:J


# direct methods
.method private constructor <init>(JLandroid/graphics/Bitmap;[Ljava/lang/String;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lorg/maplibre/android/snapshotter/MapSnapshot;->nativePtr:J

    .line 5
    .line 6
    iput-object p3, p0, Lorg/maplibre/android/snapshotter/MapSnapshot;->bitmap:Landroid/graphics/Bitmap;

    .line 7
    .line 8
    iput-object p4, p0, Lorg/maplibre/android/snapshotter/MapSnapshot;->attributions:[Ljava/lang/String;

    .line 9
    .line 10
    iput-boolean p5, p0, Lorg/maplibre/android/snapshotter/MapSnapshot;->isShowLogo:Z

    .line 11
    .line 12
    iput-boolean p6, p0, Lorg/maplibre/android/snapshotter/MapSnapshot;->isShowAttribution:Z

    .line 13
    .line 14
    return-void
.end method

.method private final native initialize()V
.end method


# virtual methods
.method public final native finalize()V
.end method

.method public final getAttributions()[Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/maplibre/android/snapshotter/MapSnapshot;->attributions:[Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getBitmap()Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/maplibre/android/snapshotter/MapSnapshot;->bitmap:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getNativePtr()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/maplibre/android/snapshotter/MapSnapshot;->nativePtr:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final isShowAttribution()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/maplibre/android/snapshotter/MapSnapshot;->isShowAttribution:Z

    .line 2
    .line 3
    return p0
.end method

.method public final isShowLogo()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/maplibre/android/snapshotter/MapSnapshot;->isShowLogo:Z

    .line 2
    .line 3
    return p0
.end method

.method public final native latLngForPixel(Landroid/graphics/PointF;)Lorg/maplibre/android/geometry/LatLng;
.end method

.method public final native pixelForLatLng(Lorg/maplibre/android/geometry/LatLng;)Landroid/graphics/PointF;
.end method
