.class public abstract Lorg/maplibre/android/style/sources/Source;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field private static final TAG:Ljava/lang/String; = "Mbgl-Source"


# instance fields
.field protected detached:Z

.field private nativePtr:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    invoke-static {}, Lorg/maplibre/android/LibraryLoader;->load()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    invoke-virtual {p0}, Lorg/maplibre/android/style/sources/Source;->checkThread()V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/maplibre/android/style/sources/Source;->checkThread()V

    .line 5
    .line 6
    .line 7
    iput-wide p1, p0, Lorg/maplibre/android/style/sources/Source;->nativePtr:J

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public checkThread()V
    .locals 0

    .line 1
    const-string p0, "Mbgl-Source"

    .line 2
    .line 3
    invoke-static {p0}, Lokio/Okio__JvmOkioKt;->checkThread(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getAttribution()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/maplibre/android/style/sources/Source;->checkThread()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/maplibre/android/style/sources/Source;->nativeGetAttribution()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method

.method public getId()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/maplibre/android/style/sources/Source;->checkThread()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/maplibre/android/style/sources/Source;->nativeGetId()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method

.method public getMaxOverscaleFactorForParentTiles()Ljava/lang/Integer;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/maplibre/android/style/sources/Source;->nativeGetMaxOverscaleFactorForParentTiles()Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public getMinimumTileUpdateInterval()Ljava/lang/Long;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/maplibre/android/style/sources/Source;->nativeGetMinimumTileUpdateInterval()Ljava/lang/Long;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public getNativePtr()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/maplibre/android/style/sources/Source;->nativePtr:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getPrefetchZoomDelta()Ljava/lang/Integer;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/maplibre/android/style/sources/Source;->nativeGetPrefetchZoomDelta()Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public isVolatile()Ljava/lang/Boolean;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/maplibre/android/style/sources/Source;->nativeIsVolatile()Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public native nativeGetAttribution()Ljava/lang/String;
.end method

.method public native nativeGetId()Ljava/lang/String;
.end method

.method public native nativeGetMaxOverscaleFactorForParentTiles()Ljava/lang/Integer;
.end method

.method public native nativeGetMinimumTileUpdateInterval()Ljava/lang/Long;
.end method

.method public native nativeGetPrefetchZoomDelta()Ljava/lang/Integer;
.end method

.method public native nativeIsVolatile()Ljava/lang/Boolean;
.end method

.method public native nativeSetMaxOverscaleFactorForParentTiles(Ljava/lang/Integer;)V
.end method

.method public native nativeSetMinimumTileUpdateInterval(Ljava/lang/Long;)V
.end method

.method public native nativeSetPrefetchZoomDelta(Ljava/lang/Integer;)V
.end method

.method public native nativeSetVolatile(Ljava/lang/Boolean;)V
.end method

.method public setDetached()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lorg/maplibre/android/style/sources/Source;->detached:Z

    .line 3
    .line 4
    return-void
.end method

.method public setMaxOverscaleFactorForParentTiles(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/maplibre/android/style/sources/Source;->nativeSetMaxOverscaleFactorForParentTiles(Ljava/lang/Integer;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setMinimumTileUpdateInterval(Ljava/lang/Long;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/maplibre/android/style/sources/Source;->nativeSetMinimumTileUpdateInterval(Ljava/lang/Long;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setPrefetchZoomDelta(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/maplibre/android/style/sources/Source;->nativeSetPrefetchZoomDelta(Ljava/lang/Integer;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setVolatile(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/maplibre/android/style/sources/Source;->nativeSetVolatile(Ljava/lang/Boolean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
