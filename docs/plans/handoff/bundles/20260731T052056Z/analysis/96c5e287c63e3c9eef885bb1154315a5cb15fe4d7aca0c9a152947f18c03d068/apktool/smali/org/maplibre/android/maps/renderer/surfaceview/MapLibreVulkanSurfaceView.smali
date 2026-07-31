.class public final Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView;
.super Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final viewWeakReference:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreSurfaceView;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lorg/maplibre/android/maps/renderer/surfaceview/MapLibreVulkanSurfaceView;->viewWeakReference:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    return-void
.end method
