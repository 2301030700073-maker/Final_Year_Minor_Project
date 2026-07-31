.class public abstract Lcom/shopify/reactnative/skia/SkiaBaseView;
.super Lcom/facebook/react/views/view/ReactViewGroup;
.source "SkiaBaseView.java"

# interfaces
.implements Lcom/shopify/reactnative/skia/SkiaViewAPI;


# instance fields
.field private final debug:Z

.field private mView:Landroid/view/View;

.field private final tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 18
    invoke-direct {p0, p1}, Lcom/facebook/react/views/view/ReactViewGroup;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/shopify/reactnative/skia/SkiaBaseView;->debug:Z

    .line 15
    const-string v1, "SkiaView"

    iput-object v1, p0, Lcom/shopify/reactnative/skia/SkiaBaseView;->tag:Ljava/lang/String;

    .line 19
    new-instance v1, Lcom/shopify/reactnative/skia/SkiaTextureView;

    invoke-direct {v1, p1, p0, v0}, Lcom/shopify/reactnative/skia/SkiaTextureView;-><init>(Landroid/content/Context;Lcom/shopify/reactnative/skia/SkiaViewAPI;Z)V

    iput-object v1, p0, Lcom/shopify/reactnative/skia/SkiaBaseView;->mView:Landroid/view/View;

    .line 20
    invoke-virtual {p0, v1}, Lcom/shopify/reactnative/skia/SkiaBaseView;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method dropInstance()V
    .locals 0

    .line 36
    invoke-virtual {p0}, Lcom/shopify/reactnative/skia/SkiaBaseView;->unregisterView()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 41
    invoke-super/range {p0 .. p5}, Lcom/facebook/react/views/view/ReactViewGroup;->onLayout(ZIIII)V

    .line 42
    iget-object p1, p0, Lcom/shopify/reactnative/skia/SkiaBaseView;->mView:Landroid/view/View;

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2, p4, p5}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method public onSurfaceChanged(Landroid/view/Surface;II)V
    .locals 2

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSurfaceTextureSizeChanged "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SkiaView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 53
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/shopify/reactnative/skia/SkiaBaseView;->surfaceSizeChanged(Ljava/lang/Object;IIZ)V

    return-void
.end method

.method public onSurfaceCreated(Landroid/view/Surface;II)V
    .locals 1

    const/4 v0, 0x1

    .line 47
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/shopify/reactnative/skia/SkiaBaseView;->surfaceAvailable(Ljava/lang/Object;IIZ)V

    return-void
.end method

.method public onSurfaceDestroyed()V
    .locals 0

    .line 69
    invoke-virtual {p0}, Lcom/shopify/reactnative/skia/SkiaBaseView;->surfaceDestroyed()V

    return-void
.end method

.method public onSurfaceTextureChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSurfaceTextureSizeChanged "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SkiaView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 64
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/shopify/reactnative/skia/SkiaBaseView;->surfaceSizeChanged(Ljava/lang/Object;IIZ)V

    return-void
.end method

.method public onSurfaceTextureCreated(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    const/4 v0, 0x0

    .line 58
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/shopify/reactnative/skia/SkiaBaseView;->surfaceAvailable(Ljava/lang/Object;IIZ)V

    return-void
.end method

.method protected abstract registerView(I)V
.end method

.method protected abstract setDebugMode(Z)V
.end method

.method public setOpaque(Z)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 24
    iget-object v1, p0, Lcom/shopify/reactnative/skia/SkiaBaseView;->mView:Landroid/view/View;

    instance-of v2, v1, Lcom/shopify/reactnative/skia/SkiaTextureView;

    if-eqz v2, :cond_0

    .line 25
    invoke-virtual {p0, v1}, Lcom/shopify/reactnative/skia/SkiaBaseView;->removeView(Landroid/view/View;)V

    .line 26
    new-instance p1, Lcom/shopify/reactnative/skia/SkiaSurfaceView;

    invoke-virtual {p0}, Lcom/shopify/reactnative/skia/SkiaBaseView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1, p0, v0}, Lcom/shopify/reactnative/skia/SkiaSurfaceView;-><init>(Landroid/content/Context;Lcom/shopify/reactnative/skia/SkiaViewAPI;Z)V

    iput-object p1, p0, Lcom/shopify/reactnative/skia/SkiaBaseView;->mView:Landroid/view/View;

    .line 27
    invoke-virtual {p0, p1}, Lcom/shopify/reactnative/skia/SkiaBaseView;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 28
    iget-object p1, p0, Lcom/shopify/reactnative/skia/SkiaBaseView;->mView:Landroid/view/View;

    instance-of v1, p1, Lcom/shopify/reactnative/skia/SkiaSurfaceView;

    if-eqz v1, :cond_1

    .line 29
    invoke-virtual {p0, p1}, Lcom/shopify/reactnative/skia/SkiaBaseView;->removeView(Landroid/view/View;)V

    .line 30
    new-instance p1, Lcom/shopify/reactnative/skia/SkiaTextureView;

    invoke-virtual {p0}, Lcom/shopify/reactnative/skia/SkiaBaseView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1, p0, v0}, Lcom/shopify/reactnative/skia/SkiaTextureView;-><init>(Landroid/content/Context;Lcom/shopify/reactnative/skia/SkiaViewAPI;Z)V

    iput-object p1, p0, Lcom/shopify/reactnative/skia/SkiaBaseView;->mView:Landroid/view/View;

    .line 31
    invoke-virtual {p0, p1}, Lcom/shopify/reactnative/skia/SkiaBaseView;->addView(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected abstract surfaceAvailable(Ljava/lang/Object;IIZ)V
.end method

.method protected abstract surfaceDestroyed()V
.end method

.method protected abstract surfaceSizeChanged(Ljava/lang/Object;IIZ)V
.end method

.method protected abstract unregisterView()V
.end method
