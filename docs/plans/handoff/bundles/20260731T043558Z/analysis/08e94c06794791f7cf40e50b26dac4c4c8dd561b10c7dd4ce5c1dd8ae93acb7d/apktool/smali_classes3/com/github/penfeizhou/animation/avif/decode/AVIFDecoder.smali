.class public Lcom/github/penfeizhou/animation/avif/decode/AVIFDecoder;
.super Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;
.source "AVIFDecoder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder<",
        "Lcom/github/penfeizhou/animation/avif/io/AVIFReader;",
        "Lcom/github/penfeizhou/animation/avif/io/AVIFWriter;",
        ">;"
    }
.end annotation


# instance fields
.field private avifDecoder:Lorg/aomedia/avif/android/AvifDecoder;


# direct methods
.method public constructor <init>(Lcom/github/penfeizhou/animation/loader/Loader;Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$RenderListener;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;-><init>(Lcom/github/penfeizhou/animation/loader/Loader;Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$RenderListener;)V

    const/4 p1, 0x0

    .line 35
    iput-object p1, p0, Lcom/github/penfeizhou/animation/avif/decode/AVIFDecoder;->avifDecoder:Lorg/aomedia/avif/android/AvifDecoder;

    return-void
.end method


# virtual methods
.method public getFrame(I)Lcom/github/penfeizhou/animation/decode/Frame;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/github/penfeizhou/animation/decode/Frame<",
            "Lcom/github/penfeizhou/animation/avif/io/AVIFReader;",
            "Lcom/github/penfeizhou/animation/avif/io/AVIFWriter;",
            ">;"
        }
    .end annotation

    .line 93
    new-instance v0, Lcom/github/penfeizhou/animation/avif/decode/AVIFFrame;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/github/penfeizhou/animation/avif/decode/AVIFFrame;-><init>(Lcom/github/penfeizhou/animation/avif/io/AVIFReader;)V

    .line 94
    iput p1, v0, Lcom/github/penfeizhou/animation/avif/decode/AVIFFrame;->index:I

    .line 95
    iget-object v1, p0, Lcom/github/penfeizhou/animation/avif/decode/AVIFDecoder;->avifDecoder:Lorg/aomedia/avif/android/AvifDecoder;

    invoke-virtual {v1}, Lorg/aomedia/avif/android/AvifDecoder;->getFrameDurations()[D

    move-result-object v1

    aget-wide v2, v1, p1

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double/2addr v2, v4

    double-to-int p1, v2

    iput p1, v0, Lcom/github/penfeizhou/animation/avif/decode/AVIFFrame;->frameDuration:I

    return-object v0
.end method

.method public getFrameBitmap(I)Landroid/graphics/Bitmap;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/github/penfeizhou/animation/avif/decode/AVIFDecoder;->avifDecoder:Lorg/aomedia/avif/android/AvifDecoder;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 86
    :cond_0
    invoke-virtual {p0}, Lcom/github/penfeizhou/animation/avif/decode/AVIFDecoder;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Lcom/github/penfeizhou/animation/avif/decode/AVIFDecoder;->getSampleSize()I

    move-result v1

    div-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/github/penfeizhou/animation/avif/decode/AVIFDecoder;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p0}, Lcom/github/penfeizhou/animation/avif/decode/AVIFDecoder;->getSampleSize()I

    move-result v2

    div-int/2addr v1, v2

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 87
    iget-object v1, p0, Lcom/github/penfeizhou/animation/avif/decode/AVIFDecoder;->avifDecoder:Lorg/aomedia/avif/android/AvifDecoder;

    invoke-virtual {v1, p1, v0}, Lorg/aomedia/avif/android/AvifDecoder;->nthFrame(ILandroid/graphics/Bitmap;)I

    return-object v0
.end method

.method public getFrameCount()I
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/github/penfeizhou/animation/avif/decode/AVIFDecoder;->avifDecoder:Lorg/aomedia/avif/android/AvifDecoder;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 78
    :cond_0
    invoke-virtual {v0}, Lorg/aomedia/avif/android/AvifDecoder;->getFrameCount()I

    move-result v0

    return v0
.end method

.method protected getLoopCount()I
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/github/penfeizhou/animation/avif/decode/AVIFDecoder;->avifDecoder:Lorg/aomedia/avif/android/AvifDecoder;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 52
    :cond_0
    invoke-virtual {v0}, Lorg/aomedia/avif/android/AvifDecoder;->getFrameCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    return v1

    .line 55
    :cond_1
    iget-object v0, p0, Lcom/github/penfeizhou/animation/avif/decode/AVIFDecoder;->avifDecoder:Lorg/aomedia/avif/android/AvifDecoder;

    invoke-virtual {v0}, Lorg/aomedia/avif/android/AvifDecoder;->getRepetitionCount()I

    move-result v0

    return v0
.end method

.method protected getReader(Lcom/github/penfeizhou/animation/io/Reader;)Lcom/github/penfeizhou/animation/avif/io/AVIFReader;
    .locals 1

    .line 44
    new-instance v0, Lcom/github/penfeizhou/animation/avif/io/AVIFReader;

    invoke-direct {v0, p1}, Lcom/github/penfeizhou/animation/avif/io/AVIFReader;-><init>(Lcom/github/penfeizhou/animation/io/Reader;)V

    return-object v0
.end method

.method protected bridge synthetic getReader(Lcom/github/penfeizhou/animation/io/Reader;)Lcom/github/penfeizhou/animation/io/Reader;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lcom/github/penfeizhou/animation/avif/decode/AVIFDecoder;->getReader(Lcom/github/penfeizhou/animation/io/Reader;)Lcom/github/penfeizhou/animation/avif/io/AVIFReader;

    move-result-object p1

    return-object p1
.end method

.method public getSampleSize()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected getWriter()Lcom/github/penfeizhou/animation/avif/io/AVIFWriter;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic getWriter()Lcom/github/penfeizhou/animation/io/Writer;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lcom/github/penfeizhou/animation/avif/decode/AVIFDecoder;->getWriter()Lcom/github/penfeizhou/animation/avif/io/AVIFWriter;

    move-result-object v0

    return-object v0
.end method

.method protected read(Lcom/github/penfeizhou/animation/avif/io/AVIFReader;)Landroid/graphics/Rect;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    invoke-virtual {p1}, Lcom/github/penfeizhou/animation/avif/io/AVIFReader;->toDirectByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 69
    invoke-static {p1}, Lorg/aomedia/avif/android/AvifDecoder;->create(Ljava/nio/ByteBuffer;)Lorg/aomedia/avif/android/AvifDecoder;

    move-result-object p1

    iput-object p1, p0, Lcom/github/penfeizhou/animation/avif/decode/AVIFDecoder;->avifDecoder:Lorg/aomedia/avif/android/AvifDecoder;

    .line 70
    new-instance p1, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/github/penfeizhou/animation/avif/decode/AVIFDecoder;->avifDecoder:Lorg/aomedia/avif/android/AvifDecoder;

    invoke-virtual {v0}, Lorg/aomedia/avif/android/AvifDecoder;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/github/penfeizhou/animation/avif/decode/AVIFDecoder;->avifDecoder:Lorg/aomedia/avif/android/AvifDecoder;

    invoke-virtual {v1}, Lorg/aomedia/avif/android/AvifDecoder;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p1, v2, v2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1
.end method

.method protected bridge synthetic read(Lcom/github/penfeizhou/animation/io/Reader;)Landroid/graphics/Rect;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    check-cast p1, Lcom/github/penfeizhou/animation/avif/io/AVIFReader;

    invoke-virtual {p0, p1}, Lcom/github/penfeizhou/animation/avif/decode/AVIFDecoder;->read(Lcom/github/penfeizhou/animation/avif/io/AVIFReader;)Landroid/graphics/Rect;

    move-result-object p1

    return-object p1
.end method

.method protected release()V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/github/penfeizhou/animation/avif/decode/AVIFDecoder;->avifDecoder:Lorg/aomedia/avif/android/AvifDecoder;

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {v0}, Lorg/aomedia/avif/android/AvifDecoder;->release()V

    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Lcom/github/penfeizhou/animation/avif/decode/AVIFDecoder;->avifDecoder:Lorg/aomedia/avif/android/AvifDecoder;

    :cond_0
    return-void
.end method

.method protected renderFrame(Lcom/github/penfeizhou/animation/decode/Frame;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/penfeizhou/animation/decode/Frame<",
            "Lcom/github/penfeizhou/animation/avif/io/AVIFReader;",
            "Lcom/github/penfeizhou/animation/avif/io/AVIFWriter;",
            ">;)V"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/github/penfeizhou/animation/avif/decode/AVIFDecoder;->avifDecoder:Lorg/aomedia/avif/android/AvifDecoder;

    invoke-virtual {v0}, Lorg/aomedia/avif/android/AvifDecoder;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/github/penfeizhou/animation/avif/decode/AVIFDecoder;->avifDecoder:Lorg/aomedia/avif/android/AvifDecoder;

    invoke-virtual {v1}, Lorg/aomedia/avif/android/AvifDecoder;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/github/penfeizhou/animation/avif/decode/AVIFDecoder;->obtainBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 102
    iget-object v1, p0, Lcom/github/penfeizhou/animation/avif/decode/AVIFDecoder;->avifDecoder:Lorg/aomedia/avif/android/AvifDecoder;

    if-nez v1, :cond_0

    return-void

    .line 105
    :cond_0
    iget v1, p0, Lcom/github/penfeizhou/animation/avif/decode/AVIFDecoder;->frameIndex:I

    check-cast p1, Lcom/github/penfeizhou/animation/avif/decode/AVIFFrame;

    iget v2, p1, Lcom/github/penfeizhou/animation/avif/decode/AVIFFrame;->index:I

    if-eq v1, v2, :cond_1

    .line 106
    iget-object v1, p0, Lcom/github/penfeizhou/animation/avif/decode/AVIFDecoder;->avifDecoder:Lorg/aomedia/avif/android/AvifDecoder;

    iget p1, p1, Lcom/github/penfeizhou/animation/avif/decode/AVIFFrame;->index:I

    invoke-virtual {v1, p1, v0}, Lorg/aomedia/avif/android/AvifDecoder;->nthFrame(ILandroid/graphics/Bitmap;)I

    goto :goto_0

    .line 108
    :cond_1
    iget p1, p0, Lcom/github/penfeizhou/animation/avif/decode/AVIFDecoder;->frameIndex:I

    if-nez p1, :cond_2

    .line 109
    iget-object p1, p0, Lcom/github/penfeizhou/animation/avif/decode/AVIFDecoder;->avifDecoder:Lorg/aomedia/avif/android/AvifDecoder;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lorg/aomedia/avif/android/AvifDecoder;->nthFrame(ILandroid/graphics/Bitmap;)I

    goto :goto_0

    .line 111
    :cond_2
    iget-object p1, p0, Lcom/github/penfeizhou/animation/avif/decode/AVIFDecoder;->avifDecoder:Lorg/aomedia/avif/android/AvifDecoder;

    invoke-virtual {p1, v0}, Lorg/aomedia/avif/android/AvifDecoder;->nextFrame(Landroid/graphics/Bitmap;)I

    .line 114
    :goto_0
    iget-object p1, p0, Lcom/github/penfeizhou/animation/avif/decode/AVIFDecoder;->frameBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 116
    :try_start_0
    iget-object p1, p0, Lcom/github/penfeizhou/animation/avif/decode/AVIFDecoder;->frameBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 118
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 120
    :goto_1
    invoke-virtual {p0, v0}, Lcom/github/penfeizhou/animation/avif/decode/AVIFDecoder;->recycleBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
