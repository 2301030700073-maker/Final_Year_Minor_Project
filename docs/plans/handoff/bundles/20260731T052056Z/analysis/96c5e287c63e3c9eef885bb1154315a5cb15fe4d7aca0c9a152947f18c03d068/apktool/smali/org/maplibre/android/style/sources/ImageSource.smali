.class public final Lorg/maplibre/android/style/sources/ImageSource;
.super Lorg/maplibre/android/style/sources/Source;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0007\u0018\u00002\u00020\u0001B\u0011\u0008\u0011\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J$\u0010\u000b\u001a\u00020\n2\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0085 \u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u001a\u0010\u000e\u001a\u00020\n2\u0008\u0010\r\u001a\u0004\u0018\u00010\u0006H\u0085 \u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0010\u0010\u0010\u001a\u00020\u0006H\u0085 \u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u001a\u0010\u0014\u001a\u00020\n2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0085 \u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u001a\u0010\u0017\u001a\u00020\n2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0008H\u0085 \u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0010\u0010\u0019\u001a\u00020\nH\u0085 \u00a2\u0006\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\u001b"
    }
    d2 = {
        "Lorg/maplibre/android/style/sources/ImageSource;",
        "Lorg/maplibre/android/style/sources/Source;",
        "",
        "nativePtr",
        "<init>",
        "(J)V",
        "",
        "layerId",
        "Lorg/maplibre/android/geometry/LatLngQuad;",
        "payload",
        "",
        "initialize",
        "(Ljava/lang/String;Lorg/maplibre/android/geometry/LatLngQuad;)V",
        "url",
        "nativeSetUrl",
        "(Ljava/lang/String;)V",
        "nativeGetUrl",
        "()Ljava/lang/String;",
        "Landroid/graphics/Bitmap;",
        "bitmap",
        "nativeSetImage",
        "(Landroid/graphics/Bitmap;)V",
        "latLngQuad",
        "nativeSetCoordinates",
        "(Lorg/maplibre/android/geometry/LatLngQuad;)V",
        "finalize",
        "()V",
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


# virtual methods
.method public final native finalize()V
.end method

.method public final native initialize(Ljava/lang/String;Lorg/maplibre/android/geometry/LatLngQuad;)V
.end method

.method public final native nativeGetUrl()Ljava/lang/String;
.end method

.method public final native nativeSetCoordinates(Lorg/maplibre/android/geometry/LatLngQuad;)V
.end method

.method public final native nativeSetImage(Landroid/graphics/Bitmap;)V
.end method

.method public final native nativeSetUrl(Ljava/lang/String;)V
.end method
