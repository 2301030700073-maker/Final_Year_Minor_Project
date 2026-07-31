.class public Lcom/shopify/reactnative/skia/SkiaTextureView;
.super Landroid/view/TextureView;
.source "SkiaTextureView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# instance fields
.field private _prevTimestamp:J

.field mApi:Lcom/shopify/reactnative/skia/SkiaViewAPI;

.field mDebug:Z

.field private tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/shopify/reactnative/skia/SkiaViewAPI;Z)V
    .locals 2

    .line 20
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 14
    const-string p1, "SkiaTextureView"

    iput-object p1, p0, Lcom/shopify/reactnative/skia/SkiaTextureView;->tag:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 50
    iput-wide v0, p0, Lcom/shopify/reactnative/skia/SkiaTextureView;->_prevTimestamp:J

    .line 21
    iput-object p2, p0, Lcom/shopify/reactnative/skia/SkiaTextureView;->mApi:Lcom/shopify/reactnative/skia/SkiaViewAPI;

    .line 22
    iput-boolean p3, p0, Lcom/shopify/reactnative/skia/SkiaTextureView;->mDebug:Z

    const/4 p1, 0x0

    .line 23
    invoke-virtual {p0, p1}, Lcom/shopify/reactnative/skia/SkiaTextureView;->setOpaque(Z)V

    .line 24
    invoke-virtual {p0, p0}, Lcom/shopify/reactnative/skia/SkiaTextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 0

    .line 29
    invoke-super/range {p0 .. p5}, Landroid/view/TextureView;->onLayout(ZIIII)V

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 3

    .line 34
    iget-object v0, p0, Lcom/shopify/reactnative/skia/SkiaTextureView;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSurfaceTextureAvailable:  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    iget-object v0, p0, Lcom/shopify/reactnative/skia/SkiaTextureView;->mApi:Lcom/shopify/reactnative/skia/SkiaViewAPI;

    invoke-interface {v0, p1, p2, p3}, Lcom/shopify/reactnative/skia/SkiaViewAPI;->onSurfaceTextureCreated(Landroid/graphics/SurfaceTexture;II)V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    .line 46
    iget-object p1, p0, Lcom/shopify/reactnative/skia/SkiaTextureView;->mApi:Lcom/shopify/reactnative/skia/SkiaViewAPI;

    invoke-interface {p1}, Lcom/shopify/reactnative/skia/SkiaViewAPI;->onSurfaceDestroyed()V

    const/4 p1, 0x1

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 3

    .line 40
    iget-object v0, p0, Lcom/shopify/reactnative/skia/SkiaTextureView;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSurfaceTextureSizeChanged:  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    iget-object v0, p0, Lcom/shopify/reactnative/skia/SkiaTextureView;->mApi:Lcom/shopify/reactnative/skia/SkiaViewAPI;

    invoke-interface {v0, p1, p2, p3}, Lcom/shopify/reactnative/skia/SkiaViewAPI;->onSurfaceTextureChanged(Landroid/graphics/SurfaceTexture;II)V

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 6

    .line 53
    iget-boolean v0, p0, Lcom/shopify/reactnative/skia/SkiaTextureView;->mDebug:Z

    if-nez v0, :cond_0

    return-void

    .line 56
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v0

    .line 57
    iget-wide v2, p0, Lcom/shopify/reactnative/skia/SkiaTextureView;->_prevTimestamp:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    .line 58
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v4, "onSurfaceTextureUpdated "

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "ms"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "SkiaTextureView"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iput-wide v0, p0, Lcom/shopify/reactnative/skia/SkiaTextureView;->_prevTimestamp:J

    return-void
.end method
