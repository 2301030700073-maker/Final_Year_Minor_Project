.class public abstract Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView;
.super Landroid/view/SurfaceView;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback2;


# instance fields
.field public detached:Z

.field public detachedListener:Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$OnSurfaceViewDetachedListener;

.field public renderThread:Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;

.field public final renderThreadManager:Lokio/ByteString$Companion;

.field public renderer:Lorg/maplibre/android/maps/renderer/surfaceview/SurfaceViewMapRenderer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lokio/ByteString$Companion;

    .line 5
    .line 6
    const/16 v0, 0xc

    .line 7
    .line 8
    invoke-direct {p1, v0}, Lokio/ByteString$Companion;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView;->renderThreadManager:Lokio/ByteString$Companion;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const/4 v0, -0x2

    .line 18
    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 19
    .line 20
    .line 21
    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final finalize()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView;->renderThread:Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView;->renderThread:Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;

    .line 12
    .line 13
    invoke-virtual {v0}, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;->requestExitAndWait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception v0

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    :goto_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :goto_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 24
    .line 25
    .line 26
    throw v0
.end method

.method public getRenderingRefreshMode()Lorg/maplibre/android/maps/renderer/MapRenderer$RenderingRefreshMode;
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView;->renderThread:Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;

    .line 2
    .line 3
    iget-object v0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;->renderThreadManager:Lokio/ByteString$Companion;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;->renderMode:Lorg/maplibre/android/maps/renderer/MapRenderer$RenderingRefreshMode;

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return-object p0

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    throw p0
.end method

.method public final onAttachedToWindow()V
    .locals 5

    .line 1
    invoke-super {p0}, Landroid/view/SurfaceView;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView;->detached:Z

    .line 5
    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    iget-object v0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView;->renderer:Lorg/maplibre/android/maps/renderer/surfaceview/SurfaceViewMapRenderer;

    .line 9
    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    sget-object v0, Lorg/maplibre/android/maps/renderer/MapRenderer$RenderingRefreshMode;->WHEN_DIRTY:Lorg/maplibre/android/maps/renderer/MapRenderer$RenderingRefreshMode;

    .line 13
    .line 14
    iget-object v1, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView;->renderThread:Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    iget-object v2, v1, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;->renderThreadManager:Lokio/ByteString$Companion;

    .line 19
    .line 20
    monitor-enter v2

    .line 21
    :try_start_0
    iget-object v1, v1, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;->renderMode:Lorg/maplibre/android/maps/renderer/MapRenderer$RenderingRefreshMode;

    .line 22
    .line 23
    monitor-exit v2

    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    throw p0

    .line 28
    :cond_0
    move-object v1, v0

    .line 29
    :goto_0
    move-object v2, p0

    .line 30
    check-cast v2, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView;

    .line 31
    .line 32
    new-instance v3, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;

    .line 33
    .line 34
    iget-object v4, v2, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView;->viewWeakReference:Ljava/lang/ref/WeakReference;

    .line 35
    .line 36
    invoke-direct {v3, v4}, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;-><init>(Ljava/lang/ref/WeakReference;)V

    .line 37
    .line 38
    .line 39
    iput-object v3, v2, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView;->renderThread:Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;

    .line 40
    .line 41
    if-eq v1, v0, :cond_1

    .line 42
    .line 43
    iget-object v0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView;->renderThread:Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;->setRenderingRefreshMode(Lorg/maplibre/android/maps/renderer/MapRenderer$RenderingRefreshMode;)V

    .line 46
    .line 47
    .line 48
    :cond_1
    iget-object v0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView;->renderThread:Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;

    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 51
    .line 52
    .line 53
    :cond_2
    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView;->detached:Z

    .line 55
    .line 56
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView;->detachedListener:Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$OnSurfaceViewDetachedListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast v0, Lokhttp3/ConnectionPool;

    .line 6
    .line 7
    iget-object v0, v0, Lokhttp3/ConnectionPool;->delegate:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Lorg/maplibre/android/maps/renderer/surfaceview/SurfaceViewMapRenderer;

    .line 10
    .line 11
    invoke-virtual {v0}, Lorg/maplibre/android/maps/renderer/MapRenderer;->nativeReset()V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView;->renderThread:Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    iget-object v0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView;->renderThread:Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;

    .line 25
    .line 26
    invoke-virtual {v0}, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;->requestExitAndWait()V

    .line 27
    .line 28
    .line 29
    :cond_1
    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView;->detached:Z

    .line 31
    .line 32
    invoke-super {p0}, Landroid/view/SurfaceView;->onDetachedFromWindow()V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public setDetachedListener(Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$OnSurfaceViewDetachedListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView;->detachedListener:Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$OnSurfaceViewDetachedListener;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView;->detachedListener:Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView$OnSurfaceViewDetachedListener;

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const-string p0, "Detached from window listener has been already set."

    .line 9
    .line 10
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setRenderer(Lorg/maplibre/android/maps/renderer/surfaceview/SurfaceViewMapRenderer;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView;->renderThread:Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView;->renderer:Lorg/maplibre/android/maps/renderer/surfaceview/SurfaceViewMapRenderer;

    .line 6
    .line 7
    move-object p1, p0

    .line 8
    check-cast p1, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView;

    .line 9
    .line 10
    new-instance v0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;

    .line 11
    .line 12
    iget-object v1, p1, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView;->viewWeakReference:Ljava/lang/ref/WeakReference;

    .line 13
    .line 14
    invoke-direct {v0, v1}, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;-><init>(Ljava/lang/ref/WeakReference;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p1, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView;->renderThread:Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;

    .line 18
    .line 19
    iget-object p0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView;->renderThread:Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;

    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    const-string p0, "setRenderer has already been called for this instance."

    .line 26
    .line 27
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public setRenderingRefreshMode(Lorg/maplibre/android/maps/renderer/MapRenderer$RenderingRefreshMode;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView;->renderThread:Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;

    .line 2
    .line 3
    iget-object v0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;->renderThreadManager:Lokio/ByteString$Companion;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iput-object p1, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;->renderMode:Lorg/maplibre/android/maps/renderer/MapRenderer$RenderingRefreshMode;

    .line 7
    .line 8
    iget-object p0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;->renderThreadManager:Lokio/ByteString$Companion;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 11
    .line 12
    .line 13
    monitor-exit v0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw p0
.end method

.method public final surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView;->renderThread:Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;

    .line 2
    .line 3
    iget-object p1, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;->renderThreadManager:Lokio/ByteString$Companion;

    .line 4
    .line 5
    monitor-enter p1

    .line 6
    :try_start_0
    iput p3, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;->width:I

    .line 7
    .line 8
    iput p4, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;->height:I

    .line 9
    .line 10
    const/4 p2, 0x1

    .line 11
    iput-boolean p2, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;->sizeChanged:Z

    .line 12
    .line 13
    iput-boolean p2, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;->requestRender:Z

    .line 14
    .line 15
    const/4 p2, 0x0

    .line 16
    iput-boolean p2, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;->renderComplete:Z

    .line 17
    .line 18
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    if-ne p2, p0, :cond_0

    .line 23
    .line 24
    monitor-exit p1

    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    iget-object p2, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;->renderThreadManager:Lokio/ByteString$Companion;

    .line 29
    .line 30
    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 31
    .line 32
    .line 33
    :goto_0
    iget-boolean p2, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;->exited:Z

    .line 34
    .line 35
    if-nez p2, :cond_1

    .line 36
    .line 37
    iget-boolean p2, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;->paused:Z

    .line 38
    .line 39
    if-nez p2, :cond_1

    .line 40
    .line 41
    iget-boolean p2, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;->renderComplete:Z

    .line 42
    .line 43
    if-nez p2, :cond_1

    .line 44
    .line 45
    invoke-virtual {p0}, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;->readyToDraw()Z

    .line 46
    .line 47
    .line 48
    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    if-eqz p2, :cond_1

    .line 50
    .line 51
    :try_start_1
    iget-object p2, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;->renderThreadManager:Lokio/ByteString$Companion;

    .line 52
    .line 53
    invoke-virtual {p2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    monitor-exit p1

    .line 66
    return-void

    .line 67
    :goto_1
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 68
    throw p0
.end method

.method public final surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView;->renderThread:Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;

    .line 2
    .line 3
    iget-object p1, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;->renderThreadManager:Lokio/ByteString$Companion;

    .line 4
    .line 5
    monitor-enter p1

    .line 6
    const/4 v0, 0x1

    .line 7
    :try_start_0
    iput-boolean v0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;->hasSurface:Z

    .line 8
    .line 9
    iget-object v0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;->renderThreadManager:Lokio/ByteString$Companion;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 12
    .line 13
    .line 14
    :goto_0
    iget-boolean v0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;->exited:Z

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    iget-boolean v0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;->waitingForSurface:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    :try_start_1
    iget-object v0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;->renderThreadManager:Lokio/ByteString$Companion;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    goto :goto_1

    .line 30
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    monitor-exit p1

    .line 39
    return-void

    .line 40
    :goto_1
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 41
    throw p0
.end method

.method public final surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView;->renderThread:Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;

    .line 2
    .line 3
    iget-object p1, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;->renderThreadManager:Lokio/ByteString$Companion;

    .line 4
    .line 5
    monitor-enter p1

    .line 6
    const/4 v0, 0x0

    .line 7
    :try_start_0
    iput-boolean v0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;->hasSurface:Z

    .line 8
    .line 9
    iget-object v0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;->renderThreadManager:Lokio/ByteString$Companion;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 12
    .line 13
    .line 14
    :goto_0
    iget-boolean v0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;->exited:Z

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    iget-boolean v0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;->waitingForSurface:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    :try_start_1
    iget-object v0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;->renderThreadManager:Lokio/ByteString$Companion;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    goto :goto_1

    .line 30
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    monitor-exit p1

    .line 39
    return-void

    .line 40
    :goto_1
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 41
    throw p0
.end method

.method public final surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final surfaceRedrawNeededAsync(Landroid/view/SurfaceHolder;Ljava/lang/Runnable;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView;->renderThread:Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;

    .line 2
    .line 3
    if-eqz p0, :cond_1

    .line 4
    .line 5
    iget-object p1, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;->renderThreadManager:Lokio/ByteString$Companion;

    .line 6
    .line 7
    monitor-enter p1

    .line 8
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-ne v0, p0, :cond_0

    .line 13
    .line 14
    monitor-exit p1

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;->wantRenderNotification:Z

    .line 20
    .line 21
    iput-boolean v0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;->requestRender:Z

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;->renderComplete:Z

    .line 25
    .line 26
    iget-object v0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;->finishDrawingRunnable:Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;

    .line 27
    .line 28
    new-instance v1, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;

    .line 29
    .line 30
    const/16 v2, 0x12

    .line 31
    .line 32
    invoke-direct {v1, v2, v0, p2}, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    iput-object v1, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;->finishDrawingRunnable:Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;

    .line 36
    .line 37
    iget-object p0, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView$VulkanThread;->renderThreadManager:Lokio/ByteString$Companion;

    .line 38
    .line 39
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 40
    .line 41
    .line 42
    monitor-exit p1

    .line 43
    return-void

    .line 44
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    throw p0

    .line 46
    :cond_1
    return-void
.end method
