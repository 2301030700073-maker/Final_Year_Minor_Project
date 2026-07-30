.class public final Lio/sentry/android/replay/video/SimpleVideoEncoder;
.super Ljava/lang/Object;
.source "SimpleVideoEncoder.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0001\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0010\u0008\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\tJ\u0010\u0010)\u001a\u00020\u00082\u0006\u0010*\u001a\u00020\u0013H\u0002J\u000e\u0010+\u001a\u00020\u00082\u0006\u0010,\u001a\u00020-J\u0006\u0010.\u001a\u00020\u0008J\u0006\u0010/\u001a\u00020\u0008R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u000c\u001a\u00020\r8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000fR\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0012\u001a\u00020\u00138BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0014\u0010\u0015R\u0014\u0010\u0018\u001a\u00020\u0019X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001bR\u001b\u0010\u001c\u001a\u00020\u001d8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008 \u0010\u0017\u001a\u0004\u0008\u001e\u0010\u001fR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\"R\u0019\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010$R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008%\u0010&R\u0010\u0010\'\u001a\u0004\u0018\u00010(X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00060"
    }
    d2 = {
        "Lio/sentry/android/replay/video/SimpleVideoEncoder;",
        "",
        "options",
        "Lio/sentry/SentryOptions;",
        "muxerConfig",
        "Lio/sentry/android/replay/video/MuxerConfig;",
        "onClose",
        "Lkotlin/Function0;",
        "",
        "(Lio/sentry/SentryOptions;Lio/sentry/android/replay/video/MuxerConfig;Lkotlin/jvm/functions/Function0;)V",
        "bufferInfo",
        "Landroid/media/MediaCodec$BufferInfo;",
        "duration",
        "",
        "getDuration",
        "()J",
        "frameMuxer",
        "Lio/sentry/android/replay/video/SimpleMp4FrameMuxer;",
        "hasExynosCodec",
        "",
        "getHasExynosCodec",
        "()Z",
        "hasExynosCodec$delegate",
        "Lkotlin/Lazy;",
        "mediaCodec",
        "Landroid/media/MediaCodec;",
        "getMediaCodec$sentry_android_replay_release",
        "()Landroid/media/MediaCodec;",
        "mediaFormat",
        "Landroid/media/MediaFormat;",
        "getMediaFormat",
        "()Landroid/media/MediaFormat;",
        "mediaFormat$delegate",
        "getMuxerConfig",
        "()Lio/sentry/android/replay/video/MuxerConfig;",
        "getOnClose",
        "()Lkotlin/jvm/functions/Function0;",
        "getOptions",
        "()Lio/sentry/SentryOptions;",
        "surface",
        "Landroid/view/Surface;",
        "drainCodec",
        "endOfStream",
        "encode",
        "image",
        "Landroid/graphics/Bitmap;",
        "release",
        "start",
        "sentry-android-replay_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final bufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field private final frameMuxer:Lio/sentry/android/replay/video/SimpleMp4FrameMuxer;

.field private final hasExynosCodec$delegate:Lkotlin/Lazy;

.field private final mediaCodec:Landroid/media/MediaCodec;

.field private final mediaFormat$delegate:Lkotlin/Lazy;

.field private final muxerConfig:Lio/sentry/android/replay/video/MuxerConfig;

.field private final onClose:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final options:Lio/sentry/SentryOptions;

.field private surface:Landroid/view/Surface;


# direct methods
.method public constructor <init>(Lio/sentry/SentryOptions;Lio/sentry/android/replay/video/MuxerConfig;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/SentryOptions;",
            "Lio/sentry/android/replay/video/MuxerConfig;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "muxerConfig"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lio/sentry/android/replay/video/SimpleVideoEncoder;->options:Lio/sentry/SentryOptions;

    .line 51
    iput-object p2, p0, Lio/sentry/android/replay/video/SimpleVideoEncoder;->muxerConfig:Lio/sentry/android/replay/video/MuxerConfig;

    .line 52
    iput-object p3, p0, Lio/sentry/android/replay/video/SimpleVideoEncoder;->onClose:Lkotlin/jvm/functions/Function0;

    .line 55
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    sget-object p3, Lio/sentry/android/replay/video/SimpleVideoEncoder$hasExynosCodec$2;->INSTANCE:Lio/sentry/android/replay/video/SimpleVideoEncoder$hasExynosCodec$2;

    check-cast p3, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/android/replay/video/SimpleVideoEncoder;->hasExynosCodec$delegate:Lkotlin/Lazy;

    .line 63
    move-object p1, p0

    check-cast p1, Lio/sentry/android/replay/video/SimpleVideoEncoder;

    .line 66
    invoke-direct {p0}, Lio/sentry/android/replay/video/SimpleVideoEncoder;->getHasExynosCodec()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 67
    const-string p1, "c2.android.avc.encoder"

    invoke-static {p1}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p1

    goto :goto_0

    .line 69
    :cond_0
    iget-object p1, p0, Lio/sentry/android/replay/video/SimpleVideoEncoder;->muxerConfig:Lio/sentry/android/replay/video/MuxerConfig;

    invoke-virtual {p1}, Lio/sentry/android/replay/video/MuxerConfig;->getMimeType()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p1

    .line 66
    :goto_0
    const-string p3, "if (hasExynosCodec) {\n  \u2026onfig.mimeType)\n        }"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iput-object p1, p0, Lio/sentry/android/replay/video/SimpleVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    .line 75
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance p3, Lio/sentry/android/replay/video/SimpleVideoEncoder$mediaFormat$2;

    invoke-direct {p3, p0}, Lio/sentry/android/replay/video/SimpleVideoEncoder$mediaFormat$2;-><init>(Lio/sentry/android/replay/video/SimpleVideoEncoder;)V

    check-cast p3, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/android/replay/video/SimpleVideoEncoder;->mediaFormat$delegate:Lkotlin/Lazy;

    .line 144
    new-instance p1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object p1, p0, Lio/sentry/android/replay/video/SimpleVideoEncoder;->bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 145
    new-instance p1, Lio/sentry/android/replay/video/SimpleMp4FrameMuxer;

    invoke-virtual {p2}, Lio/sentry/android/replay/video/MuxerConfig;->getFile()Ljava/io/File;

    move-result-object p3

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    const-string v0, "muxerConfig.file.absolutePath"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lio/sentry/android/replay/video/MuxerConfig;->getFrameRate()I

    move-result p2

    int-to-float p2, p2

    invoke-direct {p1, p3, p2}, Lio/sentry/android/replay/video/SimpleMp4FrameMuxer;-><init>(Ljava/lang/String;F)V

    iput-object p1, p0, Lio/sentry/android/replay/video/SimpleVideoEncoder;->frameMuxer:Lio/sentry/android/replay/video/SimpleMp4FrameMuxer;

    return-void
.end method

.method public synthetic constructor <init>(Lio/sentry/SentryOptions;Lio/sentry/android/replay/video/MuxerConfig;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 49
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lio/sentry/android/replay/video/SimpleVideoEncoder;-><init>(Lio/sentry/SentryOptions;Lio/sentry/android/replay/video/MuxerConfig;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private final drainCodec(Z)V
    .locals 8

    .line 184
    iget-object v0, p0, Lio/sentry/android/replay/video/SimpleVideoEncoder;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[Encoder]: drainCodec("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 186
    iget-object v0, p0, Lio/sentry/android/replay/video/SimpleVideoEncoder;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v2, "[Encoder]: sending EOS to encoder"

    new-array v4, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 187
    iget-object v0, p0, Lio/sentry/android/replay/video/SimpleVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    .line 189
    :cond_0
    iget-object v0, p0, Lio/sentry/android/replay/video/SimpleVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 191
    :cond_1
    :goto_0
    iget-object v1, p0, Lio/sentry/android/replay/video/SimpleVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    iget-object v2, p0, Lio/sentry/android/replay/video/SimpleVideoEncoder;->bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const-wide/32 v4, 0x186a0

    invoke-virtual {v1, v2, v4, v5}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    if-nez p1, :cond_2

    goto/16 :goto_2

    .line 197
    :cond_2
    iget-object v1, p0, Lio/sentry/android/replay/video/SimpleVideoEncoder;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v4, "[Encoder]: no output available, spinning to await EOS"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v4, v5}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    const/4 v2, -0x3

    if-ne v1, v2, :cond_4

    .line 201
    iget-object v0, p0, Lio/sentry/android/replay/video/SimpleVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0

    :cond_4
    const/4 v2, -0x2

    if-ne v1, v2, :cond_6

    .line 204
    iget-object v1, p0, Lio/sentry/android/replay/video/SimpleVideoEncoder;->frameMuxer:Lio/sentry/android/replay/video/SimpleMp4FrameMuxer;

    invoke-virtual {v1}, Lio/sentry/android/replay/video/SimpleMp4FrameMuxer;->isStarted()Z

    move-result v1

    if-nez v1, :cond_5

    .line 207
    iget-object v1, p0, Lio/sentry/android/replay/video/SimpleVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v1

    const-string v2, "mediaCodec.outputFormat"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    iget-object v2, p0, Lio/sentry/android/replay/video/SimpleVideoEncoder;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v4, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[Encoder]: encoder output format changed: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    invoke-interface {v2, v4, v5, v6}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 211
    iget-object v2, p0, Lio/sentry/android/replay/video/SimpleVideoEncoder;->frameMuxer:Lio/sentry/android/replay/video/SimpleMp4FrameMuxer;

    invoke-virtual {v2, v1}, Lio/sentry/android/replay/video/SimpleMp4FrameMuxer;->start(Landroid/media/MediaFormat;)V

    goto :goto_0

    .line 205
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "format changed twice"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    if-gez v1, :cond_7

    .line 213
    iget-object v2, p0, Lio/sentry/android/replay/video/SimpleVideoEncoder;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v4, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[Encoder]: unexpected result from encoder.dequeueOutputBuffer: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v5, v3, [Ljava/lang/Object;

    invoke-interface {v2, v4, v1, v5}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_7
    if-eqz v0, :cond_c

    .line 216
    aget-object v2, v0, v1

    if-eqz v2, :cond_c

    .line 218
    iget-object v4, p0, Lio/sentry/android/replay/video/SimpleVideoEncoder;->bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v4, v4, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_8

    .line 221
    iget-object v4, p0, Lio/sentry/android/replay/video/SimpleVideoEncoder;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v4}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v4

    sget-object v5, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v6, "[Encoder]: ignoring BUFFER_FLAG_CODEC_CONFIG"

    new-array v7, v3, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6, v7}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 222
    iget-object v4, p0, Lio/sentry/android/replay/video/SimpleVideoEncoder;->bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iput v3, v4, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 224
    :cond_8
    iget-object v4, p0, Lio/sentry/android/replay/video/SimpleVideoEncoder;->bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v4, v4, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v4, :cond_a

    .line 225
    iget-object v4, p0, Lio/sentry/android/replay/video/SimpleVideoEncoder;->frameMuxer:Lio/sentry/android/replay/video/SimpleMp4FrameMuxer;

    invoke-virtual {v4}, Lio/sentry/android/replay/video/SimpleMp4FrameMuxer;->isStarted()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 228
    iget-object v4, p0, Lio/sentry/android/replay/video/SimpleVideoEncoder;->frameMuxer:Lio/sentry/android/replay/video/SimpleMp4FrameMuxer;

    iget-object v5, p0, Lio/sentry/android/replay/video/SimpleVideoEncoder;->bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v4, v2, v5}, Lio/sentry/android/replay/video/SimpleMp4FrameMuxer;->muxVideoFrame(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 229
    iget-object v2, p0, Lio/sentry/android/replay/video/SimpleVideoEncoder;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v4, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[Encoder]: sent "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lio/sentry/android/replay/video/SimpleVideoEncoder;->bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v6, v6, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " bytes to muxer"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    invoke-interface {v2, v4, v5, v6}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 226
    :cond_9
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "muxer hasn\'t started"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 231
    :cond_a
    :goto_1
    iget-object v2, p0, Lio/sentry/android/replay/video/SimpleVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v2, v1, v3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 232
    iget-object v1, p0, Lio/sentry/android/replay/video/SimpleVideoEncoder;->bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_1

    if-nez p1, :cond_b

    .line 234
    iget-object p1, p0, Lio/sentry/android/replay/video/SimpleVideoEncoder;->options:Lio/sentry/SentryOptions;

    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v1, "[Encoder]: reached end of stream unexpectedly"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {p1, v0, v1, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 236
    :cond_b
    iget-object p1, p0, Lio/sentry/android/replay/video/SimpleVideoEncoder;->options:Lio/sentry/SentryOptions;

    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v1, "[Encoder]: end of stream reached"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {p1, v0, v1, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    return-void

    .line 217
    :cond_c
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "encoderOutputBuffer "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " was null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final getHasExynosCodec()Z
    .locals 1

    .line 55
    iget-object v0, p0, Lio/sentry/android/replay/video/SimpleVideoEncoder;->hasExynosCodec$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private final getMediaFormat()Landroid/media/MediaFormat;
    .locals 1

    .line 75
    iget-object v0, p0, Lio/sentry/android/replay/video/SimpleVideoEncoder;->mediaFormat$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaFormat;

    return-object v0
.end method


# virtual methods
.method public final encode(Landroid/graphics/Bitmap;)V
    .locals 4

    const-string v0, "image"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "MANUFACTURER"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/CharSequence;

    const-string v2, "xiaomi"

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 162
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/CharSequence;

    const-string v1, "motorola"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v0, v1, v3}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 166
    :cond_0
    iget-object v0, p0, Lio/sentry/android/replay/video/SimpleVideoEncoder;->surface:Landroid/view/Surface;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/Surface;->lockHardwareCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    goto :goto_1

    .line 164
    :cond_1
    :goto_0
    iget-object v0, p0, Lio/sentry/android/replay/video/SimpleVideoEncoder;->surface:Landroid/view/Surface;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v2}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v2

    :goto_1
    if-eqz v0, :cond_3

    const/4 v1, 0x0

    .line 168
    invoke-virtual {v0, p1, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 169
    :cond_3
    iget-object p1, p0, Lio/sentry/android/replay/video/SimpleVideoEncoder;->surface:Landroid/view/Surface;

    if-eqz p1, :cond_4

    invoke-virtual {p1, v0}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    :cond_4
    const/4 p1, 0x0

    .line 170
    invoke-direct {p0, p1}, Lio/sentry/android/replay/video/SimpleVideoEncoder;->drainCodec(Z)V

    return-void
.end method

.method public final getDuration()J
    .locals 2

    .line 146
    iget-object v0, p0, Lio/sentry/android/replay/video/SimpleVideoEncoder;->frameMuxer:Lio/sentry/android/replay/video/SimpleMp4FrameMuxer;

    invoke-virtual {v0}, Lio/sentry/android/replay/video/SimpleMp4FrameMuxer;->getVideoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getMediaCodec$sentry_android_replay_release()Landroid/media/MediaCodec;
    .locals 1

    .line 63
    iget-object v0, p0, Lio/sentry/android/replay/video/SimpleVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    return-object v0
.end method

.method public final getMuxerConfig()Lio/sentry/android/replay/video/MuxerConfig;
    .locals 1

    .line 51
    iget-object v0, p0, Lio/sentry/android/replay/video/SimpleVideoEncoder;->muxerConfig:Lio/sentry/android/replay/video/MuxerConfig;

    return-object v0
.end method

.method public final getOnClose()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lio/sentry/android/replay/video/SimpleVideoEncoder;->onClose:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final getOptions()Lio/sentry/SentryOptions;
    .locals 1

    .line 50
    iget-object v0, p0, Lio/sentry/android/replay/video/SimpleVideoEncoder;->options:Lio/sentry/SentryOptions;

    return-object v0
.end method

.method public final release()V
    .locals 4

    .line 246
    :try_start_0
    iget-object v0, p0, Lio/sentry/android/replay/video/SimpleVideoEncoder;->onClose:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    const/4 v0, 0x1

    .line 247
    invoke-direct {p0, v0}, Lio/sentry/android/replay/video/SimpleVideoEncoder;->drainCodec(Z)V

    .line 248
    iget-object v0, p0, Lio/sentry/android/replay/video/SimpleVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 249
    iget-object v0, p0, Lio/sentry/android/replay/video/SimpleVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 250
    iget-object v0, p0, Lio/sentry/android/replay/video/SimpleVideoEncoder;->surface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 252
    :cond_1
    iget-object v0, p0, Lio/sentry/android/replay/video/SimpleVideoEncoder;->frameMuxer:Lio/sentry/android/replay/video/SimpleMp4FrameMuxer;

    invoke-virtual {v0}, Lio/sentry/android/replay/video/SimpleMp4FrameMuxer;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 254
    iget-object v1, p0, Lio/sentry/android/replay/video/SimpleVideoEncoder;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v3, "Failed to properly release video encoder"

    invoke-interface {v1, v2, v3, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final start()V
    .locals 4

    .line 151
    iget-object v0, p0, Lio/sentry/android/replay/video/SimpleVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-direct {p0}, Lio/sentry/android/replay/video/SimpleVideoEncoder;->getMediaFormat()Landroid/media/MediaFormat;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v2, v3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 152
    iget-object v0, p0, Lio/sentry/android/replay/video/SimpleVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/android/replay/video/SimpleVideoEncoder;->surface:Landroid/view/Surface;

    .line 153
    iget-object v0, p0, Lio/sentry/android/replay/video/SimpleVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    const/4 v0, 0x0

    .line 154
    invoke-direct {p0, v0}, Lio/sentry/android/replay/video/SimpleVideoEncoder;->drainCodec(Z)V

    return-void
.end method
