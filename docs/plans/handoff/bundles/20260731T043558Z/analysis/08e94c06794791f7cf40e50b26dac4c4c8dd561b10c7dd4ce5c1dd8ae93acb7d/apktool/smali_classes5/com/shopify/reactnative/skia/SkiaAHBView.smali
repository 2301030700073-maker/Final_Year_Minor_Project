.class public Lcom/shopify/reactnative/skia/SkiaAHBView;
.super Landroid/view/View;
.source "SkiaAHBView.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# instance fields
.field private _prevTimestamp:J

.field mApi:Lcom/shopify/reactnative/skia/SkiaViewAPI;

.field private mBitmap:Landroid/graphics/Bitmap;

.field mDebug:Z

.field private mReader:Landroid/media/ImageReader;

.field private final matrix:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/shopify/reactnative/skia/SkiaViewAPI;Z)V
    .locals 2

    .line 34
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 26
    iput-object p1, p0, Lcom/shopify/reactnative/skia/SkiaAHBView;->mBitmap:Landroid/graphics/Bitmap;

    .line 28
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/shopify/reactnative/skia/SkiaAHBView;->matrix:Landroid/graphics/Matrix;

    const-wide/16 v0, 0x0

    .line 101
    iput-wide v0, p0, Lcom/shopify/reactnative/skia/SkiaAHBView;->_prevTimestamp:J

    .line 35
    iput-object p2, p0, Lcom/shopify/reactnative/skia/SkiaAHBView;->mApi:Lcom/shopify/reactnative/skia/SkiaViewAPI;

    .line 36
    iput-boolean p3, p0, Lcom/shopify/reactnative/skia/SkiaAHBView;->mDebug:Z

    return-void
.end method

.method private createReader()Landroid/media/ImageReader;
    .locals 6

    .line 40
    invoke-virtual {p0}, Lcom/shopify/reactnative/skia/SkiaAHBView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/shopify/reactnative/skia/SkiaAHBView;->getHeight()I

    move-result v1

    const/4 v3, 0x2

    const-wide/16 v4, 0x300

    const/4 v2, 0x1

    invoke-static/range {v0 .. v5}, Landroid/media/ImageReader;->newInstance(IIIIJ)Landroid/media/ImageReader;

    move-result-object v0

    const/4 v1, 0x0

    .line 42
    invoke-virtual {v0, p0, v1}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    return-object v0
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 1

    .line 110
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 111
    iget-object v0, p0, Lcom/shopify/reactnative/skia/SkiaAHBView;->mApi:Lcom/shopify/reactnative/skia/SkiaViewAPI;

    invoke-interface {v0}, Lcom/shopify/reactnative/skia/SkiaViewAPI;->onSurfaceDestroyed()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 82
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 83
    iget-object v0, p0, Lcom/shopify/reactnative/skia/SkiaAHBView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/shopify/reactnative/skia/SkiaAHBView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 85
    invoke-virtual {p0}, Lcom/shopify/reactnative/skia/SkiaAHBView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 86
    iget-object v2, p0, Lcom/shopify/reactnative/skia/SkiaAHBView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    .line 87
    iget-object v3, p0, Lcom/shopify/reactnative/skia/SkiaAHBView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v2

    div-float/2addr v1, v3

    .line 94
    iget-object v2, p0, Lcom/shopify/reactnative/skia/SkiaAHBView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 95
    iget-object v2, p0, Lcom/shopify/reactnative/skia/SkiaAHBView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 97
    iget-object v0, p0, Lcom/shopify/reactnative/skia/SkiaAHBView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/shopify/reactnative/skia/SkiaAHBView;->matrix:Landroid/graphics/Matrix;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 3

    .line 62
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 64
    :try_start_0
    invoke-virtual {p1}, Landroid/media/Image;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v0

    .line 65
    iget-boolean v1, p0, Lcom/shopify/reactnative/skia/SkiaAHBView;->mDebug:Z

    if-eqz v1, :cond_0

    .line 66
    invoke-virtual {p1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/shopify/reactnative/skia/SkiaAHBView;->textureUpdated(J)V

    :cond_0
    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 69
    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->wrapHardwareBuffer(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 71
    iput-object v1, p0, Lcom/shopify/reactnative/skia/SkiaAHBView;->mBitmap:Landroid/graphics/Bitmap;

    .line 72
    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->close()V

    .line 73
    invoke-virtual {p0}, Lcom/shopify/reactnative/skia/SkiaAHBView;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz p1, :cond_1

    .line 62
    :try_start_1
    invoke-virtual {p1}, Landroid/media/Image;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v0

    :cond_2
    :goto_1
    if-eqz p1, :cond_3

    .line 77
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    :cond_3
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 48
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 49
    invoke-virtual {p0}, Lcom/shopify/reactnative/skia/SkiaAHBView;->getWidth()I

    move-result p1

    .line 50
    invoke-virtual {p0}, Lcom/shopify/reactnative/skia/SkiaAHBView;->getHeight()I

    move-result p2

    .line 51
    iget-object p3, p0, Lcom/shopify/reactnative/skia/SkiaAHBView;->mReader:Landroid/media/ImageReader;

    if-nez p3, :cond_0

    .line 52
    invoke-direct {p0}, Lcom/shopify/reactnative/skia/SkiaAHBView;->createReader()Landroid/media/ImageReader;

    move-result-object p3

    iput-object p3, p0, Lcom/shopify/reactnative/skia/SkiaAHBView;->mReader:Landroid/media/ImageReader;

    .line 53
    iget-object p4, p0, Lcom/shopify/reactnative/skia/SkiaAHBView;->mApi:Lcom/shopify/reactnative/skia/SkiaViewAPI;

    invoke-virtual {p3}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object p3

    invoke-interface {p4, p3, p1, p2}, Lcom/shopify/reactnative/skia/SkiaViewAPI;->onSurfaceCreated(Landroid/view/Surface;II)V

    goto :goto_0

    .line 55
    :cond_0
    invoke-direct {p0}, Lcom/shopify/reactnative/skia/SkiaAHBView;->createReader()Landroid/media/ImageReader;

    move-result-object p3

    iput-object p3, p0, Lcom/shopify/reactnative/skia/SkiaAHBView;->mReader:Landroid/media/ImageReader;

    .line 56
    iget-object p4, p0, Lcom/shopify/reactnative/skia/SkiaAHBView;->mApi:Lcom/shopify/reactnative/skia/SkiaViewAPI;

    invoke-virtual {p3}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object p3

    invoke-interface {p4, p3, p1, p2}, Lcom/shopify/reactnative/skia/SkiaViewAPI;->onSurfaceChanged(Landroid/view/Surface;II)V

    :goto_0
    return-void
.end method

.method public textureUpdated(J)V
    .locals 4

    .line 103
    iget-wide v0, p0, Lcom/shopify/reactnative/skia/SkiaAHBView;->_prevTimestamp:J

    sub-long v0, p1, v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    .line 104
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onSurfaceTextureUpdated "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SkiaAHBView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iput-wide p1, p0, Lcom/shopify/reactnative/skia/SkiaAHBView;->_prevTimestamp:J

    return-void
.end method
