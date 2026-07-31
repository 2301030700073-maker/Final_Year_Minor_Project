.class public final Lcoil3/request/ImageRequest$Builder;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final context:Landroid/content/Context;

.field public data:Ljava/lang/Object;

.field public defaults:Lcoil3/request/ImageRequest$Defaults;

.field public diskCacheKey:Ljava/lang/String;

.field public errorFactory:Lkotlin/jvm/functions/Function1;

.field public final fallbackFactory:Lkotlin/jvm/functions/Function1;

.field public lazyExtras:Ljava/lang/Object;

.field public lazyMemoryCacheKeyExtras:Ljava/util/Map;

.field public memoryCacheKey:Ljava/lang/String;

.field public memoryCacheKeyExtrasAreMutable:Z

.field public placeholderFactory:Lkotlin/jvm/functions/Function1;

.field public precision:Lcoil3/size/Precision;

.field public scale:Lcoil3/size/Scale;

.field public sizeResolver:Lcoil3/size/SizeResolver;

.field public target:Lcoil3/target/Target;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcoil3/request/ImageRequest$Builder;->context:Landroid/content/Context;

    .line 63
    sget-object p1, Lcoil3/request/ImageRequest$Defaults;->DEFAULT:Lcoil3/request/ImageRequest$Defaults;

    iput-object p1, p0, Lcoil3/request/ImageRequest$Builder;->defaults:Lcoil3/request/ImageRequest$Defaults;

    const/4 p1, 0x0

    .line 64
    iput-object p1, p0, Lcoil3/request/ImageRequest$Builder;->data:Ljava/lang/Object;

    .line 65
    iput-object p1, p0, Lcoil3/request/ImageRequest$Builder;->target:Lcoil3/target/Target;

    .line 66
    iput-object p1, p0, Lcoil3/request/ImageRequest$Builder;->memoryCacheKey:Ljava/lang/String;

    .line 67
    sget-object v0, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    iput-object v0, p0, Lcoil3/request/ImageRequest$Builder;->lazyMemoryCacheKeyExtras:Ljava/util/Map;

    .line 68
    iput-object p1, p0, Lcoil3/request/ImageRequest$Builder;->diskCacheKey:Ljava/lang/String;

    .line 69
    sget-object v0, Lcoil3/util/UtilsKt$EMPTY_IMAGE_FACTORY$1;->INSTANCE:Lcoil3/util/UtilsKt$EMPTY_IMAGE_FACTORY$1;

    iput-object v0, p0, Lcoil3/request/ImageRequest$Builder;->placeholderFactory:Lkotlin/jvm/functions/Function1;

    .line 70
    iput-object v0, p0, Lcoil3/request/ImageRequest$Builder;->errorFactory:Lkotlin/jvm/functions/Function1;

    .line 71
    iput-object v0, p0, Lcoil3/request/ImageRequest$Builder;->fallbackFactory:Lkotlin/jvm/functions/Function1;

    .line 72
    iput-object p1, p0, Lcoil3/request/ImageRequest$Builder;->sizeResolver:Lcoil3/size/SizeResolver;

    .line 73
    iput-object p1, p0, Lcoil3/request/ImageRequest$Builder;->scale:Lcoil3/size/Scale;

    .line 74
    iput-object p1, p0, Lcoil3/request/ImageRequest$Builder;->precision:Lcoil3/size/Precision;

    .line 75
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
    iget-object p2, p1, Lcoil3/request/ImageRequest;->memoryCacheKey:Ljava/lang/String;

    .line 19
    .line 20
    iput-object p2, p0, Lcoil3/request/ImageRequest$Builder;->memoryCacheKey:Ljava/lang/String;

    .line 21
    .line 22
    iget-object p2, p1, Lcoil3/request/ImageRequest;->memoryCacheKeyExtras:Ljava/util/Map;

    .line 23
    .line 24
    iput-object p2, p0, Lcoil3/request/ImageRequest$Builder;->lazyMemoryCacheKeyExtras:Ljava/util/Map;

    .line 25
    .line 26
    iget-object p2, p1, Lcoil3/request/ImageRequest;->diskCacheKey:Ljava/lang/String;

    .line 27
    .line 28
    iput-object p2, p0, Lcoil3/request/ImageRequest$Builder;->diskCacheKey:Ljava/lang/String;

    .line 29
    .line 30
    iget-object p2, p1, Lcoil3/request/ImageRequest;->defined:Lcoil3/request/ImageRequest$Defined;

    .line 31
    .line 32
    iget-object v0, p2, Lcoil3/request/ImageRequest$Defined;->placeholderFactory:Lkotlin/jvm/functions/Function1;

    .line 33
    .line 34
    iput-object v0, p0, Lcoil3/request/ImageRequest$Builder;->placeholderFactory:Lkotlin/jvm/functions/Function1;

    .line 35
    .line 36
    iget-object v0, p2, Lcoil3/request/ImageRequest$Defined;->errorFactory:Lkotlin/jvm/functions/Function1;

    .line 37
    .line 38
    iput-object v0, p0, Lcoil3/request/ImageRequest$Builder;->errorFactory:Lkotlin/jvm/functions/Function1;

    .line 39
    .line 40
    iget-object v0, p2, Lcoil3/request/ImageRequest$Defined;->fallbackFactory:Lkotlin/jvm/functions/Function1;

    .line 41
    .line 42
    iput-object v0, p0, Lcoil3/request/ImageRequest$Builder;->fallbackFactory:Lkotlin/jvm/functions/Function1;

    .line 43
    .line 44
    iget-object v0, p2, Lcoil3/request/ImageRequest$Defined;->sizeResolver:Lcoil3/size/SizeResolver;

    .line 45
    .line 46
    iput-object v0, p0, Lcoil3/request/ImageRequest$Builder;->sizeResolver:Lcoil3/size/SizeResolver;

    .line 47
    .line 48
    iget-object v0, p2, Lcoil3/request/ImageRequest$Defined;->scale:Lcoil3/size/Scale;

    .line 49
    .line 50
    iput-object v0, p0, Lcoil3/request/ImageRequest$Builder;->scale:Lcoil3/size/Scale;

    .line 51
    .line 52
    iget-object p2, p2, Lcoil3/request/ImageRequest$Defined;->precision:Lcoil3/size/Precision;

    .line 53
    .line 54
    iput-object p2, p0, Lcoil3/request/ImageRequest$Builder;->precision:Lcoil3/size/Precision;

    .line 55
    .line 56
    iget-object p1, p1, Lcoil3/request/ImageRequest;->extras:Lcoil3/Extras;

    .line 57
    .line 58
    iput-object p1, p0, Lcoil3/request/ImageRequest$Builder;->lazyExtras:Ljava/lang/Object;

    .line 59
    .line 60
    return-void
.end method


# virtual methods
.method public final build()Lcoil3/request/ImageRequest;
    .locals 30

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
    iget-object v6, v0, Lcoil3/request/ImageRequest$Builder;->memoryCacheKey:Ljava/lang/String;

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
    const/4 v3, 0x0

    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    invoke-static {v1}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableMap(Ljava/lang/Object;)Ljava/util/Map;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-static {v1}, Lcoil3/util/UtilsKt;->toImmutableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    :goto_0
    move-object v7, v1

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    invoke-static {v1}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_a

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :goto_1
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    iget-object v8, v0, Lcoil3/request/ImageRequest$Builder;->diskCacheKey:Ljava/lang/String;

    .line 53
    .line 54
    iget-object v1, v0, Lcoil3/request/ImageRequest$Builder;->defaults:Lcoil3/request/ImageRequest$Defaults;

    .line 55
    .line 56
    iget-object v9, v1, Lcoil3/request/ImageRequest$Defaults;->fileSystem:Lokio/FileSystem;

    .line 57
    .line 58
    iget-object v13, v1, Lcoil3/request/ImageRequest$Defaults;->memoryCachePolicy:Lcoil3/request/CachePolicy;

    .line 59
    .line 60
    iget-object v14, v1, Lcoil3/request/ImageRequest$Defaults;->diskCachePolicy:Lcoil3/request/CachePolicy;

    .line 61
    .line 62
    iget-object v15, v1, Lcoil3/request/ImageRequest$Defaults;->networkCachePolicy:Lcoil3/request/CachePolicy;

    .line 63
    .line 64
    iget-object v10, v1, Lcoil3/request/ImageRequest$Defaults;->interceptorCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    .line 65
    .line 66
    iget-object v11, v1, Lcoil3/request/ImageRequest$Defaults;->fetcherCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    .line 67
    .line 68
    iget-object v12, v1, Lcoil3/request/ImageRequest$Defaults;->decoderCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    .line 69
    .line 70
    iget-object v2, v0, Lcoil3/request/ImageRequest$Builder;->placeholderFactory:Lkotlin/jvm/functions/Function1;

    .line 71
    .line 72
    if-nez v2, :cond_2

    .line 73
    .line 74
    iget-object v2, v1, Lcoil3/request/ImageRequest$Defaults;->placeholderFactory:Lkotlin/jvm/functions/Function1;

    .line 75
    .line 76
    :cond_2
    move-object/from16 v16, v2

    .line 77
    .line 78
    iget-object v2, v0, Lcoil3/request/ImageRequest$Builder;->errorFactory:Lkotlin/jvm/functions/Function1;

    .line 79
    .line 80
    if-nez v2, :cond_3

    .line 81
    .line 82
    iget-object v2, v1, Lcoil3/request/ImageRequest$Defaults;->errorFactory:Lkotlin/jvm/functions/Function1;

    .line 83
    .line 84
    :cond_3
    move-object/from16 v17, v2

    .line 85
    .line 86
    iget-object v2, v0, Lcoil3/request/ImageRequest$Builder;->fallbackFactory:Lkotlin/jvm/functions/Function1;

    .line 87
    .line 88
    if-nez v2, :cond_4

    .line 89
    .line 90
    iget-object v2, v1, Lcoil3/request/ImageRequest$Defaults;->fallbackFactory:Lkotlin/jvm/functions/Function1;

    .line 91
    .line 92
    :cond_4
    move-object/from16 v18, v2

    .line 93
    .line 94
    iget-object v2, v0, Lcoil3/request/ImageRequest$Builder;->sizeResolver:Lcoil3/size/SizeResolver;

    .line 95
    .line 96
    if-nez v2, :cond_5

    .line 97
    .line 98
    iget-object v2, v1, Lcoil3/request/ImageRequest$Defaults;->sizeResolver:Lcoil3/size/SizeResolver;

    .line 99
    .line 100
    :cond_5
    move-object/from16 v19, v2

    .line 101
    .line 102
    iget-object v2, v0, Lcoil3/request/ImageRequest$Builder;->scale:Lcoil3/size/Scale;

    .line 103
    .line 104
    if-nez v2, :cond_6

    .line 105
    .line 106
    iget-object v2, v1, Lcoil3/request/ImageRequest$Defaults;->scale:Lcoil3/size/Scale;

    .line 107
    .line 108
    :cond_6
    move-object/from16 v20, v2

    .line 109
    .line 110
    iget-object v2, v0, Lcoil3/request/ImageRequest$Builder;->precision:Lcoil3/size/Precision;

    .line 111
    .line 112
    if-nez v2, :cond_7

    .line 113
    .line 114
    iget-object v2, v1, Lcoil3/request/ImageRequest$Defaults;->precision:Lcoil3/size/Precision;

    .line 115
    .line 116
    :cond_7
    move-object/from16 v21, v2

    .line 117
    .line 118
    iget-object v1, v0, Lcoil3/request/ImageRequest$Builder;->lazyExtras:Ljava/lang/Object;

    .line 119
    .line 120
    instance-of v2, v1, Lcoil3/Extras$Builder;

    .line 121
    .line 122
    if-eqz v2, :cond_8

    .line 123
    .line 124
    check-cast v1, Lcoil3/Extras$Builder;

    .line 125
    .line 126
    new-instance v2, Lcoil3/Extras;

    .line 127
    .line 128
    iget-object v1, v1, Lcoil3/Extras$Builder;->data:Ljava/util/LinkedHashMap;

    .line 129
    .line 130
    invoke-static {v1}, Lcoil3/util/UtilsKt;->toImmutableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    invoke-direct {v2, v1}, Lcoil3/Extras;-><init>(Ljava/util/Map;)V

    .line 135
    .line 136
    .line 137
    :goto_2
    move-object/from16 v22, v2

    .line 138
    .line 139
    goto :goto_3

    .line 140
    :cond_8
    instance-of v2, v1, Lcoil3/Extras;

    .line 141
    .line 142
    if-eqz v2, :cond_9

    .line 143
    .line 144
    move-object v2, v1

    .line 145
    check-cast v2, Lcoil3/Extras;

    .line 146
    .line 147
    goto :goto_2

    .line 148
    :goto_3
    iget-object v1, v0, Lcoil3/request/ImageRequest$Builder;->placeholderFactory:Lkotlin/jvm/functions/Function1;

    .line 149
    .line 150
    iget-object v2, v0, Lcoil3/request/ImageRequest$Builder;->errorFactory:Lkotlin/jvm/functions/Function1;

    .line 151
    .line 152
    iget-object v3, v0, Lcoil3/request/ImageRequest$Builder;->sizeResolver:Lcoil3/size/SizeResolver;

    .line 153
    .line 154
    move-object/from16 v24, v1

    .line 155
    .line 156
    iget-object v1, v0, Lcoil3/request/ImageRequest$Builder;->scale:Lcoil3/size/Scale;

    .line 157
    .line 158
    move-object/from16 v28, v1

    .line 159
    .line 160
    iget-object v1, v0, Lcoil3/request/ImageRequest$Builder;->precision:Lcoil3/size/Precision;

    .line 161
    .line 162
    new-instance v23, Lcoil3/request/ImageRequest$Defined;

    .line 163
    .line 164
    move-object/from16 v29, v1

    .line 165
    .line 166
    iget-object v1, v0, Lcoil3/request/ImageRequest$Builder;->fallbackFactory:Lkotlin/jvm/functions/Function1;

    .line 167
    .line 168
    move-object/from16 v26, v1

    .line 169
    .line 170
    move-object/from16 v25, v2

    .line 171
    .line 172
    move-object/from16 v27, v3

    .line 173
    .line 174
    invoke-direct/range {v23 .. v29}, Lcoil3/request/ImageRequest$Defined;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lcoil3/size/SizeResolver;Lcoil3/size/Scale;Lcoil3/size/Precision;)V

    .line 175
    .line 176
    .line 177
    iget-object v1, v0, Lcoil3/request/ImageRequest$Builder;->defaults:Lcoil3/request/ImageRequest$Defaults;

    .line 178
    .line 179
    new-instance v2, Lcoil3/request/ImageRequest;

    .line 180
    .line 181
    iget-object v3, v0, Lcoil3/request/ImageRequest$Builder;->context:Landroid/content/Context;

    .line 182
    .line 183
    move-object/from16 v24, v1

    .line 184
    .line 185
    invoke-direct/range {v2 .. v24}, Lcoil3/request/ImageRequest;-><init>(Landroid/content/Context;Ljava/lang/Object;Lcoil3/target/Target;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lokio/FileSystem;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;Lcoil3/request/CachePolicy;Lcoil3/request/CachePolicy;Lcoil3/request/CachePolicy;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lcoil3/size/SizeResolver;Lcoil3/size/Scale;Lcoil3/size/Precision;Lcoil3/Extras;Lcoil3/request/ImageRequest$Defined;Lcoil3/request/ImageRequest$Defaults;)V

    .line 186
    .line 187
    .line 188
    return-object v2

    .line 189
    :cond_9
    invoke-static {}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m()V

    .line 190
    .line 191
    .line 192
    return-object v3

    .line 193
    :cond_a
    invoke-static {}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m()V

    .line 194
    .line 195
    .line 196
    return-object v3
.end method
