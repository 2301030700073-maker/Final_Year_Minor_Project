.class public Lcom/shopify/reactnative/skia/RNSkVideo;
.super Ljava/lang/Object;
.source "RNSkVideo.java"


# instance fields
.field private final context:Landroid/content/Context;

.field private decoder:Landroid/media/MediaCodec;

.field private durationMs:D

.field private extractor:Landroid/media/MediaExtractor;

.field private frameRate:D

.field private height:I

.field private imageReader:Landroid/media/ImageReader;

.field private isPlaying:Z

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field private mediaSync:Landroid/media/MediaSync;

.field private outputSurface:Landroid/view/Surface;

.field private rotationDegrees:I

.field private final uri:Landroid/net/Uri;

.field private width:I


# direct methods
.method public static synthetic $r8$lambda$K2CjbJylfs7jAG0v7bDv1hmTOQM(Lcom/shopify/reactnative/skia/RNSkVideo;Landroid/media/MediaPlayer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/shopify/reactnative/skia/RNSkVideo;->lambda$initializeReader$0(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lcom/shopify/reactnative/skia/RNSkVideo;->rotationDegrees:I

    .line 40
    iput v0, p0, Lcom/shopify/reactnative/skia/RNSkVideo;->width:I

    .line 41
    iput v0, p0, Lcom/shopify/reactnative/skia/RNSkVideo;->height:I

    .line 43
    iput-boolean v0, p0, Lcom/shopify/reactnative/skia/RNSkVideo;->isPlaying:Z

    .line 46
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/shopify/reactnative/skia/RNSkVideo;->uri:Landroid/net/Uri;

    .line 47
    iput-object p1, p0, Lcom/shopify/reactnative/skia/RNSkVideo;->context:Landroid/content/Context;

    .line 48
    invoke-direct {p0}, Lcom/shopify/reactnative/skia/RNSkVideo;->initializeReader()V

    return-void
.end method

.method private decodeFrame()V
    .locals 11

    .line 198
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 202
    iget-object v1, p0, Lcom/shopify/reactnative/skia/RNSkVideo;->decoder:Landroid/media/MediaCodec;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v5

    if-ltz v5, :cond_1

    .line 204
    iget-object v1, p0, Lcom/shopify/reactnative/skia/RNSkVideo;->decoder:Landroid/media/MediaCodec;

    invoke-virtual {v1, v5}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 205
    iget-object v4, p0, Lcom/shopify/reactnative/skia/RNSkVideo;->extractor:Landroid/media/MediaExtractor;

    const/4 v6, 0x0

    invoke-virtual {v4, v1, v6}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v7

    if-gez v7, :cond_0

    .line 208
    iget-object v4, p0, Lcom/shopify/reactnative/skia/RNSkVideo;->decoder:Landroid/media/MediaCodec;

    const-wide/16 v8, 0x0

    const/4 v10, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_0

    .line 211
    :cond_0
    iget-object v1, p0, Lcom/shopify/reactnative/skia/RNSkVideo;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v8

    .line 212
    iget-object v4, p0, Lcom/shopify/reactnative/skia/RNSkVideo;->decoder:Landroid/media/MediaCodec;

    const/4 v6, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 213
    iget-object v1, p0, Lcom/shopify/reactnative/skia/RNSkVideo;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->advance()Z

    .line 217
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/shopify/reactnative/skia/RNSkVideo;->decoder:Landroid/media/MediaCodec;

    invoke-virtual {v1, v0, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v1

    if-ltz v1, :cond_2

    .line 220
    iget-object v2, p0, Lcom/shopify/reactnative/skia/RNSkVideo;->decoder:Landroid/media/MediaCodec;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 222
    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    :cond_2
    return-void
.end method

.method private decoderOutputAvailable()Z
    .locals 4

    .line 187
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 188
    iget-object v1, p0, Lcom/shopify/reactnative/skia/RNSkVideo;->decoder:Landroid/media/MediaCodec;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    if-ltz v0, :cond_0

    .line 191
    iget-object v1, p0, Lcom/shopify/reactnative/skia/RNSkVideo;->decoder:Landroid/media/MediaCodec;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private initializeReader()V
    .locals 14

    .line 52
    const-string v0, "rotation-degrees"

    const-string v1, "frame-rate"

    const-string v2, "durationUs"

    .line 0
    const-string v3, "No video track found in "

    .line 52
    new-instance v4, Landroid/media/MediaExtractor;

    invoke-direct {v4}, Landroid/media/MediaExtractor;-><init>()V

    iput-object v4, p0, Lcom/shopify/reactnative/skia/RNSkVideo;->extractor:Landroid/media/MediaExtractor;

    .line 54
    :try_start_0
    iget-object v5, p0, Lcom/shopify/reactnative/skia/RNSkVideo;->context:Landroid/content/Context;

    iget-object v6, p0, Lcom/shopify/reactnative/skia/RNSkVideo;->uri:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/media/MediaExtractor;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 55
    iget-object v4, p0, Lcom/shopify/reactnative/skia/RNSkVideo;->extractor:Landroid/media/MediaExtractor;

    invoke-direct {p0, v4}, Lcom/shopify/reactnative/skia/RNSkVideo;->selectVideoTrack(Landroid/media/MediaExtractor;)I

    move-result v4

    if-ltz v4, :cond_4

    .line 59
    iget-object v3, p0, Lcom/shopify/reactnative/skia/RNSkVideo;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3, v4}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 60
    iget-object v3, p0, Lcom/shopify/reactnative/skia/RNSkVideo;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3, v4}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v3

    .line 63
    new-instance v4, Landroid/media/MediaPlayer;

    invoke-direct {v4}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v4, p0, Lcom/shopify/reactnative/skia/RNSkVideo;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 64
    iget-object v5, p0, Lcom/shopify/reactnative/skia/RNSkVideo;->context:Landroid/content/Context;

    iget-object v6, p0, Lcom/shopify/reactnative/skia/RNSkVideo;->uri:Landroid/net/Uri;

    invoke-virtual {v4, v5, v6}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 65
    iget-object v4, p0, Lcom/shopify/reactnative/skia/RNSkVideo;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 66
    iget-object v4, p0, Lcom/shopify/reactnative/skia/RNSkVideo;->mediaPlayer:Landroid/media/MediaPlayer;

    new-instance v5, Lcom/shopify/reactnative/skia/RNSkVideo$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lcom/shopify/reactnative/skia/RNSkVideo$$ExternalSyntheticLambda0;-><init>(Lcom/shopify/reactnative/skia/RNSkVideo;)V

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 71
    iget-object v4, p0, Lcom/shopify/reactnative/skia/RNSkVideo;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 74
    invoke-virtual {v3, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 75
    invoke-virtual {v3, v2}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v8, 0x3e8

    div-long/2addr v4, v8

    long-to-double v4, v4

    iput-wide v4, p0, Lcom/shopify/reactnative/skia/RNSkVideo;->durationMs:D

    .line 77
    :cond_0
    invoke-virtual {v3, v1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 78
    invoke-virtual {v3, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    int-to-double v1, v1

    iput-wide v1, p0, Lcom/shopify/reactnative/skia/RNSkVideo;->frameRate:D

    .line 80
    :cond_1
    invoke-virtual {v3, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 81
    invoke-virtual {v3, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/shopify/reactnative/skia/RNSkVideo;->rotationDegrees:I

    .line 83
    :cond_2
    const-string v0, "width"

    invoke-virtual {v3, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/shopify/reactnative/skia/RNSkVideo;->width:I

    .line 84
    const-string v0, "height"

    invoke-virtual {v3, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/shopify/reactnative/skia/RNSkVideo;->height:I

    .line 85
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_3

    .line 86
    iget v8, p0, Lcom/shopify/reactnative/skia/RNSkVideo;->width:I

    iget v9, p0, Lcom/shopify/reactnative/skia/RNSkVideo;->height:I

    const/4 v11, 0x2

    const-wide/16 v12, 0x100

    const/16 v10, 0x22

    invoke-static/range {v8 .. v13}, Landroid/media/ImageReader;->newInstance(IIIIJ)Landroid/media/ImageReader;

    move-result-object v0

    iput-object v0, p0, Lcom/shopify/reactnative/skia/RNSkVideo;->imageReader:Landroid/media/ImageReader;

    goto :goto_0

    .line 94
    :cond_3
    iget v0, p0, Lcom/shopify/reactnative/skia/RNSkVideo;->width:I

    iget v1, p0, Lcom/shopify/reactnative/skia/RNSkVideo;->height:I

    const/16 v2, 0x22

    const/4 v4, 0x2

    invoke-static {v0, v1, v2, v4}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v0

    iput-object v0, p0, Lcom/shopify/reactnative/skia/RNSkVideo;->imageReader:Landroid/media/ImageReader;

    .line 97
    :goto_0
    iget-object v0, p0, Lcom/shopify/reactnative/skia/RNSkVideo;->imageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lcom/shopify/reactnative/skia/RNSkVideo;->outputSurface:Landroid/view/Surface;

    .line 100
    const-string v0, "mime"

    invoke-virtual {v3, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 101
    invoke-static {v0}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcom/shopify/reactnative/skia/RNSkVideo;->decoder:Landroid/media/MediaCodec;

    .line 104
    iget-object v1, p0, Lcom/shopify/reactnative/skia/RNSkVideo;->outputSurface:Landroid/view/Surface;

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v1, v7, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 105
    iget-object v0, p0, Lcom/shopify/reactnative/skia/RNSkVideo;->decoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    return-void

    .line 57
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/shopify/reactnative/skia/RNSkVideo;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 107
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to initialize extractor or decoder"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private synthetic lambda$initializeReader$0(Landroid/media/MediaPlayer;)V
    .locals 2

    .line 67
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    int-to-double v0, v0

    iput-wide v0, p0, Lcom/shopify/reactnative/skia/RNSkVideo;->durationMs:D

    .line 68
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    const/4 p1, 0x1

    .line 69
    iput-boolean p1, p0, Lcom/shopify/reactnative/skia/RNSkVideo;->isPlaying:Z

    return-void
.end method

.method private selectVideoTrack(Landroid/media/MediaExtractor;)I
    .locals 4

    .line 175
    invoke-virtual {p1}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 177
    invoke-virtual {p1, v1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v2

    .line 178
    const-string v3, "mime"

    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 179
    const-string v3, "video/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method


# virtual methods
.method public getDuration()D
    .locals 2

    .line 113
    iget-wide v0, p0, Lcom/shopify/reactnative/skia/RNSkVideo;->durationMs:D

    return-wide v0
.end method

.method public getFrameRate()D
    .locals 2

    .line 118
    iget-wide v0, p0, Lcom/shopify/reactnative/skia/RNSkVideo;->frameRate:D

    return-wide v0
.end method

.method public getRotationDegrees()I
    .locals 1

    .line 123
    iget v0, p0, Lcom/shopify/reactnative/skia/RNSkVideo;->rotationDegrees:I

    return v0
.end method

.method public getSize()Landroid/graphics/Point;
    .locals 3

    .line 171
    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Lcom/shopify/reactnative/skia/RNSkVideo;->width:I

    iget v2, p0, Lcom/shopify/reactnative/skia/RNSkVideo;->height:I

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public nextImage()Landroid/hardware/HardwareBuffer;
    .locals 2

    .line 128
    invoke-direct {p0}, Lcom/shopify/reactnative/skia/RNSkVideo;->decoderOutputAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    invoke-direct {p0}, Lcom/shopify/reactnative/skia/RNSkVideo;->decodeFrame()V

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/shopify/reactnative/skia/RNSkVideo;->imageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 134
    invoke-virtual {v0}, Landroid/media/Image;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v1

    .line 135
    invoke-virtual {v0}, Landroid/media/Image;->close()V

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public pause()V
    .locals 2

    .line 238
    iget-object v0, p0, Lcom/shopify/reactnative/skia/RNSkVideo;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/shopify/reactnative/skia/RNSkVideo;->isPlaying:Z

    if-eqz v1, :cond_0

    .line 239
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    const/4 v0, 0x0

    .line 240
    iput-boolean v0, p0, Lcom/shopify/reactnative/skia/RNSkVideo;->isPlaying:Z

    :cond_0
    return-void
.end method

.method public play()V
    .locals 2

    .line 230
    iget-object v0, p0, Lcom/shopify/reactnative/skia/RNSkVideo;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/shopify/reactnative/skia/RNSkVideo;->isPlaying:Z

    if-nez v1, :cond_0

    .line 231
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    const/4 v0, 0x1

    .line 232
    iput-boolean v0, p0, Lcom/shopify/reactnative/skia/RNSkVideo;->isPlaying:Z

    :cond_0
    return-void
.end method

.method public release()V
    .locals 2

    .line 252
    iget-object v0, p0, Lcom/shopify/reactnative/skia/RNSkVideo;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 253
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 254
    iput-object v1, p0, Lcom/shopify/reactnative/skia/RNSkVideo;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/shopify/reactnative/skia/RNSkVideo;->decoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_1

    .line 257
    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 258
    iget-object v0, p0, Lcom/shopify/reactnative/skia/RNSkVideo;->decoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 259
    iput-object v1, p0, Lcom/shopify/reactnative/skia/RNSkVideo;->decoder:Landroid/media/MediaCodec;

    .line 261
    :cond_1
    iget-object v0, p0, Lcom/shopify/reactnative/skia/RNSkVideo;->extractor:Landroid/media/MediaExtractor;

    if-eqz v0, :cond_2

    .line 262
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    .line 263
    iput-object v1, p0, Lcom/shopify/reactnative/skia/RNSkVideo;->extractor:Landroid/media/MediaExtractor;

    :cond_2
    return-void
.end method

.method public seek(D)V
    .locals 4

    const-wide v0, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, p1

    double-to-long v0, v0

    .line 147
    iget-object v2, p0, Lcom/shopify/reactnative/skia/RNSkVideo;->extractor:Landroid/media/MediaExtractor;

    const/4 v3, 0x2

    invoke-virtual {v2, v0, v1, v3}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 148
    iget-object v2, p0, Lcom/shopify/reactnative/skia/RNSkVideo;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_0

    double-to-int p1, p1

    int-to-long p1, p1

    const/4 v3, 0x3

    .line 150
    invoke-virtual {v2, p1, p2, v3}, Landroid/media/MediaPlayer;->seekTo(JI)V

    .line 154
    :cond_0
    iget-object p1, p0, Lcom/shopify/reactnative/skia/RNSkVideo;->decoder:Landroid/media/MediaCodec;

    if-eqz p1, :cond_2

    .line 155
    invoke-virtual {p1}, Landroid/media/MediaCodec;->flush()V

    const/4 p1, 0x1

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 160
    invoke-direct {p0}, Lcom/shopify/reactnative/skia/RNSkVideo;->decodeFrame()V

    .line 161
    iget-object p2, p0, Lcom/shopify/reactnative/skia/RNSkVideo;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {p2}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v2

    cmp-long p2, v2, v0

    if-ltz p2, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setVolume(F)V
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/shopify/reactnative/skia/RNSkVideo;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 247
    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    :cond_0
    return-void
.end method
