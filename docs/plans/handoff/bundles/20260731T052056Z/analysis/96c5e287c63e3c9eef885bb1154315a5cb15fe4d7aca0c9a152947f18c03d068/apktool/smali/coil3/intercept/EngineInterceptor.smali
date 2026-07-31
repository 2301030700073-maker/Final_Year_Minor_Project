.class public final Lcoil3/intercept/EngineInterceptor;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final imageLoader:Lcoil3/RealImageLoader;

.field public final memoryCacheService:Lcoil3/memory/MemoryCacheService;

.field public final requestService:Lcoil3/svg/internal/AndroidSvg;

.field public final systemCallbacks:Lokhttp3/Cache$RealCacheRequest;


# direct methods
.method public constructor <init>(Lcoil3/RealImageLoader;Lokhttp3/Cache$RealCacheRequest;Lcoil3/svg/internal/AndroidSvg;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcoil3/intercept/EngineInterceptor;->imageLoader:Lcoil3/RealImageLoader;

    .line 5
    .line 6
    iput-object p2, p0, Lcoil3/intercept/EngineInterceptor;->systemCallbacks:Lokhttp3/Cache$RealCacheRequest;

    .line 7
    .line 8
    iput-object p3, p0, Lcoil3/intercept/EngineInterceptor;->requestService:Lcoil3/svg/internal/AndroidSvg;

    .line 9
    .line 10
    new-instance p2, Lcoil3/memory/MemoryCacheService;

    .line 11
    .line 12
    invoke-direct {p2, p1, p3}, Lcoil3/memory/MemoryCacheService;-><init>(Lcoil3/RealImageLoader;Lcoil3/svg/internal/AndroidSvg;)V

    .line 13
    .line 14
    .line 15
    iput-object p2, p0, Lcoil3/intercept/EngineInterceptor;->memoryCacheService:Lcoil3/memory/MemoryCacheService;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final decode(Lcoil3/fetch/SourceFetchResult;Lcoil3/ComponentRegistry;Lcoil3/request/ImageRequest;Ljava/lang/Object;Lcoil3/request/Options;Lcoil3/EventListener$Companion$NONE$1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 6

    .line 1
    instance-of v0, p7, Lcoil3/intercept/EngineInterceptor$decode$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p7

    .line 6
    check-cast v0, Lcoil3/intercept/EngineInterceptor$decode$1;

    .line 7
    .line 8
    iget v1, v0, Lcoil3/intercept/EngineInterceptor$decode$1;->label:I

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
    iput v1, v0, Lcoil3/intercept/EngineInterceptor$decode$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcoil3/intercept/EngineInterceptor$decode$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p7}, Lcoil3/intercept/EngineInterceptor$decode$1;-><init>(Lcoil3/intercept/EngineInterceptor;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p0, v0, Lcoil3/intercept/EngineInterceptor$decode$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object p7, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v1, v0, Lcoil3/intercept/EngineInterceptor$decode$1;->label:I

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    const/4 v3, 0x1

    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    if-ne v1, v3, :cond_1

    .line 36
    .line 37
    iget p1, v0, Lcoil3/intercept/EngineInterceptor$decode$1;->I$0:I

    .line 38
    .line 39
    iget-object p2, v0, Lcoil3/intercept/EngineInterceptor$decode$1;->L$5:Lcoil3/EventListener$Companion$NONE$1;

    .line 40
    .line 41
    iget-object p3, v0, Lcoil3/intercept/EngineInterceptor$decode$1;->L$4:Lcoil3/request/Options;

    .line 42
    .line 43
    iget-object p4, v0, Lcoil3/intercept/EngineInterceptor$decode$1;->L$3:Ljava/lang/Object;

    .line 44
    .line 45
    iget-object p5, v0, Lcoil3/intercept/EngineInterceptor$decode$1;->L$2:Lcoil3/request/ImageRequest;

    .line 46
    .line 47
    iget-object p6, v0, Lcoil3/intercept/EngineInterceptor$decode$1;->L$1:Lcoil3/ComponentRegistry;

    .line 48
    .line 49
    iget-object v1, v0, Lcoil3/intercept/EngineInterceptor$decode$1;->L$0:Lcoil3/fetch/SourceFetchResult;

    .line 50
    .line 51
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    move-object v5, p6

    .line 55
    move-object p6, p2

    .line 56
    move-object p2, v5

    .line 57
    move-object v5, p5

    .line 58
    move-object p5, p3

    .line 59
    move-object p3, v5

    .line 60
    goto :goto_4

    .line 61
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 62
    .line 63
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    return-object v2

    .line 67
    :cond_2
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    const/4 p0, 0x0

    .line 71
    :goto_1
    iget-object v1, p2, Lcoil3/ComponentRegistry;->decoderFactories$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 72
    .line 73
    invoke-virtual {v1}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    check-cast v1, Ljava/util/List;

    .line 78
    .line 79
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    :goto_2
    if-ge p0, v1, :cond_4

    .line 84
    .line 85
    iget-object v4, p2, Lcoil3/ComponentRegistry;->decoderFactories$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 86
    .line 87
    invoke-virtual {v4}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    check-cast v4, Ljava/util/List;

    .line 92
    .line 93
    invoke-interface {v4, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    check-cast v4, Lcoil3/decode/Decoder$Factory;

    .line 98
    .line 99
    invoke-interface {v4, p1, p5}, Lcoil3/decode/Decoder$Factory;->create(Lcoil3/fetch/SourceFetchResult;Lcoil3/request/Options;)Lcoil3/decode/Decoder;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    if-eqz v4, :cond_3

    .line 104
    .line 105
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    new-instance v1, Lkotlin/Pair;

    .line 110
    .line 111
    invoke-direct {v1, v4, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    goto :goto_3

    .line 115
    :cond_3
    add-int/lit8 p0, p0, 0x1

    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_4
    move-object v1, v2

    .line 119
    :goto_3
    if-eqz v1, :cond_9

    .line 120
    .line 121
    iget-object p0, v1, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 122
    .line 123
    check-cast p0, Lcoil3/decode/Decoder;

    .line 124
    .line 125
    iget-object v1, v1, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 126
    .line 127
    check-cast v1, Ljava/lang/Number;

    .line 128
    .line 129
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    add-int/2addr v1, v3

    .line 134
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 135
    .line 136
    .line 137
    iput-object p1, v0, Lcoil3/intercept/EngineInterceptor$decode$1;->L$0:Lcoil3/fetch/SourceFetchResult;

    .line 138
    .line 139
    iput-object p2, v0, Lcoil3/intercept/EngineInterceptor$decode$1;->L$1:Lcoil3/ComponentRegistry;

    .line 140
    .line 141
    iput-object p3, v0, Lcoil3/intercept/EngineInterceptor$decode$1;->L$2:Lcoil3/request/ImageRequest;

    .line 142
    .line 143
    iput-object p4, v0, Lcoil3/intercept/EngineInterceptor$decode$1;->L$3:Ljava/lang/Object;

    .line 144
    .line 145
    iput-object p5, v0, Lcoil3/intercept/EngineInterceptor$decode$1;->L$4:Lcoil3/request/Options;

    .line 146
    .line 147
    iput-object p6, v0, Lcoil3/intercept/EngineInterceptor$decode$1;->L$5:Lcoil3/EventListener$Companion$NONE$1;

    .line 148
    .line 149
    iput v1, v0, Lcoil3/intercept/EngineInterceptor$decode$1;->I$0:I

    .line 150
    .line 151
    iput v3, v0, Lcoil3/intercept/EngineInterceptor$decode$1;->label:I

    .line 152
    .line 153
    invoke-interface {p0, v0}, Lcoil3/decode/Decoder;->decode(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    if-ne p0, p7, :cond_5

    .line 158
    .line 159
    return-object p7

    .line 160
    :cond_5
    move v5, v1

    .line 161
    move-object v1, p1

    .line 162
    move p1, v5

    .line 163
    :goto_4
    check-cast p0, Lcoil3/decode/DecodeResult;

    .line 164
    .line 165
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 166
    .line 167
    .line 168
    if-eqz p0, :cond_8

    .line 169
    .line 170
    new-instance p1, Lcoil3/intercept/EngineInterceptor$ExecuteResult;

    .line 171
    .line 172
    iget-object p2, p0, Lcoil3/decode/DecodeResult;->image:Lcoil3/Image;

    .line 173
    .line 174
    iget-boolean p0, p0, Lcoil3/decode/DecodeResult;->isSampled:Z

    .line 175
    .line 176
    iget-object p3, v1, Lcoil3/fetch/SourceFetchResult;->dataSource:Lcoil3/decode/DataSource;

    .line 177
    .line 178
    iget-object p4, v1, Lcoil3/fetch/SourceFetchResult;->source:Lcoil3/decode/ImageSource;

    .line 179
    .line 180
    instance-of p5, p4, Lcoil3/decode/FileImageSource;

    .line 181
    .line 182
    if-eqz p5, :cond_6

    .line 183
    .line 184
    check-cast p4, Lcoil3/decode/FileImageSource;

    .line 185
    .line 186
    goto :goto_5

    .line 187
    :cond_6
    move-object p4, v2

    .line 188
    :goto_5
    if-eqz p4, :cond_7

    .line 189
    .line 190
    iget-object v2, p4, Lcoil3/decode/FileImageSource;->diskCacheKey:Ljava/lang/String;

    .line 191
    .line 192
    :cond_7
    invoke-direct {p1, p2, p0, p3, v2}, Lcoil3/intercept/EngineInterceptor$ExecuteResult;-><init>(Lcoil3/Image;ZLcoil3/decode/DataSource;Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    return-object p1

    .line 196
    :cond_8
    move p0, p1

    .line 197
    move-object p1, v1

    .line 198
    goto :goto_1

    .line 199
    :cond_9
    const-string p0, "Unable to create a decoder that supports: "

    .line 200
    .line 201
    invoke-static {p0, p4}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;Ljava/lang/Object;)V

    .line 202
    .line 203
    .line 204
    return-object v2
.end method

.method public final execute(Lcoil3/request/ImageRequest;Ljava/lang/Object;Lcoil3/request/Options;Lcoil3/EventListener$Companion$NONE$1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 15

    .line 1
    move-object/from16 v1, p5

    .line 2
    .line 3
    instance-of v2, v1, Lcoil3/intercept/EngineInterceptor$execute$1;

    .line 4
    .line 5
    if-eqz v2, :cond_0

    .line 6
    .line 7
    move-object v2, v1

    .line 8
    check-cast v2, Lcoil3/intercept/EngineInterceptor$execute$1;

    .line 9
    .line 10
    iget v3, v2, Lcoil3/intercept/EngineInterceptor$execute$1;->label:I

    .line 11
    .line 12
    const/high16 v4, -0x80000000

    .line 13
    .line 14
    and-int v5, v3, v4

    .line 15
    .line 16
    if-eqz v5, :cond_0

    .line 17
    .line 18
    sub-int/2addr v3, v4

    .line 19
    iput v3, v2, Lcoil3/intercept/EngineInterceptor$execute$1;->label:I

    .line 20
    .line 21
    :goto_0
    move-object v6, v2

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    new-instance v2, Lcoil3/intercept/EngineInterceptor$execute$1;

    .line 24
    .line 25
    invoke-direct {v2, p0, v1}, Lcoil3/intercept/EngineInterceptor$execute$1;-><init>(Lcoil3/intercept/EngineInterceptor;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :goto_1
    iget-object v1, v6, Lcoil3/intercept/EngineInterceptor$execute$1;->result:Ljava/lang/Object;

    .line 30
    .line 31
    sget-object v9, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 32
    .line 33
    iget v2, v6, Lcoil3/intercept/EngineInterceptor$execute$1;->label:I

    .line 34
    .line 35
    const/4 v10, 0x3

    .line 36
    const/4 v11, 0x2

    .line 37
    const/4 v3, 0x1

    .line 38
    const/4 v12, 0x0

    .line 39
    if-eqz v2, :cond_4

    .line 40
    .line 41
    if-eq v2, v3, :cond_3

    .line 42
    .line 43
    if-eq v2, v11, :cond_2

    .line 44
    .line 45
    if-ne v2, v10, :cond_1

    .line 46
    .line 47
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    goto/16 :goto_9

    .line 51
    .line 52
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 53
    .line 54
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    return-object v12

    .line 58
    :cond_2
    iget-object v2, v6, Lcoil3/intercept/EngineInterceptor$execute$1;->L$3:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 59
    .line 60
    iget-object v0, v6, Lcoil3/intercept/EngineInterceptor$execute$1;->L$2:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 63
    .line 64
    iget-object v3, v6, Lcoil3/intercept/EngineInterceptor$execute$1;->L$1:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast v3, Lcoil3/EventListener$Companion$NONE$1;

    .line 67
    .line 68
    iget-object v4, v6, Lcoil3/intercept/EngineInterceptor$execute$1;->L$0:Lcoil3/request/ImageRequest;

    .line 69
    .line 70
    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    .line 72
    .line 73
    move-object v14, v6

    .line 74
    goto/16 :goto_3

    .line 75
    .line 76
    :catchall_0
    move-exception v0

    .line 77
    goto/16 :goto_a

    .line 78
    .line 79
    :cond_3
    iget-object v2, v6, Lcoil3/intercept/EngineInterceptor$execute$1;->L$6:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 80
    .line 81
    iget-object v3, v6, Lcoil3/intercept/EngineInterceptor$execute$1;->L$5:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 82
    .line 83
    iget-object v4, v6, Lcoil3/intercept/EngineInterceptor$execute$1;->L$4:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 84
    .line 85
    iget-object v5, v6, Lcoil3/intercept/EngineInterceptor$execute$1;->L$3:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 86
    .line 87
    iget-object v7, v6, Lcoil3/intercept/EngineInterceptor$execute$1;->L$2:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast v7, Lcoil3/EventListener$Companion$NONE$1;

    .line 90
    .line 91
    iget-object v8, v6, Lcoil3/intercept/EngineInterceptor$execute$1;->L$1:Ljava/lang/Object;

    .line 92
    .line 93
    iget-object v13, v6, Lcoil3/intercept/EngineInterceptor$execute$1;->L$0:Lcoil3/request/ImageRequest;

    .line 94
    .line 95
    :try_start_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 96
    .line 97
    .line 98
    move-object v14, v6

    .line 99
    move-object v6, v5

    .line 100
    move-object v5, v8

    .line 101
    move-object v8, v4

    .line 102
    move-object v4, v13

    .line 103
    goto :goto_2

    .line 104
    :catchall_1
    move-exception v0

    .line 105
    move-object v2, v3

    .line 106
    goto/16 :goto_a

    .line 107
    .line 108
    :cond_4
    invoke-static {v1}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/Object;)Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 109
    .line 110
    .line 111
    move-result-object v7

    .line 112
    move-object/from16 v1, p3

    .line 113
    .line 114
    iput-object v1, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 115
    .line 116
    new-instance v8, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 117
    .line 118
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 119
    .line 120
    .line 121
    iget-object v1, p0, Lcoil3/intercept/EngineInterceptor;->imageLoader:Lcoil3/RealImageLoader;

    .line 122
    .line 123
    iget-object v1, v1, Lcoil3/RealImageLoader;->components:Lcoil3/ComponentRegistry;

    .line 124
    .line 125
    iput-object v1, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 126
    .line 127
    new-instance v13, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 128
    .line 129
    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    .line 130
    .line 131
    .line 132
    :try_start_2
    iget-object v1, p0, Lcoil3/intercept/EngineInterceptor;->requestService:Lcoil3/svg/internal/AndroidSvg;

    .line 133
    .line 134
    iget-object v2, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 135
    .line 136
    check-cast v2, Lcoil3/request/Options;

    .line 137
    .line 138
    invoke-virtual {v1, v2}, Lcoil3/svg/internal/AndroidSvg;->updateOptions(Lcoil3/request/Options;)Lcoil3/request/Options;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    iput-object v1, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 143
    .line 144
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 145
    .line 146
    .line 147
    iget-object v1, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 148
    .line 149
    check-cast v1, Lcoil3/ComponentRegistry;

    .line 150
    .line 151
    iget-object v2, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 152
    .line 153
    move-object v4, v2

    .line 154
    check-cast v4, Lcoil3/request/Options;

    .line 155
    .line 156
    move-object/from16 v2, p1

    .line 157
    .line 158
    iput-object v2, v6, Lcoil3/intercept/EngineInterceptor$execute$1;->L$0:Lcoil3/request/ImageRequest;

    .line 159
    .line 160
    move-object/from16 v5, p2

    .line 161
    .line 162
    iput-object v5, v6, Lcoil3/intercept/EngineInterceptor$execute$1;->L$1:Ljava/lang/Object;

    .line 163
    .line 164
    move-object/from16 v14, p4

    .line 165
    .line 166
    iput-object v14, v6, Lcoil3/intercept/EngineInterceptor$execute$1;->L$2:Ljava/lang/Object;

    .line 167
    .line 168
    iput-object v7, v6, Lcoil3/intercept/EngineInterceptor$execute$1;->L$3:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 169
    .line 170
    iput-object v8, v6, Lcoil3/intercept/EngineInterceptor$execute$1;->L$4:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 171
    .line 172
    iput-object v13, v6, Lcoil3/intercept/EngineInterceptor$execute$1;->L$5:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 173
    .line 174
    iput-object v13, v6, Lcoil3/intercept/EngineInterceptor$execute$1;->L$6:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 175
    .line 176
    iput v3, v6, Lcoil3/intercept/EngineInterceptor$execute$1;->label:I

    .line 177
    .line 178
    move-object v0, p0

    .line 179
    move-object v3, v5

    .line 180
    move-object v5, v14

    .line 181
    invoke-virtual/range {v0 .. v6}, Lcoil3/intercept/EngineInterceptor;->fetch(Lcoil3/ComponentRegistry;Lcoil3/request/ImageRequest;Ljava/lang/Object;Lcoil3/request/Options;Lcoil3/EventListener$Companion$NONE$1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 185
    move-object v14, v6

    .line 186
    if-ne v1, v9, :cond_5

    .line 187
    .line 188
    goto/16 :goto_8

    .line 189
    .line 190
    :cond_5
    move-object/from16 v4, p1

    .line 191
    .line 192
    move-object/from16 v5, p2

    .line 193
    .line 194
    move-object v6, v7

    .line 195
    move-object v2, v13

    .line 196
    move-object v3, v2

    .line 197
    move-object/from16 v7, p4

    .line 198
    .line 199
    :goto_2
    :try_start_3
    iput-object v1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 200
    .line 201
    iget-object v0, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 202
    .line 203
    move-object v1, v0

    .line 204
    check-cast v1, Lcoil3/fetch/FetchResult;

    .line 205
    .line 206
    instance-of v2, v1, Lcoil3/fetch/SourceFetchResult;

    .line 207
    .line 208
    if-eqz v2, :cond_7

    .line 209
    .line 210
    iget-object v13, v4, Lcoil3/request/ImageRequest;->decoderCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    .line 211
    .line 212
    new-instance v0, Lcoil3/intercept/EngineInterceptor$intercept$2;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 213
    .line 214
    move-object v2, v3

    .line 215
    move-object v3, v8

    .line 216
    const/4 v8, 0x0

    .line 217
    move-object v1, p0

    .line 218
    :try_start_4
    invoke-direct/range {v0 .. v8}, Lcoil3/intercept/EngineInterceptor$intercept$2;-><init>(Lcoil3/intercept/EngineInterceptor;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lcoil3/request/ImageRequest;Ljava/lang/Object;Lkotlin/jvm/internal/Ref$ObjectRef;Lcoil3/EventListener$Companion$NONE$1;Lkotlin/coroutines/Continuation;)V

    .line 219
    .line 220
    .line 221
    iput-object v4, v14, Lcoil3/intercept/EngineInterceptor$execute$1;->L$0:Lcoil3/request/ImageRequest;

    .line 222
    .line 223
    iput-object v7, v14, Lcoil3/intercept/EngineInterceptor$execute$1;->L$1:Ljava/lang/Object;

    .line 224
    .line 225
    iput-object v6, v14, Lcoil3/intercept/EngineInterceptor$execute$1;->L$2:Ljava/lang/Object;

    .line 226
    .line 227
    iput-object v2, v14, Lcoil3/intercept/EngineInterceptor$execute$1;->L$3:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 228
    .line 229
    iput-object v12, v14, Lcoil3/intercept/EngineInterceptor$execute$1;->L$4:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 230
    .line 231
    iput-object v12, v14, Lcoil3/intercept/EngineInterceptor$execute$1;->L$5:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 232
    .line 233
    iput-object v12, v14, Lcoil3/intercept/EngineInterceptor$execute$1;->L$6:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 234
    .line 235
    iput v11, v14, Lcoil3/intercept/EngineInterceptor$execute$1;->label:I

    .line 236
    .line 237
    invoke-static {v13, v0, v14}, Lkotlinx/coroutines/AwaitKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v1

    .line 241
    if-ne v1, v9, :cond_6

    .line 242
    .line 243
    goto :goto_8

    .line 244
    :cond_6
    move-object v0, v6

    .line 245
    move-object v3, v7

    .line 246
    :goto_3
    check-cast v1, Lcoil3/intercept/EngineInterceptor$ExecuteResult;

    .line 247
    .line 248
    move-object v6, v0

    .line 249
    move-object v7, v3

    .line 250
    :goto_4
    move-object v3, v2

    .line 251
    goto :goto_5

    .line 252
    :cond_7
    move-object v2, v3

    .line 253
    instance-of v1, v1, Lcoil3/fetch/ImageFetchResult;

    .line 254
    .line 255
    if-eqz v1, :cond_c

    .line 256
    .line 257
    new-instance v1, Lcoil3/intercept/EngineInterceptor$ExecuteResult;

    .line 258
    .line 259
    move-object v3, v0

    .line 260
    check-cast v3, Lcoil3/fetch/ImageFetchResult;

    .line 261
    .line 262
    iget-object v3, v3, Lcoil3/fetch/ImageFetchResult;->image:Lcoil3/Image;

    .line 263
    .line 264
    move-object v5, v0

    .line 265
    check-cast v5, Lcoil3/fetch/ImageFetchResult;

    .line 266
    .line 267
    iget-boolean v5, v5, Lcoil3/fetch/ImageFetchResult;->isSampled:Z

    .line 268
    .line 269
    check-cast v0, Lcoil3/fetch/ImageFetchResult;

    .line 270
    .line 271
    iget-object v0, v0, Lcoil3/fetch/ImageFetchResult;->dataSource:Lcoil3/decode/DataSource;

    .line 272
    .line 273
    invoke-direct {v1, v3, v5, v0, v12}, Lcoil3/intercept/EngineInterceptor$ExecuteResult;-><init>(Lcoil3/Image;ZLcoil3/decode/DataSource;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 274
    .line 275
    .line 276
    goto :goto_4

    .line 277
    :goto_5
    iget-object v0, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 278
    .line 279
    instance-of v2, v0, Lcoil3/fetch/SourceFetchResult;

    .line 280
    .line 281
    if-eqz v2, :cond_8

    .line 282
    .line 283
    check-cast v0, Lcoil3/fetch/SourceFetchResult;

    .line 284
    .line 285
    goto :goto_6

    .line 286
    :cond_8
    move-object v0, v12

    .line 287
    :goto_6
    if-eqz v0, :cond_9

    .line 288
    .line 289
    iget-object v0, v0, Lcoil3/fetch/SourceFetchResult;->source:Lcoil3/decode/ImageSource;

    .line 290
    .line 291
    if-eqz v0, :cond_9

    .line 292
    .line 293
    :try_start_5
    invoke-static {v0}, Lcoil3/size/ViewSizeResolver$-CC;->m$1(Ljava/lang/AutoCloseable;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 294
    .line 295
    .line 296
    goto :goto_7

    .line 297
    :catch_0
    move-exception v0

    .line 298
    throw v0

    .line 299
    :catch_1
    :cond_9
    :goto_7
    iget-object v0, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 300
    .line 301
    check-cast v0, Lcoil3/request/Options;

    .line 302
    .line 303
    iput-object v12, v14, Lcoil3/intercept/EngineInterceptor$execute$1;->L$0:Lcoil3/request/ImageRequest;

    .line 304
    .line 305
    iput-object v12, v14, Lcoil3/intercept/EngineInterceptor$execute$1;->L$1:Ljava/lang/Object;

    .line 306
    .line 307
    iput-object v12, v14, Lcoil3/intercept/EngineInterceptor$execute$1;->L$2:Ljava/lang/Object;

    .line 308
    .line 309
    iput-object v12, v14, Lcoil3/intercept/EngineInterceptor$execute$1;->L$3:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 310
    .line 311
    iput-object v12, v14, Lcoil3/intercept/EngineInterceptor$execute$1;->L$4:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 312
    .line 313
    iput-object v12, v14, Lcoil3/intercept/EngineInterceptor$execute$1;->L$5:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 314
    .line 315
    iput-object v12, v14, Lcoil3/intercept/EngineInterceptor$execute$1;->L$6:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 316
    .line 317
    iput v10, v14, Lcoil3/intercept/EngineInterceptor$execute$1;->label:I

    .line 318
    .line 319
    invoke-static {v1, v4, v0, v7, v14}, Lkotlin/text/UStringsKt;->transform(Lcoil3/intercept/EngineInterceptor$ExecuteResult;Lcoil3/request/ImageRequest;Lcoil3/request/Options;Lcoil3/EventListener$Companion$NONE$1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    move-result-object v1

    .line 323
    if-ne v1, v9, :cond_a

    .line 324
    .line 325
    :goto_8
    return-object v9

    .line 326
    :cond_a
    :goto_9
    check-cast v1, Lcoil3/intercept/EngineInterceptor$ExecuteResult;

    .line 327
    .line 328
    iget-object v0, v1, Lcoil3/intercept/EngineInterceptor$ExecuteResult;->image:Lcoil3/Image;

    .line 329
    .line 330
    sget-object v2, Lcoil3/util/Utils_androidKt;->VALID_TRANSFORMATION_CONFIGS:[Landroid/graphics/Bitmap$Config;

    .line 331
    .line 332
    instance-of v2, v0, Lcoil3/BitmapImage;

    .line 333
    .line 334
    if-eqz v2, :cond_b

    .line 335
    .line 336
    check-cast v0, Lcoil3/BitmapImage;

    .line 337
    .line 338
    iget-object v0, v0, Lcoil3/BitmapImage;->bitmap:Landroid/graphics/Bitmap;

    .line 339
    .line 340
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    .line 341
    .line 342
    .line 343
    :cond_b
    return-object v1

    .line 344
    :cond_c
    :try_start_6
    new-instance v0, Lcoil3/network/HttpException;

    .line 345
    .line 346
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 347
    .line 348
    .line 349
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 350
    :catchall_2
    move-exception v0

    .line 351
    move-object v2, v13

    .line 352
    :goto_a
    iget-object v1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 353
    .line 354
    instance-of v2, v1, Lcoil3/fetch/SourceFetchResult;

    .line 355
    .line 356
    if-eqz v2, :cond_d

    .line 357
    .line 358
    move-object v12, v1

    .line 359
    check-cast v12, Lcoil3/fetch/SourceFetchResult;

    .line 360
    .line 361
    :cond_d
    if-eqz v12, :cond_e

    .line 362
    .line 363
    iget-object v1, v12, Lcoil3/fetch/SourceFetchResult;->source:Lcoil3/decode/ImageSource;

    .line 364
    .line 365
    if-eqz v1, :cond_e

    .line 366
    .line 367
    :try_start_7
    invoke-static {v1}, Lcoil3/size/ViewSizeResolver$-CC;->m$1(Ljava/lang/AutoCloseable;)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 368
    .line 369
    .line 370
    goto :goto_b

    .line 371
    :catch_2
    move-exception v0

    .line 372
    throw v0

    .line 373
    :catch_3
    :cond_e
    :goto_b
    throw v0
.end method

.method public final fetch(Lcoil3/ComponentRegistry;Lcoil3/request/ImageRequest;Ljava/lang/Object;Lcoil3/request/Options;Lcoil3/EventListener$Companion$NONE$1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 8

    .line 1
    instance-of v0, p6, Lcoil3/intercept/EngineInterceptor$fetch$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p6

    .line 6
    check-cast v0, Lcoil3/intercept/EngineInterceptor$fetch$1;

    .line 7
    .line 8
    iget v1, v0, Lcoil3/intercept/EngineInterceptor$fetch$1;->label:I

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
    iput v1, v0, Lcoil3/intercept/EngineInterceptor$fetch$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcoil3/intercept/EngineInterceptor$fetch$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p6}, Lcoil3/intercept/EngineInterceptor$fetch$1;-><init>(Lcoil3/intercept/EngineInterceptor;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p6, v0, Lcoil3/intercept/EngineInterceptor$fetch$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Lcoil3/intercept/EngineInterceptor$fetch$1;->label:I

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    const/4 v4, 0x1

    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    if-ne v2, v4, :cond_1

    .line 36
    .line 37
    iget p1, v0, Lcoil3/intercept/EngineInterceptor$fetch$1;->I$0:I

    .line 38
    .line 39
    iget-object p2, v0, Lcoil3/intercept/EngineInterceptor$fetch$1;->L$4:Lcoil3/EventListener$Companion$NONE$1;

    .line 40
    .line 41
    iget-object p3, v0, Lcoil3/intercept/EngineInterceptor$fetch$1;->L$3:Lcoil3/request/Options;

    .line 42
    .line 43
    iget-object p4, v0, Lcoil3/intercept/EngineInterceptor$fetch$1;->L$2:Ljava/lang/Object;

    .line 44
    .line 45
    iget-object p5, v0, Lcoil3/intercept/EngineInterceptor$fetch$1;->L$1:Lcoil3/request/ImageRequest;

    .line 46
    .line 47
    iget-object v2, v0, Lcoil3/intercept/EngineInterceptor$fetch$1;->L$0:Lcoil3/ComponentRegistry;

    .line 48
    .line 49
    invoke-static {p6}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    move-object v7, v2

    .line 53
    move v2, p1

    .line 54
    move-object p1, v7

    .line 55
    move-object v7, p5

    .line 56
    move-object p5, p2

    .line 57
    move-object p2, v7

    .line 58
    move-object v7, p4

    .line 59
    move-object p4, p3

    .line 60
    move-object p3, v7

    .line 61
    goto/16 :goto_4

    .line 62
    .line 63
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 64
    .line 65
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    return-object v3

    .line 69
    :cond_2
    invoke-static {p6}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    const/4 p6, 0x0

    .line 73
    :goto_1
    iget-object v2, p1, Lcoil3/ComponentRegistry;->fetcherFactories$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 74
    .line 75
    invoke-virtual {v2}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    check-cast v2, Ljava/util/List;

    .line 80
    .line 81
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    :goto_2
    if-ge p6, v2, :cond_4

    .line 86
    .line 87
    iget-object v5, p1, Lcoil3/ComponentRegistry;->fetcherFactories$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 88
    .line 89
    invoke-virtual {v5}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    check-cast v5, Ljava/util/List;

    .line 94
    .line 95
    invoke-interface {v5, p6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    check-cast v5, Lkotlin/Pair;

    .line 100
    .line 101
    iget-object v6, v5, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast v6, Lcoil3/fetch/Fetcher$Factory;

    .line 104
    .line 105
    iget-object v5, v5, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 106
    .line 107
    check-cast v5, Lkotlin/reflect/KClass;

    .line 108
    .line 109
    invoke-interface {v5, p3}, Lkotlin/reflect/KClass;->isInstance(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v5

    .line 113
    if-eqz v5, :cond_3

    .line 114
    .line 115
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    .line 117
    .line 118
    iget-object v5, p0, Lcoil3/intercept/EngineInterceptor;->imageLoader:Lcoil3/RealImageLoader;

    .line 119
    .line 120
    invoke-interface {v6, p3, p4, v5}, Lcoil3/fetch/Fetcher$Factory;->create(Ljava/lang/Object;Lcoil3/request/Options;Lcoil3/RealImageLoader;)Lcoil3/fetch/Fetcher;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    if-eqz v5, :cond_3

    .line 125
    .line 126
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 127
    .line 128
    .line 129
    move-result-object p6

    .line 130
    new-instance v2, Lkotlin/Pair;

    .line 131
    .line 132
    invoke-direct {v2, v5, p6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    goto :goto_3

    .line 136
    :cond_3
    add-int/lit8 p6, p6, 0x1

    .line 137
    .line 138
    goto :goto_2

    .line 139
    :cond_4
    move-object v2, v3

    .line 140
    :goto_3
    if-eqz v2, :cond_9

    .line 141
    .line 142
    iget-object p6, v2, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 143
    .line 144
    check-cast p6, Lcoil3/fetch/Fetcher;

    .line 145
    .line 146
    iget-object v2, v2, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 147
    .line 148
    check-cast v2, Ljava/lang/Number;

    .line 149
    .line 150
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 151
    .line 152
    .line 153
    move-result v2

    .line 154
    add-int/2addr v2, v4

    .line 155
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 156
    .line 157
    .line 158
    iput-object p1, v0, Lcoil3/intercept/EngineInterceptor$fetch$1;->L$0:Lcoil3/ComponentRegistry;

    .line 159
    .line 160
    iput-object p2, v0, Lcoil3/intercept/EngineInterceptor$fetch$1;->L$1:Lcoil3/request/ImageRequest;

    .line 161
    .line 162
    iput-object p3, v0, Lcoil3/intercept/EngineInterceptor$fetch$1;->L$2:Ljava/lang/Object;

    .line 163
    .line 164
    iput-object p4, v0, Lcoil3/intercept/EngineInterceptor$fetch$1;->L$3:Lcoil3/request/Options;

    .line 165
    .line 166
    iput-object p5, v0, Lcoil3/intercept/EngineInterceptor$fetch$1;->L$4:Lcoil3/EventListener$Companion$NONE$1;

    .line 167
    .line 168
    iput v2, v0, Lcoil3/intercept/EngineInterceptor$fetch$1;->I$0:I

    .line 169
    .line 170
    iput v4, v0, Lcoil3/intercept/EngineInterceptor$fetch$1;->label:I

    .line 171
    .line 172
    invoke-interface {p6, v0}, Lcoil3/fetch/Fetcher;->fetch(Lcoil3/intercept/EngineInterceptor$fetch$1;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object p6

    .line 176
    if-ne p6, v1, :cond_5

    .line 177
    .line 178
    return-object v1

    .line 179
    :cond_5
    :goto_4
    check-cast p6, Lcoil3/fetch/FetchResult;

    .line 180
    .line 181
    :try_start_0
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    .line 183
    .line 184
    if-eqz p6, :cond_6

    .line 185
    .line 186
    return-object p6

    .line 187
    :cond_6
    move p6, v2

    .line 188
    goto :goto_1

    .line 189
    :catchall_0
    move-exception p0

    .line 190
    instance-of p1, p6, Lcoil3/fetch/SourceFetchResult;

    .line 191
    .line 192
    if-eqz p1, :cond_7

    .line 193
    .line 194
    move-object v3, p6

    .line 195
    check-cast v3, Lcoil3/fetch/SourceFetchResult;

    .line 196
    .line 197
    :cond_7
    if-eqz v3, :cond_8

    .line 198
    .line 199
    iget-object p1, v3, Lcoil3/fetch/SourceFetchResult;->source:Lcoil3/decode/ImageSource;

    .line 200
    .line 201
    if-eqz p1, :cond_8

    .line 202
    .line 203
    :try_start_1
    invoke-static {p1}, Lcoil3/size/ViewSizeResolver$-CC;->m$1(Ljava/lang/AutoCloseable;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 204
    .line 205
    .line 206
    goto :goto_5

    .line 207
    :catch_0
    move-exception p0

    .line 208
    throw p0

    .line 209
    :catch_1
    :cond_8
    :goto_5
    throw p0

    .line 210
    :cond_9
    const-string p0, "Unable to create a fetcher that supports: "

    .line 211
    .line 212
    invoke-static {p0, p3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;Ljava/lang/Object;)V

    .line 213
    .line 214
    .line 215
    return-object v3
.end method

.method public final intercept(Lcoil3/intercept/RealInterceptorChain;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 21

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    move-object/from16 v0, p2

    .line 6
    .line 7
    iget-object v2, v1, Lcoil3/intercept/EngineInterceptor;->memoryCacheService:Lcoil3/memory/MemoryCacheService;

    .line 8
    .line 9
    instance-of v3, v0, Lcoil3/intercept/EngineInterceptor$intercept$1;

    .line 10
    .line 11
    if-eqz v3, :cond_0

    .line 12
    .line 13
    move-object v3, v0

    .line 14
    check-cast v3, Lcoil3/intercept/EngineInterceptor$intercept$1;

    .line 15
    .line 16
    iget v4, v3, Lcoil3/intercept/EngineInterceptor$intercept$1;->label:I

    .line 17
    .line 18
    const/high16 v5, -0x80000000

    .line 19
    .line 20
    and-int v6, v4, v5

    .line 21
    .line 22
    if-eqz v6, :cond_0

    .line 23
    .line 24
    sub-int/2addr v4, v5

    .line 25
    iput v4, v3, Lcoil3/intercept/EngineInterceptor$intercept$1;->label:I

    .line 26
    .line 27
    :goto_0
    move-object v9, v3

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    new-instance v3, Lcoil3/intercept/EngineInterceptor$intercept$1;

    .line 30
    .line 31
    invoke-direct {v3, v1, v0}, Lcoil3/intercept/EngineInterceptor$intercept$1;-><init>(Lcoil3/intercept/EngineInterceptor;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :goto_1
    iget-object v0, v9, Lcoil3/intercept/EngineInterceptor$intercept$1;->result:Ljava/lang/Object;

    .line 36
    .line 37
    sget-object v10, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 38
    .line 39
    iget v3, v9, Lcoil3/intercept/EngineInterceptor$intercept$1;->label:I

    .line 40
    .line 41
    const/4 v4, 0x0

    .line 42
    const/4 v11, 0x1

    .line 43
    if-eqz v3, :cond_2

    .line 44
    .line 45
    if-ne v3, v11, :cond_1

    .line 46
    .line 47
    iget-object v1, v9, Lcoil3/intercept/EngineInterceptor$intercept$1;->L$0:Lcoil3/intercept/RealInterceptorChain;

    .line 48
    .line 49
    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    .line 51
    .line 52
    return-object v0

    .line 53
    :catchall_0
    move-exception v0

    .line 54
    move-object v7, v1

    .line 55
    goto/16 :goto_7

    .line 56
    .line 57
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 58
    .line 59
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    return-object v4

    .line 63
    :cond_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    :try_start_1
    iget-object v0, v7, Lcoil3/intercept/RealInterceptorChain;->request:Ljava/lang/Object;

    .line 67
    .line 68
    move-object v14, v0

    .line 69
    check-cast v14, Lcoil3/request/ImageRequest;

    .line 70
    .line 71
    iget-object v0, v14, Lcoil3/request/ImageRequest;->data:Ljava/lang/Object;

    .line 72
    .line 73
    iget-object v3, v7, Lcoil3/intercept/RealInterceptorChain;->size:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast v3, Lcoil3/size/Size;

    .line 76
    .line 77
    iget-object v5, v7, Lcoil3/intercept/RealInterceptorChain;->eventListener:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast v5, Lcoil3/EventListener$Companion$NONE$1;

    .line 80
    .line 81
    iget-object v6, v1, Lcoil3/intercept/EngineInterceptor;->requestService:Lcoil3/svg/internal/AndroidSvg;

    .line 82
    .line 83
    invoke-virtual {v6, v14, v3}, Lcoil3/svg/internal/AndroidSvg;->options(Lcoil3/request/ImageRequest;Lcoil3/size/Size;)Lcoil3/request/Options;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    iget-object v8, v6, Lcoil3/request/Options;->scale:Lcoil3/size/Scale;

    .line 88
    .line 89
    iget-object v12, v1, Lcoil3/intercept/EngineInterceptor;->imageLoader:Lcoil3/RealImageLoader;

    .line 90
    .line 91
    iget-object v12, v12, Lcoil3/RealImageLoader;->components:Lcoil3/ComponentRegistry;

    .line 92
    .line 93
    iget-object v12, v12, Lcoil3/ComponentRegistry;->mappers:Ljava/util/List;

    .line 94
    .line 95
    invoke-interface {v12}, Ljava/util/Collection;->size()I

    .line 96
    .line 97
    .line 98
    move-result v13

    .line 99
    const/4 v4, 0x0

    .line 100
    :goto_2
    if-ge v4, v13, :cond_4

    .line 101
    .line 102
    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v16

    .line 106
    move-object/from16 v15, v16

    .line 107
    .line 108
    check-cast v15, Lkotlin/Pair;

    .line 109
    .line 110
    iget-object v11, v15, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 111
    .line 112
    check-cast v11, Lcoil3/map/FileMapper;

    .line 113
    .line 114
    iget-object v15, v15, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 115
    .line 116
    check-cast v15, Lkotlin/reflect/KClass;

    .line 117
    .line 118
    invoke-interface {v15, v0}, Lkotlin/reflect/KClass;->isInstance(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v15

    .line 122
    if-eqz v15, :cond_3

    .line 123
    .line 124
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v11, v0, v6}, Lcoil3/map/FileMapper;->map(Ljava/lang/Object;Lcoil3/request/Options;)Lcoil3/Uri;

    .line 128
    .line 129
    .line 130
    move-result-object v11

    .line 131
    if-eqz v11, :cond_3

    .line 132
    .line 133
    move-object v0, v11

    .line 134
    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 135
    .line 136
    const/4 v11, 0x1

    .line 137
    goto :goto_2

    .line 138
    :cond_4
    invoke-virtual {v2, v14, v0, v6, v5}, Lcoil3/memory/MemoryCacheService;->newCacheKey(Lcoil3/request/ImageRequest;Ljava/lang/Object;Lcoil3/request/Options;Lcoil3/EventListener$Companion$NONE$1;)Lcoil3/memory/MemoryCache$Key;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    if-eqz v4, :cond_5

    .line 143
    .line 144
    invoke-virtual {v2, v14, v4, v3, v8}, Lcoil3/memory/MemoryCacheService;->getCacheValue(Lcoil3/request/ImageRequest;Lcoil3/memory/MemoryCache$Key;Lcoil3/size/Size;Lcoil3/size/Scale;)Lcoil3/memory/MemoryCache$Value;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    goto :goto_3

    .line 149
    :catchall_1
    move-exception v0

    .line 150
    goto :goto_7

    .line 151
    :cond_5
    const/4 v2, 0x0

    .line 152
    :goto_3
    if-eqz v2, :cond_9

    .line 153
    .line 154
    iget-object v0, v2, Lcoil3/memory/MemoryCache$Value;->extras:Ljava/util/Map;

    .line 155
    .line 156
    new-instance v12, Lcoil3/request/SuccessResult;

    .line 157
    .line 158
    iget-object v13, v2, Lcoil3/memory/MemoryCache$Value;->image:Lcoil3/Image;

    .line 159
    .line 160
    sget-object v15, Lcoil3/decode/DataSource;->MEMORY_CACHE:Lcoil3/decode/DataSource;

    .line 161
    .line 162
    const-string v1, "coil#disk_cache_key"

    .line 163
    .line 164
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    instance-of v2, v1, Ljava/lang/String;

    .line 169
    .line 170
    if-eqz v2, :cond_6

    .line 171
    .line 172
    check-cast v1, Ljava/lang/String;

    .line 173
    .line 174
    goto :goto_4

    .line 175
    :cond_6
    const/4 v1, 0x0

    .line 176
    :goto_4
    const-string v2, "coil#is_sampled"

    .line 177
    .line 178
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    instance-of v2, v0, Ljava/lang/Boolean;

    .line 183
    .line 184
    if-eqz v2, :cond_7

    .line 185
    .line 186
    check-cast v0, Ljava/lang/Boolean;

    .line 187
    .line 188
    goto :goto_5

    .line 189
    :cond_7
    const/4 v0, 0x0

    .line 190
    :goto_5
    if-eqz v0, :cond_8

    .line 191
    .line 192
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 193
    .line 194
    .line 195
    move-result v0

    .line 196
    move/from16 v18, v0

    .line 197
    .line 198
    goto :goto_6

    .line 199
    :cond_8
    const/16 v18, 0x0

    .line 200
    .line 201
    :goto_6
    iget-boolean v0, v7, Lcoil3/intercept/RealInterceptorChain;->isPlaceholderCached:Z

    .line 202
    .line 203
    move/from16 v19, v0

    .line 204
    .line 205
    move-object/from16 v17, v1

    .line 206
    .line 207
    move-object/from16 v16, v4

    .line 208
    .line 209
    invoke-direct/range {v12 .. v19}, Lcoil3/request/SuccessResult;-><init>(Lcoil3/Image;Lcoil3/request/ImageRequest;Lcoil3/decode/DataSource;Lcoil3/memory/MemoryCache$Key;Ljava/lang/String;ZZ)V

    .line 210
    .line 211
    .line 212
    return-object v12

    .line 213
    :cond_9
    move-object/from16 v20, v6

    .line 214
    .line 215
    move-object v6, v4

    .line 216
    move-object/from16 v4, v20

    .line 217
    .line 218
    iget-object v11, v14, Lcoil3/request/ImageRequest;->fetcherCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    .line 219
    .line 220
    move-object v3, v0

    .line 221
    new-instance v0, Lcoil3/intercept/EngineInterceptor$intercept$2;

    .line 222
    .line 223
    const/4 v8, 0x0

    .line 224
    move-object v2, v14

    .line 225
    invoke-direct/range {v0 .. v8}, Lcoil3/intercept/EngineInterceptor$intercept$2;-><init>(Lcoil3/intercept/EngineInterceptor;Lcoil3/request/ImageRequest;Ljava/lang/Object;Lcoil3/request/Options;Lcoil3/EventListener$Companion$NONE$1;Lcoil3/memory/MemoryCache$Key;Lcoil3/intercept/RealInterceptorChain;Lkotlin/coroutines/Continuation;)V

    .line 226
    .line 227
    .line 228
    iput-object v7, v9, Lcoil3/intercept/EngineInterceptor$intercept$1;->L$0:Lcoil3/intercept/RealInterceptorChain;

    .line 229
    .line 230
    const/4 v1, 0x1

    .line 231
    iput v1, v9, Lcoil3/intercept/EngineInterceptor$intercept$1;->label:I

    .line 232
    .line 233
    invoke-static {v11, v0, v9}, Lkotlinx/coroutines/AwaitKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 237
    if-ne v0, v10, :cond_a

    .line 238
    .line 239
    return-object v10

    .line 240
    :cond_a
    return-object v0

    .line 241
    :goto_7
    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    .line 242
    .line 243
    if-nez v1, :cond_b

    .line 244
    .line 245
    iget-object v1, v7, Lcoil3/intercept/RealInterceptorChain;->request:Ljava/lang/Object;

    .line 246
    .line 247
    check-cast v1, Lcoil3/request/ImageRequest;

    .line 248
    .line 249
    invoke-static {v1, v0}, Lcoil3/util/UtilsKt;->ErrorResult(Lcoil3/request/ImageRequest;Ljava/lang/Throwable;)Lcoil3/request/ErrorResult;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    return-object v0

    .line 254
    :cond_b
    throw v0
.end method
