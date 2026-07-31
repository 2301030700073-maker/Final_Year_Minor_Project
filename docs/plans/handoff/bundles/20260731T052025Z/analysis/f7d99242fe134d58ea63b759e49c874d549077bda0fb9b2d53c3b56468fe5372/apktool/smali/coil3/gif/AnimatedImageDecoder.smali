.class public final Lcoil3/gif/AnimatedImageDecoder;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lcoil3/decode/Decoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil3/gif/AnimatedImageDecoder$Companion;,
        Lcoil3/gif/AnimatedImageDecoder$Factory;
    }
.end annotation


# static fields
.field public static final Companion:Lcoil3/gif/AnimatedImageDecoder$Companion;

.field public static final ENCODED_LOOP_COUNT:I = -0x2


# instance fields
.field private final enforceMinimumFrameDelay:Z

.field private final options:Lcoil3/request/Options;

.field private final source:Lcoil3/decode/ImageSource;


# direct methods
.method public static synthetic $r8$lambda$0-T76Y8PId9ZheZVUUwGXNgihac(Lcoil3/gif/AnimatedImageDecoder;Lkotlin/jvm/internal/Ref$BooleanRef;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcoil3/gif/AnimatedImageDecoder;->decode$lambda$0(Lcoil3/gif/AnimatedImageDecoder;Lkotlin/jvm/internal/Ref$BooleanRef;)Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcoil3/gif/AnimatedImageDecoder$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcoil3/gif/AnimatedImageDecoder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcoil3/gif/AnimatedImageDecoder;->Companion:Lcoil3/gif/AnimatedImageDecoder$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lcoil3/decode/ImageSource;Lcoil3/request/Options;Z)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcoil3/gif/AnimatedImageDecoder;->source:Lcoil3/decode/ImageSource;

    .line 20
    iput-object p2, p0, Lcoil3/gif/AnimatedImageDecoder;->options:Lcoil3/request/Options;

    .line 21
    iput-boolean p3, p0, Lcoil3/gif/AnimatedImageDecoder;->enforceMinimumFrameDelay:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcoil3/decode/ImageSource;Lcoil3/request/Options;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    and-int/lit8 p4, p4, 0x4

    .line 2
    .line 3
    if-eqz p4, :cond_1

    .line 4
    .line 5
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 6
    .line 7
    const/16 p4, 0x22

    .line 8
    .line 9
    if-ge p3, p4, :cond_0

    .line 10
    .line 11
    const/4 p3, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p3, 0x0

    .line 14
    :cond_1
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcoil3/gif/AnimatedImageDecoder;-><init>(Lcoil3/decode/ImageSource;Lcoil3/request/Options;Z)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public static final synthetic access$configureImageDecoderProperties(Lcoil3/gif/AnimatedImageDecoder;Landroid/graphics/ImageDecoder;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcoil3/gif/AnimatedImageDecoder;->configureImageDecoderProperties(Landroid/graphics/ImageDecoder;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$getOptions$p(Lcoil3/gif/AnimatedImageDecoder;)Lcoil3/request/Options;
    .locals 0

    .line 1
    iget-object p0, p0, Lcoil3/gif/AnimatedImageDecoder;->options:Lcoil3/request/Options;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$wrapDrawable(Lcoil3/gif/AnimatedImageDecoder;Landroid/graphics/drawable/Drawable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcoil3/gif/AnimatedImageDecoder;->wrapDrawable(Landroid/graphics/drawable/Drawable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final configureImageDecoderProperties(Landroid/graphics/ImageDecoder;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcoil3/gif/AnimatedImageDecoder;->options:Lcoil3/request/Options;

    .line 2
    .line 3
    invoke-static {v0}, Lcoil3/request/ImageRequests_androidKt;->getBitmapConfig(Lcoil3/request/Options;)Landroid/graphics/Bitmap$Config;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcoil3/util/BitmapsKt;->isHardware(Landroid/graphics/Bitmap$Config;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x3

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v0, v1

    .line 17
    :goto_0
    invoke-virtual {p1, v0}, Landroid/graphics/ImageDecoder;->setAllocator(I)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcoil3/gif/AnimatedImageDecoder;->options:Lcoil3/request/Options;

    .line 21
    .line 22
    invoke-static {v0}, Lcoil3/request/ImageRequests_androidKt;->getAllowRgb565(Lcoil3/request/Options;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    xor-int/2addr v0, v1

    .line 27
    invoke-virtual {p1, v0}, Landroid/graphics/ImageDecoder;->setMemorySizePolicy(I)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcoil3/gif/AnimatedImageDecoder;->options:Lcoil3/request/Options;

    .line 31
    .line 32
    invoke-static {v0}, Lcoil3/request/ImageRequests_androidKt;->getColorSpace(Lcoil3/request/Options;)Landroid/graphics/ColorSpace;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    iget-object v0, p0, Lcoil3/gif/AnimatedImageDecoder;->options:Lcoil3/request/Options;

    .line 39
    .line 40
    invoke-static {v0}, Lcoil3/request/ImageRequests_androidKt;->getColorSpace(Lcoil3/request/Options;)Landroid/graphics/ColorSpace;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {p1, v0}, Landroid/graphics/ImageDecoder;->setTargetColorSpace(Landroid/graphics/ColorSpace;)V

    .line 45
    .line 46
    .line 47
    :cond_1
    iget-object p0, p0, Lcoil3/gif/AnimatedImageDecoder;->options:Lcoil3/request/Options;

    .line 48
    .line 49
    invoke-static {p0}, Lcoil3/gif/ImageRequestsKt;->getAnimatedTransformation(Lcoil3/request/Options;)Lcoil3/gif/AnimatedTransformation;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    if-eqz p0, :cond_2

    .line 54
    .line 55
    invoke-static {p0}, Lcoil3/gif/internal/UtilsKt;->asPostProcessor(Lcoil3/gif/AnimatedTransformation;)Landroid/graphics/PostProcessor;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    goto :goto_1

    .line 60
    :cond_2
    const/4 p0, 0x0

    .line 61
    :goto_1
    invoke-virtual {p1, p0}, Landroid/graphics/ImageDecoder;->setPostProcessor(Landroid/graphics/PostProcessor;)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method private static final decode$lambda$0(Lcoil3/gif/AnimatedImageDecoder;Lkotlin/jvm/internal/Ref$BooleanRef;)Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 1
    iget-object v0, p0, Lcoil3/gif/AnimatedImageDecoder;->source:Lcoil3/decode/ImageSource;

    .line 2
    .line 3
    iget-boolean v1, p0, Lcoil3/gif/AnimatedImageDecoder;->enforceMinimumFrameDelay:Z

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcoil3/gif/internal/FrameDelayRewritingSourceKt;->maybeWrapImageSourceToRewriteFrameDelay(Lcoil3/decode/ImageSource;Z)Lcoil3/decode/ImageSource;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :try_start_0
    iget-object v1, p0, Lcoil3/gif/AnimatedImageDecoder;->options:Lcoil3/request/Options;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    invoke-static {v0, v1, v2}, Lcoil3/decode/StaticImageDecoderKt;->toImageDecoderSourceOrNull(Lcoil3/decode/ImageSource;Lcoil3/request/Options;Z)Landroid/graphics/ImageDecoder$Source;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const/4 v2, 0x0

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    invoke-interface {v0}, Lcoil3/decode/ImageSource;->source()Lokio/BufferedSource;

    .line 20
    .line 21
    .line 22
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    :try_start_1
    invoke-static {v1}, Lcoil3/gif/internal/UtilsKt;->squashToDirectByteBuffer(Lokio/BufferedSource;)Ljava/nio/ByteBuffer;

    .line 24
    .line 25
    .line 26
    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 27
    :try_start_2
    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 28
    .line 29
    .line 30
    invoke-static {v3}, Landroid/graphics/ImageDecoder;->createSource(Ljava/nio/ByteBuffer;)Landroid/graphics/ImageDecoder$Source;

    .line 31
    .line 32
    .line 33
    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    goto :goto_1

    .line 37
    :catchall_1
    move-exception p0

    .line 38
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 39
    :catchall_2
    move-exception p1

    .line 40
    :try_start_4
    invoke-static {v1, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 41
    .line 42
    .line 43
    throw p1

    .line 44
    :cond_0
    :goto_0
    new-instance v3, Lcoil3/gif/AnimatedImageDecoder$decode$lambda$0$0$$inlined$decodeDrawable$1;

    .line 45
    .line 46
    invoke-direct {v3, p0, p1}, Lcoil3/gif/AnimatedImageDecoder$decode$lambda$0$0$$inlined$decodeDrawable$1;-><init>(Lcoil3/gif/AnimatedImageDecoder;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    .line 47
    .line 48
    .line 49
    invoke-static {v1, v3}, Landroid/graphics/ImageDecoder;->decodeDrawable(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/drawable/Drawable;

    .line 50
    .line 51
    .line 52
    move-result-object p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 53
    invoke-static {v0, v2}, Lokhttp3/Cookie$Companion;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 54
    .line 55
    .line 56
    return-object p0

    .line 57
    :goto_1
    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 58
    :catchall_3
    move-exception p1

    .line 59
    invoke-static {v0, p0}, Lokhttp3/Cookie$Companion;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 60
    .line 61
    .line 62
    throw p1
.end method

.method private final wrapDrawable(Landroid/graphics/drawable/Drawable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            "Lkotlin/coroutines/Continuation;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    instance-of v0, p2, Lcoil3/gif/AnimatedImageDecoder$wrapDrawable$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lcoil3/gif/AnimatedImageDecoder$wrapDrawable$1;

    .line 7
    .line 8
    iget v1, v0, Lcoil3/gif/AnimatedImageDecoder$wrapDrawable$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcoil3/gif/AnimatedImageDecoder$wrapDrawable$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcoil3/gif/AnimatedImageDecoder$wrapDrawable$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lcoil3/gif/AnimatedImageDecoder$wrapDrawable$1;-><init>(Lcoil3/gif/AnimatedImageDecoder;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lcoil3/gif/AnimatedImageDecoder$wrapDrawable$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lcoil3/gif/AnimatedImageDecoder$wrapDrawable$1;->label:I

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    const/4 v3, 0x1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    if-ne v1, v3, :cond_1

    .line 34
    .line 35
    iget-object p1, v0, Lcoil3/gif/AnimatedImageDecoder$wrapDrawable$1;->L$0:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast p1, Landroid/graphics/drawable/Drawable;

    .line 38
    .line 39
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 44
    .line 45
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-object v2

    .line 49
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    instance-of p2, p1, Landroid/graphics/drawable/AnimatedImageDrawable;

    .line 53
    .line 54
    if-nez p2, :cond_3

    .line 55
    .line 56
    return-object p1

    .line 57
    :cond_3
    iget-object p2, p0, Lcoil3/gif/AnimatedImageDecoder;->options:Lcoil3/request/Options;

    .line 58
    .line 59
    invoke-static {p2}, Lcoil3/gif/ImageRequestsKt;->getRepeatCount(Lcoil3/request/Options;)I

    .line 60
    .line 61
    .line 62
    move-result p2

    .line 63
    const/4 v1, -0x2

    .line 64
    if-eq p2, v1, :cond_4

    .line 65
    .line 66
    invoke-static {p1}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/Object;)Landroid/graphics/drawable/AnimatedImageDrawable;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    iget-object v1, p0, Lcoil3/gif/AnimatedImageDecoder;->options:Lcoil3/request/Options;

    .line 71
    .line 72
    invoke-static {v1}, Lcoil3/gif/ImageRequestsKt;->getRepeatCount(Lcoil3/request/Options;)I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    invoke-virtual {p2, v1}, Landroid/graphics/drawable/AnimatedImageDrawable;->setRepeatCount(I)V

    .line 77
    .line 78
    .line 79
    :cond_4
    iget-object p2, p0, Lcoil3/gif/AnimatedImageDecoder;->options:Lcoil3/request/Options;

    .line 80
    .line 81
    invoke-static {p2}, Lcoil3/gif/ImageRequestsKt;->getAnimationStartCallback(Lcoil3/request/Options;)Lkotlin/jvm/functions/Function0;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    iget-object v1, p0, Lcoil3/gif/AnimatedImageDecoder;->options:Lcoil3/request/Options;

    .line 86
    .line 87
    invoke-static {v1}, Lcoil3/gif/ImageRequestsKt;->getAnimationEndCallback(Lcoil3/request/Options;)Lkotlin/jvm/functions/Function0;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    if-nez p2, :cond_5

    .line 92
    .line 93
    if-eqz v1, :cond_6

    .line 94
    .line 95
    :cond_5
    sget-object v4, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 96
    .line 97
    sget-object v4, Lkotlinx/coroutines/internal/MainDispatcherLoader;->dispatcher:Lkotlinx/coroutines/android/HandlerContext;

    .line 98
    .line 99
    iget-object v4, v4, Lkotlinx/coroutines/android/HandlerContext;->immediate:Lkotlinx/coroutines/android/HandlerContext;

    .line 100
    .line 101
    new-instance v5, Lcoil3/gif/AnimatedImageDecoder$wrapDrawable$2;

    .line 102
    .line 103
    invoke-direct {v5, p1, p2, v1, v2}, Lcoil3/gif/AnimatedImageDecoder$wrapDrawable$2;-><init>(Landroid/graphics/drawable/Drawable;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    .line 104
    .line 105
    .line 106
    iput-object p1, v0, Lcoil3/gif/AnimatedImageDecoder$wrapDrawable$1;->L$0:Ljava/lang/Object;

    .line 107
    .line 108
    iput v3, v0, Lcoil3/gif/AnimatedImageDecoder$wrapDrawable$1;->label:I

    .line 109
    .line 110
    invoke-static {v4, v5, v0}, Lkotlinx/coroutines/JobKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 115
    .line 116
    if-ne p2, v0, :cond_6

    .line 117
    .line 118
    return-object v0

    .line 119
    :cond_6
    :goto_1
    new-instance p2, Lcoil3/size/ScaleDrawable;

    .line 120
    .line 121
    iget-object p0, p0, Lcoil3/gif/AnimatedImageDecoder;->options:Lcoil3/request/Options;

    .line 122
    .line 123
    invoke-virtual {p0}, Lcoil3/request/Options;->getScale()Lcoil3/size/Scale;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    invoke-direct {p2, p1, p0}, Lcoil3/size/ScaleDrawable;-><init>(Landroid/graphics/drawable/Drawable;Lcoil3/size/Scale;)V

    .line 128
    .line 129
    .line 130
    return-object p2
.end method


# virtual methods
.method public decode(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcoil3/gif/AnimatedImageDecoder$decode$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcoil3/gif/AnimatedImageDecoder$decode$1;

    .line 7
    .line 8
    iget v1, v0, Lcoil3/gif/AnimatedImageDecoder$decode$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcoil3/gif/AnimatedImageDecoder$decode$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcoil3/gif/AnimatedImageDecoder$decode$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lcoil3/gif/AnimatedImageDecoder$decode$1;-><init>(Lcoil3/gif/AnimatedImageDecoder;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lcoil3/gif/AnimatedImageDecoder$decode$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lcoil3/gif/AnimatedImageDecoder$decode$1;->label:I

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    const/4 v3, 0x2

    .line 31
    const/4 v4, 0x1

    .line 32
    sget-object v5, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 33
    .line 34
    if-eqz v1, :cond_3

    .line 35
    .line 36
    if-eq v1, v4, :cond_2

    .line 37
    .line 38
    if-ne v1, v3, :cond_1

    .line 39
    .line 40
    iget-object p0, v0, Lcoil3/gif/AnimatedImageDecoder$decode$1;->L$0:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast p0, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 43
    .line 44
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    goto :goto_3

    .line 48
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 49
    .line 50
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return-object v2

    .line 54
    :cond_2
    iget-object v1, v0, Lcoil3/gif/AnimatedImageDecoder$decode$1;->L$0:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v1, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 57
    .line 58
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    move-object v7, v1

    .line 62
    move-object v1, p1

    .line 63
    move-object p1, v7

    .line 64
    goto :goto_1

    .line 65
    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    new-instance p1, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 69
    .line 70
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 71
    .line 72
    .line 73
    new-instance v1, Lkotlin/text/Regex$$ExternalSyntheticLambda1;

    .line 74
    .line 75
    const/16 v6, 0x11

    .line 76
    .line 77
    invoke-direct {v1, v6, p0, p1}, Lkotlin/text/Regex$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    iput-object p1, v0, Lcoil3/gif/AnimatedImageDecoder$decode$1;->L$0:Ljava/lang/Object;

    .line 81
    .line 82
    iput v4, v0, Lcoil3/gif/AnimatedImageDecoder$decode$1;->label:I

    .line 83
    .line 84
    new-instance v4, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;

    .line 85
    .line 86
    const/4 v6, 0x0

    .line 87
    invoke-direct {v4, v1, v2, v6}, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 88
    .line 89
    .line 90
    sget-object v1, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 91
    .line 92
    invoke-static {v1, v4, v0}, Lkotlinx/coroutines/JobKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    if-ne v1, v5, :cond_4

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_4
    :goto_1
    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 100
    .line 101
    iput-object p1, v0, Lcoil3/gif/AnimatedImageDecoder$decode$1;->L$0:Ljava/lang/Object;

    .line 102
    .line 103
    iput v3, v0, Lcoil3/gif/AnimatedImageDecoder$decode$1;->label:I

    .line 104
    .line 105
    invoke-direct {p0, v1, v0}, Lcoil3/gif/AnimatedImageDecoder;->wrapDrawable(Landroid/graphics/drawable/Drawable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    if-ne p0, v5, :cond_5

    .line 110
    .line 111
    :goto_2
    return-object v5

    .line 112
    :cond_5
    move-object v7, p1

    .line 113
    move-object p1, p0

    .line 114
    move-object p0, v7

    .line 115
    :goto_3
    check-cast p1, Landroid/graphics/drawable/Drawable;

    .line 116
    .line 117
    invoke-static {p1}, Lcoil3/Image_androidKt;->asImage(Landroid/graphics/drawable/Drawable;)Lcoil3/Image;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    iget-boolean p0, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 122
    .line 123
    new-instance v0, Lcoil3/decode/DecodeResult;

    .line 124
    .line 125
    invoke-direct {v0, p1, p0}, Lcoil3/decode/DecodeResult;-><init>(Lcoil3/Image;Z)V

    .line 126
    .line 127
    .line 128
    return-object v0
.end method
