.class public abstract Lorg/maplibre/android/maps/renderer/MapRenderer;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lorg/maplibre/android/maps/renderer/MapRendererScheduler;


# static fields
.field private static final TAG:Ljava/lang/String; = "Mbgl-MapRenderer"


# instance fields
.field private expectedRenderTime:D

.field private nativePtr:J

.field private onFpsChangedListener:Lorg/maplibre/android/maps/MapLibreMap$OnFpsChangedListener;

.field private timeElapsed:J


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

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lorg/maplibre/android/maps/renderer/MapRenderer;->nativePtr:J

    .line 7
    .line 8
    const-wide/16 v0, 0x0

    .line 9
    .line 10
    iput-wide v0, p0, Lorg/maplibre/android/maps/renderer/MapRenderer;->expectedRenderTime:D

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 21
    .line 22
    invoke-direct {p0, p0, p1, p2}, Lorg/maplibre/android/maps/renderer/MapRenderer;->nativeInitialize(Lorg/maplibre/android/maps/renderer/MapRenderer;FLjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public static create(Lorg/maplibre/android/maps/MapLibreMapOptions;Landroid/content/Context;Ljava/lang/Runnable;)Lorg/maplibre/android/maps/renderer/MapRenderer;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->localIdeographFontFamilyEnabled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->localIdeographFontFamily:Ljava/lang/String;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    iget-boolean v1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->textureMode:Z

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    new-instance v1, Landroid/view/TextureView;

    .line 14
    .line 15
    invoke-direct {v1, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    iget-boolean p0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->translucentTextureSurface:Z

    .line 19
    .line 20
    invoke-static {p1, v1, v0, p0, p2}, Lorg/maplibre/android/maps/renderer/MapRendererFactory;->newTextureViewMapRenderer(Landroid/content/Context;Landroid/view/TextureView;Ljava/lang/String;ZLjava/lang/Runnable;)Lorg/maplibre/android/maps/renderer/textureview/TextureViewMapRenderer;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0

    .line 25
    :cond_1
    iget-boolean p0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->zMediaOverlay:Z

    .line 26
    .line 27
    invoke-static {p1, v0, p0, p2}, Lorg/maplibre/android/maps/renderer/MapRendererFactory;->newSurfaceViewMapRenderer(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Runnable;)Lorg/maplibre/android/maps/renderer/surfaceview/SurfaceViewMapRenderer;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0
.end method

.method private native nativeInitialize(Lorg/maplibre/android/maps/renderer/MapRenderer;FLjava/lang/String;)V
.end method

.method private native nativeOnSurfaceChanged(II)V
.end method

.method private native nativeOnSurfaceCreated(Landroid/view/Surface;)V
.end method

.method private native nativeOnSurfaceDestroyed()V
.end method

.method private native nativeRender()V
.end method

.method private native nativeSetSwapBehaviorFlush(Z)V
.end method

.method private updateFps()V
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lorg/maplibre/android/maps/renderer/MapRenderer;->timeElapsed:J

    .line 6
    .line 7
    const-wide/16 v4, 0x0

    .line 8
    .line 9
    cmp-long v2, v2, v4

    .line 10
    .line 11
    if-gtz v2, :cond_0

    .line 12
    .line 13
    iput-wide v0, p0, Lorg/maplibre/android/maps/renderer/MapRenderer;->timeElapsed:J

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    throw p0
.end method


# virtual methods
.method public native finalize()V
.end method

.method public abstract getRenderingRefreshMode()Lorg/maplibre/android/maps/renderer/MapRenderer$RenderingRefreshMode;
.end method

.method public abstract getView()Landroid/view/View;
.end method

.method public native nativeReset()V
.end method

.method public onDestroy()V
    .locals 0

    .line 1
    return-void
.end method

.method public onDrawFrame()V
    .locals 5

    .line 1
    const-string v0, "Mbgl-MapRenderer"

    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    :try_start_0
    invoke-direct {p0}, Lorg/maplibre/android/maps/renderer/MapRenderer;->nativeRender()V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catch_0
    move-exception v3

    .line 12
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-static {v0, v3}, Lorg/maplibre/android/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :goto_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 20
    .line 21
    .line 22
    move-result-wide v3

    .line 23
    sub-long/2addr v3, v1

    .line 24
    long-to-double v1, v3

    .line 25
    iget-wide v3, p0, Lorg/maplibre/android/maps/renderer/MapRenderer;->expectedRenderTime:D

    .line 26
    .line 27
    cmpg-double p0, v1, v3

    .line 28
    .line 29
    if-gez p0, :cond_0

    .line 30
    .line 31
    sub-double/2addr v3, v1

    .line 32
    const-wide v1, 0x412e848000000000L    # 1000000.0

    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    div-double/2addr v3, v1

    .line 38
    double-to-long v1, v3

    .line 39
    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :catch_1
    move-exception p0

    .line 44
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-static {v0, p0}, Lorg/maplibre/android/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :cond_0
    :goto_1
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 1
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 1
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 1
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 1
    return-void
.end method

.method public onSurfaceChanged(II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/maplibre/android/maps/renderer/MapRenderer;->nativeOnSurfaceChanged(II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onSurfaceCreated(Landroid/view/Surface;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/maplibre/android/maps/renderer/MapRenderer;->nativeOnSurfaceCreated(Landroid/view/Surface;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onSurfaceDestroyed()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/maplibre/android/maps/renderer/MapRenderer;->nativeOnSurfaceDestroyed()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public queueEvent(Lorg/maplibre/android/maps/renderer/MapRendererRunnable;)V
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Lorg/maplibre/android/maps/renderer/MapRendererScheduler;->queueEvent(Ljava/lang/Runnable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setMaximumFps(I)V
    .locals 4

    .line 1
    if-gtz p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const-wide v0, 0x41cdcd6500000000L    # 1.0E9

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    int-to-double v2, p1

    .line 10
    div-double/2addr v0, v2

    .line 11
    iput-wide v0, p0, Lorg/maplibre/android/maps/renderer/MapRenderer;->expectedRenderTime:D

    .line 12
    .line 13
    return-void
.end method

.method public setOnFpsChangedListener(Lorg/maplibre/android/maps/MapLibreMap$OnFpsChangedListener;)V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract setRenderingRefreshMode(Lorg/maplibre/android/maps/renderer/MapRenderer$RenderingRefreshMode;)V
.end method

.method public setSwapBehaviorFlush(Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/maplibre/android/maps/renderer/MapRenderer;->nativeSetSwapBehaviorFlush(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
