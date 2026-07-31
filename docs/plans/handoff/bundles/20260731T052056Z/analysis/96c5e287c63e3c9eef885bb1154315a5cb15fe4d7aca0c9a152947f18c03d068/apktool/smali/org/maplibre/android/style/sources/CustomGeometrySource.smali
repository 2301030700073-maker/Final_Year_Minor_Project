.class public final Lorg/maplibre/android/style/sources/CustomGeometrySource;
.super Lorg/maplibre/android/style/sources/Source;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001J$\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0083 \u00a2\u0006\u0004\u0008\u0007\u0010\u0008J&\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\t2\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\tH\u0083 \u00a2\u0006\u0004\u0008\u000c\u0010\rJ0\u0010\u0014\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u0012H\u0083 \u00a2\u0006\u0004\u0008\u0014\u0010\u0015J(\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u000eH\u0083 \u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0018\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u0018H\u0083 \u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\'\u0010\u001c\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u000eH\u0003\u00a2\u0006\u0004\u0008\u001c\u0010\u0017J\'\u0010\u001d\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u000eH\u0003\u00a2\u0006\u0004\u0008\u001d\u0010\u0017J\u000f\u0010\u001e\u001a\u00020\u0006H\u0003\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u000f\u0010 \u001a\u00020\u0006H\u0003\u00a2\u0006\u0004\u0008 \u0010\u001fJ\'\u0010\"\u001a\u00020!2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u000eH\u0003\u00a2\u0006\u0004\u0008\"\u0010#J\u0010\u0010$\u001a\u00020\u0006H\u0085 \u00a2\u0006\u0004\u0008$\u0010\u001f\u00a8\u0006%"
    }
    d2 = {
        "Lorg/maplibre/android/style/sources/CustomGeometrySource;",
        "Lorg/maplibre/android/style/sources/Source;",
        "",
        "sourceId",
        "",
        "options",
        "",
        "initialize",
        "(Ljava/lang/String;Ljava/lang/Object;)V",
        "",
        "filter",
        "Lorg/maplibre/geojson/Feature;",
        "querySourceFeatures",
        "([Ljava/lang/Object;)[Lorg/maplibre/geojson/Feature;",
        "",
        "z",
        "x",
        "y",
        "Lorg/maplibre/geojson/FeatureCollection;",
        "data",
        "nativeSetTileData",
        "(IIILorg/maplibre/geojson/FeatureCollection;)V",
        "nativeInvalidateTile",
        "(III)V",
        "Lorg/maplibre/android/geometry/LatLngBounds;",
        "bounds",
        "nativeInvalidateBounds",
        "(Lorg/maplibre/android/geometry/LatLngBounds;)V",
        "fetchTile",
        "cancelTile",
        "startThreads",
        "()V",
        "releaseThreads",
        "",
        "isCancelled",
        "(III)Z",
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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private final cancelTile(III)V
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    throw p0
.end method

.method private final fetchTile(III)V
    .locals 0

    .line 1
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 p2, 0x0

    .line 4
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 5
    .line 6
    .line 7
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 8
    .line 9
    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    const/4 p0, 0x0

    .line 13
    throw p0
.end method

.method private final native initialize(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method private final isCancelled(III)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    throw p0
.end method

.method private final native nativeInvalidateBounds(Lorg/maplibre/android/geometry/LatLngBounds;)V
.end method

.method private final native nativeInvalidateTile(III)V
.end method

.method private final native nativeSetTileData(IIILorg/maplibre/geojson/FeatureCollection;)V
.end method

.method private final native querySourceFeatures([Ljava/lang/Object;)[Lorg/maplibre/geojson/Feature;
.end method

.method private final releaseThreads()V
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    throw p0
.end method

.method private final startThreads()V
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    throw p0
.end method


# virtual methods
.method public final native finalize()V
.end method
