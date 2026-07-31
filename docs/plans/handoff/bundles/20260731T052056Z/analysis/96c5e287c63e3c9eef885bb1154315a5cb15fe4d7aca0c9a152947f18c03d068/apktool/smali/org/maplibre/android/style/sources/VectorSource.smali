.class public final Lorg/maplibre/android/style/sources/VectorSource;
.super Lorg/maplibre/android/style/sources/Source;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u00002\u00020\u0001B\u0011\u0008\u0011\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J4\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u00062\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0006H\u0083 \u00a2\u0006\u0004\u0008\u000c\u0010\rJ$\u0010\u0011\u001a\u00020\u00102\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u000f\u001a\u0004\u0018\u00010\tH\u0085 \u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0010\u0010\u0013\u001a\u00020\u0010H\u0085 \u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0012\u0010\u0015\u001a\u0004\u0018\u00010\u0007H\u0085 \u00a2\u0006\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u0017"
    }
    d2 = {
        "Lorg/maplibre/android/style/sources/VectorSource;",
        "Lorg/maplibre/android/style/sources/Source;",
        "",
        "nativePtr",
        "<init>",
        "(J)V",
        "",
        "",
        "sourceLayerId",
        "",
        "filter",
        "Lorg/maplibre/geojson/Feature;",
        "querySourceFeatures",
        "([Ljava/lang/String;[Ljava/lang/Object;)[Lorg/maplibre/geojson/Feature;",
        "layerId",
        "payload",
        "",
        "initialize",
        "(Ljava/lang/String;Ljava/lang/Object;)V",
        "finalize",
        "()V",
        "nativeGetUrl",
        "()Ljava/lang/String;",
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
.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/maplibre/android/style/sources/Source;-><init>(J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final native querySourceFeatures([Ljava/lang/String;[Ljava/lang/Object;)[Lorg/maplibre/geojson/Feature;
.end method


# virtual methods
.method public final native finalize()V
.end method

.method public final native initialize(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public final native nativeGetUrl()Ljava/lang/String;
.end method
