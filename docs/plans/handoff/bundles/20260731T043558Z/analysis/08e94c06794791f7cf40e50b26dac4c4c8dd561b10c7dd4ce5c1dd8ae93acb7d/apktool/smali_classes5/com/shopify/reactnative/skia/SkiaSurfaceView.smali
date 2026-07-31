.class public Lcom/shopify/reactnative/skia/SkiaSurfaceView;
.super Landroid/view/SurfaceView;
.source "SkiaSurfaceView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field mApi:Lcom/shopify/reactnative/skia/SkiaViewAPI;

.field mDebug:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/shopify/reactnative/skia/SkiaViewAPI;Z)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 17
    iput-object p2, p0, Lcom/shopify/reactnative/skia/SkiaSurfaceView;->mApi:Lcom/shopify/reactnative/skia/SkiaViewAPI;

    .line 18
    iput-boolean p3, p0, Lcom/shopify/reactnative/skia/SkiaSurfaceView;->mDebug:Z

    .line 19
    invoke-virtual {p0}, Lcom/shopify/reactnative/skia/SkiaSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 1

    .line 24
    invoke-super {p0}, Landroid/view/SurfaceView;->onDetachedFromWindow()V

    .line 25
    iget-object v0, p0, Lcom/shopify/reactnative/skia/SkiaSurfaceView;->mApi:Lcom/shopify/reactnative/skia/SkiaViewAPI;

    invoke-interface {v0}, Lcom/shopify/reactnative/skia/SkiaViewAPI;->onSurfaceDestroyed()V

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 35
    iget-object p2, p0, Lcom/shopify/reactnative/skia/SkiaSurfaceView;->mApi:Lcom/shopify/reactnative/skia/SkiaViewAPI;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-virtual {p0}, Lcom/shopify/reactnative/skia/SkiaSurfaceView;->getWidth()I

    move-result p3

    invoke-virtual {p0}, Lcom/shopify/reactnative/skia/SkiaSurfaceView;->getHeight()I

    move-result p4

    invoke-interface {p2, p1, p3, p4}, Lcom/shopify/reactnative/skia/SkiaViewAPI;->onSurfaceChanged(Landroid/view/Surface;II)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3

    .line 30
    iget-object v0, p0, Lcom/shopify/reactnative/skia/SkiaSurfaceView;->mApi:Lcom/shopify/reactnative/skia/SkiaViewAPI;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-virtual {p0}, Lcom/shopify/reactnative/skia/SkiaSurfaceView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/shopify/reactnative/skia/SkiaSurfaceView;->getHeight()I

    move-result v2

    invoke-interface {v0, p1, v1, v2}, Lcom/shopify/reactnative/skia/SkiaViewAPI;->onSurfaceCreated(Landroid/view/Surface;II)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 40
    iget-object p1, p0, Lcom/shopify/reactnative/skia/SkiaSurfaceView;->mApi:Lcom/shopify/reactnative/skia/SkiaViewAPI;

    invoke-interface {p1}, Lcom/shopify/reactnative/skia/SkiaViewAPI;->onSurfaceDestroyed()V

    return-void
.end method
