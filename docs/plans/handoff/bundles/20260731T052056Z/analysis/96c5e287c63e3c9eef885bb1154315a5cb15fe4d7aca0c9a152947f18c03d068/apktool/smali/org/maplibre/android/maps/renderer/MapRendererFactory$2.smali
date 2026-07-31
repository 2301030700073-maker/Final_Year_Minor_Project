.class public final Lorg/maplibre/android/maps/renderer/MapRendererFactory$2;
.super Lorg/maplibre/android/maps/renderer/surfaceview/SurfaceViewMapRenderer;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final synthetic val$initCallback:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p4, p0, Lorg/maplibre/android/maps/renderer/MapRendererFactory$2;->val$initCallback:Ljava/lang/Runnable;

    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3}, Lorg/maplibre/android/maps/renderer/surfaceview/SurfaceViewMapRenderer;-><init>(Landroid/content/Context;Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lorg/maplibre/android/maps/renderer/surfaceview/SurfaceViewMapRenderer;->surfaceView:Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView;

    .line 7
    .line 8
    invoke-virtual {p1, p0}, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView;->setRenderer(Lorg/maplibre/android/maps/renderer/surfaceview/SurfaceViewMapRenderer;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final onSurfaceCreated(Landroid/view/Surface;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/maplibre/android/maps/renderer/MapRendererFactory$2;->val$initCallback:Ljava/lang/Runnable;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lorg/maplibre/android/maps/renderer/MapRenderer;->onSurfaceCreated(Landroid/view/Surface;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
