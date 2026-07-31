.class public final Lcoil3/video/VideoFrameDecoder;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lcoil3/decode/Decoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil3/video/VideoFrameDecoder$Factory;
    }
.end annotation


# instance fields
.field private final options:Lcoil3/request/Options;

.field private final source:Lcoil3/decode/ImageSource;


# direct methods
.method public constructor <init>(Lcoil3/decode/ImageSource;Lcoil3/request/Options;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcoil3/video/VideoFrameDecoder;->source:Lcoil3/decode/ImageSource;

    .line 5
    .line 6
    iput-object p2, p0, Lcoil3/video/VideoFrameDecoder;->options:Lcoil3/request/Options;

    .line 7
    .line 8
    return-void
.end method

.method private final computeFrameMicros(Landroid/media/MediaMetadataRetriever;)J
    .locals 6

    .line 1
    iget-object v0, p0, Lcoil3/video/VideoFrameDecoder;->options:Lcoil3/request/Options;

    .line 2
    .line 3
    invoke-static {v0}, Lcoil3/video/ImageRequestsKt;->getVideoFrameMicros(Lcoil3/request/Options;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    cmp-long v4, v0, v2

    .line 10
    .line 11
    if-ltz v4, :cond_0

    .line 12
    .line 13
    return-wide v0

    .line 14
    :cond_0
    iget-object p0, p0, Lcoil3/video/VideoFrameDecoder;->options:Lcoil3/request/Options;

    .line 15
    .line 16
    invoke-static {p0}, Lcoil3/video/ImageRequestsKt;->getVideoFramePercent(Lcoil3/request/Options;)D

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    const-wide/16 v4, 0x0

    .line 21
    .line 22
    cmpl-double p0, v0, v4

    .line 23
    .line 24
    if-ltz p0, :cond_2

    .line 25
    .line 26
    const/16 p0, 0x9

    .line 27
    .line 28
    invoke-virtual {p1, p0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    if-eqz p0, :cond_1

    .line 33
    .line 34
    invoke-static {p0}, Lkotlin/text/StringsKt__StringsJVMKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    if-eqz p0, :cond_1

    .line 39
    .line 40
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 41
    .line 42
    .line 43
    move-result-wide v2

    .line 44
    :cond_1
    long-to-double p0, v2

    .line 45
    mul-double/2addr v0, p0

    .line 46
    invoke-static {v0, v1}, Lkotlin/math/MathKt;->roundToLong(D)J

    .line 47
    .line 48
    .line 49
    move-result-wide p0

    .line 50
    const-wide/16 v0, 0x3e8

    .line 51
    .line 52
    mul-long/2addr p0, v0

    .line 53
    return-wide p0

    .line 54
    :cond_2
    return-wide v2
.end method

.method private final isConfigValid(Landroid/graphics/Bitmap;Lcoil3/request/Options;)Z
    .locals 1

    .line 1
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v0, 0x1a

    .line 4
    .line 5
    if-lt p0, v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-static {}, Landroidx/compose/ui/graphics/colorspace/Rgb$$ExternalSyntheticLambda2;->m$1()Landroid/graphics/Bitmap$Config;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-ne p0, p1, :cond_1

    .line 16
    .line 17
    invoke-static {p2}, Lcoil3/request/ImageRequests_androidKt;->getBitmapConfig(Lcoil3/request/Options;)Landroid/graphics/Bitmap$Config;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    if-ne p0, p1, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    return p0

    .line 26
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 27
    return p0
.end method

.method private final isSizeValid(Landroid/graphics/Bitmap;Lcoil3/request/Options;Lcoil3/size/Size;)Z
    .locals 8

    .line 1
    invoke-virtual {p2}, Lcoil3/request/Options;->getPrecision()Lcoil3/size/Precision;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget-object v0, Lcoil3/size/Precision;->INEXACT:Lcoil3/size/Precision;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-ne p0, v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    invoke-virtual {p3}, Lcoil3/size/Size;->getWidth()Lcoil3/size/Dimension;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    instance-of v0, p0, Lcoil3/size/Dimension$Pixels;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    check-cast p0, Lcoil3/size/Dimension$Pixels;

    .line 28
    .line 29
    invoke-virtual {p0}, Lcoil3/size/Dimension$Pixels;->unbox-impl()I

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    :goto_0
    move v4, p0

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    goto :goto_0

    .line 40
    :goto_1
    invoke-virtual {p3}, Lcoil3/size/Size;->getHeight()Lcoil3/size/Dimension;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    instance-of p3, p0, Lcoil3/size/Dimension$Pixels;

    .line 45
    .line 46
    if-eqz p3, :cond_2

    .line 47
    .line 48
    check-cast p0, Lcoil3/size/Dimension$Pixels;

    .line 49
    .line 50
    invoke-virtual {p0}, Lcoil3/size/Dimension$Pixels;->unbox-impl()I

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    :goto_2
    move v5, p0

    .line 55
    goto :goto_3

    .line 56
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    goto :goto_2

    .line 61
    :goto_3
    invoke-virtual {p2}, Lcoil3/request/Options;->getScale()Lcoil3/size/Scale;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    invoke-static {p2}, Lcoil3/request/ImageRequestsKt;->getMaxBitmapSize(Lcoil3/request/Options;)Lcoil3/size/Size;

    .line 66
    .line 67
    .line 68
    move-result-object v7

    .line 69
    invoke-static/range {v2 .. v7}, Lcoil3/decode/DecodeUtils;->computeSizeMultiplier(IIIILcoil3/size/Scale;Lcoil3/size/Size;)D

    .line 70
    .line 71
    .line 72
    move-result-wide p0

    .line 73
    const-wide/high16 p2, 0x3ff0000000000000L    # 1.0

    .line 74
    .line 75
    cmpg-double p0, p0, p2

    .line 76
    .line 77
    if-nez p0, :cond_3

    .line 78
    .line 79
    return v1

    .line 80
    :cond_3
    const/4 p0, 0x0

    .line 81
    return p0
.end method

.method private final normalizeBitmap(Landroid/graphics/Bitmap;Lcoil3/size/Size;)Landroid/graphics/Bitmap;
    .locals 7

    .line 1
    iget-object v0, p0, Lcoil3/video/VideoFrameDecoder;->options:Lcoil3/request/Options;

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lcoil3/video/VideoFrameDecoder;->isConfigValid(Landroid/graphics/Bitmap;Lcoil3/request/Options;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcoil3/video/VideoFrameDecoder;->options:Lcoil3/request/Options;

    .line 10
    .line 11
    invoke-direct {p0, p1, v0, p2}, Lcoil3/video/VideoFrameDecoder;->isSizeValid(Landroid/graphics/Bitmap;Lcoil3/request/Options;Lcoil3/size/Size;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    return-object p1

    .line 18
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    invoke-virtual {p2}, Lcoil3/size/Size;->getWidth()Lcoil3/size/Dimension;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    instance-of v3, v0, Lcoil3/size/Dimension$Pixels;

    .line 31
    .line 32
    if-eqz v3, :cond_1

    .line 33
    .line 34
    check-cast v0, Lcoil3/size/Dimension$Pixels;

    .line 35
    .line 36
    invoke-virtual {v0}, Lcoil3/size/Dimension$Pixels;->unbox-impl()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    :goto_0
    move v3, v0

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    goto :goto_0

    .line 47
    :goto_1
    invoke-virtual {p2}, Lcoil3/size/Size;->getHeight()Lcoil3/size/Dimension;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    instance-of v0, p2, Lcoil3/size/Dimension$Pixels;

    .line 52
    .line 53
    if-eqz v0, :cond_2

    .line 54
    .line 55
    check-cast p2, Lcoil3/size/Dimension$Pixels;

    .line 56
    .line 57
    invoke-virtual {p2}, Lcoil3/size/Dimension$Pixels;->unbox-impl()I

    .line 58
    .line 59
    .line 60
    move-result p2

    .line 61
    :goto_2
    move v4, p2

    .line 62
    goto :goto_3

    .line 63
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 64
    .line 65
    .line 66
    move-result p2

    .line 67
    goto :goto_2

    .line 68
    :goto_3
    iget-object p2, p0, Lcoil3/video/VideoFrameDecoder;->options:Lcoil3/request/Options;

    .line 69
    .line 70
    invoke-virtual {p2}, Lcoil3/request/Options;->getScale()Lcoil3/size/Scale;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    iget-object p2, p0, Lcoil3/video/VideoFrameDecoder;->options:Lcoil3/request/Options;

    .line 75
    .line 76
    invoke-static {p2}, Lcoil3/request/ImageRequestsKt;->getMaxBitmapSize(Lcoil3/request/Options;)Lcoil3/size/Size;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    invoke-static/range {v1 .. v6}, Lcoil3/decode/DecodeUtils;->computeSizeMultiplier(IIIILcoil3/size/Scale;Lcoil3/size/Size;)D

    .line 81
    .line 82
    .line 83
    move-result-wide v0

    .line 84
    double-to-float p2, v0

    .line 85
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    int-to-float v0, v0

    .line 90
    mul-float/2addr v0, p2

    .line 91
    invoke-static {v0}, Lkotlin/math/MathKt;->roundToInt(F)I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    int-to-float v1, v1

    .line 100
    mul-float/2addr v1, p2

    .line 101
    invoke-static {v1}, Lkotlin/math/MathKt;->roundToInt(F)I

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 106
    .line 107
    const/16 v3, 0x1a

    .line 108
    .line 109
    if-lt v2, v3, :cond_3

    .line 110
    .line 111
    iget-object v2, p0, Lcoil3/video/VideoFrameDecoder;->options:Lcoil3/request/Options;

    .line 112
    .line 113
    invoke-static {v2}, Lcoil3/request/ImageRequests_androidKt;->getBitmapConfig(Lcoil3/request/Options;)Landroid/graphics/Bitmap$Config;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    invoke-static {}, Landroidx/compose/ui/graphics/colorspace/Rgb$$ExternalSyntheticLambda2;->m$1()Landroid/graphics/Bitmap$Config;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    if-ne v2, v3, :cond_3

    .line 122
    .line 123
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 124
    .line 125
    goto :goto_4

    .line 126
    :cond_3
    iget-object p0, p0, Lcoil3/video/VideoFrameDecoder;->options:Lcoil3/request/Options;

    .line 127
    .line 128
    invoke-static {p0}, Lcoil3/request/ImageRequests_androidKt;->getBitmapConfig(Lcoil3/request/Options;)Landroid/graphics/Bitmap$Config;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    :goto_4
    new-instance v2, Landroid/graphics/Paint;

    .line 133
    .line 134
    const/4 v3, 0x3

    .line 135
    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    .line 136
    .line 137
    .line 138
    invoke-static {v0, v1, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    new-instance v0, Landroid/graphics/Canvas;

    .line 143
    .line 144
    invoke-direct {v0, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0, p2, p2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 148
    .line 149
    .line 150
    const/4 p2, 0x0

    .line 151
    invoke-virtual {v0, p1, p2, p2, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 155
    .line 156
    .line 157
    return-object p0
.end method

.method private final setDataSource(Landroid/media/MediaMetadataRetriever;Lcoil3/decode/ImageSource;)V
    .locals 6

    .line 1
    invoke-interface {p2}, Lcoil3/decode/ImageSource;->getMetadata()Lcoil3/decode/ImageSource$Metadata;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Lcoil3/video/MediaDataSourceFetcher$MediaSourceMetadata;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Lcoil3/video/MediaDataSourceFetcher$MediaSourceMetadata;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcoil3/video/MediaDataSourceFetcher$MediaSourceMetadata;->getMediaDataSource()Landroid/media/MediaDataSource;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p1, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/media/MediaDataSource;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    instance-of v1, v0, Lcoil3/decode/AssetMetadata;

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    iget-object p0, p0, Lcoil3/video/VideoFrameDecoder;->options:Lcoil3/request/Options;

    .line 24
    .line 25
    invoke-virtual {p0}, Lcoil3/request/Options;->getContext()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    check-cast v0, Lcoil3/decode/AssetMetadata;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcoil3/decode/AssetMetadata;->getFilePath()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-virtual {p0, p2}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    :try_start_0
    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    .line 48
    .line 49
    .line 50
    move-result-wide v2

    .line 51
    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    .line 52
    .line 53
    .line 54
    move-result-wide v4

    .line 55
    move-object v0, p1

    .line 56
    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    .line 58
    .line 59
    const/4 p1, 0x0

    .line 60
    invoke-static {p0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :catchall_0
    move-exception v0

    .line 65
    move-object p1, v0

    .line 66
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 67
    :catchall_1
    move-exception v0

    .line 68
    move-object p2, v0

    .line 69
    invoke-static {p0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 70
    .line 71
    .line 72
    throw p2

    .line 73
    :cond_1
    instance-of v1, v0, Lcoil3/decode/ContentMetadata;

    .line 74
    .line 75
    if-eqz v1, :cond_2

    .line 76
    .line 77
    iget-object p0, p0, Lcoil3/video/VideoFrameDecoder;->options:Lcoil3/request/Options;

    .line 78
    .line 79
    invoke-virtual {p0}, Lcoil3/request/Options;->getContext()Landroid/content/Context;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    check-cast v0, Lcoil3/decode/ContentMetadata;

    .line 84
    .line 85
    invoke-virtual {v0}, Lcoil3/decode/ContentMetadata;->getUri()Lcoil3/Uri;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    invoke-static {p2}, Lcoil3/Uri_androidKt;->toAndroidUri(Lcoil3/Uri;)Landroid/net/Uri;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    invoke-virtual {p1, p0, p2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :cond_2
    instance-of p0, v0, Lcoil3/decode/ResourceMetadata;

    .line 98
    .line 99
    if-eqz p0, :cond_3

    .line 100
    .line 101
    check-cast v0, Lcoil3/decode/ResourceMetadata;

    .line 102
    .line 103
    invoke-virtual {v0}, Lcoil3/decode/ResourceMetadata;->getPackageName()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    invoke-virtual {v0}, Lcoil3/decode/ResourceMetadata;->getResId()I

    .line 108
    .line 109
    .line 110
    move-result p2

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    const-string v1, "android.resource://"

    .line 114
    .line 115
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    const-string p0, "/"

    .line 122
    .line 123
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    invoke-virtual {p1, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    return-void

    .line 137
    :cond_3
    invoke-interface {p2}, Lcoil3/decode/ImageSource;->getFileSystem()Lokio/FileSystem;

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    sget-object v0, Lokio/FileSystem;->SYSTEM:Lokio/FileSystem;

    .line 142
    .line 143
    if-ne p0, v0, :cond_4

    .line 144
    .line 145
    invoke-interface {p2}, Lcoil3/decode/ImageSource;->file()Lokio/Path;

    .line 146
    .line 147
    .line 148
    move-result-object p0

    .line 149
    invoke-virtual {p0}, Lokio/Path;->toFile()Ljava/io/File;

    .line 150
    .line 151
    .line 152
    move-result-object p0

    .line 153
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    invoke-virtual {p1, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    return-void

    .line 161
    :cond_4
    invoke-interface {p2}, Lcoil3/decode/ImageSource;->getFileSystem()Lokio/FileSystem;

    .line 162
    .line 163
    .line 164
    move-result-object p0

    .line 165
    invoke-interface {p2}, Lcoil3/decode/ImageSource;->file()Lokio/Path;

    .line 166
    .line 167
    .line 168
    move-result-object p2

    .line 169
    invoke-virtual {p0, p2}, Lokio/FileSystem;->openReadOnly(Lokio/Path;)Lokio/FileHandle;

    .line 170
    .line 171
    .line 172
    move-result-object p0

    .line 173
    new-instance p2, Lcoil3/video/internal/FileHandleMediaDataSource;

    .line 174
    .line 175
    invoke-direct {p2, p0}, Lcoil3/video/internal/FileHandleMediaDataSource;-><init>(Lokio/FileHandle;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p1, p2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/media/MediaDataSource;)V

    .line 179
    .line 180
    .line 181
    return-void
.end method


# virtual methods
.method public decode(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "Failed to decode frame at "

    .line 4
    .line 5
    new-instance v2, Landroid/media/MediaMetadataRetriever;

    .line 6
    .line 7
    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 8
    .line 9
    .line 10
    const/16 v9, 0x1d

    .line 11
    .line 12
    :try_start_0
    iget-object v3, v0, Lcoil3/video/VideoFrameDecoder;->source:Lcoil3/decode/ImageSource;

    .line 13
    .line 14
    invoke-direct {v0, v2, v3}, Lcoil3/video/VideoFrameDecoder;->setDataSource(Landroid/media/MediaMetadataRetriever;Lcoil3/decode/ImageSource;)V

    .line 15
    .line 16
    .line 17
    const/16 v3, 0x18

    .line 18
    .line 19
    invoke-virtual {v2, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    const/4 v10, 0x0

    .line 24
    if-eqz v3, :cond_0

    .line 25
    .line 26
    invoke-static {v3}, Lkotlin/text/StringsKt__StringsJVMKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    if-eqz v3, :cond_0

    .line 31
    .line 32
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception v0

    .line 38
    goto/16 :goto_a

    .line 39
    .line 40
    :cond_0
    move v3, v10

    .line 41
    :goto_0
    const/16 v4, 0x5a

    .line 42
    .line 43
    const/16 v5, 0x13

    .line 44
    .line 45
    const/16 v6, 0x12

    .line 46
    .line 47
    if-eq v3, v4, :cond_3

    .line 48
    .line 49
    const/16 v4, 0x10e

    .line 50
    .line 51
    if-eq v3, v4, :cond_3

    .line 52
    .line 53
    invoke-virtual {v2, v6}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    if-eqz v3, :cond_1

    .line 58
    .line 59
    invoke-static {v3}, Lkotlin/text/StringsKt__StringsJVMKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    if-eqz v3, :cond_1

    .line 64
    .line 65
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    goto :goto_1

    .line 70
    :cond_1
    move v3, v10

    .line 71
    :goto_1
    invoke-virtual {v2, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    if-eqz v4, :cond_2

    .line 76
    .line 77
    invoke-static {v4}, Lkotlin/text/StringsKt__StringsJVMKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    if-eqz v4, :cond_2

    .line 82
    .line 83
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    goto :goto_2

    .line 88
    :cond_2
    move v4, v10

    .line 89
    :goto_2
    move v11, v3

    .line 90
    move v12, v4

    .line 91
    goto :goto_4

    .line 92
    :cond_3
    invoke-virtual {v2, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    if-eqz v3, :cond_4

    .line 97
    .line 98
    invoke-static {v3}, Lkotlin/text/StringsKt__StringsJVMKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    if-eqz v3, :cond_4

    .line 103
    .line 104
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 105
    .line 106
    .line 107
    move-result v3

    .line 108
    goto :goto_3

    .line 109
    :cond_4
    move v3, v10

    .line 110
    :goto_3
    invoke-virtual {v2, v6}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    if-eqz v4, :cond_2

    .line 115
    .line 116
    invoke-static {v4}, Lkotlin/text/StringsKt__StringsJVMKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    if-eqz v4, :cond_2

    .line 121
    .line 122
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 123
    .line 124
    .line 125
    move-result v4

    .line 126
    goto :goto_2

    .line 127
    :goto_4
    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    .line 128
    .line 129
    if-lez v11, :cond_6

    .line 130
    .line 131
    if-lez v12, :cond_6

    .line 132
    .line 133
    iget-object v3, v0, Lcoil3/video/VideoFrameDecoder;->options:Lcoil3/request/Options;

    .line 134
    .line 135
    invoke-virtual {v3}, Lcoil3/request/Options;->getSize()Lcoil3/size/Size;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    iget-object v4, v0, Lcoil3/video/VideoFrameDecoder;->options:Lcoil3/request/Options;

    .line 140
    .line 141
    invoke-virtual {v4}, Lcoil3/request/Options;->getScale()Lcoil3/size/Scale;

    .line 142
    .line 143
    .line 144
    move-result-object v4

    .line 145
    iget-object v5, v0, Lcoil3/video/VideoFrameDecoder;->options:Lcoil3/request/Options;

    .line 146
    .line 147
    invoke-static {v5}, Lcoil3/request/ImageRequestsKt;->getMaxBitmapSize(Lcoil3/request/Options;)Lcoil3/size/Size;

    .line 148
    .line 149
    .line 150
    move-result-object v5

    .line 151
    invoke-static {v11, v12, v3, v4, v5}, Lcoil3/decode/DecodeUtils;->computeDstSize-sEdh43o(IILcoil3/size/Size;Lcoil3/size/Scale;Lcoil3/size/Size;)J

    .line 152
    .line 153
    .line 154
    move-result-wide v3

    .line 155
    invoke-static {v3, v4}, Lcoil3/util/IntPair;->getFirst-impl(J)I

    .line 156
    .line 157
    .line 158
    move-result v13

    .line 159
    invoke-static {v3, v4}, Lcoil3/util/IntPair;->getSecond-impl(J)I

    .line 160
    .line 161
    .line 162
    move-result v14

    .line 163
    iget-object v3, v0, Lcoil3/video/VideoFrameDecoder;->options:Lcoil3/request/Options;

    .line 164
    .line 165
    invoke-virtual {v3}, Lcoil3/request/Options;->getScale()Lcoil3/size/Scale;

    .line 166
    .line 167
    .line 168
    move-result-object v15

    .line 169
    iget-object v3, v0, Lcoil3/video/VideoFrameDecoder;->options:Lcoil3/request/Options;

    .line 170
    .line 171
    invoke-static {v3}, Lcoil3/request/ImageRequestsKt;->getMaxBitmapSize(Lcoil3/request/Options;)Lcoil3/size/Size;

    .line 172
    .line 173
    .line 174
    move-result-object v16

    .line 175
    invoke-static/range {v11 .. v16}, Lcoil3/decode/DecodeUtils;->computeSizeMultiplier(IIIILcoil3/size/Scale;Lcoil3/size/Size;)D

    .line 176
    .line 177
    .line 178
    move-result-wide v3

    .line 179
    iget-object v5, v0, Lcoil3/video/VideoFrameDecoder;->options:Lcoil3/request/Options;

    .line 180
    .line 181
    invoke-virtual {v5}, Lcoil3/request/Options;->getPrecision()Lcoil3/size/Precision;

    .line 182
    .line 183
    .line 184
    move-result-object v5

    .line 185
    sget-object v6, Lcoil3/size/Precision;->INEXACT:Lcoil3/size/Precision;

    .line 186
    .line 187
    if-ne v5, v6, :cond_5

    .line 188
    .line 189
    cmpl-double v5, v3, v17

    .line 190
    .line 191
    if-lez v5, :cond_5

    .line 192
    .line 193
    move-wide/from16 v3, v17

    .line 194
    .line 195
    :cond_5
    int-to-double v5, v11

    .line 196
    mul-double/2addr v5, v3

    .line 197
    invoke-static {v5, v6}, Lkotlin/math/MathKt;->roundToInt(D)I

    .line 198
    .line 199
    .line 200
    move-result v5

    .line 201
    int-to-double v6, v12

    .line 202
    mul-double/2addr v3, v6

    .line 203
    invoke-static {v3, v4}, Lkotlin/math/MathKt;->roundToInt(D)I

    .line 204
    .line 205
    .line 206
    move-result v3

    .line 207
    invoke-static {v5, v3}, Lcoil3/size/SizeKt;->Size(II)Lcoil3/size/Size;

    .line 208
    .line 209
    .line 210
    move-result-object v3

    .line 211
    :goto_5
    move-object v13, v3

    .line 212
    goto :goto_6

    .line 213
    :cond_6
    sget-object v3, Lcoil3/size/Size;->ORIGINAL:Lcoil3/size/Size;

    .line 214
    .line 215
    goto :goto_5

    .line 216
    :goto_6
    invoke-direct {v0, v2}, Lcoil3/video/VideoFrameDecoder;->computeFrameMicros(Landroid/media/MediaMetadataRetriever;)J

    .line 217
    .line 218
    .line 219
    move-result-wide v3

    .line 220
    invoke-virtual {v13}, Lcoil3/size/Size;->component1()Lcoil3/size/Dimension;

    .line 221
    .line 222
    .line 223
    move-result-object v5

    .line 224
    invoke-virtual {v13}, Lcoil3/size/Size;->component2()Lcoil3/size/Dimension;

    .line 225
    .line 226
    .line 227
    move-result-object v6

    .line 228
    iget-object v7, v0, Lcoil3/video/VideoFrameDecoder;->options:Lcoil3/request/Options;

    .line 229
    .line 230
    invoke-static {v7}, Lcoil3/video/ImageRequestsKt;->getPreferVideoFrameEmbeddedThumbnail(Lcoil3/request/Options;)Z

    .line 231
    .line 232
    .line 233
    move-result v7

    .line 234
    const/4 v8, 0x0

    .line 235
    if-eqz v7, :cond_7

    .line 236
    .line 237
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->getEmbeddedPicture()[B

    .line 238
    .line 239
    .line 240
    move-result-object v7

    .line 241
    if-eqz v7, :cond_7

    .line 242
    .line 243
    array-length v14, v7

    .line 244
    invoke-static {v7, v10, v14}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    .line 245
    .line 246
    .line 247
    move-result-object v7

    .line 248
    if-eqz v7, :cond_7

    .line 249
    .line 250
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    .line 251
    .line 252
    .line 253
    move-result v11

    .line 254
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    .line 255
    .line 256
    .line 257
    move-result v12

    .line 258
    goto :goto_7

    .line 259
    :cond_7
    move-object v7, v8

    .line 260
    :goto_7
    if-nez v7, :cond_b

    .line 261
    .line 262
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 263
    .line 264
    const/16 v14, 0x1c

    .line 265
    .line 266
    if-lt v7, v14, :cond_8

    .line 267
    .line 268
    iget-object v14, v0, Lcoil3/video/VideoFrameDecoder;->options:Lcoil3/request/Options;

    .line 269
    .line 270
    invoke-static {v14}, Lcoil3/video/ImageRequestsKt;->getVideoFrameIndex(Lcoil3/request/Options;)I

    .line 271
    .line 272
    .line 273
    move-result v14

    .line 274
    if-ltz v14, :cond_8

    .line 275
    .line 276
    iget-object v5, v0, Lcoil3/video/VideoFrameDecoder;->options:Lcoil3/request/Options;

    .line 277
    .line 278
    invoke-static {v5}, Lcoil3/video/ImageRequestsKt;->getVideoFrameIndex(Lcoil3/request/Options;)I

    .line 279
    .line 280
    .line 281
    move-result v5

    .line 282
    iget-object v6, v0, Lcoil3/video/VideoFrameDecoder;->options:Lcoil3/request/Options;

    .line 283
    .line 284
    invoke-static {v6}, Lcoil3/request/ImageRequests_androidKt;->getBitmapConfig(Lcoil3/request/Options;)Landroid/graphics/Bitmap$Config;

    .line 285
    .line 286
    .line 287
    move-result-object v6

    .line 288
    invoke-static {v2, v5, v6}, Lcoil3/video/internal/UtilsKt;->getFrameAtIndex(Landroid/media/MediaMetadataRetriever;ILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 289
    .line 290
    .line 291
    move-result-object v5

    .line 292
    if-eqz v5, :cond_a

    .line 293
    .line 294
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    .line 295
    .line 296
    .line 297
    move-result v11

    .line 298
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    .line 299
    .line 300
    .line 301
    move-result v12

    .line 302
    :goto_8
    move-object v8, v5

    .line 303
    goto :goto_9

    .line 304
    :cond_8
    const/16 v14, 0x1b

    .line 305
    .line 306
    if-lt v7, v14, :cond_9

    .line 307
    .line 308
    instance-of v7, v5, Lcoil3/size/Dimension$Pixels;

    .line 309
    .line 310
    if-eqz v7, :cond_9

    .line 311
    .line 312
    instance-of v7, v6, Lcoil3/size/Dimension$Pixels;

    .line 313
    .line 314
    if-eqz v7, :cond_9

    .line 315
    .line 316
    iget-object v7, v0, Lcoil3/video/VideoFrameDecoder;->options:Lcoil3/request/Options;

    .line 317
    .line 318
    invoke-static {v7}, Lcoil3/video/ImageRequestsKt;->getVideoFrameOption(Lcoil3/request/Options;)I

    .line 319
    .line 320
    .line 321
    move-result v7

    .line 322
    check-cast v5, Lcoil3/size/Dimension$Pixels;

    .line 323
    .line 324
    invoke-virtual {v5}, Lcoil3/size/Dimension$Pixels;->unbox-impl()I

    .line 325
    .line 326
    .line 327
    move-result v5

    .line 328
    check-cast v6, Lcoil3/size/Dimension$Pixels;

    .line 329
    .line 330
    invoke-virtual {v6}, Lcoil3/size/Dimension$Pixels;->unbox-impl()I

    .line 331
    .line 332
    .line 333
    move-result v6

    .line 334
    iget-object v8, v0, Lcoil3/video/VideoFrameDecoder;->options:Lcoil3/request/Options;

    .line 335
    .line 336
    invoke-static {v8}, Lcoil3/request/ImageRequests_androidKt;->getBitmapConfig(Lcoil3/request/Options;)Landroid/graphics/Bitmap$Config;

    .line 337
    .line 338
    .line 339
    move-result-object v8

    .line 340
    move/from16 v25, v6

    .line 341
    .line 342
    move v6, v5

    .line 343
    move v5, v7

    .line 344
    move/from16 v7, v25

    .line 345
    .line 346
    invoke-static/range {v2 .. v8}, Lcoil3/video/internal/UtilsKt;->getScaledFrameAtTime(Landroid/media/MediaMetadataRetriever;JIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 347
    .line 348
    .line 349
    move-result-object v8

    .line 350
    goto :goto_9

    .line 351
    :cond_9
    iget-object v5, v0, Lcoil3/video/VideoFrameDecoder;->options:Lcoil3/request/Options;

    .line 352
    .line 353
    invoke-static {v5}, Lcoil3/video/ImageRequestsKt;->getVideoFrameOption(Lcoil3/request/Options;)I

    .line 354
    .line 355
    .line 356
    move-result v5

    .line 357
    iget-object v6, v0, Lcoil3/video/VideoFrameDecoder;->options:Lcoil3/request/Options;

    .line 358
    .line 359
    invoke-static {v6}, Lcoil3/request/ImageRequests_androidKt;->getBitmapConfig(Lcoil3/request/Options;)Landroid/graphics/Bitmap$Config;

    .line 360
    .line 361
    .line 362
    move-result-object v6

    .line 363
    invoke-static {v2, v3, v4, v5, v6}, Lcoil3/video/internal/UtilsKt;->getFrameAtTime(Landroid/media/MediaMetadataRetriever;JILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 364
    .line 365
    .line 366
    move-result-object v5

    .line 367
    if-eqz v5, :cond_a

    .line 368
    .line 369
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    .line 370
    .line 371
    .line 372
    move-result v11

    .line 373
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    .line 374
    .line 375
    .line 376
    move-result v12

    .line 377
    goto :goto_8

    .line 378
    :cond_a
    :goto_9
    move-object v7, v8

    .line 379
    :cond_b
    move/from16 v19, v11

    .line 380
    .line 381
    move/from16 v20, v12

    .line 382
    .line 383
    if-eqz v7, :cond_11

    .line 384
    .line 385
    invoke-direct {v0, v7, v13}, Lcoil3/video/VideoFrameDecoder;->normalizeBitmap(Landroid/graphics/Bitmap;Lcoil3/size/Size;)Landroid/graphics/Bitmap;

    .line 386
    .line 387
    .line 388
    move-result-object v1

    .line 389
    const/4 v3, 0x1

    .line 390
    if-lez v19, :cond_c

    .line 391
    .line 392
    if-lez v20, :cond_c

    .line 393
    .line 394
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 395
    .line 396
    .line 397
    move-result v21

    .line 398
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 399
    .line 400
    .line 401
    move-result v22

    .line 402
    iget-object v4, v0, Lcoil3/video/VideoFrameDecoder;->options:Lcoil3/request/Options;

    .line 403
    .line 404
    invoke-virtual {v4}, Lcoil3/request/Options;->getScale()Lcoil3/size/Scale;

    .line 405
    .line 406
    .line 407
    move-result-object v23

    .line 408
    iget-object v4, v0, Lcoil3/video/VideoFrameDecoder;->options:Lcoil3/request/Options;

    .line 409
    .line 410
    invoke-static {v4}, Lcoil3/request/ImageRequestsKt;->getMaxBitmapSize(Lcoil3/request/Options;)Lcoil3/size/Size;

    .line 411
    .line 412
    .line 413
    move-result-object v24

    .line 414
    invoke-static/range {v19 .. v24}, Lcoil3/decode/DecodeUtils;->computeSizeMultiplier(IIIILcoil3/size/Scale;Lcoil3/size/Size;)D

    .line 415
    .line 416
    .line 417
    move-result-wide v4

    .line 418
    cmpg-double v4, v4, v17

    .line 419
    .line 420
    if-gez v4, :cond_d

    .line 421
    .line 422
    :cond_c
    move v10, v3

    .line 423
    :cond_d
    new-instance v3, Lcoil3/decode/DecodeResult;

    .line 424
    .line 425
    iget-object v0, v0, Lcoil3/video/VideoFrameDecoder;->options:Lcoil3/request/Options;

    .line 426
    .line 427
    invoke-virtual {v0}, Lcoil3/request/Options;->getContext()Landroid/content/Context;

    .line 428
    .line 429
    .line 430
    move-result-object v0

    .line 431
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 432
    .line 433
    .line 434
    move-result-object v0

    .line 435
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    .line 436
    .line 437
    invoke-direct {v4, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 438
    .line 439
    .line 440
    invoke-static {v4}, Lcoil3/Image_androidKt;->asImage(Landroid/graphics/drawable/Drawable;)Lcoil3/Image;

    .line 441
    .line 442
    .line 443
    move-result-object v0

    .line 444
    invoke-direct {v3, v0, v10}, Lcoil3/decode/DecodeResult;-><init>(Lcoil3/Image;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 445
    .line 446
    .line 447
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 448
    .line 449
    if-lt v0, v9, :cond_10

    .line 450
    .line 451
    instance-of v0, v2, Ljava/lang/AutoCloseable;

    .line 452
    .line 453
    if-eqz v0, :cond_e

    .line 454
    .line 455
    check-cast v2, Ljava/lang/AutoCloseable;

    .line 456
    .line 457
    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    .line 458
    .line 459
    .line 460
    return-object v3

    .line 461
    :cond_e
    instance-of v0, v2, Ljava/util/concurrent/ExecutorService;

    .line 462
    .line 463
    if-eqz v0, :cond_f

    .line 464
    .line 465
    check-cast v2, Ljava/util/concurrent/ExecutorService;

    .line 466
    .line 467
    invoke-static {v2}, Landroidx/activity/OnBackPressedCallback$$ExternalSyntheticAutoCloseableForwarder0;->m(Ljava/util/concurrent/ExecutorService;)V

    .line 468
    .line 469
    .line 470
    return-object v3

    .line 471
    :cond_f
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 472
    .line 473
    .line 474
    return-object v3

    .line 475
    :cond_10
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 476
    .line 477
    .line 478
    return-object v3

    .line 479
    :cond_11
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 480
    .line 481
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 482
    .line 483
    .line 484
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 485
    .line 486
    .line 487
    const-string v1, " microseconds."

    .line 488
    .line 489
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    .line 491
    .line 492
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 493
    .line 494
    .line 495
    move-result-object v0

    .line 496
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 497
    .line 498
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 499
    .line 500
    .line 501
    move-result-object v0

    .line 502
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 503
    .line 504
    .line 505
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 506
    :goto_a
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 507
    .line 508
    if-lt v1, v9, :cond_14

    .line 509
    .line 510
    instance-of v1, v2, Ljava/lang/AutoCloseable;

    .line 511
    .line 512
    if-nez v1, :cond_13

    .line 513
    .line 514
    instance-of v1, v2, Ljava/util/concurrent/ExecutorService;

    .line 515
    .line 516
    if-nez v1, :cond_12

    .line 517
    .line 518
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 519
    .line 520
    .line 521
    goto :goto_b

    .line 522
    :cond_12
    check-cast v2, Ljava/util/concurrent/ExecutorService;

    .line 523
    .line 524
    invoke-static {v2}, Landroidx/activity/OnBackPressedCallback$$ExternalSyntheticAutoCloseableForwarder0;->m(Ljava/util/concurrent/ExecutorService;)V

    .line 525
    .line 526
    .line 527
    goto :goto_b

    .line 528
    :cond_13
    check-cast v2, Ljava/lang/AutoCloseable;

    .line 529
    .line 530
    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    .line 531
    .line 532
    .line 533
    goto :goto_b

    .line 534
    :cond_14
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 535
    .line 536
    .line 537
    :goto_b
    throw v0
.end method
