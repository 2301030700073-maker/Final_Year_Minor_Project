.class public final Lcoil3/gif/GifDecoder;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lcoil3/decode/Decoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil3/gif/GifDecoder$Factory;
    }
.end annotation


# instance fields
.field private final enforceMinimumFrameDelay:Z

.field private final options:Lcoil3/request/Options;

.field private final source:Lcoil3/decode/ImageSource;


# direct methods
.method public static synthetic $r8$lambda$bToMg4JRAwwuZO0ecPJchhYz67A(Lcoil3/gif/GifDecoder;)Lcoil3/decode/DecodeResult;
    .locals 0

    .line 1
    invoke-static {p0}, Lcoil3/gif/GifDecoder;->decode$lambda$0(Lcoil3/gif/GifDecoder;)Lcoil3/decode/DecodeResult;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public constructor <init>(Lcoil3/decode/ImageSource;Lcoil3/request/Options;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcoil3/gif/GifDecoder;->source:Lcoil3/decode/ImageSource;

    .line 5
    .line 6
    iput-object p2, p0, Lcoil3/gif/GifDecoder;->options:Lcoil3/request/Options;

    .line 7
    .line 8
    iput-boolean p3, p0, Lcoil3/gif/GifDecoder;->enforceMinimumFrameDelay:Z

    .line 9
    .line 10
    return-void
.end method

.method public synthetic constructor <init>(Lcoil3/decode/ImageSource;Lcoil3/request/Options;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x1

    .line 11
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcoil3/gif/GifDecoder;-><init>(Lcoil3/decode/ImageSource;Lcoil3/request/Options;Z)V

    return-void
.end method

.method private static final decode$lambda$0(Lcoil3/gif/GifDecoder;)Lcoil3/decode/DecodeResult;
    .locals 4

    .line 1
    iget-object v0, p0, Lcoil3/gif/GifDecoder;->source:Lcoil3/decode/ImageSource;

    .line 2
    .line 3
    iget-boolean v1, p0, Lcoil3/gif/GifDecoder;->enforceMinimumFrameDelay:Z

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcoil3/gif/internal/FrameDelayRewritingSourceKt;->maybeWrapImageSourceToRewriteFrameDelay(Lcoil3/decode/ImageSource;Z)Lcoil3/decode/ImageSource;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :try_start_0
    invoke-interface {v0}, Lcoil3/decode/ImageSource;->source()Lokio/BufferedSource;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-interface {v1}, Lokio/BufferedSource;->inputStream()Ljava/io/InputStream;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v1}, Landroid/graphics/Movie;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;

    .line 18
    .line 19
    .line 20
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-static {v0, v2}, Lokhttp3/Cookie$Companion;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 23
    .line 24
    .line 25
    if-eqz v1, :cond_5

    .line 26
    .line 27
    invoke-virtual {v1}, Landroid/graphics/Movie;->width()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-lez v0, :cond_5

    .line 32
    .line 33
    invoke-virtual {v1}, Landroid/graphics/Movie;->height()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-lez v0, :cond_5

    .line 38
    .line 39
    new-instance v0, Lcoil3/gif/MovieDrawable;

    .line 40
    .line 41
    invoke-virtual {v1}, Landroid/graphics/Movie;->isOpaque()Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_0

    .line 46
    .line 47
    iget-object v2, p0, Lcoil3/gif/GifDecoder;->options:Lcoil3/request/Options;

    .line 48
    .line 49
    invoke-static {v2}, Lcoil3/request/ImageRequests_androidKt;->getAllowRgb565(Lcoil3/request/Options;)Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-eqz v2, :cond_0

    .line 54
    .line 55
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    iget-object v2, p0, Lcoil3/gif/GifDecoder;->options:Lcoil3/request/Options;

    .line 59
    .line 60
    invoke-static {v2}, Lcoil3/request/ImageRequests_androidKt;->getBitmapConfig(Lcoil3/request/Options;)Landroid/graphics/Bitmap$Config;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-static {v2}, Lcoil3/util/BitmapsKt;->isHardware(Landroid/graphics/Bitmap$Config;)Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-eqz v2, :cond_1

    .line 69
    .line 70
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_1
    iget-object v2, p0, Lcoil3/gif/GifDecoder;->options:Lcoil3/request/Options;

    .line 74
    .line 75
    invoke-static {v2}, Lcoil3/request/ImageRequests_androidKt;->getBitmapConfig(Lcoil3/request/Options;)Landroid/graphics/Bitmap$Config;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    :goto_0
    iget-object v3, p0, Lcoil3/gif/GifDecoder;->options:Lcoil3/request/Options;

    .line 80
    .line 81
    invoke-virtual {v3}, Lcoil3/request/Options;->getScale()Lcoil3/size/Scale;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-direct {v0, v1, v2, v3}, Lcoil3/gif/MovieDrawable;-><init>(Landroid/graphics/Movie;Landroid/graphics/Bitmap$Config;Lcoil3/size/Scale;)V

    .line 86
    .line 87
    .line 88
    iget-object v1, p0, Lcoil3/gif/GifDecoder;->options:Lcoil3/request/Options;

    .line 89
    .line 90
    invoke-static {v1}, Lcoil3/gif/ImageRequestsKt;->getRepeatCount(Lcoil3/request/Options;)I

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    const/4 v2, -0x2

    .line 95
    if-eq v1, v2, :cond_2

    .line 96
    .line 97
    iget-object v1, p0, Lcoil3/gif/GifDecoder;->options:Lcoil3/request/Options;

    .line 98
    .line 99
    invoke-static {v1}, Lcoil3/gif/ImageRequestsKt;->getRepeatCount(Lcoil3/request/Options;)I

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    invoke-virtual {v0, v1}, Lcoil3/gif/MovieDrawable;->setRepeatCount(I)V

    .line 104
    .line 105
    .line 106
    :cond_2
    iget-object v1, p0, Lcoil3/gif/GifDecoder;->options:Lcoil3/request/Options;

    .line 107
    .line 108
    invoke-static {v1}, Lcoil3/gif/ImageRequestsKt;->getAnimationStartCallback(Lcoil3/request/Options;)Lkotlin/jvm/functions/Function0;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    iget-object v2, p0, Lcoil3/gif/GifDecoder;->options:Lcoil3/request/Options;

    .line 113
    .line 114
    invoke-static {v2}, Lcoil3/gif/ImageRequestsKt;->getAnimationEndCallback(Lcoil3/request/Options;)Lkotlin/jvm/functions/Function0;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    if-nez v1, :cond_3

    .line 119
    .line 120
    if-eqz v2, :cond_4

    .line 121
    .line 122
    :cond_3
    invoke-static {v1, v2}, Lcoil3/gif/internal/UtilsKt;->animatable2CompatCallbackOf(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-virtual {v0, v1}, Lcoil3/gif/MovieDrawable;->registerAnimationCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)V

    .line 127
    .line 128
    .line 129
    :cond_4
    iget-object p0, p0, Lcoil3/gif/GifDecoder;->options:Lcoil3/request/Options;

    .line 130
    .line 131
    invoke-static {p0}, Lcoil3/gif/ImageRequestsKt;->getAnimatedTransformation(Lcoil3/request/Options;)Lcoil3/gif/AnimatedTransformation;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    invoke-virtual {v0, p0}, Lcoil3/gif/MovieDrawable;->setAnimatedTransformation(Lcoil3/gif/AnimatedTransformation;)V

    .line 136
    .line 137
    .line 138
    new-instance p0, Lcoil3/decode/DecodeResult;

    .line 139
    .line 140
    invoke-static {v0}, Lcoil3/Image_androidKt;->asImage(Landroid/graphics/drawable/Drawable;)Lcoil3/Image;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    const/4 v1, 0x0

    .line 145
    invoke-direct {p0, v0, v1}, Lcoil3/decode/DecodeResult;-><init>(Lcoil3/Image;Z)V

    .line 146
    .line 147
    .line 148
    return-object p0

    .line 149
    :cond_5
    const-string p0, "Failed to decode GIF."

    .line 150
    .line 151
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    return-object v2

    .line 155
    :catchall_0
    move-exception p0

    .line 156
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 157
    :catchall_1
    move-exception v1

    .line 158
    invoke-static {v0, p0}, Lokhttp3/Cookie$Companion;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 159
    .line 160
    .line 161
    throw v1
.end method


# virtual methods
.method public decode(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/fsck/k9/K9$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, v1, p0}, Lcom/fsck/k9/K9$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    new-instance p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-direct {p0, v0, v1, v2}, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 12
    .line 13
    .line 14
    sget-object v0, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 15
    .line 16
    invoke-static {v0, p0, p1}, Lkotlinx/coroutines/JobKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method
