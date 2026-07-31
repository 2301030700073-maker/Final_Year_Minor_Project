.class public final Lcoil3/intercept/EngineInterceptor;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final imageLoader:Lcoil3/RealImageLoader;

.field public final memoryCacheService:Lcoil3/memory/MemoryCacheService;

.field public final requestService:Lcom/grack/nanojson/JsonBuilder;

.field public final systemCallbacks:Lcoil3/util/AndroidSystemCallbacks;


# direct methods
.method public constructor <init>(Lcoil3/RealImageLoader;Lcoil3/util/AndroidSystemCallbacks;Lcom/grack/nanojson/JsonBuilder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcoil3/intercept/EngineInterceptor;->imageLoader:Lcoil3/RealImageLoader;

    .line 5
    .line 6
    iput-object p2, p0, Lcoil3/intercept/EngineInterceptor;->systemCallbacks:Lcoil3/util/AndroidSystemCallbacks;

    .line 7
    .line 8
    iput-object p3, p0, Lcoil3/intercept/EngineInterceptor;->requestService:Lcom/grack/nanojson/JsonBuilder;

    .line 9
    .line 10
    new-instance p2, Lcoil3/memory/MemoryCacheService;

    .line 11
    .line 12
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p1, p2, Lcoil3/memory/MemoryCacheService;->imageLoader:Ljava/lang/Object;

    .line 16
    .line 17
    iput-object p2, p0, Lcoil3/intercept/EngineInterceptor;->memoryCacheService:Lcoil3/memory/MemoryCacheService;

    .line 18
    .line 19
    return-void
.end method

.method public static final access$decode(Lcoil3/intercept/EngineInterceptor;Lcoil3/fetch/SourceFetchResult;Lcoil3/ComponentRegistry;Lcoil3/request/ImageRequest;Ljava/lang/Object;Lcoil3/request/Options;Lcoil3/EventListener;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    instance-of v0, p7, Lcoil3/intercept/EngineInterceptor$decode$1;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    move-object v0, p7

    .line 9
    check-cast v0, Lcoil3/intercept/EngineInterceptor$decode$1;

    .line 10
    .line 11
    iget v1, v0, Lcoil3/intercept/EngineInterceptor$decode$1;->label:I

    .line 12
    .line 13
    const/high16 v2, -0x80000000

    .line 14
    .line 15
    and-int v3, v1, v2

    .line 16
    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    sub-int/2addr v1, v2

    .line 20
    iput v1, v0, Lcoil3/intercept/EngineInterceptor$decode$1;->label:I

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance v0, Lcoil3/intercept/EngineInterceptor$decode$1;

    .line 24
    .line 25
    invoke-direct {v0, p0, p7}, Lcoil3/intercept/EngineInterceptor$decode$1;-><init>(Lcoil3/intercept/EngineInterceptor;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    iget-object p0, v0, Lcoil3/intercept/EngineInterceptor$decode$1;->result:Ljava/lang/Object;

    .line 29
    .line 30
    iget p7, v0, Lcoil3/intercept/EngineInterceptor$decode$1;->label:I

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    const/4 v2, 0x1

    .line 34
    if-eqz p7, :cond_2

    .line 35
    .line 36
    if-ne p7, v2, :cond_1

    .line 37
    .line 38
    iget p1, v0, Lcoil3/intercept/EngineInterceptor$decode$1;->I$0:I

    .line 39
    .line 40
    iget-object p2, v0, Lcoil3/intercept/EngineInterceptor$decode$1;->L$7:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast p2, Lcoil3/decode/Decoder;

    .line 43
    .line 44
    iget-object p2, v0, Lcoil3/intercept/EngineInterceptor$decode$1;->L$6:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast p2, Lkotlin/Pair;

    .line 47
    .line 48
    iget-object p2, v0, Lcoil3/intercept/EngineInterceptor$decode$1;->L$5:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast p2, Lcoil3/EventListener;

    .line 51
    .line 52
    iget-object p3, v0, Lcoil3/intercept/EngineInterceptor$decode$1;->L$4:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast p3, Lcoil3/request/Options;

    .line 55
    .line 56
    iget-object p4, v0, Lcoil3/intercept/EngineInterceptor$decode$1;->L$3:Ljava/lang/Object;

    .line 57
    .line 58
    iget-object p5, v0, Lcoil3/intercept/EngineInterceptor$decode$1;->L$2:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast p5, Lcoil3/request/ImageRequest;

    .line 61
    .line 62
    iget-object p6, v0, Lcoil3/intercept/EngineInterceptor$decode$1;->L$1:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast p6, Lcoil3/ComponentRegistry;

    .line 65
    .line 66
    iget-object p7, v0, Lcoil3/intercept/EngineInterceptor$decode$1;->L$0:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast p7, Lcoil3/fetch/SourceFetchResult;

    .line 69
    .line 70
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    move-object v4, p6

    .line 74
    move-object p6, p2

    .line 75
    move-object p2, v4

    .line 76
    move-object v4, p5

    .line 77
    move-object p5, p3

    .line 78
    move-object p3, v4

    .line 79
    goto/16 :goto_4

    .line 80
    .line 81
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 82
    .line 83
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    return-object v1

    .line 87
    :cond_2
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    const/4 p0, 0x0

    .line 91
    :goto_1
    iget-object p7, p2, Lcoil3/ComponentRegistry;->decoderFactories$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 92
    .line 93
    invoke-virtual {p7}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p7

    .line 97
    check-cast p7, Ljava/util/List;

    .line 98
    .line 99
    invoke-interface {p7}, Ljava/util/List;->size()I

    .line 100
    .line 101
    .line 102
    move-result p7

    .line 103
    :goto_2
    if-ge p0, p7, :cond_4

    .line 104
    .line 105
    iget-object v3, p2, Lcoil3/ComponentRegistry;->decoderFactories$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 106
    .line 107
    invoke-virtual {v3}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    check-cast v3, Ljava/util/List;

    .line 112
    .line 113
    invoke-interface {v3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    check-cast v3, Lcoil3/decode/Decoder$Factory;

    .line 118
    .line 119
    invoke-interface {v3, p1, p5}, Lcoil3/decode/Decoder$Factory;->create(Lcoil3/fetch/SourceFetchResult;Lcoil3/request/Options;)Lcoil3/decode/Decoder;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    if-eqz v3, :cond_3

    .line 124
    .line 125
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    new-instance p7, Lkotlin/Pair;

    .line 130
    .line 131
    invoke-direct {p7, v3, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    goto :goto_3

    .line 135
    :cond_3
    add-int/lit8 p0, p0, 0x1

    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_4
    move-object p7, v1

    .line 139
    :goto_3
    if-eqz p7, :cond_9

    .line 140
    .line 141
    invoke-virtual {p7}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    check-cast p0, Lcoil3/decode/Decoder;

    .line 146
    .line 147
    invoke-virtual {p7}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object p7

    .line 151
    check-cast p7, Ljava/lang/Number;

    .line 152
    .line 153
    invoke-virtual {p7}, Ljava/lang/Number;->intValue()I

    .line 154
    .line 155
    .line 156
    move-result p7

    .line 157
    add-int/2addr p7, v2

    .line 158
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 159
    .line 160
    .line 161
    iput-object p1, v0, Lcoil3/intercept/EngineInterceptor$decode$1;->L$0:Ljava/lang/Object;

    .line 162
    .line 163
    iput-object p2, v0, Lcoil3/intercept/EngineInterceptor$decode$1;->L$1:Ljava/lang/Object;

    .line 164
    .line 165
    iput-object p3, v0, Lcoil3/intercept/EngineInterceptor$decode$1;->L$2:Ljava/lang/Object;

    .line 166
    .line 167
    iput-object p4, v0, Lcoil3/intercept/EngineInterceptor$decode$1;->L$3:Ljava/lang/Object;

    .line 168
    .line 169
    iput-object p5, v0, Lcoil3/intercept/EngineInterceptor$decode$1;->L$4:Ljava/lang/Object;

    .line 170
    .line 171
    iput-object p6, v0, Lcoil3/intercept/EngineInterceptor$decode$1;->L$5:Ljava/lang/Object;

    .line 172
    .line 173
    iput-object v1, v0, Lcoil3/intercept/EngineInterceptor$decode$1;->L$6:Ljava/lang/Object;

    .line 174
    .line 175
    iput-object p0, v0, Lcoil3/intercept/EngineInterceptor$decode$1;->L$7:Ljava/lang/Object;

    .line 176
    .line 177
    iput p7, v0, Lcoil3/intercept/EngineInterceptor$decode$1;->I$0:I

    .line 178
    .line 179
    iput v2, v0, Lcoil3/intercept/EngineInterceptor$decode$1;->label:I

    .line 180
    .line 181
    invoke-interface {p0, v0}, Lcoil3/decode/Decoder;->decode(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object p0

    .line 185
    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 186
    .line 187
    if-ne p0, v3, :cond_5

    .line 188
    .line 189
    return-object v3

    .line 190
    :cond_5
    move v4, p7

    .line 191
    move-object p7, p1

    .line 192
    move p1, v4

    .line 193
    :goto_4
    check-cast p0, Lcoil3/decode/DecodeResult;

    .line 194
    .line 195
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 196
    .line 197
    .line 198
    if-eqz p0, :cond_8

    .line 199
    .line 200
    new-instance p1, Lcoil3/intercept/EngineInterceptor$ExecuteResult;

    .line 201
    .line 202
    iget-object p2, p0, Lcoil3/decode/DecodeResult;->image:Lcoil3/Image;

    .line 203
    .line 204
    iget-boolean p0, p0, Lcoil3/decode/DecodeResult;->isSampled:Z

    .line 205
    .line 206
    iget-object p3, p7, Lcoil3/fetch/SourceFetchResult;->dataSource:Lcoil3/decode/DataSource;

    .line 207
    .line 208
    iget-object p4, p7, Lcoil3/fetch/SourceFetchResult;->source:Lcoil3/decode/ImageSource;

    .line 209
    .line 210
    instance-of p5, p4, Lcoil3/decode/FileImageSource;

    .line 211
    .line 212
    if-eqz p5, :cond_6

    .line 213
    .line 214
    check-cast p4, Lcoil3/decode/FileImageSource;

    .line 215
    .line 216
    goto :goto_5

    .line 217
    :cond_6
    move-object p4, v1

    .line 218
    :goto_5
    if-eqz p4, :cond_7

    .line 219
    .line 220
    iget-object v1, p4, Lcoil3/decode/FileImageSource;->diskCacheKey:Ljava/lang/String;

    .line 221
    .line 222
    :cond_7
    invoke-direct {p1, p2, p0, p3, v1}, Lcoil3/intercept/EngineInterceptor$ExecuteResult;-><init>(Lcoil3/Image;ZLcoil3/decode/DataSource;Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    return-object p1

    .line 226
    :cond_8
    move p0, p1

    .line 227
    move-object p1, p7

    .line 228
    goto/16 :goto_1

    .line 229
    .line 230
    :cond_9
    const-string p0, "Unable to create a decoder that supports: "

    .line 231
    .line 232
    invoke-static {p4, p0}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object p0

    .line 236
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m(Ljava/lang/Object;)V

    .line 237
    .line 238
    .line 239
    return-object v1
.end method

.method public static final access$execute(Lcoil3/intercept/EngineInterceptor;Lcoil3/request/ImageRequest;Ljava/lang/Object;Lcoil3/request/Options;Lcoil3/EventListener;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 15

    .line 1
    move-object/from16 v1, p5

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    instance-of v2, v1, Lcoil3/intercept/EngineInterceptor$execute$1;

    .line 7
    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    move-object v2, v1

    .line 11
    check-cast v2, Lcoil3/intercept/EngineInterceptor$execute$1;

    .line 12
    .line 13
    iget v3, v2, Lcoil3/intercept/EngineInterceptor$execute$1;->label:I

    .line 14
    .line 15
    const/high16 v4, -0x80000000

    .line 16
    .line 17
    and-int v5, v3, v4

    .line 18
    .line 19
    if-eqz v5, :cond_0

    .line 20
    .line 21
    sub-int/2addr v3, v4

    .line 22
    iput v3, v2, Lcoil3/intercept/EngineInterceptor$execute$1;->label:I

    .line 23
    .line 24
    :goto_0
    move-object v6, v2

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    new-instance v2, Lcoil3/intercept/EngineInterceptor$execute$1;

    .line 27
    .line 28
    invoke-direct {v2, p0, v1}, Lcoil3/intercept/EngineInterceptor$execute$1;-><init>(Lcoil3/intercept/EngineInterceptor;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :goto_1
    iget-object v1, v6, Lcoil3/intercept/EngineInterceptor$execute$1;->result:Ljava/lang/Object;

    .line 33
    .line 34
    iget v2, v6, Lcoil3/intercept/EngineInterceptor$execute$1;->label:I

    .line 35
    .line 36
    const/4 v9, 0x3

    .line 37
    const/4 v10, 0x2

    .line 38
    const/4 v3, 0x1

    .line 39
    const/4 v11, 0x0

    .line 40
    sget-object v12, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 41
    .line 42
    if-eqz v2, :cond_4

    .line 43
    .line 44
    if-eq v2, v3, :cond_3

    .line 45
    .line 46
    if-eq v2, v10, :cond_2

    .line 47
    .line 48
    if-ne v2, v9, :cond_1

    .line 49
    .line 50
    iget-object v0, v6, Lcoil3/intercept/EngineInterceptor$execute$1;->L$7:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v0, Lcoil3/intercept/EngineInterceptor$ExecuteResult;

    .line 53
    .line 54
    iget-object v0, v6, Lcoil3/intercept/EngineInterceptor$execute$1;->L$6:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 57
    .line 58
    iget-object v0, v6, Lcoil3/intercept/EngineInterceptor$execute$1;->L$5:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 61
    .line 62
    iget-object v0, v6, Lcoil3/intercept/EngineInterceptor$execute$1;->L$4:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 65
    .line 66
    iget-object v0, v6, Lcoil3/intercept/EngineInterceptor$execute$1;->L$3:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast v0, Lcoil3/EventListener;

    .line 69
    .line 70
    iget-object v0, v6, Lcoil3/intercept/EngineInterceptor$execute$1;->L$2:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast v0, Lcoil3/request/Options;

    .line 73
    .line 74
    iget-object v0, v6, Lcoil3/intercept/EngineInterceptor$execute$1;->L$0:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v0, Lcoil3/request/ImageRequest;

    .line 77
    .line 78
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    goto/16 :goto_9

    .line 82
    .line 83
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 84
    .line 85
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    return-object v11

    .line 89
    :cond_2
    iget-object v0, v6, Lcoil3/intercept/EngineInterceptor$execute$1;->L$6:Ljava/lang/Object;

    .line 90
    .line 91
    move-object v2, v0

    .line 92
    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 93
    .line 94
    iget-object v0, v6, Lcoil3/intercept/EngineInterceptor$execute$1;->L$5:Ljava/lang/Object;

    .line 95
    .line 96
    check-cast v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 97
    .line 98
    iget-object v0, v6, Lcoil3/intercept/EngineInterceptor$execute$1;->L$4:Ljava/lang/Object;

    .line 99
    .line 100
    check-cast v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 101
    .line 102
    iget-object v3, v6, Lcoil3/intercept/EngineInterceptor$execute$1;->L$3:Ljava/lang/Object;

    .line 103
    .line 104
    check-cast v3, Lcoil3/EventListener;

    .line 105
    .line 106
    iget-object v4, v6, Lcoil3/intercept/EngineInterceptor$execute$1;->L$2:Ljava/lang/Object;

    .line 107
    .line 108
    check-cast v4, Lcoil3/request/Options;

    .line 109
    .line 110
    iget-object v4, v6, Lcoil3/intercept/EngineInterceptor$execute$1;->L$0:Ljava/lang/Object;

    .line 111
    .line 112
    check-cast v4, Lcoil3/request/ImageRequest;

    .line 113
    .line 114
    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    .line 116
    .line 117
    move-object v14, v6

    .line 118
    goto/16 :goto_3

    .line 119
    .line 120
    :catchall_0
    move-exception v0

    .line 121
    goto/16 :goto_a

    .line 122
    .line 123
    :cond_3
    iget-object v2, v6, Lcoil3/intercept/EngineInterceptor$execute$1;->L$7:Ljava/lang/Object;

    .line 124
    .line 125
    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 126
    .line 127
    iget-object v3, v6, Lcoil3/intercept/EngineInterceptor$execute$1;->L$6:Ljava/lang/Object;

    .line 128
    .line 129
    check-cast v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 130
    .line 131
    iget-object v4, v6, Lcoil3/intercept/EngineInterceptor$execute$1;->L$5:Ljava/lang/Object;

    .line 132
    .line 133
    check-cast v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 134
    .line 135
    iget-object v5, v6, Lcoil3/intercept/EngineInterceptor$execute$1;->L$4:Ljava/lang/Object;

    .line 136
    .line 137
    check-cast v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 138
    .line 139
    iget-object v7, v6, Lcoil3/intercept/EngineInterceptor$execute$1;->L$3:Ljava/lang/Object;

    .line 140
    .line 141
    check-cast v7, Lcoil3/EventListener;

    .line 142
    .line 143
    iget-object v8, v6, Lcoil3/intercept/EngineInterceptor$execute$1;->L$2:Ljava/lang/Object;

    .line 144
    .line 145
    check-cast v8, Lcoil3/request/Options;

    .line 146
    .line 147
    iget-object v8, v6, Lcoil3/intercept/EngineInterceptor$execute$1;->L$1:Ljava/lang/Object;

    .line 148
    .line 149
    iget-object v13, v6, Lcoil3/intercept/EngineInterceptor$execute$1;->L$0:Ljava/lang/Object;

    .line 150
    .line 151
    check-cast v13, Lcoil3/request/ImageRequest;

    .line 152
    .line 153
    :try_start_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 154
    .line 155
    .line 156
    move-object v14, v6

    .line 157
    move-object v6, v5

    .line 158
    move-object v5, v8

    .line 159
    move-object v8, v4

    .line 160
    move-object v4, v13

    .line 161
    goto/16 :goto_2

    .line 162
    .line 163
    :catchall_1
    move-exception v0

    .line 164
    move-object v2, v3

    .line 165
    goto/16 :goto_a

    .line 166
    .line 167
    :cond_4
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 168
    .line 169
    .line 170
    new-instance v7, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 171
    .line 172
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 173
    .line 174
    .line 175
    move-object/from16 v1, p3

    .line 176
    .line 177
    iput-object v1, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 178
    .line 179
    new-instance v8, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 180
    .line 181
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 182
    .line 183
    .line 184
    iget-object v1, p0, Lcoil3/intercept/EngineInterceptor;->imageLoader:Lcoil3/RealImageLoader;

    .line 185
    .line 186
    iget-object v1, v1, Lcoil3/RealImageLoader;->components:Lcoil3/ComponentRegistry;

    .line 187
    .line 188
    iput-object v1, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 189
    .line 190
    new-instance v13, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 191
    .line 192
    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    .line 193
    .line 194
    .line 195
    :try_start_2
    iget-object v1, p0, Lcoil3/intercept/EngineInterceptor;->requestService:Lcom/grack/nanojson/JsonBuilder;

    .line 196
    .line 197
    iget-object v2, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 198
    .line 199
    check-cast v2, Lcoil3/request/Options;

    .line 200
    .line 201
    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonBuilder;->updateOptions(Lcoil3/request/Options;)Lcoil3/request/Options;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    iput-object v1, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 206
    .line 207
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 208
    .line 209
    .line 210
    iget-object v1, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 211
    .line 212
    check-cast v1, Lcoil3/ComponentRegistry;

    .line 213
    .line 214
    iget-object v2, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 215
    .line 216
    move-object v4, v2

    .line 217
    check-cast v4, Lcoil3/request/Options;

    .line 218
    .line 219
    move-object/from16 v2, p1

    .line 220
    .line 221
    iput-object v2, v6, Lcoil3/intercept/EngineInterceptor$execute$1;->L$0:Ljava/lang/Object;

    .line 222
    .line 223
    move-object/from16 v5, p2

    .line 224
    .line 225
    iput-object v5, v6, Lcoil3/intercept/EngineInterceptor$execute$1;->L$1:Ljava/lang/Object;

    .line 226
    .line 227
    iput-object v11, v6, Lcoil3/intercept/EngineInterceptor$execute$1;->L$2:Ljava/lang/Object;

    .line 228
    .line 229
    move-object/from16 v14, p4

    .line 230
    .line 231
    iput-object v14, v6, Lcoil3/intercept/EngineInterceptor$execute$1;->L$3:Ljava/lang/Object;

    .line 232
    .line 233
    iput-object v7, v6, Lcoil3/intercept/EngineInterceptor$execute$1;->L$4:Ljava/lang/Object;

    .line 234
    .line 235
    iput-object v8, v6, Lcoil3/intercept/EngineInterceptor$execute$1;->L$5:Ljava/lang/Object;

    .line 236
    .line 237
    iput-object v13, v6, Lcoil3/intercept/EngineInterceptor$execute$1;->L$6:Ljava/lang/Object;

    .line 238
    .line 239
    iput-object v13, v6, Lcoil3/intercept/EngineInterceptor$execute$1;->L$7:Ljava/lang/Object;

    .line 240
    .line 241
    iput v3, v6, Lcoil3/intercept/EngineInterceptor$execute$1;->label:I

    .line 242
    .line 243
    move-object v0, p0

    .line 244
    move-object v3, v5

    .line 245
    move-object v5, v14

    .line 246
    invoke-virtual/range {v0 .. v6}, Lcoil3/intercept/EngineInterceptor;->fetch(Lcoil3/ComponentRegistry;Lcoil3/request/ImageRequest;Ljava/lang/Object;Lcoil3/request/Options;Lcoil3/EventListener;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 250
    move-object v14, v6

    .line 251
    if-ne v1, v12, :cond_5

    .line 252
    .line 253
    goto/16 :goto_8

    .line 254
    .line 255
    :cond_5
    move-object/from16 v4, p1

    .line 256
    .line 257
    move-object/from16 v5, p2

    .line 258
    .line 259
    move-object v6, v7

    .line 260
    move-object v2, v13

    .line 261
    move-object v3, v2

    .line 262
    move-object/from16 v7, p4

    .line 263
    .line 264
    :goto_2
    :try_start_3
    iput-object v1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 265
    .line 266
    iget-object v0, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 267
    .line 268
    move-object v1, v0

    .line 269
    check-cast v1, Lcoil3/fetch/FetchResult;

    .line 270
    .line 271
    instance-of v2, v1, Lcoil3/fetch/SourceFetchResult;

    .line 272
    .line 273
    if-eqz v2, :cond_7

    .line 274
    .line 275
    iget-object v13, v4, Lcoil3/request/ImageRequest;->decoderCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    .line 276
    .line 277
    new-instance v0, Lcoil3/intercept/EngineInterceptor$execute$executeResult$1;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 278
    .line 279
    move-object v2, v3

    .line 280
    move-object v3, v8

    .line 281
    const/4 v8, 0x0

    .line 282
    move-object v1, p0

    .line 283
    :try_start_4
    invoke-direct/range {v0 .. v8}, Lcoil3/intercept/EngineInterceptor$execute$executeResult$1;-><init>(Lcoil3/intercept/EngineInterceptor;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lcoil3/request/ImageRequest;Ljava/lang/Object;Lkotlin/jvm/internal/Ref$ObjectRef;Lcoil3/EventListener;Lkotlin/coroutines/Continuation;)V

    .line 284
    .line 285
    .line 286
    iput-object v4, v14, Lcoil3/intercept/EngineInterceptor$execute$1;->L$0:Ljava/lang/Object;

    .line 287
    .line 288
    iput-object v11, v14, Lcoil3/intercept/EngineInterceptor$execute$1;->L$1:Ljava/lang/Object;

    .line 289
    .line 290
    iput-object v11, v14, Lcoil3/intercept/EngineInterceptor$execute$1;->L$2:Ljava/lang/Object;

    .line 291
    .line 292
    iput-object v7, v14, Lcoil3/intercept/EngineInterceptor$execute$1;->L$3:Ljava/lang/Object;

    .line 293
    .line 294
    iput-object v6, v14, Lcoil3/intercept/EngineInterceptor$execute$1;->L$4:Ljava/lang/Object;

    .line 295
    .line 296
    iput-object v11, v14, Lcoil3/intercept/EngineInterceptor$execute$1;->L$5:Ljava/lang/Object;

    .line 297
    .line 298
    iput-object v2, v14, Lcoil3/intercept/EngineInterceptor$execute$1;->L$6:Ljava/lang/Object;

    .line 299
    .line 300
    iput-object v11, v14, Lcoil3/intercept/EngineInterceptor$execute$1;->L$7:Ljava/lang/Object;

    .line 301
    .line 302
    iput v10, v14, Lcoil3/intercept/EngineInterceptor$execute$1;->label:I

    .line 303
    .line 304
    invoke-static {v13, v0, v14}, Lkotlinx/coroutines/JobKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object v1

    .line 308
    if-ne v1, v12, :cond_6

    .line 309
    .line 310
    goto :goto_8

    .line 311
    :cond_6
    move-object v0, v6

    .line 312
    move-object v3, v7

    .line 313
    :goto_3
    check-cast v1, Lcoil3/intercept/EngineInterceptor$ExecuteResult;

    .line 314
    .line 315
    move-object v6, v0

    .line 316
    move-object v7, v3

    .line 317
    :goto_4
    move-object v3, v2

    .line 318
    goto :goto_5

    .line 319
    :cond_7
    move-object v2, v3

    .line 320
    instance-of v1, v1, Lcoil3/fetch/ImageFetchResult;

    .line 321
    .line 322
    if-eqz v1, :cond_c

    .line 323
    .line 324
    new-instance v1, Lcoil3/intercept/EngineInterceptor$ExecuteResult;

    .line 325
    .line 326
    move-object v3, v0

    .line 327
    check-cast v3, Lcoil3/fetch/ImageFetchResult;

    .line 328
    .line 329
    iget-object v3, v3, Lcoil3/fetch/ImageFetchResult;->image:Lcoil3/Image;

    .line 330
    .line 331
    move-object v5, v0

    .line 332
    check-cast v5, Lcoil3/fetch/ImageFetchResult;

    .line 333
    .line 334
    iget-boolean v5, v5, Lcoil3/fetch/ImageFetchResult;->isSampled:Z

    .line 335
    .line 336
    check-cast v0, Lcoil3/fetch/ImageFetchResult;

    .line 337
    .line 338
    iget-object v0, v0, Lcoil3/fetch/ImageFetchResult;->dataSource:Lcoil3/decode/DataSource;

    .line 339
    .line 340
    invoke-direct {v1, v3, v5, v0, v11}, Lcoil3/intercept/EngineInterceptor$ExecuteResult;-><init>(Lcoil3/Image;ZLcoil3/decode/DataSource;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 341
    .line 342
    .line 343
    goto :goto_4

    .line 344
    :goto_5
    iget-object v0, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 345
    .line 346
    instance-of v2, v0, Lcoil3/fetch/SourceFetchResult;

    .line 347
    .line 348
    if-eqz v2, :cond_8

    .line 349
    .line 350
    check-cast v0, Lcoil3/fetch/SourceFetchResult;

    .line 351
    .line 352
    goto :goto_6

    .line 353
    :cond_8
    move-object v0, v11

    .line 354
    :goto_6
    if-eqz v0, :cond_9

    .line 355
    .line 356
    iget-object v0, v0, Lcoil3/fetch/SourceFetchResult;->source:Lcoil3/decode/ImageSource;

    .line 357
    .line 358
    if-eqz v0, :cond_9

    .line 359
    .line 360
    :try_start_5
    invoke-static {v0}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/AutoCloseable;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 361
    .line 362
    .line 363
    goto :goto_7

    .line 364
    :catch_0
    move-exception v0

    .line 365
    throw v0

    .line 366
    :catch_1
    :cond_9
    :goto_7
    iget-object v0, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 367
    .line 368
    check-cast v0, Lcoil3/request/Options;

    .line 369
    .line 370
    iput-object v11, v14, Lcoil3/intercept/EngineInterceptor$execute$1;->L$0:Ljava/lang/Object;

    .line 371
    .line 372
    iput-object v11, v14, Lcoil3/intercept/EngineInterceptor$execute$1;->L$1:Ljava/lang/Object;

    .line 373
    .line 374
    iput-object v11, v14, Lcoil3/intercept/EngineInterceptor$execute$1;->L$2:Ljava/lang/Object;

    .line 375
    .line 376
    iput-object v11, v14, Lcoil3/intercept/EngineInterceptor$execute$1;->L$3:Ljava/lang/Object;

    .line 377
    .line 378
    iput-object v11, v14, Lcoil3/intercept/EngineInterceptor$execute$1;->L$4:Ljava/lang/Object;

    .line 379
    .line 380
    iput-object v11, v14, Lcoil3/intercept/EngineInterceptor$execute$1;->L$5:Ljava/lang/Object;

    .line 381
    .line 382
    iput-object v11, v14, Lcoil3/intercept/EngineInterceptor$execute$1;->L$6:Ljava/lang/Object;

    .line 383
    .line 384
    iput-object v11, v14, Lcoil3/intercept/EngineInterceptor$execute$1;->L$7:Ljava/lang/Object;

    .line 385
    .line 386
    iput v9, v14, Lcoil3/intercept/EngineInterceptor$execute$1;->label:I

    .line 387
    .line 388
    invoke-static {v1, v4, v0, v7, v14}, Lcoil3/intercept/EngineInterceptorKt;->transform(Lcoil3/intercept/EngineInterceptor$ExecuteResult;Lcoil3/request/ImageRequest;Lcoil3/request/Options;Lcoil3/EventListener;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 389
    .line 390
    .line 391
    move-result-object v1

    .line 392
    if-ne v1, v12, :cond_a

    .line 393
    .line 394
    :goto_8
    return-object v12

    .line 395
    :cond_a
    :goto_9
    check-cast v1, Lcoil3/intercept/EngineInterceptor$ExecuteResult;

    .line 396
    .line 397
    iget-object v0, v1, Lcoil3/intercept/EngineInterceptor$ExecuteResult;->image:Lcoil3/Image;

    .line 398
    .line 399
    sget-object v2, Lcoil3/util/Utils_androidKt;->VALID_TRANSFORMATION_CONFIGS:[Landroid/graphics/Bitmap$Config;

    .line 400
    .line 401
    instance-of v2, v0, Lcoil3/BitmapImage;

    .line 402
    .line 403
    if-eqz v2, :cond_b

    .line 404
    .line 405
    check-cast v0, Lcoil3/BitmapImage;

    .line 406
    .line 407
    iget-object v0, v0, Lcoil3/BitmapImage;->bitmap:Landroid/graphics/Bitmap;

    .line 408
    .line 409
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    .line 410
    .line 411
    .line 412
    :cond_b
    return-object v1

    .line 413
    :cond_c
    :try_start_6
    new-instance v0, Lorg/jsoup/SerializationException;

    .line 414
    .line 415
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 416
    .line 417
    .line 418
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 419
    :catchall_2
    move-exception v0

    .line 420
    move-object v2, v13

    .line 421
    :goto_a
    iget-object v1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 422
    .line 423
    instance-of v2, v1, Lcoil3/fetch/SourceFetchResult;

    .line 424
    .line 425
    if-eqz v2, :cond_d

    .line 426
    .line 427
    move-object v11, v1

    .line 428
    check-cast v11, Lcoil3/fetch/SourceFetchResult;

    .line 429
    .line 430
    :cond_d
    if-eqz v11, :cond_e

    .line 431
    .line 432
    iget-object v1, v11, Lcoil3/fetch/SourceFetchResult;->source:Lcoil3/decode/ImageSource;

    .line 433
    .line 434
    if-eqz v1, :cond_e

    .line 435
    .line 436
    :try_start_7
    invoke-static {v1}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/AutoCloseable;)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 437
    .line 438
    .line 439
    goto :goto_b

    .line 440
    :catch_2
    move-exception v0

    .line 441
    throw v0

    .line 442
    :catch_3
    :cond_e
    :goto_b
    throw v0
.end method


# virtual methods
.method public final fetch(Lcoil3/ComponentRegistry;Lcoil3/request/ImageRequest;Ljava/lang/Object;Lcoil3/request/Options;Lcoil3/EventListener;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 7

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
    iget v1, v0, Lcoil3/intercept/EngineInterceptor$fetch$1;->label:I

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
    iget p1, v0, Lcoil3/intercept/EngineInterceptor$fetch$1;->I$0:I

    .line 36
    .line 37
    iget-object p2, v0, Lcoil3/intercept/EngineInterceptor$fetch$1;->L$6:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast p2, Lcoil3/fetch/Fetcher;

    .line 40
    .line 41
    iget-object p2, v0, Lcoil3/intercept/EngineInterceptor$fetch$1;->L$5:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast p2, Lkotlin/Pair;

    .line 44
    .line 45
    iget-object p2, v0, Lcoil3/intercept/EngineInterceptor$fetch$1;->L$4:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast p2, Lcoil3/EventListener;

    .line 48
    .line 49
    iget-object p3, v0, Lcoil3/intercept/EngineInterceptor$fetch$1;->L$3:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast p3, Lcoil3/request/Options;

    .line 52
    .line 53
    iget-object p4, v0, Lcoil3/intercept/EngineInterceptor$fetch$1;->L$2:Ljava/lang/Object;

    .line 54
    .line 55
    iget-object p5, v0, Lcoil3/intercept/EngineInterceptor$fetch$1;->L$1:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast p5, Lcoil3/request/ImageRequest;

    .line 58
    .line 59
    iget-object v1, v0, Lcoil3/intercept/EngineInterceptor$fetch$1;->L$0:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v1, Lcoil3/ComponentRegistry;

    .line 62
    .line 63
    invoke-static {p6}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    move-object v6, v1

    .line 67
    move v1, p1

    .line 68
    move-object p1, v6

    .line 69
    move-object v6, p5

    .line 70
    move-object p5, p2

    .line 71
    move-object p2, v6

    .line 72
    move-object v6, p4

    .line 73
    move-object p4, p3

    .line 74
    move-object p3, v6

    .line 75
    goto/16 :goto_4

    .line 76
    .line 77
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 78
    .line 79
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    return-object v2

    .line 83
    :cond_2
    invoke-static {p6}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    const/4 p6, 0x0

    .line 87
    :goto_1
    iget-object v1, p1, Lcoil3/ComponentRegistry;->fetcherFactories$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 88
    .line 89
    invoke-virtual {v1}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    check-cast v1, Ljava/util/List;

    .line 94
    .line 95
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    :goto_2
    if-ge p6, v1, :cond_4

    .line 100
    .line 101
    iget-object v4, p1, Lcoil3/ComponentRegistry;->fetcherFactories$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 102
    .line 103
    invoke-virtual {v4}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    check-cast v4, Ljava/util/List;

    .line 108
    .line 109
    invoke-interface {v4, p6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    check-cast v4, Lkotlin/Pair;

    .line 114
    .line 115
    invoke-virtual {v4}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    check-cast v5, Lcoil3/fetch/Fetcher$Factory;

    .line 120
    .line 121
    invoke-virtual {v4}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    check-cast v4, Lkotlin/jvm/internal/ClassReference;

    .line 126
    .line 127
    invoke-virtual {v4, p3}, Lkotlin/jvm/internal/ClassReference;->isInstance(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v4

    .line 131
    if-eqz v4, :cond_3

    .line 132
    .line 133
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 134
    .line 135
    .line 136
    iget-object v4, p0, Lcoil3/intercept/EngineInterceptor;->imageLoader:Lcoil3/RealImageLoader;

    .line 137
    .line 138
    invoke-interface {v5, p3, p4, v4}, Lcoil3/fetch/Fetcher$Factory;->create(Ljava/lang/Object;Lcoil3/request/Options;Lcoil3/RealImageLoader;)Lcoil3/fetch/Fetcher;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    if-eqz v4, :cond_3

    .line 143
    .line 144
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 145
    .line 146
    .line 147
    move-result-object p6

    .line 148
    new-instance v1, Lkotlin/Pair;

    .line 149
    .line 150
    invoke-direct {v1, v4, p6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    goto :goto_3

    .line 154
    :cond_3
    add-int/lit8 p6, p6, 0x1

    .line 155
    .line 156
    goto :goto_2

    .line 157
    :cond_4
    move-object v1, v2

    .line 158
    :goto_3
    if-eqz v1, :cond_9

    .line 159
    .line 160
    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object p6

    .line 164
    check-cast p6, Lcoil3/fetch/Fetcher;

    .line 165
    .line 166
    invoke-virtual {v1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    check-cast v1, Ljava/lang/Number;

    .line 171
    .line 172
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 173
    .line 174
    .line 175
    move-result v1

    .line 176
    add-int/2addr v1, v3

    .line 177
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 178
    .line 179
    .line 180
    iput-object p1, v0, Lcoil3/intercept/EngineInterceptor$fetch$1;->L$0:Ljava/lang/Object;

    .line 181
    .line 182
    iput-object p2, v0, Lcoil3/intercept/EngineInterceptor$fetch$1;->L$1:Ljava/lang/Object;

    .line 183
    .line 184
    iput-object p3, v0, Lcoil3/intercept/EngineInterceptor$fetch$1;->L$2:Ljava/lang/Object;

    .line 185
    .line 186
    iput-object p4, v0, Lcoil3/intercept/EngineInterceptor$fetch$1;->L$3:Ljava/lang/Object;

    .line 187
    .line 188
    iput-object p5, v0, Lcoil3/intercept/EngineInterceptor$fetch$1;->L$4:Ljava/lang/Object;

    .line 189
    .line 190
    iput-object v2, v0, Lcoil3/intercept/EngineInterceptor$fetch$1;->L$5:Ljava/lang/Object;

    .line 191
    .line 192
    iput-object p6, v0, Lcoil3/intercept/EngineInterceptor$fetch$1;->L$6:Ljava/lang/Object;

    .line 193
    .line 194
    iput v1, v0, Lcoil3/intercept/EngineInterceptor$fetch$1;->I$0:I

    .line 195
    .line 196
    iput v3, v0, Lcoil3/intercept/EngineInterceptor$fetch$1;->label:I

    .line 197
    .line 198
    invoke-interface {p6, v0}, Lcoil3/fetch/Fetcher;->fetch(Lcoil3/intercept/EngineInterceptor$fetch$1;)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object p6

    .line 202
    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 203
    .line 204
    if-ne p6, v4, :cond_5

    .line 205
    .line 206
    return-object v4

    .line 207
    :cond_5
    :goto_4
    check-cast p6, Lcoil3/fetch/FetchResult;

    .line 208
    .line 209
    :try_start_0
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    .line 211
    .line 212
    if-eqz p6, :cond_6

    .line 213
    .line 214
    return-object p6

    .line 215
    :cond_6
    move p6, v1

    .line 216
    goto/16 :goto_1

    .line 217
    .line 218
    :catchall_0
    move-exception p0

    .line 219
    instance-of p1, p6, Lcoil3/fetch/SourceFetchResult;

    .line 220
    .line 221
    if-eqz p1, :cond_7

    .line 222
    .line 223
    move-object v2, p6

    .line 224
    check-cast v2, Lcoil3/fetch/SourceFetchResult;

    .line 225
    .line 226
    :cond_7
    if-eqz v2, :cond_8

    .line 227
    .line 228
    iget-object p1, v2, Lcoil3/fetch/SourceFetchResult;->source:Lcoil3/decode/ImageSource;

    .line 229
    .line 230
    if-eqz p1, :cond_8

    .line 231
    .line 232
    :try_start_1
    invoke-static {p1}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/AutoCloseable;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 233
    .line 234
    .line 235
    goto :goto_5

    .line 236
    :catch_0
    move-exception p0

    .line 237
    throw p0

    .line 238
    :catch_1
    :cond_8
    :goto_5
    throw p0

    .line 239
    :cond_9
    const-string p0, "Unable to create a fetcher that supports: "

    .line 240
    .line 241
    invoke-static {p3, p0}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object p0

    .line 245
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m(Ljava/lang/Object;)V

    .line 246
    .line 247
    .line 248
    return-object v2
.end method

.method public final intercept(Lcoil3/intercept/RealInterceptorChain;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 20

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
    iget v3, v9, Lcoil3/intercept/EngineInterceptor$intercept$1;->label:I

    .line 38
    .line 39
    const/4 v10, 0x1

    .line 40
    const/4 v11, 0x0

    .line 41
    if-eqz v3, :cond_2

    .line 42
    .line 43
    if-ne v3, v10, :cond_1

    .line 44
    .line 45
    iget-object v1, v9, Lcoil3/intercept/EngineInterceptor$intercept$1;->L$9:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v1, Lcoil3/memory/MemoryCache$Value;

    .line 48
    .line 49
    iget-object v1, v9, Lcoil3/intercept/EngineInterceptor$intercept$1;->L$8:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v1, Lcoil3/memory/MemoryCache$Key;

    .line 52
    .line 53
    iget-object v1, v9, Lcoil3/intercept/EngineInterceptor$intercept$1;->L$6:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v1, Lcoil3/size/Scale;

    .line 56
    .line 57
    iget-object v1, v9, Lcoil3/intercept/EngineInterceptor$intercept$1;->L$5:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v1, Lcoil3/request/Options;

    .line 60
    .line 61
    iget-object v1, v9, Lcoil3/intercept/EngineInterceptor$intercept$1;->L$4:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v1, Lcoil3/EventListener;

    .line 64
    .line 65
    iget-object v1, v9, Lcoil3/intercept/EngineInterceptor$intercept$1;->L$3:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v1, Lcoil3/size/Size;

    .line 68
    .line 69
    iget-object v1, v9, Lcoil3/intercept/EngineInterceptor$intercept$1;->L$1:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v1, Lcoil3/request/ImageRequest;

    .line 72
    .line 73
    iget-object v1, v9, Lcoil3/intercept/EngineInterceptor$intercept$1;->L$0:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast v1, Lcoil3/intercept/Interceptor$Chain;

    .line 76
    .line 77
    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    .line 79
    .line 80
    return-object v0

    .line 81
    :catchall_0
    move-exception v0

    .line 82
    move-object v7, v1

    .line 83
    goto/16 :goto_6

    .line 84
    .line 85
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 86
    .line 87
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    return-object v11

    .line 91
    :cond_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    :try_start_1
    iget-object v14, v7, Lcoil3/intercept/RealInterceptorChain;->request:Lcoil3/request/ImageRequest;

    .line 95
    .line 96
    iget-object v0, v14, Lcoil3/request/ImageRequest;->data:Ljava/lang/Object;

    .line 97
    .line 98
    iget-object v3, v7, Lcoil3/intercept/RealInterceptorChain;->size:Lcoil3/size/Size;

    .line 99
    .line 100
    iget-object v5, v7, Lcoil3/intercept/RealInterceptorChain;->eventListener:Lcoil3/EventListener;

    .line 101
    .line 102
    iget-object v4, v1, Lcoil3/intercept/EngineInterceptor;->requestService:Lcom/grack/nanojson/JsonBuilder;

    .line 103
    .line 104
    invoke-virtual {v4, v14, v3}, Lcom/grack/nanojson/JsonBuilder;->options(Lcoil3/request/ImageRequest;Lcoil3/size/Size;)Lcoil3/request/Options;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    iget-object v6, v4, Lcoil3/request/Options;->scale:Lcoil3/size/Scale;

    .line 109
    .line 110
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    .line 112
    .line 113
    iget-object v8, v1, Lcoil3/intercept/EngineInterceptor;->imageLoader:Lcoil3/RealImageLoader;

    .line 114
    .line 115
    iget-object v8, v8, Lcoil3/RealImageLoader;->components:Lcoil3/ComponentRegistry;

    .line 116
    .line 117
    iget-object v8, v8, Lcoil3/ComponentRegistry;->mappers:Ljava/util/List;

    .line 118
    .line 119
    invoke-interface {v8}, Ljava/util/Collection;->size()I

    .line 120
    .line 121
    .line 122
    move-result v12

    .line 123
    const/4 v15, 0x0

    .line 124
    :goto_2
    if-ge v15, v12, :cond_4

    .line 125
    .line 126
    invoke-interface {v8, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v16

    .line 130
    check-cast v16, Lkotlin/Pair;

    .line 131
    .line 132
    invoke-virtual/range {v16 .. v16}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v17

    .line 136
    move-object/from16 v13, v17

    .line 137
    .line 138
    check-cast v13, Lcoil3/map/FileMapper;

    .line 139
    .line 140
    invoke-virtual/range {v16 .. v16}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v16

    .line 144
    move-object/from16 v10, v16

    .line 145
    .line 146
    check-cast v10, Lkotlin/jvm/internal/ClassReference;

    .line 147
    .line 148
    invoke-virtual {v10, v0}, Lkotlin/jvm/internal/ClassReference;->isInstance(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result v10

    .line 152
    if-eqz v10, :cond_3

    .line 153
    .line 154
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v13, v0, v4}, Lcoil3/map/FileMapper;->map(Ljava/lang/Object;Lcoil3/request/Options;)Lcoil3/Uri;

    .line 158
    .line 159
    .line 160
    move-result-object v10

    .line 161
    if-eqz v10, :cond_3

    .line 162
    .line 163
    move-object v0, v10

    .line 164
    :cond_3
    add-int/lit8 v15, v15, 0x1

    .line 165
    .line 166
    const/4 v10, 0x1

    .line 167
    goto :goto_2

    .line 168
    :cond_4
    invoke-virtual {v2, v14, v0, v4, v5}, Lcoil3/memory/MemoryCacheService;->newCacheKey(Lcoil3/request/ImageRequest;Ljava/lang/Object;Lcoil3/request/Options;Lcoil3/EventListener;)Lcoil3/memory/MemoryCache$Key;

    .line 169
    .line 170
    .line 171
    move-result-object v8

    .line 172
    if-eqz v8, :cond_5

    .line 173
    .line 174
    invoke-virtual {v2, v14, v8, v3, v6}, Lcoil3/memory/MemoryCacheService;->getCacheValue(Lcoil3/request/ImageRequest;Lcoil3/memory/MemoryCache$Key;Lcoil3/size/Size;Lcoil3/size/Scale;)Lcoil3/memory/MemoryCache$Value;

    .line 175
    .line 176
    .line 177
    move-result-object v2

    .line 178
    goto :goto_3

    .line 179
    :catchall_1
    move-exception v0

    .line 180
    goto/16 :goto_6

    .line 181
    .line 182
    :cond_5
    move-object v2, v11

    .line 183
    :goto_3
    if-eqz v2, :cond_9

    .line 184
    .line 185
    iget-object v0, v2, Lcoil3/memory/MemoryCache$Value;->extras:Ljava/util/Map;

    .line 186
    .line 187
    new-instance v12, Lcoil3/request/SuccessResult;

    .line 188
    .line 189
    iget-object v13, v2, Lcoil3/memory/MemoryCache$Value;->image:Lcoil3/Image;

    .line 190
    .line 191
    sget-object v15, Lcoil3/decode/DataSource;->MEMORY_CACHE:Lcoil3/decode/DataSource;

    .line 192
    .line 193
    const-string v1, "coil#disk_cache_key"

    .line 194
    .line 195
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    instance-of v2, v1, Ljava/lang/String;

    .line 200
    .line 201
    if-eqz v2, :cond_6

    .line 202
    .line 203
    check-cast v1, Ljava/lang/String;

    .line 204
    .line 205
    move-object/from16 v17, v1

    .line 206
    .line 207
    goto :goto_4

    .line 208
    :cond_6
    move-object/from16 v17, v11

    .line 209
    .line 210
    :goto_4
    const-string v1, "coil#is_sampled"

    .line 211
    .line 212
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    instance-of v1, v0, Ljava/lang/Boolean;

    .line 217
    .line 218
    if-eqz v1, :cond_7

    .line 219
    .line 220
    move-object v11, v0

    .line 221
    check-cast v11, Ljava/lang/Boolean;

    .line 222
    .line 223
    :cond_7
    if-eqz v11, :cond_8

    .line 224
    .line 225
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    .line 226
    .line 227
    .line 228
    move-result v0

    .line 229
    move/from16 v18, v0

    .line 230
    .line 231
    goto :goto_5

    .line 232
    :cond_8
    const/16 v18, 0x0

    .line 233
    .line 234
    :goto_5
    iget-boolean v0, v7, Lcoil3/intercept/RealInterceptorChain;->isPlaceholderCached:Z

    .line 235
    .line 236
    move/from16 v19, v0

    .line 237
    .line 238
    move-object/from16 v16, v8

    .line 239
    .line 240
    invoke-direct/range {v12 .. v19}, Lcoil3/request/SuccessResult;-><init>(Lcoil3/Image;Lcoil3/request/ImageRequest;Lcoil3/decode/DataSource;Lcoil3/memory/MemoryCache$Key;Ljava/lang/String;ZZ)V

    .line 241
    .line 242
    .line 243
    return-object v12

    .line 244
    :cond_9
    move-object/from16 v16, v8

    .line 245
    .line 246
    iget-object v10, v14, Lcoil3/request/ImageRequest;->fetcherCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    .line 247
    .line 248
    move-object v3, v0

    .line 249
    new-instance v0, Lcoil3/intercept/EngineInterceptor$intercept$2;

    .line 250
    .line 251
    const/4 v8, 0x0

    .line 252
    move-object v2, v14

    .line 253
    move-object/from16 v6, v16

    .line 254
    .line 255
    invoke-direct/range {v0 .. v8}, Lcoil3/intercept/EngineInterceptor$intercept$2;-><init>(Lcoil3/intercept/EngineInterceptor;Lcoil3/request/ImageRequest;Ljava/lang/Object;Lcoil3/request/Options;Lcoil3/EventListener;Lcoil3/memory/MemoryCache$Key;Lcoil3/intercept/Interceptor$Chain;Lkotlin/coroutines/Continuation;)V

    .line 256
    .line 257
    .line 258
    iput-object v7, v9, Lcoil3/intercept/EngineInterceptor$intercept$1;->L$0:Ljava/lang/Object;

    .line 259
    .line 260
    iput-object v11, v9, Lcoil3/intercept/EngineInterceptor$intercept$1;->L$1:Ljava/lang/Object;

    .line 261
    .line 262
    iput-object v11, v9, Lcoil3/intercept/EngineInterceptor$intercept$1;->L$2:Ljava/lang/Object;

    .line 263
    .line 264
    iput-object v11, v9, Lcoil3/intercept/EngineInterceptor$intercept$1;->L$3:Ljava/lang/Object;

    .line 265
    .line 266
    iput-object v11, v9, Lcoil3/intercept/EngineInterceptor$intercept$1;->L$4:Ljava/lang/Object;

    .line 267
    .line 268
    iput-object v11, v9, Lcoil3/intercept/EngineInterceptor$intercept$1;->L$5:Ljava/lang/Object;

    .line 269
    .line 270
    iput-object v11, v9, Lcoil3/intercept/EngineInterceptor$intercept$1;->L$6:Ljava/lang/Object;

    .line 271
    .line 272
    iput-object v11, v9, Lcoil3/intercept/EngineInterceptor$intercept$1;->L$7:Ljava/lang/Object;

    .line 273
    .line 274
    iput-object v11, v9, Lcoil3/intercept/EngineInterceptor$intercept$1;->L$8:Ljava/lang/Object;

    .line 275
    .line 276
    iput-object v11, v9, Lcoil3/intercept/EngineInterceptor$intercept$1;->L$9:Ljava/lang/Object;

    .line 277
    .line 278
    const/4 v1, 0x1

    .line 279
    iput v1, v9, Lcoil3/intercept/EngineInterceptor$intercept$1;->label:I

    .line 280
    .line 281
    invoke-static {v10, v0, v9}, Lkotlinx/coroutines/JobKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 285
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 286
    .line 287
    if-ne v0, v1, :cond_a

    .line 288
    .line 289
    return-object v1

    .line 290
    :cond_a
    return-object v0

    .line 291
    :goto_6
    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    .line 292
    .line 293
    if-nez v1, :cond_b

    .line 294
    .line 295
    check-cast v7, Lcoil3/intercept/RealInterceptorChain;

    .line 296
    .line 297
    iget-object v1, v7, Lcoil3/intercept/RealInterceptorChain;->request:Lcoil3/request/ImageRequest;

    .line 298
    .line 299
    invoke-static {v1, v0}, Lcoil3/util/UtilsKt;->ErrorResult(Lcoil3/request/ImageRequest;Ljava/lang/Throwable;)Lcoil3/request/ErrorResult;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    return-object v0

    .line 304
    :cond_b
    throw v0
.end method
