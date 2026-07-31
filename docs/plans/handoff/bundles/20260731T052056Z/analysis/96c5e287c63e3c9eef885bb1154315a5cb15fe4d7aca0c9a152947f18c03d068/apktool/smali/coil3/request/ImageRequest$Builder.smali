.class public final Lcoil3/request/ImageRequest$Builder;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final context:Landroid/content/Context;

.field public data:Ljava/lang/Object;

.field public decoderCoroutineContext:Lkotlin/coroutines/CoroutineContext;

.field public defaults:Lcoil3/request/ImageRequest$Defaults;

.field public errorFactory:Lkotlin/jvm/functions/Function1;

.field public fetcherCoroutineContext:Lkotlin/coroutines/CoroutineContext;

.field public interceptorCoroutineContext:Lkotlin/coroutines/CoroutineContext;

.field public lazyExtras:Ljava/lang/Object;

.field public lazyMemoryCacheKeyExtras:Ljava/util/Map;

.field public listener:Lcoil3/request/ImageRequest$Listener;

.field public memoryCacheKeyExtrasAreMutable:Z

.field public placeholderFactory:Lkotlin/jvm/functions/Function1;

.field public precision:Lcoil3/size/Precision;

.field public scale:Lcoil3/size/Scale;

.field public sizeResolver:Lcoil3/size/SizeResolver;

.field public target:Lcoil3/target/Target;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcoil3/request/ImageRequest$Builder;->context:Landroid/content/Context;

    .line 67
    sget-object p1, Lcoil3/request/ImageRequest$Defaults;->DEFAULT:Lcoil3/request/ImageRequest$Defaults;

    iput-object p1, p0, Lcoil3/request/ImageRequest$Builder;->defaults:Lcoil3/request/ImageRequest$Defaults;

    const/4 p1, 0x0

    .line 68
    iput-object p1, p0, Lcoil3/request/ImageRequest$Builder;->data:Ljava/lang/Object;

    .line 69
    iput-object p1, p0, Lcoil3/request/ImageRequest$Builder;->target:Lcoil3/target/Target;

    .line 70
    iput-object p1, p0, Lcoil3/request/ImageRequest$Builder;->listener:Lcoil3/request/ImageRequest$Listener;

    .line 71
    sget-object v0, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    iput-object v0, p0, Lcoil3/request/ImageRequest$Builder;->lazyMemoryCacheKeyExtras:Ljava/util/Map;

    .line 72
    iput-object p1, p0, Lcoil3/request/ImageRequest$Builder;->interceptorCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    .line 73
    iput-object p1, p0, Lcoil3/request/ImageRequest$Builder;->fetcherCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    .line 74
    iput-object p1, p0, Lcoil3/request/ImageRequest$Builder;->decoderCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    .line 75
    sget-object v0, Lcoil3/util/UtilsKt$EMPTY_IMAGE_FACTORY$1;->INSTANCE:Lcoil3/util/UtilsKt$EMPTY_IMAGE_FACTORY$1;

    iput-object v0, p0, Lcoil3/request/ImageRequest$Builder;->placeholderFactory:Lkotlin/jvm/functions/Function1;

    .line 76
    iput-object v0, p0, Lcoil3/request/ImageRequest$Builder;->errorFactory:Lkotlin/jvm/functions/Function1;

    .line 77
    iput-object p1, p0, Lcoil3/request/ImageRequest$Builder;->sizeResolver:Lcoil3/size/SizeResolver;

    .line 78
    iput-object p1, p0, Lcoil3/request/ImageRequest$Builder;->scale:Lcoil3/size/Scale;

    .line 79
    iput-object p1, p0, Lcoil3/request/ImageRequest$Builder;->precision:Lcoil3/size/Precision;

    .line 80
    sget-object p1, Lcoil3/Extras;->EMPTY:Lcoil3/Extras;

    iput-object p1, p0, Lcoil3/request/ImageRequest$Builder;->lazyExtras:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcoil3/request/ImageRequest;Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcoil3/request/ImageRequest$Builder;->context:Landroid/content/Context;

    .line 5
    .line 6
    iget-object p2, p1, Lcoil3/request/ImageRequest;->defaults:Lcoil3/request/ImageRequest$Defaults;

    .line 7
    .line 8
    iput-object p2, p0, Lcoil3/request/ImageRequest$Builder;->defaults:Lcoil3/request/ImageRequest$Defaults;

    .line 9
    .line 10
    iget-object p2, p1, Lcoil3/request/ImageRequest;->data:Ljava/lang/Object;

    .line 11
    .line 12
    iput-object p2, p0, Lcoil3/request/ImageRequest$Builder;->data:Ljava/lang/Object;

    .line 13
    .line 14
    iget-object p2, p1, Lcoil3/request/ImageRequest;->target:Lcoil3/target/Target;

    .line 15
    .line 16
    iput-object p2, p0, Lcoil3/request/ImageRequest$Builder;->target:Lcoil3/target/Target;

    .line 17
    .line 18
    iget-object p2, p1, Lcoil3/request/ImageRequest;->listener:Lcoil3/request/ImageRequest$Listener;

    .line 19
    .line 20
    iput-object p2, p0, Lcoil3/request/ImageRequest$Builder;->listener:Lcoil3/request/ImageRequest$Listener;

    .line 21
    .line 22
    iget-object p2, p1, Lcoil3/request/ImageRequest;->memoryCacheKeyExtras:Ljava/util/Map;

    .line 23
    .line 24
    iput-object p2, p0, Lcoil3/request/ImageRequest$Builder;->lazyMemoryCacheKeyExtras:Ljava/util/Map;

    .line 25
    .line 26
    iget-object p2, p1, Lcoil3/request/ImageRequest;->defined:Lcoil3/request/ImageRequest$Defined;

    .line 27
    .line 28
    iget-object v0, p2, Lcoil3/request/ImageRequest$Defined;->interceptorCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    .line 29
    .line 30
    iput-object v0, p0, Lcoil3/request/ImageRequest$Builder;->interceptorCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    .line 31
    .line 32
    iget-object v0, p2, Lcoil3/request/ImageRequest$Defined;->fetcherCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    .line 33
    .line 34
    iput-object v0, p0, Lcoil3/request/ImageRequest$Builder;->fetcherCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    .line 35
    .line 36
    iget-object v0, p2, Lcoil3/request/ImageRequest$Defined;->decoderCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    .line 37
    .line 38
    iput-object v0, p0, Lcoil3/request/ImageRequest$Builder;->decoderCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    .line 39
    .line 40
    iget-object v0, p2, Lcoil3/request/ImageRequest$Defined;->placeholderFactory:Lkotlin/jvm/functions/Function1;

    .line 41
    .line 42
    iput-object v0, p0, Lcoil3/request/ImageRequest$Builder;->placeholderFactory:Lkotlin/jvm/functions/Function1;

    .line 43
    .line 44
    iget-object v0, p2, Lcoil3/request/ImageRequest$Defined;->errorFactory:Lkotlin/jvm/functions/Function1;

    .line 45
    .line 46
    iput-object v0, p0, Lcoil3/request/ImageRequest$Builder;->errorFactory:Lkotlin/jvm/functions/Function1;

    .line 47
    .line 48
    iget-object v0, p2, Lcoil3/request/ImageRequest$Defined;->sizeResolver:Lcoil3/size/SizeResolver;

    .line 49
    .line 50
    iput-object v0, p0, Lcoil3/request/ImageRequest$Builder;->sizeResolver:Lcoil3/size/SizeResolver;

    .line 51
    .line 52
    iget-object v0, p2, Lcoil3/request/ImageRequest$Defined;->scale:Lcoil3/size/Scale;

    .line 53
    .line 54
    iput-object v0, p0, Lcoil3/request/ImageRequest$Builder;->scale:Lcoil3/size/Scale;

    .line 55
    .line 56
    iget-object p2, p2, Lcoil3/request/ImageRequest$Defined;->precision:Lcoil3/size/Precision;

    .line 57
    .line 58
    iput-object p2, p0, Lcoil3/request/ImageRequest$Builder;->precision:Lcoil3/size/Precision;

    .line 59
    .line 60
    iget-object p1, p1, Lcoil3/request/ImageRequest;->extras:Lcoil3/Extras;

    .line 61
    .line 62
    iput-object p1, p0, Lcoil3/request/ImageRequest$Builder;->lazyExtras:Ljava/lang/Object;

    .line 63
    .line 64
    return-void
.end method


# virtual methods
.method public final build()Lcoil3/request/ImageRequest;
    .locals 31

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcoil3/request/ImageRequest$Builder;->data:Ljava/lang/Object;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    sget-object v1, Lcoil3/request/NullRequestData;->INSTANCE:Lcoil3/request/NullRequestData;

    .line 8
    .line 9
    :cond_0
    move-object v4, v1

    .line 10
    iget-object v5, v0, Lcoil3/request/ImageRequest$Builder;->target:Lcoil3/target/Target;

    .line 11
    .line 12
    iget-object v6, v0, Lcoil3/request/ImageRequest$Builder;->listener:Lcoil3/request/ImageRequest$Listener;

    .line 13
    .line 14
    iget-object v1, v0, Lcoil3/request/ImageRequest$Builder;->lazyMemoryCacheKeyExtras:Ljava/util/Map;

    .line 15
    .line 16
    iget-boolean v2, v0, Lcoil3/request/ImageRequest$Builder;->memoryCacheKeyExtrasAreMutable:Z

    .line 17
    .line 18
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    invoke-static {v1}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableMap(Ljava/lang/Object;)Ljava/util/Map;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-static {v1}, Lkotlin/ExceptionsKt;->toImmutableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    :goto_0
    move-object v7, v1

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    invoke-static {v1}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_a

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :goto_1
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    iget-object v1, v0, Lcoil3/request/ImageRequest$Builder;->defaults:Lcoil3/request/ImageRequest$Defaults;

    .line 52
    .line 53
    iget-object v8, v1, Lcoil3/request/ImageRequest$Defaults;->fileSystem:Lokio/FileSystem;

    .line 54
    .line 55
    iget-object v12, v1, Lcoil3/request/ImageRequest$Defaults;->memoryCachePolicy:Lcoil3/request/CachePolicy;

    .line 56
    .line 57
    iget-object v13, v1, Lcoil3/request/ImageRequest$Defaults;->diskCachePolicy:Lcoil3/request/CachePolicy;

    .line 58
    .line 59
    iget-object v14, v1, Lcoil3/request/ImageRequest$Defaults;->networkCachePolicy:Lcoil3/request/CachePolicy;

    .line 60
    .line 61
    iget-object v2, v0, Lcoil3/request/ImageRequest$Builder;->interceptorCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    .line 62
    .line 63
    if-nez v2, :cond_2

    .line 64
    .line 65
    iget-object v2, v1, Lcoil3/request/ImageRequest$Defaults;->interceptorCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    .line 66
    .line 67
    :cond_2
    move-object v9, v2

    .line 68
    iget-object v2, v0, Lcoil3/request/ImageRequest$Builder;->fetcherCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    .line 69
    .line 70
    if-nez v2, :cond_3

    .line 71
    .line 72
    iget-object v2, v1, Lcoil3/request/ImageRequest$Defaults;->fetcherCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    .line 73
    .line 74
    :cond_3
    move-object v10, v2

    .line 75
    iget-object v2, v0, Lcoil3/request/ImageRequest$Builder;->decoderCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    .line 76
    .line 77
    if-nez v2, :cond_4

    .line 78
    .line 79
    iget-object v2, v1, Lcoil3/request/ImageRequest$Defaults;->decoderCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    .line 80
    .line 81
    :cond_4
    move-object v11, v2

    .line 82
    iget-object v15, v0, Lcoil3/request/ImageRequest$Builder;->placeholderFactory:Lkotlin/jvm/functions/Function1;

    .line 83
    .line 84
    iget-object v2, v0, Lcoil3/request/ImageRequest$Builder;->errorFactory:Lkotlin/jvm/functions/Function1;

    .line 85
    .line 86
    iget-object v3, v0, Lcoil3/request/ImageRequest$Builder;->sizeResolver:Lcoil3/size/SizeResolver;

    .line 87
    .line 88
    if-nez v3, :cond_5

    .line 89
    .line 90
    iget-object v3, v1, Lcoil3/request/ImageRequest$Defaults;->sizeResolver:Lcoil3/size/SizeResolver;

    .line 91
    .line 92
    :cond_5
    move-object/from16 v18, v3

    .line 93
    .line 94
    iget-object v3, v0, Lcoil3/request/ImageRequest$Builder;->scale:Lcoil3/size/Scale;

    .line 95
    .line 96
    if-nez v3, :cond_6

    .line 97
    .line 98
    iget-object v3, v1, Lcoil3/request/ImageRequest$Defaults;->scale:Lcoil3/size/Scale;

    .line 99
    .line 100
    :cond_6
    move-object/from16 v19, v3

    .line 101
    .line 102
    iget-object v3, v0, Lcoil3/request/ImageRequest$Builder;->precision:Lcoil3/size/Precision;

    .line 103
    .line 104
    if-nez v3, :cond_7

    .line 105
    .line 106
    iget-object v3, v1, Lcoil3/request/ImageRequest$Defaults;->precision:Lcoil3/size/Precision;

    .line 107
    .line 108
    :cond_7
    move-object/from16 v20, v3

    .line 109
    .line 110
    iget-object v1, v0, Lcoil3/request/ImageRequest$Builder;->lazyExtras:Ljava/lang/Object;

    .line 111
    .line 112
    instance-of v3, v1, Lcoil3/Extras$Builder;

    .line 113
    .line 114
    if-eqz v3, :cond_8

    .line 115
    .line 116
    check-cast v1, Lcoil3/Extras$Builder;

    .line 117
    .line 118
    new-instance v3, Lcoil3/Extras;

    .line 119
    .line 120
    iget-object v1, v1, Lcoil3/Extras$Builder;->data:Ljava/util/LinkedHashMap;

    .line 121
    .line 122
    invoke-static {v1}, Lkotlin/ExceptionsKt;->toImmutableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-direct {v3, v1}, Lcoil3/Extras;-><init>(Ljava/util/Map;)V

    .line 127
    .line 128
    .line 129
    :goto_2
    move-object/from16 v21, v3

    .line 130
    .line 131
    goto :goto_3

    .line 132
    :cond_8
    instance-of v3, v1, Lcoil3/Extras;

    .line 133
    .line 134
    if-eqz v3, :cond_9

    .line 135
    .line 136
    move-object v3, v1

    .line 137
    check-cast v3, Lcoil3/Extras;

    .line 138
    .line 139
    goto :goto_2

    .line 140
    :goto_3
    iget-object v1, v0, Lcoil3/request/ImageRequest$Builder;->interceptorCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    .line 141
    .line 142
    iget-object v3, v0, Lcoil3/request/ImageRequest$Builder;->fetcherCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    .line 143
    .line 144
    move-object/from16 v23, v1

    .line 145
    .line 146
    iget-object v1, v0, Lcoil3/request/ImageRequest$Builder;->decoderCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    .line 147
    .line 148
    move-object/from16 v25, v1

    .line 149
    .line 150
    iget-object v1, v0, Lcoil3/request/ImageRequest$Builder;->placeholderFactory:Lkotlin/jvm/functions/Function1;

    .line 151
    .line 152
    move-object/from16 v26, v1

    .line 153
    .line 154
    iget-object v1, v0, Lcoil3/request/ImageRequest$Builder;->errorFactory:Lkotlin/jvm/functions/Function1;

    .line 155
    .line 156
    move-object/from16 v27, v1

    .line 157
    .line 158
    iget-object v1, v0, Lcoil3/request/ImageRequest$Builder;->sizeResolver:Lcoil3/size/SizeResolver;

    .line 159
    .line 160
    move-object/from16 v28, v1

    .line 161
    .line 162
    iget-object v1, v0, Lcoil3/request/ImageRequest$Builder;->scale:Lcoil3/size/Scale;

    .line 163
    .line 164
    move-object/from16 v29, v1

    .line 165
    .line 166
    iget-object v1, v0, Lcoil3/request/ImageRequest$Builder;->precision:Lcoil3/size/Precision;

    .line 167
    .line 168
    new-instance v22, Lcoil3/request/ImageRequest$Defined;

    .line 169
    .line 170
    move-object/from16 v30, v1

    .line 171
    .line 172
    move-object/from16 v24, v3

    .line 173
    .line 174
    invoke-direct/range {v22 .. v30}, Lcoil3/request/ImageRequest$Defined;-><init>(Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lcoil3/size/SizeResolver;Lcoil3/size/Scale;Lcoil3/size/Precision;)V

    .line 175
    .line 176
    .line 177
    iget-object v1, v0, Lcoil3/request/ImageRequest$Builder;->defaults:Lcoil3/request/ImageRequest$Defaults;

    .line 178
    .line 179
    move-object/from16 v16, v2

    .line 180
    .line 181
    new-instance v2, Lcoil3/request/ImageRequest;

    .line 182
    .line 183
    iget-object v3, v0, Lcoil3/request/ImageRequest$Builder;->context:Landroid/content/Context;

    .line 184
    .line 185
    sget-object v17, Lcoil3/util/UtilsKt$EMPTY_IMAGE_FACTORY$1;->INSTANCE:Lcoil3/util/UtilsKt$EMPTY_IMAGE_FACTORY$1;

    .line 186
    .line 187
    move-object/from16 v23, v1

    .line 188
    .line 189
    invoke-direct/range {v2 .. v23}, Lcoil3/request/ImageRequest;-><init>(Landroid/content/Context;Ljava/lang/Object;Lcoil3/target/Target;Lcoil3/request/ImageRequest$Listener;Ljava/util/Map;Lokio/FileSystem;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;Lcoil3/request/CachePolicy;Lcoil3/request/CachePolicy;Lcoil3/request/CachePolicy;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lcoil3/size/SizeResolver;Lcoil3/size/Scale;Lcoil3/size/Precision;Lcoil3/Extras;Lcoil3/request/ImageRequest$Defined;Lcoil3/request/ImageRequest$Defaults;)V

    .line 190
    .line 191
    .line 192
    return-object v2

    .line 193
    :cond_9
    new-instance v0, Ljava/lang/AssertionError;

    .line 194
    .line 195
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .line 196
    .line 197
    .line 198
    throw v0

    .line 199
    :cond_a
    new-instance v0, Ljava/lang/AssertionError;

    .line 200
    .line 201
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .line 202
    .line 203
    .line 204
    throw v0
.end method

.method public final getExtras()Lcoil3/Extras$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcoil3/request/ImageRequest$Builder;->lazyExtras:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Lcoil3/Extras$Builder;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lcoil3/Extras$Builder;

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    instance-of v1, v0, Lcoil3/Extras;

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    check-cast v0, Lcoil3/Extras;

    .line 15
    .line 16
    new-instance v1, Lcoil3/Extras$Builder;

    .line 17
    .line 18
    invoke-direct {v1, v0}, Lcoil3/Extras$Builder;-><init>(Lcoil3/Extras;)V

    .line 19
    .line 20
    .line 21
    iput-object v1, p0, Lcoil3/request/ImageRequest$Builder;->lazyExtras:Ljava/lang/Object;

    .line 22
    .line 23
    return-object v1

    .line 24
    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    .line 25
    .line 26
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    .line 27
    .line 28
    .line 29
    throw p0
.end method
