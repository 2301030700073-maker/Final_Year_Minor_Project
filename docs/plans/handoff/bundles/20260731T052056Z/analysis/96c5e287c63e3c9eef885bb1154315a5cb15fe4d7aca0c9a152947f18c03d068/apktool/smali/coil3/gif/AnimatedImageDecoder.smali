.class public final Lcoil3/gif/AnimatedImageDecoder;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lcoil3/decode/Decoder;


# instance fields
.field public final enforceMinimumFrameDelay:Z

.field public final options:Lcoil3/request/Options;

.field public final source:Lcoil3/decode/ImageSource;


# direct methods
.method public constructor <init>(Lcoil3/decode/ImageSource;Lcoil3/request/Options;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcoil3/gif/AnimatedImageDecoder;->source:Lcoil3/decode/ImageSource;

    .line 5
    .line 6
    iput-object p2, p0, Lcoil3/gif/AnimatedImageDecoder;->options:Lcoil3/request/Options;

    .line 7
    .line 8
    iput-boolean p3, p0, Lcoil3/gif/AnimatedImageDecoder;->enforceMinimumFrameDelay:Z

    .line 9
    .line 10
    return-void
.end method

.method public static final decode$lambda$0(Lcoil3/gif/AnimatedImageDecoder;Lkotlin/jvm/internal/Ref$BooleanRef;)Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 1
    iget-object v0, p0, Lcoil3/gif/AnimatedImageDecoder;->source:Lcoil3/decode/ImageSource;

    .line 2
    .line 3
    iget-boolean v1, p0, Lcoil3/gif/AnimatedImageDecoder;->enforceMinimumFrameDelay:Z

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroidx/room/Room;->maybeWrapImageSourceToRewriteFrameDelay(Lcoil3/decode/ImageSource;Z)Lcoil3/decode/ImageSource;

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
    invoke-static {v0, v1, v2}, Lorg/wikipedia/util/FileUtil;->toImageDecoderSourceOrNull(Lcoil3/decode/ImageSource;Lcoil3/request/Options;Z)Landroid/graphics/ImageDecoder$Source;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    invoke-interface {v0}, Lcoil3/decode/ImageSource;->source()Lokio/BufferedSource;

    .line 19
    .line 20
    .line 21
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    const-wide v3, 0x7fffffffffffffffL

    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    :try_start_1
    invoke-interface {v1, v3, v4}, Lokio/BufferedSource;->request(J)Z

    .line 28
    .line 29
    .line 30
    invoke-interface {v1}, Lokio/BufferedSource;->getBuffer()Lokio/Buffer;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    iget-wide v3, v3, Lokio/Buffer;->size:J

    .line 35
    .line 36
    long-to-int v3, v3

    .line 37
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    :goto_0
    invoke-interface {v1}, Lokio/BufferedSource;->getBuffer()Lokio/Buffer;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-virtual {v4}, Lokio/Buffer;->exhausted()Z

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    if-nez v4, :cond_0

    .line 50
    .line 51
    invoke-interface {v1}, Lokio/BufferedSource;->getBuffer()Lokio/Buffer;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    invoke-virtual {v4, v3}, Lokio/Buffer;->read(Ljava/nio/ByteBuffer;)I

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 60
    .line 61
    .line 62
    :try_start_2
    invoke-interface {v1}, Ljava/io/Closeable;->close()V

    .line 63
    .line 64
    .line 65
    invoke-static {v3}, Landroid/graphics/ImageDecoder;->createSource(Ljava/nio/ByteBuffer;)Landroid/graphics/ImageDecoder$Source;

    .line 66
    .line 67
    .line 68
    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 69
    goto :goto_1

    .line 70
    :catchall_0
    move-exception p0

    .line 71
    goto :goto_2

    .line 72
    :catchall_1
    move-exception p0

    .line 73
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 74
    :catchall_2
    move-exception p1

    .line 75
    :try_start_4
    invoke-static {v1, p0}, Lkotlin/ResultKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 76
    .line 77
    .line 78
    throw p1

    .line 79
    :cond_1
    :goto_1
    new-instance v3, Lcoil3/decode/StaticImageDecoder$decode$lambda$0$0$$inlined$decodeBitmap$1;

    .line 80
    .line 81
    invoke-direct {v3, p0, p1, v2}, Lcoil3/decode/StaticImageDecoder$decode$lambda$0$0$$inlined$decodeBitmap$1;-><init>(Lcoil3/decode/Decoder;Lkotlin/jvm/internal/Ref$BooleanRef;I)V

    .line 82
    .line 83
    .line 84
    invoke-static {v1, v3}, Landroid/graphics/ImageDecoder;->decodeDrawable(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/drawable/Drawable;

    .line 85
    .line 86
    .line 87
    move-result-object p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 88
    const/4 p1, 0x0

    .line 89
    invoke-static {v0, p1}, Lkotlin/TuplesKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 90
    .line 91
    .line 92
    return-object p0

    .line 93
    :goto_2
    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 94
    :catchall_3
    move-exception p1

    .line 95
    invoke-static {v0, p0}, Lkotlin/TuplesKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 96
    .line 97
    .line 98
    throw p1
.end method


# virtual methods
.method public final decode(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

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
    check-cast p1, Lkotlin/coroutines/jvm/internal/ContinuationImpl;

    .line 23
    .line 24
    invoke-direct {v0, p0, p1}, Lcoil3/gif/AnimatedImageDecoder$decode$1;-><init>(Lcoil3/gif/AnimatedImageDecoder;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    iget-object p1, v0, Lcoil3/gif/AnimatedImageDecoder$decode$1;->result:Ljava/lang/Object;

    .line 28
    .line 29
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 30
    .line 31
    iget v2, v0, Lcoil3/gif/AnimatedImageDecoder$decode$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    const/4 v4, 0x2

    .line 35
    const/4 v5, 0x1

    .line 36
    if-eqz v2, :cond_3

    .line 37
    .line 38
    if-eq v2, v5, :cond_2

    .line 39
    .line 40
    if-ne v2, v4, :cond_1

    .line 41
    .line 42
    iget-object p0, v0, Lcoil3/gif/AnimatedImageDecoder$decode$1;->L$0:Lkotlin/jvm/internal/Ref$BooleanRef;

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
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return-object v3

    .line 54
    :cond_2
    iget-object v2, v0, Lcoil3/gif/AnimatedImageDecoder$decode$1;->L$0:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 55
    .line 56
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    move-object v7, v2

    .line 60
    move-object v2, p1

    .line 61
    move-object p1, v7

    .line 62
    goto :goto_1

    .line 63
    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    new-instance p1, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 67
    .line 68
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 69
    .line 70
    .line 71
    new-instance v2, Lkotlin/text/Regex$$ExternalSyntheticLambda0;

    .line 72
    .line 73
    invoke-direct {v2, v4, p0, p1}, Lkotlin/text/Regex$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    iput-object p1, v0, Lcoil3/gif/AnimatedImageDecoder$decode$1;->L$0:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 77
    .line 78
    iput v5, v0, Lcoil3/gif/AnimatedImageDecoder$decode$1;->label:I

    .line 79
    .line 80
    new-instance v5, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;

    .line 81
    .line 82
    const/16 v6, 0xa

    .line 83
    .line 84
    invoke-direct {v5, v6, v2, v3}, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 85
    .line 86
    .line 87
    sget-object v2, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 88
    .line 89
    invoke-static {v2, v5, v0}, Lkotlinx/coroutines/AwaitKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    if-ne v2, v1, :cond_4

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_4
    :goto_1
    check-cast v2, Landroid/graphics/drawable/Drawable;

    .line 97
    .line 98
    iput-object p1, v0, Lcoil3/gif/AnimatedImageDecoder$decode$1;->L$0:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 99
    .line 100
    iput v4, v0, Lcoil3/gif/AnimatedImageDecoder$decode$1;->label:I

    .line 101
    .line 102
    invoke-virtual {p0, v2, v0}, Lcoil3/gif/AnimatedImageDecoder;->wrapDrawable(Landroid/graphics/drawable/Drawable;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    if-ne p0, v1, :cond_5

    .line 107
    .line 108
    :goto_2
    return-object v1

    .line 109
    :cond_5
    move-object v7, p1

    .line 110
    move-object p1, p0

    .line 111
    move-object p0, v7

    .line 112
    :goto_3
    check-cast p1, Landroid/graphics/drawable/Drawable;

    .line 113
    .line 114
    invoke-static {p1}, Lcoil3/UriKt;->asImage(Landroid/graphics/drawable/Drawable;)Lcoil3/Image;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    iget-boolean p0, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 119
    .line 120
    new-instance v0, Lcoil3/decode/DecodeResult;

    .line 121
    .line 122
    invoke-direct {v0, p1, p0}, Lcoil3/decode/DecodeResult;-><init>(Lcoil3/Image;Z)V

    .line 123
    .line 124
    .line 125
    return-object v0
.end method

.method public final wrapDrawable(Landroid/graphics/drawable/Drawable;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 7

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
    invoke-direct {v0, p0, p2}, Lcoil3/gif/AnimatedImageDecoder$wrapDrawable$1;-><init>(Lcoil3/gif/AnimatedImageDecoder;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lcoil3/gif/AnimatedImageDecoder$wrapDrawable$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Lcoil3/gif/AnimatedImageDecoder$wrapDrawable$1;->label:I

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    const/4 v4, 0x1

    .line 33
    iget-object p0, p0, Lcoil3/gif/AnimatedImageDecoder;->options:Lcoil3/request/Options;

    .line 34
    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    if-ne v2, v4, :cond_1

    .line 38
    .line 39
    iget-object p1, v0, Lcoil3/gif/AnimatedImageDecoder$wrapDrawable$1;->L$0:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast p1, Landroid/graphics/drawable/Drawable;

    .line 42
    .line 43
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 48
    .line 49
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return-object v3

    .line 53
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    instance-of p2, p1, Landroid/graphics/drawable/AnimatedImageDrawable;

    .line 57
    .line 58
    if-nez p2, :cond_3

    .line 59
    .line 60
    return-object p1

    .line 61
    :cond_3
    sget-object p2, Lcoil3/gif/ImageRequestsKt;->repeatCountKey:Lcoil3/Extras$Key;

    .line 62
    .line 63
    invoke-static {p0, p2}, Lcoil3/UriKt;->getExtra(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    check-cast v2, Ljava/lang/Number;

    .line 68
    .line 69
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    const/4 v5, -0x2

    .line 74
    if-eq v2, v5, :cond_4

    .line 75
    .line 76
    move-object v2, p1

    .line 77
    check-cast v2, Landroid/graphics/drawable/AnimatedImageDrawable;

    .line 78
    .line 79
    invoke-static {p0, p2}, Lcoil3/UriKt;->getExtra(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    check-cast p2, Ljava/lang/Number;

    .line 84
    .line 85
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 86
    .line 87
    .line 88
    move-result p2

    .line 89
    invoke-virtual {v2, p2}, Landroid/graphics/drawable/AnimatedImageDrawable;->setRepeatCount(I)V

    .line 90
    .line 91
    .line 92
    :cond_4
    sget-object p2, Lcoil3/gif/ImageRequestsKt;->animationStartCallbackKey:Lcoil3/Extras$Key;

    .line 93
    .line 94
    invoke-static {p0, p2}, Lcoil3/UriKt;->getExtra(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    check-cast p2, Lkotlin/jvm/functions/Function0;

    .line 99
    .line 100
    sget-object v2, Lcoil3/gif/ImageRequestsKt;->animationEndCallbackKey:Lcoil3/Extras$Key;

    .line 101
    .line 102
    invoke-static {p0, v2}, Lcoil3/UriKt;->getExtra(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    check-cast v2, Lkotlin/jvm/functions/Function0;

    .line 107
    .line 108
    if-nez p2, :cond_5

    .line 109
    .line 110
    if-eqz v2, :cond_6

    .line 111
    .line 112
    :cond_5
    sget-object v5, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 113
    .line 114
    sget-object v5, Lkotlinx/coroutines/internal/MainDispatcherLoader;->dispatcher:Lkotlinx/coroutines/android/HandlerContext;

    .line 115
    .line 116
    iget-object v5, v5, Lkotlinx/coroutines/android/HandlerContext;->immediate:Lkotlinx/coroutines/android/HandlerContext;

    .line 117
    .line 118
    new-instance v6, Lcoil3/gif/AnimatedImageDecoder$wrapDrawable$2;

    .line 119
    .line 120
    invoke-direct {v6, p1, p2, v2, v3}, Lcoil3/gif/AnimatedImageDecoder$wrapDrawable$2;-><init>(Landroid/graphics/drawable/Drawable;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    .line 121
    .line 122
    .line 123
    iput-object p1, v0, Lcoil3/gif/AnimatedImageDecoder$wrapDrawable$1;->L$0:Ljava/lang/Object;

    .line 124
    .line 125
    iput v4, v0, Lcoil3/gif/AnimatedImageDecoder$wrapDrawable$1;->label:I

    .line 126
    .line 127
    invoke-static {v5, v6, v0}, Lkotlinx/coroutines/AwaitKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object p2

    .line 131
    if-ne p2, v1, :cond_6

    .line 132
    .line 133
    return-object v1

    .line 134
    :cond_6
    :goto_1
    new-instance p2, Lcoil3/size/ScaleDrawable;

    .line 135
    .line 136
    iget-object p0, p0, Lcoil3/request/Options;->scale:Lcoil3/size/Scale;

    .line 137
    .line 138
    invoke-direct {p2, p1, p0}, Lcoil3/size/ScaleDrawable;-><init>(Landroid/graphics/drawable/Drawable;Lcoil3/size/Scale;)V

    .line 139
    .line 140
    .line 141
    return-object p2
.end method
