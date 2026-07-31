.class public Lorg/maplibre/android/snapshotter/MapSnapshotter;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000r\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u000c\n\u0002\u0010\t\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0017\u0018\u00002\u00020\u0001J \u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0087 \u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u001a\u0010\n\u001a\u00020\u00052\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0087 \u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u001a\u0010\u000e\u001a\u00020\u00052\u0008\u0010\r\u001a\u0004\u0018\u00010\u000cH\u0087 \u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ0\u0010\u0014\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u0002H\u0087 \u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u001a\u0010\u0018\u001a\u00020\u00052\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0016H\u0087 \u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u001a\u0010\u001b\u001a\u00020\u00052\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0016H\u0087 \u00a2\u0006\u0004\u0008\u001b\u0010\u0019J\u0017\u0010\u001e\u001a\u00020\u00052\u0006\u0010\u001d\u001a\u00020\u001cH\u0005\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u0017\u0010!\u001a\u00020\u00052\u0006\u0010 \u001a\u00020\u0016H\u0005\u00a2\u0006\u0004\u0008!\u0010\u0019J\u0017\u0010\"\u001a\u00020\u00052\u0006\u0010 \u001a\u00020\u0016H\u0005\u00a2\u0006\u0004\u0008\"\u0010\u0019J\u000f\u0010#\u001a\u00020\u0005H\u0005\u00a2\u0006\u0004\u0008#\u0010$J\u0017\u0010&\u001a\u00020\u00052\u0006\u0010%\u001a\u00020\u0016H\u0005\u00a2\u0006\u0004\u0008&\u0010\u0019J\u009e\u0001\u00105\u001a\u00020\u00052\u0008\u0010\'\u001a\u0004\u0018\u00010\u00002\u0008\u0010)\u001a\u0004\u0018\u00010(2\u0006\u0010+\u001a\u00020*2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00022\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u00162\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u00162\u0008\u0010\r\u001a\u0004\u0018\u00010\u000c2\u0008\u0010,\u001a\u0004\u0018\u00010\u00082\u0006\u0010.\u001a\u00020-2\u0006\u0010/\u001a\u00020-2\u0008\u00100\u001a\u0004\u0018\u00010\u00162\u0006\u00101\u001a\u00020*2\u0006\u00102\u001a\u00020*2\u0006\u00103\u001a\u00020*2\u0006\u00104\u001a\u00020*H\u0085 \u00a2\u0006\u0004\u00085\u00106J\u0010\u00107\u001a\u00020\u0005H\u0085 \u00a2\u0006\u0004\u00087\u0010$J\u0010\u00108\u001a\u00020\u0005H\u0085 \u00a2\u0006\u0004\u00088\u0010$J\u0010\u00109\u001a\u00020\u0005H\u0095 \u00a2\u0006\u0004\u00089\u0010$J \u0010=\u001a\u00020\u00052\u0006\u0010;\u001a\u00020:2\u0006\u0010<\u001a\u00020\u0016H\u0083 \u00a2\u0006\u0004\u0008=\u0010>J \u0010@\u001a\u00020\u00052\u0006\u0010;\u001a\u00020:2\u0006\u0010?\u001a\u00020\u0016H\u0083 \u00a2\u0006\u0004\u0008@\u0010>J \u0010B\u001a\u00020\u00052\u0006\u0010;\u001a\u00020:2\u0006\u0010A\u001a\u00020\u0002H\u0083 \u00a2\u0006\u0004\u0008B\u0010CJ \u0010G\u001a\u00020\u00052\u0006\u0010E\u001a\u00020D2\u0006\u0010F\u001a\u00020:H\u0083 \u00a2\u0006\u0004\u0008G\u0010HJ\u001e\u0010L\u001a\u00020\u00052\u000c\u0010K\u001a\u0008\u0012\u0004\u0012\u00020J0IH\u0083 \u00a2\u0006\u0004\u0008L\u0010MJ\u0018\u0010P\u001a\u00020O2\u0006\u0010N\u001a\u00020\u0016H\u0083 \u00a2\u0006\u0004\u0008P\u0010QJ\u0018\u0010S\u001a\u00020D2\u0006\u0010R\u001a\u00020\u0016H\u0083 \u00a2\u0006\u0004\u0008S\u0010TR\u0014\u0010U\u001a\u00020:8\u0002X\u0083D\u00a2\u0006\u0006\n\u0004\u0008U\u0010V\u00a8\u0006W"
    }
    d2 = {
        "Lorg/maplibre/android/snapshotter/MapSnapshotter;",
        "",
        "",
        "width",
        "height",
        "",
        "setSize",
        "(II)V",
        "Lorg/maplibre/android/camera/CameraPosition;",
        "cameraPosition",
        "setCameraPosition",
        "(Lorg/maplibre/android/camera/CameraPosition;)V",
        "Lorg/maplibre/android/geometry/LatLngBounds;",
        "region",
        "setRegion",
        "(Lorg/maplibre/android/geometry/LatLngBounds;)V",
        "left",
        "top",
        "right",
        "bottom",
        "setPadding",
        "(IIII)V",
        "",
        "styleUrl",
        "setStyleUrl",
        "(Ljava/lang/String;)V",
        "styleJson",
        "setStyleJson",
        "Lorg/maplibre/android/snapshotter/MapSnapshot;",
        "snapshot",
        "onSnapshotReady",
        "(Lorg/maplibre/android/snapshotter/MapSnapshot;)V",
        "reason",
        "onSnapshotFailed",
        "onDidFailLoadingStyle",
        "onDidFinishLoadingStyle",
        "()V",
        "imageName",
        "onStyleImageMissing",
        "mapSnapshotter",
        "Lorg/maplibre/android/storage/FileSource;",
        "fileSource",
        "",
        "pixelRatio",
        "position",
        "",
        "showLogo",
        "showAttribution",
        "localIdeographFontFamily",
        "paddingLeft",
        "paddingTop",
        "paddingRight",
        "paddingBottom",
        "nativeInitialize",
        "(Lorg/maplibre/android/snapshotter/MapSnapshotter;Lorg/maplibre/android/storage/FileSource;FIILjava/lang/String;Ljava/lang/String;Lorg/maplibre/android/geometry/LatLngBounds;Lorg/maplibre/android/camera/CameraPosition;ZZLjava/lang/String;FFFF)V",
        "nativeStart",
        "nativeCancel",
        "finalize",
        "",
        "layerPtr",
        "below",
        "nativeAddLayerBelow",
        "(JLjava/lang/String;)V",
        "above",
        "nativeAddLayerAbove",
        "index",
        "nativeAddLayerAt",
        "(JI)V",
        "Lorg/maplibre/android/style/sources/Source;",
        "source",
        "sourcePtr",
        "nativeAddSource",
        "(Lorg/maplibre/android/style/sources/Source;J)V",
        "",
        "Lorg/maplibre/android/maps/Image;",
        "images",
        "nativeAddImages",
        "([Lorg/maplibre/android/maps/Image;)V",
        "layerId",
        "Lorg/maplibre/android/style/layers/Layer;",
        "nativeGetLayer",
        "(Ljava/lang/String;)Lorg/maplibre/android/style/layers/Layer;",
        "sourceId",
        "nativeGetSource",
        "(Ljava/lang/String;)Lorg/maplibre/android/style/sources/Source;",
        "nativePtr",
        "J",
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
.field private final nativePtr:J


# direct methods
.method private final native nativeAddImages([Lorg/maplibre/android/maps/Image;)V
.end method

.method private final native nativeAddLayerAbove(JLjava/lang/String;)V
.end method

.method private final native nativeAddLayerAt(JI)V
.end method

.method private final native nativeAddLayerBelow(JLjava/lang/String;)V
.end method

.method private final native nativeAddSource(Lorg/maplibre/android/style/sources/Source;J)V
.end method

.method private final native nativeGetLayer(Ljava/lang/String;)Lorg/maplibre/android/style/layers/Layer;
.end method

.method private final native nativeGetSource(Ljava/lang/String;)Lorg/maplibre/android/style/sources/Source;
.end method


# virtual methods
.method public native finalize()V
.end method

.method public final native nativeCancel()V
.end method

.method public final native nativeInitialize(Lorg/maplibre/android/snapshotter/MapSnapshotter;Lorg/maplibre/android/storage/FileSource;FIILjava/lang/String;Ljava/lang/String;Lorg/maplibre/android/geometry/LatLngBounds;Lorg/maplibre/android/camera/CameraPosition;ZZLjava/lang/String;FFFF)V
.end method

.method public final native nativeStart()V
.end method

.method public final onDidFailLoadingStyle(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lorg/maplibre/android/snapshotter/MapSnapshotter;->onSnapshotFailed(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onDidFinishLoadingStyle()V
    .locals 0

    .line 1
    return-void
.end method

.method public final onSnapshotFailed(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 11
    .line 12
    .line 13
    new-instance v1, Lcom/hcaptcha/sdk/tasks/Task$$ExternalSyntheticLambda0;

    .line 14
    .line 15
    invoke-direct {v1, p0, p1}, Lcom/hcaptcha/sdk/tasks/Task$$ExternalSyntheticLambda0;-><init>(Lorg/maplibre/android/snapshotter/MapSnapshotter;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final onSnapshotReady(Lorg/maplibre/android/snapshotter/MapSnapshot;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 11
    .line 12
    .line 13
    new-instance v1, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;

    .line 14
    .line 15
    const/16 v2, 0x13

    .line 16
    .line 17
    invoke-direct {v1, v2, p0, p1}, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final onStyleImageMissing(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final native setCameraPosition(Lorg/maplibre/android/camera/CameraPosition;)V
.end method

.method public final native setPadding(IIII)V
.end method

.method public final native setRegion(Lorg/maplibre/android/geometry/LatLngBounds;)V
.end method

.method public final native setSize(II)V
.end method

.method public final native setStyleJson(Ljava/lang/String;)V
.end method

.method public final native setStyleUrl(Ljava/lang/String;)V
.end method
