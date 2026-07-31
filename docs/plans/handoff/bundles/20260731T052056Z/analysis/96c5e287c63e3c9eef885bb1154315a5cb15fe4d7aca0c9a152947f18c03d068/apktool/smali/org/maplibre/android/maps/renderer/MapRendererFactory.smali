.class public Lorg/maplibre/android/maps/renderer/MapRendererFactory;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static newSurfaceViewMapRenderer(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Runnable;)Lorg/maplibre/android/maps/renderer/surfaceview/SurfaceViewMapRenderer;
    .locals 1

    .line 1
    new-instance v0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p2}, Landroid/view/SurfaceView;->setZOrderMediaOverlay(Z)V

    .line 7
    .line 8
    .line 9
    new-instance p2, Lorg/maplibre/android/maps/renderer/MapRendererFactory$2;

    .line 10
    .line 11
    invoke-direct {p2, p0, v0, p1, p3}, Lorg/maplibre/android/maps/renderer/MapRendererFactory$2;-><init>(Landroid/content/Context;Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 12
    .line 13
    .line 14
    return-object p2
.end method

.method public static newTextureViewMapRenderer(Landroid/content/Context;Landroid/view/TextureView;Ljava/lang/String;ZLjava/lang/Runnable;)Lorg/maplibre/android/maps/renderer/textureview/TextureViewMapRenderer;
    .locals 6

    .line 1
    new-instance v0, Lorg/maplibre/android/maps/renderer/MapRendererFactory$1;

    .line 2
    .line 3
    move-object v1, p0

    .line 4
    move-object v2, p1

    .line 5
    move-object v3, p2

    .line 6
    move v4, p3

    .line 7
    move-object v5, p4

    .line 8
    invoke-direct/range {v0 .. v5}, Lorg/maplibre/android/maps/renderer/MapRendererFactory$1;-><init>(Landroid/content/Context;Landroid/view/TextureView;Ljava/lang/String;ZLjava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    new-instance p0, Lorg/maplibre/android/maps/renderer/textureview/VulkanTextureViewRenderThread;

    .line 12
    .line 13
    invoke-direct {p0, v2, v0}, Lorg/maplibre/android/maps/renderer/textureview/VulkanTextureViewRenderThread;-><init>(Landroid/view/TextureView;Lorg/maplibre/android/maps/renderer/MapRendererFactory$1;)V

    .line 14
    .line 15
    .line 16
    iput-object p0, v0, Lorg/maplibre/android/maps/renderer/textureview/TextureViewMapRenderer;->renderThread:Lorg/maplibre/android/maps/renderer/textureview/VulkanTextureViewRenderThread;

    .line 17
    .line 18
    const-string p1, "TextureViewRenderer"

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object p0, v0, Lorg/maplibre/android/maps/renderer/textureview/TextureViewMapRenderer;->renderThread:Lorg/maplibre/android/maps/renderer/textureview/VulkanTextureViewRenderThread;

    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 26
    .line 27
    .line 28
    return-object v0
.end method
