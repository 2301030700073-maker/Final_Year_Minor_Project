.class public Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;
.super Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;
.source "GifDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/penfeizhou/animation/gif/decode/GifDecoder$SnapShot;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder<",
        "Lcom/github/penfeizhou/animation/gif/io/GifReader;",
        "Lcom/github/penfeizhou/animation/gif/io/GifWriter;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GifDecoder"


# instance fields
.field private bgColor:I

.field private mGifWriter:Lcom/github/penfeizhou/animation/gif/io/GifWriter;

.field private mLoopCount:I

.field private final paint:Landroid/graphics/Paint;

.field private final snapShot:Lcom/github/penfeizhou/animation/gif/decode/GifDecoder$SnapShot;


# direct methods
.method public constructor <init>(Lcom/github/penfeizhou/animation/loader/Loader;Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$RenderListener;)V
    .locals 1

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;-><init>(Lcom/github/penfeizhou/animation/loader/Loader;Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$RenderListener;)V

    .line 30
    new-instance p1, Lcom/github/penfeizhou/animation/gif/io/GifWriter;

    invoke-direct {p1}, Lcom/github/penfeizhou/animation/gif/io/GifWriter;-><init>()V

    iput-object p1, p0, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->mGifWriter:Lcom/github/penfeizhou/animation/gif/io/GifWriter;

    .line 31
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->paint:Landroid/graphics/Paint;

    const/4 p2, 0x0

    .line 32
    iput p2, p0, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->bgColor:I

    .line 33
    new-instance p2, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder$SnapShot;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder$SnapShot;-><init>(Lcom/github/penfeizhou/animation/gif/decode/GifDecoder$1;)V

    iput-object p2, p0, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->snapShot:Lcom/github/penfeizhou/animation/gif/decode/GifDecoder$SnapShot;

    const/4 p2, 0x1

    .line 36
    iput p2, p0, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->mLoopCount:I

    .line 48
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method


# virtual methods
.method protected getDesiredSample(II)I
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected getLoopCount()I
    .locals 1

    .line 66
    iget v0, p0, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->mLoopCount:I

    return v0
.end method

.method protected getReader(Lcom/github/penfeizhou/animation/io/Reader;)Lcom/github/penfeizhou/animation/gif/io/GifReader;
    .locals 1

    .line 61
    new-instance v0, Lcom/github/penfeizhou/animation/gif/io/GifReader;

    invoke-direct {v0, p1}, Lcom/github/penfeizhou/animation/gif/io/GifReader;-><init>(Lcom/github/penfeizhou/animation/io/Reader;)V

    return-object v0
.end method

.method protected bridge synthetic getReader(Lcom/github/penfeizhou/animation/io/Reader;)Lcom/github/penfeizhou/animation/io/Reader;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->getReader(Lcom/github/penfeizhou/animation/io/Reader;)Lcom/github/penfeizhou/animation/gif/io/GifReader;

    move-result-object p1

    return-object p1
.end method

.method protected getWriter()Lcom/github/penfeizhou/animation/gif/io/GifWriter;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->mGifWriter:Lcom/github/penfeizhou/animation/gif/io/GifWriter;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/github/penfeizhou/animation/gif/io/GifWriter;

    invoke-direct {v0}, Lcom/github/penfeizhou/animation/gif/io/GifWriter;-><init>()V

    iput-object v0, p0, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->mGifWriter:Lcom/github/penfeizhou/animation/gif/io/GifWriter;

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->mGifWriter:Lcom/github/penfeizhou/animation/gif/io/GifWriter;

    return-object v0
.end method

.method protected bridge synthetic getWriter()Lcom/github/penfeizhou/animation/io/Writer;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->getWriter()Lcom/github/penfeizhou/animation/gif/io/GifWriter;

    move-result-object v0

    return-object v0
.end method

.method protected read(Lcom/github/penfeizhou/animation/gif/io/GifReader;)Landroid/graphics/Rect;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    invoke-static {p1}, Lcom/github/penfeizhou/animation/gif/decode/GifParser;->parse(Lcom/github/penfeizhou/animation/gif/io/GifReader;)Ljava/util/List;

    move-result-object v0

    .line 82
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    move v4, v1

    move v5, v4

    move-object v6, v2

    move-object v7, v6

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/github/penfeizhou/animation/gif/decode/Block;

    .line 83
    instance-of v9, v8, Lcom/github/penfeizhou/animation/gif/decode/LogicalScreenDescriptor;

    if-eqz v9, :cond_1

    .line 84
    check-cast v8, Lcom/github/penfeizhou/animation/gif/decode/LogicalScreenDescriptor;

    iget v4, v8, Lcom/github/penfeizhou/animation/gif/decode/LogicalScreenDescriptor;->screenWidth:I

    .line 85
    iget v5, v8, Lcom/github/penfeizhou/animation/gif/decode/LogicalScreenDescriptor;->screenHeight:I

    .line 86
    invoke-virtual {v8}, Lcom/github/penfeizhou/animation/gif/decode/LogicalScreenDescriptor;->gColorTableFlag()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 87
    iget-byte v3, v8, Lcom/github/penfeizhou/animation/gif/decode/LogicalScreenDescriptor;->bgColorIndex:B

    and-int/lit16 v3, v3, 0xff

    goto :goto_0

    .line 89
    :cond_1
    instance-of v9, v8, Lcom/github/penfeizhou/animation/gif/decode/ColorTable;

    if-eqz v9, :cond_2

    .line 90
    move-object v6, v8

    check-cast v6, Lcom/github/penfeizhou/animation/gif/decode/ColorTable;

    goto :goto_0

    .line 91
    :cond_2
    instance-of v9, v8, Lcom/github/penfeizhou/animation/gif/decode/GraphicControlExtension;

    if-eqz v9, :cond_3

    .line 92
    move-object v7, v8

    check-cast v7, Lcom/github/penfeizhou/animation/gif/decode/GraphicControlExtension;

    goto :goto_0

    .line 93
    :cond_3
    instance-of v9, v8, Lcom/github/penfeizhou/animation/gif/decode/ImageDescriptor;

    if-eqz v9, :cond_4

    .line 94
    new-instance v9, Lcom/github/penfeizhou/animation/gif/decode/GifFrame;

    check-cast v8, Lcom/github/penfeizhou/animation/gif/decode/ImageDescriptor;

    invoke-direct {v9, p1, v6, v7, v8}, Lcom/github/penfeizhou/animation/gif/decode/GifFrame;-><init>(Lcom/github/penfeizhou/animation/gif/io/GifReader;Lcom/github/penfeizhou/animation/gif/decode/ColorTable;Lcom/github/penfeizhou/animation/gif/decode/GraphicControlExtension;Lcom/github/penfeizhou/animation/gif/decode/ImageDescriptor;)V

    .line 95
    iget-object v8, p0, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->frames:Ljava/util/List;

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 96
    :cond_4
    instance-of v9, v8, Lcom/github/penfeizhou/animation/gif/decode/ApplicationExtension;

    if-eqz v9, :cond_0

    check-cast v8, Lcom/github/penfeizhou/animation/gif/decode/ApplicationExtension;

    iget-object v9, v8, Lcom/github/penfeizhou/animation/gif/decode/ApplicationExtension;->identifier:Ljava/lang/String;

    const-string v10, "NETSCAPE2.0"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 97
    iget v8, v8, Lcom/github/penfeizhou/animation/gif/decode/ApplicationExtension;->loopCount:I

    if-nez v8, :cond_5

    .line 101
    iput v1, p0, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->mLoopCount:I

    goto :goto_0

    :cond_5
    if-lez v8, :cond_0

    add-int/lit8 v8, v8, 0x1

    .line 106
    iput v8, p0, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->mLoopCount:I

    goto :goto_0

    :cond_6
    int-to-long v7, v4

    int-to-long v9, v5

    mul-long/2addr v7, v9

    .line 111
    iget p1, p0, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->sampleSize:I

    int-to-long v9, p1

    iget p1, p0, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->sampleSize:I

    int-to-long v11, p1

    mul-long/2addr v9, v11

    div-long/2addr v7, v9

    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    const-wide/16 v9, 0x4

    mul-long/2addr v7, v9

    long-to-int p1, v7

    .line 114
    :try_start_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->frameBuffer:Ljava/nio/ByteBuffer;

    .line 115
    iget-object v0, p0, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->snapShot:Lcom/github/penfeizhou/animation/gif/decode/GifDecoder$SnapShot;

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, v0, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder$SnapShot;->byteBuffer:Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v6, :cond_7

    if-ltz v3, :cond_7

    .line 127
    invoke-virtual {v6}, Lcom/github/penfeizhou/animation/gif/decode/ColorTable;->getColorTable()[I

    move-result-object p1

    array-length p1, p1

    if-ge v3, p1, :cond_7

    .line 128
    invoke-virtual {v6}, Lcom/github/penfeizhou/animation/gif/decode/ColorTable;->getColorTable()[I

    move-result-object p1

    aget p1, p1, v3

    and-int/lit16 v0, p1, 0xff

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 p1, p1, 0x10

    and-int/lit16 p1, p1, 0xff

    .line 129
    invoke-static {v0, v2, p1}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    iput p1, p0, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->bgColor:I

    .line 131
    :cond_7
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, v1, v1, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1

    :catch_0
    move-exception p1

    long-to-double v0, v7

    const-wide/high16 v3, 0x4130000000000000L    # 1048576.0

    div-double/2addr v0, v3

    .line 119
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 117
    const-string v1, "OutOfMemoryError in GifDecoder: Buffer needed: %.2fMB (%,d bytes)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "GifDecoder"

    invoke-static {v1, v0}, Lio/sentry/android/core/SentryLogcatAdapter;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iput-object v2, p0, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->frameBuffer:Ljava/nio/ByteBuffer;

    .line 123
    iget-object v0, p0, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->snapShot:Lcom/github/penfeizhou/animation/gif/decode/GifDecoder$SnapShot;

    iput-object v2, v0, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder$SnapShot;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 124
    throw p1
.end method

.method protected bridge synthetic read(Lcom/github/penfeizhou/animation/io/Reader;)Landroid/graphics/Rect;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    check-cast p1, Lcom/github/penfeizhou/animation/gif/io/GifReader;

    invoke-virtual {p0, p1}, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->read(Lcom/github/penfeizhou/animation/gif/io/GifReader;)Landroid/graphics/Rect;

    move-result-object p1

    return-object p1
.end method

.method protected release()V
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->snapShot:Lcom/github/penfeizhou/animation/gif/decode/GifDecoder$SnapShot;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder$SnapShot;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 72
    iput-object v1, p0, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->mGifWriter:Lcom/github/penfeizhou/animation/gif/io/GifWriter;

    return-void
.end method

.method protected renderFrame(Lcom/github/penfeizhou/animation/decode/Frame;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/penfeizhou/animation/decode/Frame<",
            "Lcom/github/penfeizhou/animation/gif/io/GifReader;",
            "Lcom/github/penfeizhou/animation/gif/io/GifWriter;",
            ">;)V"
        }
    .end annotation

    .line 141
    move-object v0, p1

    check-cast v0, Lcom/github/penfeizhou/animation/gif/decode/GifFrame;

    .line 142
    iget-object v1, p0, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->fullRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget v2, p0, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->sampleSize:I

    div-int/2addr v1, v2

    iget-object v2, p0, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->fullRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v3, p0, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->sampleSize:I

    div-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->obtainBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 143
    iget-object v1, p0, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->cachedCanvas:Ljava/util/Map;

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Canvas;

    if-nez v1, :cond_0

    .line 145
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 146
    iget-object v2, p0, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->cachedCanvas:Ljava/util/Map;

    invoke-interface {v2, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    move-object v7, v1

    .line 148
    iget-object v1, p0, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->frameBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 149
    iget-object v1, p0, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->frameBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 151
    invoke-virtual {v0}, Lcom/github/penfeizhou/animation/gif/decode/GifFrame;->transparencyFlag()Z

    move-result v1

    if-nez v1, :cond_1

    .line 152
    iget v1, p0, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->bgColor:I

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    move v8, v1

    .line 154
    iget v1, p0, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->frameIndex:I

    if-nez v1, :cond_2

    .line 155
    invoke-virtual {v6, v8}, Landroid/graphics/Bitmap;->eraseColor(I)V

    goto/16 :goto_2

    .line 157
    :cond_2
    iget-object v1, p0, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->frames:Ljava/util/List;

    iget v2, p0, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->frameIndex:I

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/penfeizhou/animation/gif/decode/GifFrame;

    .line 158
    invoke-virtual {v7}, Landroid/graphics/Canvas;->save()I

    .line 159
    iget v2, v1, Lcom/github/penfeizhou/animation/gif/decode/GifFrame;->frameX:I

    iget v3, p0, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->sampleSize:I

    div-int/2addr v2, v3

    iget v3, v1, Lcom/github/penfeizhou/animation/gif/decode/GifFrame;->frameY:I

    iget v4, p0, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->sampleSize:I

    div-int/2addr v3, v4

    iget v4, v1, Lcom/github/penfeizhou/animation/gif/decode/GifFrame;->frameX:I

    iget v5, v1, Lcom/github/penfeizhou/animation/gif/decode/GifFrame;->frameWidth:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->sampleSize:I

    div-int/2addr v4, v5

    iget v5, v1, Lcom/github/penfeizhou/animation/gif/decode/GifFrame;->frameY:I

    iget v9, v1, Lcom/github/penfeizhou/animation/gif/decode/GifFrame;->frameHeight:I

    add-int/2addr v5, v9

    iget v9, p0, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->sampleSize:I

    div-int/2addr v5, v9

    invoke-virtual {v7, v2, v3, v4, v5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 163
    iget v2, v1, Lcom/github/penfeizhou/animation/gif/decode/GifFrame;->disposalMethod:I

    const/4 v3, 0x2

    const/4 v4, 0x3

    if-eq v2, v3, :cond_4

    if-eq v2, v4, :cond_3

    goto :goto_1

    .line 172
    :cond_3
    iget-object v2, p0, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->snapShot:Lcom/github/penfeizhou/animation/gif/decode/GifDecoder$SnapShot;

    iget-object v2, v2, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder$SnapShot;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 173
    iget v2, p0, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->bgColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v2, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 174
    iget-object v2, p0, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->fullRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget v3, p0, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->sampleSize:I

    div-int/2addr v2, v3

    iget-object v3, p0, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->fullRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget v5, p0, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->sampleSize:I

    div-int/2addr v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->obtainBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 175
    iget-object v3, p0, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->snapShot:Lcom/github/penfeizhou/animation/gif/decode/GifDecoder$SnapShot;

    iget-object v3, v3, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder$SnapShot;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v3}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 176
    iget-object v3, p0, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->paint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {v7, v2, v5, v5, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 177
    invoke-virtual {p0, v2}, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->recycleBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 169
    :cond_4
    iget v2, p0, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->bgColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v2, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 180
    :goto_1
    invoke-virtual {v7}, Landroid/graphics/Canvas;->restore()V

    .line 181
    iget v2, v0, Lcom/github/penfeizhou/animation/gif/decode/GifFrame;->disposalMethod:I

    if-ne v2, v4, :cond_5

    .line 182
    iget v1, v1, Lcom/github/penfeizhou/animation/gif/decode/GifFrame;->disposalMethod:I

    if-eq v1, v4, :cond_5

    .line 183
    iget-object v1, p0, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->frameBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 184
    iget-object v1, p0, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->snapShot:Lcom/github/penfeizhou/animation/gif/decode/GifDecoder$SnapShot;

    iget-object v1, v1, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder$SnapShot;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 185
    iget-object v1, p0, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->snapShot:Lcom/github/penfeizhou/animation/gif/decode/GifDecoder$SnapShot;

    iget-object v1, v1, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder$SnapShot;->byteBuffer:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->frameBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 189
    :cond_5
    :goto_2
    iget v1, p1, Lcom/github/penfeizhou/animation/decode/Frame;->frameWidth:I

    iget v2, p0, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->sampleSize:I

    div-int/2addr v1, v2

    iget p1, p1, Lcom/github/penfeizhou/animation/decode/Frame;->frameHeight:I

    iget v2, p0, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->sampleSize:I

    div-int/2addr p1, v2

    invoke-virtual {p0, v1, p1}, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->obtainBitmap(II)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 190
    iget-object v2, p0, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->paint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->sampleSize:I

    invoke-virtual {p0}, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->getWriter()Lcom/github/penfeizhou/animation/gif/io/GifWriter;

    move-result-object v5

    move-object v1, v7

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/github/penfeizhou/animation/gif/decode/GifFrame;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;ILandroid/graphics/Bitmap;Lcom/github/penfeizhou/animation/gif/io/GifWriter;)Landroid/graphics/Bitmap;

    .line 191
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v8, v0}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 192
    invoke-virtual {p0, p1}, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->recycleBitmap(Landroid/graphics/Bitmap;)V

    .line 193
    iget-object p1, p0, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->frameBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 194
    iget-object p1, p0, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->frameBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, p1}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 195
    invoke-virtual {p0, v6}, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->recycleBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
